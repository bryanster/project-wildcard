use std::process::Command;
use std::time::Duration;
use std::thread;
fn main(){
    println!();
    Command::new("tcpdump")
            .spawn()
            .expect("sh command failed to start");
    thread::sleep(Duration::from_secs(10))
}