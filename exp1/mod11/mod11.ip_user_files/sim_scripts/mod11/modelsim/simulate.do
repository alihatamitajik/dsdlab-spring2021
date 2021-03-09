onbreak {quit -f}
onerror {quit -f}

vsim -voptargs="+acc" -t 1ps -L util_vector_logic_v2_0_1 -L xil_defaultlib -L xlconstant_v1_1_6 -L unisims_ver -L unimacro_ver -L secureip -lib xil_defaultlib xil_defaultlib.mod11 xil_defaultlib.glbl

do {wave.do}

view wave
view structure
view signals

do {mod11.udo}

run -all

quit -force
