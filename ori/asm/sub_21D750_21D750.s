CMN             R2, #1
LDRBEQ          R2, [R0,#0x110]
VLDR            S1, =1.0
VLDR            S0, =0.0
SUBEQ           R2, R2, #1
CMP             R3, #0
BEQ             loc_21D7A8
CMP             R3, #1
BEQ             loc_21D7E0
CMP             R3, #2
BEQ             loc_21D810
CMP             R3, #3
BNE             locret_21D7CC
ADD             R2, R2, #1
CMP             R1, R2
BGE             locret_21D7CC
ADD             R3, R0, R1,LSL#2
LDR             R3, [R3,#0x10]
LDR             R3, [R3,#0x648]
TST             R3, #4
BNE             loc_21D7C8
B               loc_21D840
ADD             R2, R2, #1
CMP             R1, R2
BGE             locret_21D7CC
ADD             R3, R0, R1,LSL#2
LDR             R3, [R3,#0x10]
LDRB            R3, [R3,#0xDE]
TST             R3, #1
BEQ             loc_21D7D0
VMOV.F32        S0, S1
BX              LR
ADD             R1, R1, #1
CMP             R1, R2
BLT             loc_21D7B4
BX              LR
ADD             R2, R2, #1
CMP             R1, R2
BGE             locret_21D7CC
ADD             R3, R0, R1,LSL#2
LDR             R3, [R3,#0x10]
LDR             R3, [R3,#0x8F4]
TST             R3, #4
BNE             loc_21D7C8
ADD             R1, R1, #1
CMP             R1, R2
BLT             loc_21D7EC
BX              LR
ADD             R2, R2, #1
CMP             R1, R2
BGE             locret_21D7CC
ADD             R3, R0, R1,LSL#2
LDR             R3, [R3,#0x10]
LDR             R3, [R3,#0x648]
TST             R3, #2
BNE             loc_21D7C8
ADD             R1, R1, #1
CMP             R1, R2
BLT             loc_21D81C
BX              LR
ADD             R1, R1, #1
CMP             R1, R2
BLT             loc_21D790
BX              LR
