vlog -work work C:/Sasha/Univer/Quartus/Lab_4/simulation/modelsim/Waveform.vwf.vt
vsim -novopt -c -t 1ps -L cycloneiv_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.Lab_4_vlg_vec_tst
onerror {resume}
add wave {Lab_4_vlg_vec_tst/i1/A}
add wave {Lab_4_vlg_vec_tst/i1/B}
add wave {Lab_4_vlg_vec_tst/i1/i_clk}
add wave {Lab_4_vlg_vec_tst/i1/res}
run -all
