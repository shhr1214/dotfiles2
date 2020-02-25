use failure::Error;
use yaml_rust::{Yaml, YamlEmitter, YamlLoader};

fn main() -> Result<(), Error> {
    let homedir = dirs::home_dir().unwrap();
    let config_path = format!(
        "{}/.config/alacritty/alacritty.yml",
        homedir.as_path().display()
    );

    let config = std::fs::read_to_string(&config_path)?;
    let docs = YamlLoader::load_from_str(&config)?;

    println!("{}", config_path);

    Ok(())
}
