onerror {quit -f}
vlib work
vlog -work work summ_mod_11.vo
vlog -work work summ_mod_11.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.summ_mod_11_vlg_vec_tst
vcd file -direction summ_mod_11.msim.vcd
vcd add -internal summ_mod_11_vlg_vec_tst/*
vcd add -internal summ_mod_11_vlg_vec_tst/i1/*
add wave /*
run -all
