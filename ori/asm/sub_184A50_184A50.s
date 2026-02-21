LDR             R1, =off_6AF598
PUSH            {R4-R6,LR}
MOV             R4, #0
STM             R0, {R1,R4}
MOV             R3, #2
LDR             R1, =sub_32134C
MOV             R2, #0x98
ADD             R0, R0, #8
BLX             sub_1002F4
LDR             R1, =sub_2FC53C
MOV             R3, #4
MOV             R2, #0xC8
ADD             R0, R0, #0x130
BLX             sub_1002F4
STR             R4, [R0,#0x320]
STR             R4, [R0,#0x324]
STRB            R4, [R0,#0x328]
SUB             R6, R0, #0x138
STR             R4, [R0,#0x330]
ADD             R0, R4, R4,LSL#1
ADD             R0, R0, R4,LSL#4
LDR             R1, =unk_6739DB
ADD             R0, R6, R0,LSL#3
ADD             R5, R0, #8
ADD             R2, R0, #0x20 ; ' '
MOV             R3, #0x20 ; ' '
MOV             R0, R5
BL              sub_1F4764
STR             R6, [R5,#0x10]
STRB            R4, [R5,#0x14]
ADD             R4, R4, #1
CMP             R4, #2
BLT             loc_184A9C
MOV             R0, R6
POP             {R4-R6,PC}
