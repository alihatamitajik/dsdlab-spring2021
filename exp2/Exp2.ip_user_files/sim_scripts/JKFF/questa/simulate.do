onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib JKFF_opt

do {wave.do}

view wave
view structure
view signals

do {JKFF.udo}

run -all

quit -force
