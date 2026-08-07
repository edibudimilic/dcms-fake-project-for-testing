use std::io::{Read,Write};
use std::net::TcpListener;
fn main(){
  let p=std::env::var("PORT").unwrap_or_else(|_|"3000".into());
  let l=TcpListener::bind(format!("0.0.0.0:{}",p)).unwrap();
  for s in l.incoming(){
    if let Ok(mut s)=s{
      let mut b=[0;1024]; let _=s.read(&mut b);
      let body="<!doctype html><title>DCMS fixture</title><h1>dcms-stack-rust OK</h1>";
      let _=s.write_all(format!("HTTP/1.1 200 OK\r\nContent-Type: text/html\r\nContent-Length: {}\r\nConnection: close\r\n\r\n{}",body.len(),body).as_bytes());
    }
  }
}
