onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib HalfAdder_opt

do {wave.do}

view wave
view structure
view signals

do {HalfAdder.udo}

run -all

quit -force
