onerror {quit -f}
vlib work
vlog -work work Proyect5.vo
vlog -work work Proyect5.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.Test_cont_img_vlg_vec_tst
vcd file -direction Proyect5.msim.vcd
vcd add -internal Test_cont_img_vlg_vec_tst/*
vcd add -internal Test_cont_img_vlg_vec_tst/i1/*
add wave /*
run -all
