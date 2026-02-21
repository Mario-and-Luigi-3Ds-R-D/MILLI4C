PUSH            {R4-R10,LR}
MOV             R6, R0
MOV             R8, R1
MOV             R9, R2
LDRB            R0, [R0,#0x460]
MOV             R7, R3
MOV             R4, #0
CMP             R0, #0
MOVGT           R10, #0
BLE             loc_1848C8
LDR             R1, [R6,#0x45C]
LDRH            R0, [R7]
ADD             R2, R4, R4,LSL#1
CMP             R0, #0xEF
ADD             R5, R1, R2,LSL#2
BEQ             loc_184810
CMP             R5, #0
LDRNE           R1, [R5,#4]
CMPNE           R1, #0
BEQ             loc_1848B8
CMP             R0, #0xE9
BEQ             loc_184834
CMP             R0, #0xEB
BEQ             loc_184868
CMP             R0, #0xED
BEQ             loc_184878
CMP             R0, #0xEF
BNE             loc_1848B8
B               loc_18488C
LDR             R0, [R5,#4]
BL              sub_533330
LDR             R1, [R6,#0x458]
MOV             R0, #0
STR             R0, [R1,R4,LSL#2]
LDR             R0, [R5,#4]
CMP             R0, #0
BEQ             loc_1848B8
MOV             R1, #0
STR             R1, [R0,#0x180]
STR             R10, [R5,#4]
NOP
B               loc_1848B8
LDR             R0, [R5,#4]
LDRH            R1, [R0,#0xE]
ORR             R1, R1, #2
B               loc_184884
LDR             R0, [R5,#4]
LDRH            R1, [R0,#0xE]
BIC             R1, R1, #2
STRH            R1, [R0,#0xE]
B               loc_1848B8
CMP             R5, #0
BEQ             loc_1848B8
LDR             R0, [R5,#4]
CMP             R0, #0
BEQ             loc_1848B8
MOV             R2, R7
MOV             R1, R9
MOV             R0, R8
BL              sub_29D1B0
MOV             R0, #3
POP             {R4-R10,PC}
LDRB            R0, [R6,#0x460]
ADD             R4, R4, #1
CMP             R0, R4
BGT             loc_1847E8
MOV             R0, #0
POP             {R4-R10,PC}
