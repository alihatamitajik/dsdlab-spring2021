onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib mod11_opt

do {wave.do}

view wave
view structure
view signals

do {mod11.udo}

run -all

quit -force
