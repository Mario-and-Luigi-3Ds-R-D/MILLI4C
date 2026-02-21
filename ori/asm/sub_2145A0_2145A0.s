PUSH            {R4-R6,LR}
MOV             R4, R0
LDR             R0, [R0,#0xC]
BL              sub_52D318
CMP             R0, #0
BNE             locret_214670
LDR             R1, [R4,#0xC]
LDR             R0, =loc_19D698
MOV             R5, #0
STRB            R5, [R1,R0]
LDR             R0, [R4,#0xC]
CMP             R0, #0
BEQ             loc_2145E4
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
STR             R5, [R4,#0xC]
LDRB            R0, [R4,#0x10]
CMP             R0, #1
BEQ             loc_214604
CMP             R0, #2
CMPNE           R0, #3
BEQ             loc_21461C
CMP             R0, #4
BNE             locret_214670
LDR             R0, [R4]
LDR             R1, [R0,#8]
MOV             R0, R4
BLX             R1
POP             {R4-R6,LR}
B               sub_585EFC
LDRB            R0, [R4,#0x14]
MOV             R3, #0x64 ; 'd'
MOV             R2, #0
MOV             R1, #1
BL              sub_47FEF8
MOV             R3, #0
STRB            R0, [R4,#0x14]
LDR             R1, =dword_6ED9B8
LDR             R0, =off_1A00A0
MOV             R2, R3
BL              sub_10A358
CMP             R0, #0
MOVNE           R1, R4
BLNE            sub_1D7350
STR             R0, [R4,#0xC]
LDRB            R1, [R4,#0x10]
CMP             R1, #3
BNE             locret_214670
POP             {R4-R6,LR}
MOV             R1, #1
B               loc_52A470
POP             {R4-R6,PC}
