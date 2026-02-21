LDR             R0, [R0,#0x68]
NOP
LDR             R0, [R0]
MOV             R2, R1
AND             R1, R0, #0xFF
LDR             R0, =dword_70EE68
B               sub_140F3C
