onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib dig_reduce_opt

do {wave.do}

view wave
view structure
view signals

do {dig_reduce.udo}

run -all

quit -force
