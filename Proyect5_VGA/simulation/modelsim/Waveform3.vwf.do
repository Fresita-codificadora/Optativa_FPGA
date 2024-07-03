vlog -work work C:/Users/Gaspar/Documents/GitHub/optativa_FPGA/Proyect5_VGA/simulation/modelsim/Waveform3.vwf.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.Test_cont_img_vlg_vec_tst
onerror {resume}
add wave {Test_cont_img_vlg_vec_tst/i1/clk}
add wave {Test_cont_img_vlg_vec_tst/i1/dir}
add wave {Test_cont_img_vlg_vec_tst/i1/dir[13]}
add wave {Test_cont_img_vlg_vec_tst/i1/dir[12]}
add wave {Test_cont_img_vlg_vec_tst/i1/dir[11]}
add wave {Test_cont_img_vlg_vec_tst/i1/dir[10]}
add wave {Test_cont_img_vlg_vec_tst/i1/dir[9]}
add wave {Test_cont_img_vlg_vec_tst/i1/dir[8]}
add wave {Test_cont_img_vlg_vec_tst/i1/dir[7]}
add wave {Test_cont_img_vlg_vec_tst/i1/dir[6]}
add wave {Test_cont_img_vlg_vec_tst/i1/dir[5]}
add wave {Test_cont_img_vlg_vec_tst/i1/dir[4]}
add wave {Test_cont_img_vlg_vec_tst/i1/dir[3]}
add wave {Test_cont_img_vlg_vec_tst/i1/dir[2]}
add wave {Test_cont_img_vlg_vec_tst/i1/dir[1]}
add wave {Test_cont_img_vlg_vec_tst/i1/dir[0]}
add wave {Test_cont_img_vlg_vec_tst/i1/reset}
run -all
