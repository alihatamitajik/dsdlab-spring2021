onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+JKFF -L xil_defaultlib -L util_vector_logic_v2_0_1 -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.JKFF xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {JKFF.udo}

run -all

endsim

quit -force
