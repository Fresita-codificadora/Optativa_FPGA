transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vlog -vlog01compat -work work +incdir+. {ej4_a.vo}

vcom -93 -work work {C:/Users/Gaspar/Documents/GitHub/optativa_FPGA/guia5/ej4/simulation/modelsim/Waveform.vwf.vht}

vsim -t 1ps -L altera_ver -L cycloneive_ver -L gate_work -L work -voptargs="+acc"  ej4_a_vhd_vec_tst

add wave *
view structure
view signals
run 1 us
