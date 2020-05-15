use failure::Error;
use proconio::input;
use regex::Regex;

use std::fs::File;
use std::io::prelude::*;
use std::io::{self, BufRead, BufReader, LineWriter, Read};

fn main() -> Result<(), Error> {
    let homedir = dirs::home_dir().unwrap();
    let config_path = format!(
        "{}/.dotfiles/tools/alacritty.yml",
        homedir.as_path().display()
    );

    let config_file = File::open(&config_path)?;
    let lines = BufReader::new(config_file).lines();
    let mut flg = false;
    let mut index = 0;

    let begin = Regex::new("^schemas:")?;
    let end = Regex::new("^colors:.*")?;
    let color = Regex::new(r"^\s\s(.*): &(.*)")?;

    let mut colors = Vec::new();
    for (i, line) in lines.enumerate() {
        let line = line?;

        if begin.is_match(&line) {
            flg = true;
        }

        if end.is_match(&line) {
            flg = false;
            index = i;
        }

        if flg {
            if let Some(caps) = color.captures(&line) {
                if let Some(s) = caps.get(1) {
                    colors.push(s.as_str().to_string().clone());
                }
            }
        }
    }

    println!("choose color");
    for (i, color) in colors.iter().enumerate() {
        println!("{}: {}", i + 1, color);
    }

    input! {
        n: usize,
    }

    let choosen = colors.get(n - 1).expect("out of range");
    eprintln!("{}", choosen);

    let new_config_file_path = format!("{}.tmp", config_path);
    let mut new_config_file = File::create(&new_config_file_path)?;
    let mut writer = LineWriter::new(&new_config_file);

    let config_file = File::open(&config_path)?;
    let lines = BufReader::new(config_file).lines();

    for (i, line) in lines.enumerate() {
        if i == index {
            let choosen = format!("colors: *{}", choosen);
            writer.write_all(choosen.as_bytes());
            writer.write_all(b"\n");
        } else {
            let line = line?;
            writer.write_all(line.as_bytes());
            writer.write_all(b"\n");
        }
    }

    std::fs::rename(&new_config_file_path, &config_path)?;

    Ok(())
}
