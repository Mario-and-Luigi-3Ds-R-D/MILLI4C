LDR             R2, =0x14287
LDRB            R3, [R2,R0]
MOV             R2, #0
CMP             R3, #0
ADDGT           R0, R0, #0x13C00
ADDGT           R0, R0, #0x94
LDRGT           R12, [R0]
BLE             loc_1648B0
ADD             R0, R2, R2,LSL#1
ADD             R0, R12, R0,LSL#5
LDR             R0, [R0,#0x34]
CMP             R0, R1
BNE             loc_1648A4
SXTB            R0, R2
BX              LR
ADD             R2, R2, #1
CMP             R3, R2
BGT             loc_164888
MOV             R0, #0xFFFFFFFF
BX              LR
