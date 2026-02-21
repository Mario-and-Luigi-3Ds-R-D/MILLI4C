PUSH            {R4-R10,LR}
MOV             R6, R0
ADD             R0, R0, #0x16C00
MOV             R8, R1
LDRSB           R0, [R0,#0xFC]
CMP             R0, R8
CMPEQ           R2, #0
BEQ             locret_165270
LDR             R0, =0x16CFC
ADD             R9, R6, #0x15000
MOV             R4, #0
STRB            R8, [R0,R6]
LDRB            R0, [R9]
CMP             R0, #0
ADDGT           R7, R6, #0x14C00
MOVGT           R10, #0xDE
ADDGT           R7, R7, #0x3FC
BLE             loc_1651CC
ADD             R1, R4, R4,LSL#1
LDR             R0, [R7]
ADD             R5, R1, R4,LSL#7
ADD             R1, R10, R5,LSL#4
LDRB            R1, [R0,R1]
TST             R1, #1
BEQ             loc_1651BC
LDR             R2, [R0,R5,LSL#4]!
EOR             R1, R8, #1
LDR             R2, [R2,#0x84]
BLX             R2
LDR             R0, [R7]
EOR             R1, R8, #1
LDR             R2, [R0,R5,LSL#4]!
LDR             R2, [R2,#0x320]
BLX             R2
LDRB            R0, [R9]
ADD             R4, R4, #1
CMP             R0, R4
BGT             loc_16517C
ADD             R7, R6, #0x14000
MOV             R4, #0
LDRB            R0, [R7,#0x28D]
CMP             R0, #0
MOVGT           R9, #0
BLE             locret_165270
ADD             R0, R6, R4,LSL#2
ADD             R5, R0, #0x14000
LDR             R0, [R5,#0x184]
LDR             R1, [R0]
LDR             R1, [R1,#8]
BLX             R1
CMP             R0, #7
BNE             loc_165260
LDR             R5, [R5,#0x184]
LDR             R0, =0x1224
LDRB            R0, [R0,R5]
CMP             R0, #0
BEQ             loc_165260
LDRB            R0, [R5,#0xDE]
TST             R0, #1
BEQ             loc_165260
LDR             R0, [R5]
EOR             R1, R8, #1
LDR             R2, [R0,#0x84]
MOV             R0, R5
BLX             R2
CMP             R8, #0
BEQ             loc_165254
LDR             R2, =0x1228
LDRB            R1, [R5,#0x648]
STR             R1, [R2,R5]
STRB            R9, [R5,#0x648]
B               loc_165260
LDR             R0, =0x1228
LDR             R0, [R0,R5]
STRB            R0, [R5,#0x648]
LDRB            R0, [R7,#0x28D]
ADD             R4, R4, #1
CMP             R0, R4
BGT             loc_1651E4
POP             {R4-R10,PC}
