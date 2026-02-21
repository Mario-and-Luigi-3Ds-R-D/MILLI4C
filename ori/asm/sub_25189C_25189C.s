PUSH            {R4-R10,LR}
MOV             R5, R1
MOV             R6, R0
MOV             R9, R2
LDR             R1, [R1,#0xC]
LDR             R0, [R5,#0x10]
ADD             R10, R6, #0x10
ADD             R4, R1, #1
MOV             R3, #0
MUL             R2, R1, R0
ADD             R0, R0, #1
MOV             R1, R9
MUL             R8, R4, R0
ADD             R0, R2, R2,LSL#1
MOV             R2, R3
MOV             R7, R0,LSL#1
ADD             R0, R6, #8
STM             R0, {R7,R8}
ADD             R0, R8, R8,LSL#2
VLDM            R5, {S0-S6}
MOV             R0, R0,LSL#2
VSTM            R10, {S0-S6}
BL              sub_1143B4
CMP             R0, #0
BEQ             loc_251910
LDR             R1, =nullsub_1088
MOV             R3, R8
MOV             R2, #0x14
BLX             sub_1002F4
MOV             R3, #0
STR             R0, [R6]
MOV             R0, R7,LSL#1
MOV             R2, R3
MOV             R1, R9
BL              sub_1143B4
STR             R0, [R6,#4]
LDR             R1, [R5,#0xC]
MOV             R3, #0
CMP             R1, #0
BLS             loc_251994
LDR             R1, [R5,#0x10]
MOV             R2, #0
CMP             R1, #0
BLS             loc_251984
MLA             R7, R2, R4, R3
ADD             R2, R2, #1
ADD             R12, R7, #1
STRH            R12, [R0],#2
ADD             R1, R7, R4
STRH            R7, [R0],#2
ADD             R7, R1, #1
STRH            R1, [R0],#2
STRH            R1, [R0],#2
STRH            R7, [R0],#2
STRH            R12, [R0],#2
LDR             R1, [R5,#0x10]
CMP             R1, R2
BHI             loc_25194C
LDR             R1, [R5,#0xC]
ADD             R3, R3, #1
CMP             R1, R3
BHI             loc_25193C
MOV             R0, R6
POP             {R4-R10,LR}
B               sub_25170C
