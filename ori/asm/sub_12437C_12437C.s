SXTB            R1, R1
PUSH            {R4,LR}
ADD             R2, R1, R1,LSL#2
ADD             R1, R2, R1,LSL#3
ADD             R0, R0, R1,LSL#2
ADD             R4, R0, #0x7000
LDR             R1, [R4,#0x26C]
CMP             R1, #0
BEQ             locret_1243C8
LDR             R1, [R4,#0x23C]
CMP             R1, #0
BEQ             loc_1243CC
ADD             R0, R0, #0x4000
ADD             R0, R0, #0x3240
BL              sub_121990
LDR             R0, [R4,#0x26C]
BL              sub_1361A4
MOV             R0, #0
STR             R0, [R4,#0x26C]
POP             {R4,PC}
ADD             R0, R0, #0x7000
ADD             R0, R0, #0x250
BL              sub_121BC4
NOP
NOP
B               loc_1243B8
