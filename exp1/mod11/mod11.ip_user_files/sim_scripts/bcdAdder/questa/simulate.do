onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib bcdAdder_opt

do {wave.do}

view wave
view structure
view signals

do {bcdAdder.udo}

run -all

quit -force
