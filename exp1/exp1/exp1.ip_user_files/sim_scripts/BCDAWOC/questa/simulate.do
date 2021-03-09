onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib BCDAWOC_opt

do {wave.do}

view wave
view structure
view signals

do {BCDAWOC.udo}

run -all

quit -force
