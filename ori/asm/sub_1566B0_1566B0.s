PUSH            {R4-R7,LR}
MOV             R5, R0
SUB             SP, SP, #0xC
LDRB            R1, [R0,#0x38]
LDR             R0, [R0,#8]
CMP             R1, #5
LDR             R4, [R0,#0x18]
BEQ             loc_1566DC
MOV             R1, #0
MOV             R0, R5
BL              sub_153EF8
ADD             R0, R4, #0x1DC
BL              sub_5F19B8
CMP             R0, #0
NOP
BNE             loc_1567AC
BL              sub_4635D8
LDR             R2, [R4]
MOV             R1, R0
MOV             R0, R4
LDR             R2, [R2,#0x38]
BLX             R2
LDR             R7, =off_6CE970
LDR             R6, [R7]
BL              sub_47FFCC
CMP             R0, #0
NOP
BNE             loc_156730
LDR             R0, =byte_19CF30
LDRB            R0, [R0,R6]; byte_19CF30
CMP             R0, #0
BEQ             loc_15673C
LDR             R0, [R7]
MOV             R1, #0
BL              sub_52A4AC
LDR             R6, [R7]
BL              sub_4635D8
MOV             R2, #0
MOV             R1, #7
STMEA           SP, {R1,R2}
MOV             R3, R0
MOV             R2, R4
MOV             R1, #0
MOV             R0, R6
BL              sub_52AE1C
LDR             R0, =0xFFE683CC
LDR             R12, [R7]
LDRH            R1, [R4,#0x10]
LDR             R2, =0x30089
MOV             R3, #0
SUB             R0, R12, R0
BL              sub_503808
LDRB            R0, [R5,#0x38]
MOV             R3, #0x100
MOV             R2, #1
CMP             R0, #5
BEQ             loc_1567B4
MOV             R1, #0xA
MOV             R0, R4
BL              sub_14C548
LDR             R1, =off_63FDB0
LDRD            R0, R1, [R1,#(off_63FE60 - 0x63FDB0)]
STRD            R0, R1, [R5,#0xC]
ADD             SP, SP, #0xC
POP             {R4-R7,PC}
MOV             R1, #0x10
MOV             R0, R4
BL              sub_14C548
NOP
NOP
BL              sub_4635D8
LDR             R2, [R4]
MOV             R1, R0
MOV             R0, R4
LDR             R2, [R2,#0x38]
BLX             R2
B               loc_1567A0
