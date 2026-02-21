PUSH            {R4,LR}
LDR             R2, =off_6ACEDC
LDR             R1, [R0,#0x64]
MOV             R4, R0
STR             R2, [R0]
CMP             R1, #0
BEQ             loc_158858
LDR             R0, [R1]
LDR             R2, [R0,#8]
MOV             R0, R1
BLX             R2
MOV             R1, #0
ADD             R0, R4, #0x10
STRH            R1, [R4,#0x3C]
BL              sub_10D4F0
MOV             R0, R4
POP             {R4,LR}
B               sub_300FD4
