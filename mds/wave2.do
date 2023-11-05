onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /TB/dut/CLOCK_50
add wave -noupdate /TB/dut/KEY0
add wave -noupdate /TB/dut/SW0
add wave -noupdate /TB/dut/done
add wave -noupdate /TB/dut/HEX5
add wave -noupdate /TB/dut/HEX4
add wave -noupdate /TB/dut/HEX3
add wave -noupdate /TB/dut/HEX2
add wave -noupdate /TB/dut/HEX1
add wave -noupdate /TB/dut/HEX0
add wave -noupdate /TB/dut/Q_A_0
add wave -noupdate /TB/dut/Qnext_A_0
add wave -noupdate /TB/dut/Q_A_1
add wave -noupdate /TB/dut/Qnext_A_1
add wave -noupdate /TB/dut/Q_B
add wave -noupdate /TB/dut/Qnext_B
add wave -noupdate /TB/dut/Q_C
add wave -noupdate /TB/dut/Qnext_C
add wave -noupdate /TB/dut/q_a_ROMB
add wave -noupdate /TB/dut/q_b_ROMB
add wave -noupdate /TB/dut/result_multiply_matrix_0
add wave -noupdate /TB/dut/result_multiply_matrix_1
add wave -noupdate /TB/dut/result_add_matrix
add wave -noupdate /TB/dut/result_add_ROMA_ROMB_ROMC
add wave -noupdate /TB/dut/result
add wave -noupdate /TB/dut/hex
add wave -noupdate /TB/dut/k
add wave -noupdate /TB/dut/done_counter
add wave -noupdate /TB/dut/done_A_0
add wave -noupdate /TB/dut/done_A_1
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {5 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 223
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {40966 ps} {41013 ps}
