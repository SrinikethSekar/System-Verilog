# Code Coverage Questa Sim
vlib work

vlog -cover bcesftd +acc top_tb.sv

vsim -coverage work.test -voptargs="+acc"

run -all

coverage save -onexit test.ucdb

vcover report -html -output coverage_html test.ucdb

