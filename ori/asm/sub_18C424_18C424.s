PUSH            {R3-R11,LR}
ADD             R4, R0, #0x10000
MOV             R6, R0
ADD             R4, R4, #0x3D00
LDR             R7, =off_6D1648
LDR             R0, [R7]
LDR             R1, [R0,#0xC8]
TST             R1, #8
BEQ             loc_18C4A4
ADD             R0, R0, #0x4000
LDR             R0, [R0,#0x23C]
CMP             R0, #0
BGT             loc_18C484
CMN             R0, #1
BEQ             loc_18C484
CMN             R0, #3
BNE             loc_18C4FC
LDRH            R0, [R4,#4]
BL              sub_2AF718
LDR             R1, [R7]
LDR             R0, [R0,#0xC]
LDR             R1, [R1,#0x148]
CMP             R0, R1
BEQ             loc_18C4FC
LDR             R1, [R7]
LDR             R0, [R1,#0x9C]!
LDR             R2, [R1,#0xAC]
MOV             R1, #0
BL              sub_3215F0
NOP
NOP
B               loc_18C4FC
ADD             R5, R6, #0x10000
ADD             R5, R5, #0x3D40
LDR             R0, [R5]
TST             R0, #1
BEQ             loc_18C658
LDR             R0, =0x13D4C
LDR             R0, [R0,R6]
CMP             R0, #0
BGT             loc_18C4E4
CMN             R0, #1
BNE             loc_18C658
LDRH            R0, [R4,#4]
BL              sub_2AF718
LDR             R0, [R0,#0xC]
CMP             R0, #0
BEQ             loc_18C658
LDR             R0, [R7]
MOV             R1, #0
LDR             R3, [R0,#0x9C]!
LDR             R2, [R0,#0xAC]
MOV             R0, R3
BL              sub_3215F0
LDR             R0, [R6]
LDR             R1, [R0,#0x1F0]
MOV             R0, R6
BLX             R1
ADD             R1, R6, #0x15000
MOV             R0, #0
STRB            R0, [R1]
LDR             R0, [R4]
CMP             R0, #0
MOVNE           R10, #3
BEQ             loc_18C61C
LDR             R2, [R0]
MOV             R2, R2,LSL#28
CMP             R10, R2,LSR#29
BNE             loc_18C544
LDRB            R2, [R1]
ADD             R2, R2, #1
STRB            R2, [R1]
LDR             R2, [R0]
TST             R2, #1
ADDEQ           R0, R0, #0xC
BEQ             loc_18C528
LDRB            R5, [R1]
CMP             R5, #0
BEQ             loc_18C61C
ADD             R1, R5, R5,LSL#1
ADD             R1, R1, R5,LSL#7
MOV             R0, #8
ADD             R0, R0, R1,LSL#4
ADD             R1, R6, #0x13C00
MOV             R3, #0
ADD             R1, R1, #0x5C ; '\'
MOV             R2, R3
MOV             R9, R1
BL              sub_1143B4
CMP             R0, #0
NOP
BEQ             loc_18C5B4
ADD             R0, R0, #8
SUB             R2, R0, #8
MOV             R1, #0x830
STM             R2, {R1,R5}
MOV             R2, R1
LDR             R1, =sub_598EEC
MOV             R3, R5
BLX             sub_1002F4
ADD             R7, R6, #0x14C00
ADD             R7, R7, #0x3FC
ADD             R8, R6, #0x13C00
STR             R0, [R7]
LDR             R4, [R4]
MOV             R5, #0
ADD             R8, R8, #0x164
LDR             R0, [R4]
MOV             R0, R0,LSL#28
CMP             R10, R0,LSR#29
BNE             loc_18C60C
LDR             R0, [R8]
MOV             R3, R6
MOV             R2, R9
STR             R0, [SP,#0x28+var_28]
LDR             R1, [R7]
ADD             R0, R5, R5,LSL#1
ADD             R0, R0, R5,LSL#7
ADD             R0, R1, R0,LSL#4
MOV             R1, R4
BL              sub_598BA8
ADD             R5, R5, #1
LDR             R0, [R4]
TST             R0, #1
ADDEQ           R4, R4, #0xC
BEQ             loc_18C5D0
MOV             R1, #0x80
ADD             R0, R6, #0xCC
BL              sub_59BE7C
ADD             R0, R6, #0xCC
NOP
BL              sub_4B1570
MOV             R1, #1
ADD             R0, R6, #0xCC
BL              sub_59C530
LDR             R0, [R6]
LDR             R1, [R0,#0x2F0]
ADD             SP, SP, #4
MOV             R0, R6
POP             {R4-R11,LR}
BX              R1
LDR             R0, [R7]
LDR             R1, [R0,#0xC8]
TST             R1, #7
BNE             loc_18C4FC
LDR             R1, [R5]
TST             R1, #1
BNE             loc_18C4FC
LDR             R2, [R0,#0x148]
CMP             R2, #0
LDRGT           R0, [R0,#0x9C]
MOVGT           R1, #0
BLE             loc_18C4FC
B               loc_18C4F8
