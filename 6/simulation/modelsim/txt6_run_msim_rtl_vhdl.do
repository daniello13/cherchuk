transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/Daniel/Desktop/Cherchuk/6/my_package.vhd}
vcom -93 -work work {C:/Users/Daniel/Desktop/Cherchuk/6/txt6.vhd}

vcom -93 -work work {C:/Users/Daniel/Desktop/Cherchuk/6/test.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneii -L rtl_work -L work -voptargs="+acc"  test

add wave *
view structure
view signals
run 1 sec
