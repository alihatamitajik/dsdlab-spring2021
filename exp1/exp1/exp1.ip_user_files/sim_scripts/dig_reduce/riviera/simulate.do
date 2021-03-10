onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+dig_reduce -L util_vector_logic_v2_0_1 -L xil_defaultlib -L xlconstant_v1_1_6 -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.dig_reduce xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {dig_reduce.udo}

run -all

endsim

quit -force