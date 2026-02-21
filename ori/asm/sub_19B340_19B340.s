PUSH            {R4,LR}
MOV             R4, R0
LDR             R0, =off_6D1648
LDR             R0, [R0]
LDR             R0, [R0,#0xBC]
MOV             R1, R0
ADD             R0, R0, #0x14000
LDRB            R2, [R0,#0x289]
MOV             R0, #0
CMP             R2, #0
ADDGT           R1, R1, #0x13C00
ADDGT           R1, R1, #0x9C
LDRGT           R3, [R1]
BLE             loc_19B39C
ADD             R1, R3, R0,LSL#6
LDR             R12, [R1,#0x10]
CMP             R12, R4
BNE             loc_19B390
MOV             R0, R1
