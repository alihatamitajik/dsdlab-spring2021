onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib MSJKFF_opt

do {wave.do}

view wave
view structure
view signals

do {MSJKFF.udo}

run -all

quit -force
