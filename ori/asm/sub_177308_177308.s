LDR             R0, =off_6D1648
LDR             R12, =0x1D07
LDR             R1, [R3,#8]!
LDR             R2, [R0]
LDR             R0, [R3,#4]
MUL             R3, R1, R12
LDR             R1, [R2,#0xA4]
ADD             R1, R1, R3,LSL#2
ADD             R1, R1, #0x2E800
ADD             R1, R1, #0xC4
STRB            R0, [R1]
MOV             R0, #0
BX              LR
