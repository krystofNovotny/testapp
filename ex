#!/usr/bin/expect

set timeout 30

spawn mvn jetty:run -Djetty.port=9999

expect { 
	"Started Jetty Server" { puts "OK" }
	timeout { puts "timeout"; exit 1 }
}

log_file bar

send "\x03"

