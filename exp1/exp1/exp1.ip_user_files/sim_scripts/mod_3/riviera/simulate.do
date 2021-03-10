onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+mod_3 -L xil_defaultlib -L util_vector_logic_v2_0_1 -L xlconstant_v1_1_6 -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.mod_3 xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {mod_3.udo}

run -all

endsim

quit -force
