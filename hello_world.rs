use std::io::{self, Write};

fn main() -> io::Result<()> {
    println!("Hello, world!");
    let mut stdout = io::stdout();
    stdout.write_all(b"Error\n")?;

    Ok(())
}
