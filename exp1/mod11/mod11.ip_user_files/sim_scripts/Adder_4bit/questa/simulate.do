onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib Adder_4bit_opt

do {wave.do}

view wave
view structure
view signals

do {Adder_4bit.udo}

run -all

quit -force
