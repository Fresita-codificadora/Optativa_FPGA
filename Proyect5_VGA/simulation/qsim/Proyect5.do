onerror {exit -code 1}
vlib work
vcom -work work Proyect5.vho
vcom -work work Waveform2.vwf.vht
vsim -voptargs="+acc" -c -t 1ps -L cycloneive -L altera -L altera_mf -L 220model -L sgate -L altera_lnsim work.decod_vhd_vec_tst
vcd file -direction Proyect5.msim.vcd
vcd add -internal decod_vhd_vec_tst/*
vcd add -internal decod_vhd_vec_tst/i1/*
proc simTimestamp {} {
    echo "Simulation time: $::now ps"
    if { [string equal running [runStatus]] } {
        after 2500 simTimestamp
    }
}
after 2500 simTimestamp
run -all
quit -f
