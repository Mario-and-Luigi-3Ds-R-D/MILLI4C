PUSH            {R4,LR}
MOV             R4, R0
BL              sub_118B10
BL              sub_118B8C
BL              loc_1201A0
LDR             R2, [R4,#4]
LDRD            R0, R1, [R4,#8]
BLX             R2
LDR             R1, [R4]
LDR             R0, [R4,#0xC]
BLX             R1
LDR             R0, [R4,#0x10]
CMP             R0, #0
BLNE            sub_1201B0
POP             {R4,LR}
NOP
