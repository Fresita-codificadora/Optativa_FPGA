transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/intelFPGA_lite/Proyect1/proyect1.vhd}

vcom -93 -work work {C:/intelFPGA_lite/Proyect1/simulation/modelsim/Waveform.vwf.vht}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneive -L rtl_work -L work -voptargs="+acc"  proyect1_vhd_vec_tst

add wave *
view structure
view signals
run 10000 ms
