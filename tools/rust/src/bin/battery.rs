use battery::units::ratio::percent;
use battery::Manager;
use battery::State;
use failure::Error;

fn main() -> Result<(), Error> {
    let mut batteries = Manager::new()?.batteries()?;
    let battery = batteries.nth(0).expect("failed to get battery info");
    let battery = battery.expect("failed to get battery info");

    match battery.state() {
        State::Full => {
            println!("\u{f578} {:.0}%", battery.state_of_charge().get::<percent>());
            std::process::exit(0);
        }
        State::Charging => {
            println!(
                "\u{f573} {:.0}%",
                battery.state_of_charge().get::<percent>()
            );
            std::process::exit(0);
        }
        _ => {}
    }

    let per = battery.state_of_charge().get::<percent>();

    println!("{} {:.0}%", icon(per), per);

    Ok(())
}

fn icon(value: f32) -> char {
    return if value < 10.0 {
        '\u{f582}'
    } else if value < 20.0 {
        '\u{f579}'
    } else if value < 30.0 {
        '\u{f57a}'
    } else if value < 40.0 {
        '\u{f57b}'
    } else if value < 50.0 {
        '\u{f57c}'
    } else if value < 60.0 {
        '\u{f57d}'
    } else if value < 70.0 {
        '\u{f57e}'
    } else if value < 80.0 {
        '\u{f57f}'
    } else if value < 90.0 {
        '\u{f580}'
    } else {
        '\u{f581}'
    };
}
