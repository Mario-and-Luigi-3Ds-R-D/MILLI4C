PUSH            {R4,LR}
MOV             R4, R0
LDR             R0, [R0,#0x64]
LDR             R1, =off_6ACEDC
CMP             R0, #0
STR             R1, [R4]
BEQ             loc_1588A0
LDR             R1, [R0]
LDR             R1, [R1,#8]
BLX             R1
MOV             R1, #0
ADD             R0, R4, #0x10
STRH            R1, [R4,#0x3C]
BL              sub_10D4F0
MOV             R0, R4
POP             {R4,PC}
