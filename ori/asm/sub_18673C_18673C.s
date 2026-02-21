PUSH            {R4-R10,LR}
MOV             R8, R0
MOV             R7, #0
LDR             R9, =off_6D1648
ADD             R0, R8, R7
ADD             R5, R0, #0x14000
MOV             R4, #0
LDRB            R0, [R5,#0x28B]
CMP             R0, #0
ADDGT           R0, R8, R7,LSL#2
ADDGT           R6, R0, #0x13C00
ADDGT           R6, R6, #0xA4
BLE             loc_1867AC
LDR             R0, [R6]
ADD             R0, R0, R4,LSL#1
LDRH            R0, [R0]
NOP
LDR             R2, [R9]
MOV             R1, R0
LDR             R2, [R2,#0xA0]
ADD             R2, R2, #0x14400
ADD             R2, R2, #0x204
MOV             R0, R2
BL              sub_50EB80
LDRB            R0, [R5,#0x28B]
ADD             R4, R4, #1
CMP             R0, R4
BGT             loc_186770
ADD             R7, R7, #1
CMP             R7, #2
BLT             loc_18674C
LDR             R0, [R8]
MOV             R3, #1
LDR             R12, [R0,#0x50]
LDR             R0, =off_67DB6C
LDM             R0, {R1,R2}
MOV             R0, R8
POP             {R4-R10,LR}
BX              R12
