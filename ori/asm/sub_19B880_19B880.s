LDR             R2, =0x14287
LDRB            R3, [R2,R0]
MOV             R2, #0
CMP             R3, #0
ADDGT           R0, R0, #0x13C00
ADDGT           R0, R0, #0x94
LDRGT           R0, [R0]
BLE             loc_19B8C8
ADD             R12, R2, R2,LSL#1
ADD             R12, R0, R12,LSL#5
LDR             R12, [R12,#0x34]
CMP             R12, R1
BNE             loc_19B8BC
AND             R0, R2, #0xFF
BX              LR
ADD             R2, R2, #1
CMP             R3, R2
BGT             loc_19B8A0
MOV             R0, #0xFF
BX              LR
