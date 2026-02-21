PUSH            {R4-R6,LR}
MOV             R4, R0
LDR             R0, [R0,#0x14]
MOV             R5, #0
CMP             R0, #0
BEQ             loc_15ACC8
BL              sub_110D10
STR             R5, [R4,#0x14]
LDR             R0, [R4,#0xC]
CMP             R0, #0
BEQ             loc_15ACDC
BL              sub_110D10
STR             R5, [R4,#0xC]
ADD             R0, R4, #0x2C ; ','
BL              sub_595CF8
ADD             R0, R4, #0x74 ; 't'
NOP
BL              sub_1E2754
ADD             R0, R4, #0xBC
NOP
BL              sub_222014
ADD             R0, R4, #0xC8
POP             {R4-R6,LR}
NOP
PUSH            {R4-R6,LR}
MOV             R4, R0
LDR             R0, [R0]
LDR             R1, [R0,#0xC]
MOV             R0, R4
BLX             R1
LDR             R0, [R4,#8]
MOV             R5, #0
CMP             R0, #0
BEQ             loc_15AD38
BL              sub_110D10
STR             R5, [R4,#8]
LDR             R0, [R4,#4]
CMP             R0, #0
BEQ             loc_15AD4C
BL              sub_2FF5D4
STR             R5, [R4,#4]
STR             R5, [R4,#0x10]
LDR             R0, [R4,#0xC]
CMP             R0, #0
BEQ             locret_15AD74
ADD             R0, R4, #0x14
BL              sub_1DFDA8
ADD             R0, R4, #0x14
NOP
BL              sub_10D33C
STR             R5, [R4,#0xC]
POP             {R4-R6,PC}
