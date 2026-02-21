PUSH            {R4,LR}
MOV             R4, R0
LDR             R0, [R1,#0x5C]
CMP             R0, #0
MOVNE           R1, R0
LDR             R0, [R4,#0xA8]
CMP             R0, R1
BEQ             locret_194884
STR             R1, [R4,#0xA8]
LDR             R0, [R4,#0xA4]
BL              sub_592EDC
LDRD            R0, R1, [R4,#0xA4]
LDR             R2, [R0]
LDR             R2, [R2,#0xC]
BLX             R2
LDR             R1, [R4,#0xA4]
MOV             R0, #0
STR             R0, [R1,#0x1C]
POP             {R4,PC}
