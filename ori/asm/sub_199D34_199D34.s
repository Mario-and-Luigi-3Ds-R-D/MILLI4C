PUSH            {R4-R8,LR}
MOV             R5, R0
BL              sub_1F3B88
LDR             R0, [R5,#0x258]
MOV             R7, #0
CMP             R0, #0
BEQ             loc_199D58
BL              sub_533330
STR             R7, [R5,#0x258]
MOV             R0, R5
BL              sub_1FF748
MOV             R4, #0
STR             R7, [R5,#0x1B8]
ADD             R0, R5, R4,LSL#3
ADD             R0, R0, #0x234
BL              sub_5A083C
ADD             R6, R5, R4,LSL#2
LDR             R0, [R6,#0x224]
CMP             R0, #0
BEQ             loc_199DAC
LDR             R1, [R0]
LDR             R1, [R1,#0x24]
BLX             R1
LDR             R0, [R6,#0x224]!
CMP             R0, #0
BEQ             loc_199DAC
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
STR             R7, [R6]
ADD             R4, R4, #1
CMP             R4, #4
BLT             loc_199D68
LDR             R0, [R5,#0x1A0]
CMP             R0, #0
BEQ             loc_199DD0
LDR             R1, =sub_29AD78
BLX             sub_3016C8
STR             R7, [R5,#0x1A0]
LDR             R0, [R5,#0x1A4]
CMP             R0, #0
BEQ             locret_199DE8
LDR             R1, =sub_29AD78
BLX             sub_3016C8
STR             R7, [R5,#0x1A4]
POP             {R4-R8,PC}
