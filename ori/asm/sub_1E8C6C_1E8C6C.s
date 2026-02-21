PUSH            {R4-R6,LR}
MOV             R5, R1
STRB            R1, [R0,#0x4C]
RSB             R1, R1, R5,LSL#3
MOV             R4, R0
ADD             R1, R1, R5,LSL#6
MOV             R12, R2
MOV             R0, #8
ADD             R0, R0, R1,LSL#2
MOV             R3, #0
MOV             R2, R3
MOV             R1, R12
BL              sub_1143B4
CMP             R0, #0
BEQ             loc_1E8CC8
ADD             R0, R0, #8
SUB             R2, R0, #8
MOV             R1, #0x11C
STM             R2, {R1,R5}
MOV             R2, R1
LDR             R1, =sub_536F90
MOV             R3, R5
BLX             sub_1002F4
STR             R0, [R4,#0x38]
POP             {R4-R6,PC}
