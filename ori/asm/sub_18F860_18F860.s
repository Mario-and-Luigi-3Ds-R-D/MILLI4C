PUSH            {R4-R10,LR}
MOV             R8, R0
LDR             R0, [R0]
LDR             R1, [R0,#0x164]
MOV             R0, R8
BLX             R1
CMP             R0, #0
BNE             locret_18F8FC
ADD             R7, R8, #0x14000
MOV             R4, #0
LDRB            R0, [R7,#0x285]
CMP             R0, #0
ADDGT           R6, R8, #0x13C00
MOVGT           R9, #0x5C ; '\'
ADDGT           R6, R6, #0x84
BLE             loc_18F8DC
LDR             R0, [R6]
ADD             R5, R4, R4,LSL#1
ADD             R1, R9, R5,LSL#5
LDR             R1, [R0,R1]
CMP             R1, #0
BNE             loc_18F8CC
ADD             R0, R0, R5,LSL#5
BL              sub_1E4D00
LDR             R0, [R6]
ADD             R0, R0, R5,LSL#5
BL              sub_1E4C48
LDRB            R0, [R7,#0x285]
ADD             R4, R4, #1
CMP             R0, R4
BGT             loc_18F8A0
LDR             R0, [R8]
MOV             R3, #1
LDR             R12, [R0,#0x50]
LDR             R0, =off_67DC94
LDM             R0, {R1,R2}
MOV             R0, R8
POP             {R4-R10,LR}
BX              R12
POP             {R4-R10,PC}
