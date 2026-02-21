PUSH            {R4-R7,LR}
MOVS            R6, R2
MOVS            R7, R0
SUB             SP, SP, #0x10C
LDR             R1, [R1,#0x14]
MOVS            R4, R3
MOVS            R2, #1
ADD             R0, SP, #0x120+var_20
BL              sub_301784
SUBS            R4, R4, R6
CMP             R4, #0xFF
BLS             loc_102D5E
ADDS            R0, R4, #1
BL              sub_301570
MOVS            R5, R0
B               loc_102D60
MOV             R5, SP
MOVS            R2, R4
MOVS            R1, R6
MOVS            R0, R5
BLX             sub_2FF3D8
MOVS            R0, #0
MOVS            R2, R0
MOVS            R1, R5
STRB            R0, [R5,R4]
BL              sub_3017D6
ADDS            R6, R0, #1
ADD             R0, SP, #0x120+var_18
NOP
NOP
MOVS            R3, R0
MOVS            R2, R6
MOVS            R1, #0
MOVS            R0, R7
BL              sub_301828
MOVS            R4, R0
BL              sub_301888
MOVS            R2, R6
MOVS            R1, R5
BL              sub_3017D6
MOV             R0, SP
CMP             R5, R0
BEQ             loc_102DA4
MOVS            R0, R5
BLX             sub_2FF5D4
ADD             R0, SP, #0x120+var_20
BL              sub_3017BC
ADD             SP, SP, #0x10C
POP             {R4-R7,PC}
