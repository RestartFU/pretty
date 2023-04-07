module pretty

import time

pub fn println_delay(s string, delay time.Duration) {
	print_delay(s, delay)
	print("\n")
}

pub fn print_delay(s string, delay time.Duration) {
	mut i := 0
	mut last_time := time.now()
	for i < s.len-1 {
		if last_time.add(delay) <= time.now() {
			print(s[i].ascii_str())
			last_time = time.now()
			i++
		}
	}
}
