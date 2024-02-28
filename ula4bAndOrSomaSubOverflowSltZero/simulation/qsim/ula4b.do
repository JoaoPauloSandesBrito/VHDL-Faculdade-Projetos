onerror {quit -f}
vlib work
vlog -work work ula4b.vo
vlog -work work ula4b.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.ula4b_vlg_vec_tst
vcd file -direction ula4b.msim.vcd
vcd add -internal ula4b_vlg_vec_tst/*
vcd add -internal ula4b_vlg_vec_tst/i1/*
add wave /*
run -all
