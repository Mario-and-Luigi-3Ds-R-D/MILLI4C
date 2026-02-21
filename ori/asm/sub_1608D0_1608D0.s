PUSH            {R4-R10,LR}
ADD             R6, R0, #0x15000
MOV             R4, R0
ADD             R7, R0, #0x14400
LDRB            R0, [R6,#0xA1]
ADD             R8, R4, #0x14400
ADD             R7, R7, #8
CMP             R0, #0
ADD             R8, R8, #0x174
BEQ             loc_160904
CMP             R0, #1
MOVEQ           R0, R8
BLEQ            sub_50C2B0
LDR             R0, [R6,#0xA8]
ADD             R4, R4, #0x14400
MOV             R5, #0
ORR             R0, R0, #1
ADD             R4, R4, #0x18
STR             R0, [R6,#0xA8]
LDR             R0, [R4]
AND             R1, R5, #0xFF
BL              sub_3D93B0
MOV             R9, R0
MOV             R0, R9
BL              sub_5D7830
CMP             R0, #0
NOP
BEQ             loc_160954
MOV             R0, R9
BL              sub_3A2D5C
NOP
NOP
B               loc_16092C
ADD             R5, R5, #1
CMP             R5, #5
BLT             loc_16091C
LDRB            R0, [R6,#0xA2]
CMP             R0, #0
BEQ             loc_160980
CMP             R0, #1
BEQ             loc_1609EC
CMP             R0, #2
BNE             loc_160AC0
B               loc_160A84
LDRB            R0, [R6,#0xA1]
MOV             R3, #0
MOV             R2, R3
CMP             R0, #0xFF
STRBNE          R0, [R6,#0xA7]
LDR             R0, [R4]
MOV             R1, R3
BL              sub_3A2B2C
LDR             R0, [R4]
MOV             R3, #0
MOV             R2, #1
MOV             R1, #3
BL              sub_3A2B2C
LDR             R0, [R4]
MOV             R3, #0
MOV             R2, #1
MOV             R1, #4
BL              sub_3A2B2C
LDR             R0, [R7]
NOP
BL              sub_2AA6DC
LDR             R0, [R4]
NOP
BL              sub_3D89B8
NOP
NOP
B               loc_160AC0
MOV             R3, #0
LDR             R0, [R4]
MOV             R2, #1
MOV             R1, R3
BL              sub_3A2B2C
MOV             R3, #0
LDR             R0, [R4]
MOV             R2, R3
MOV             R1, #3
BL              sub_3A2B2C
MOV             R3, #0
LDR             R0, [R4]
MOV             R2, R3
MOV             R1, #4
BL              sub_3A2B2C
LDR             R5, [R4]
ADD             R0, R5, #0xC00
ADD             R0, R0, #0x354
MOV             R7, R0
BL              sub_5F1964
CMP             R0, #0
NOP
BEQ             loc_160A58
LDR             R0, [R5,#0xF64]
VLDR            S0, [R0,#0x10]
MOV             R0, R7
BL              sub_5A176C
LDR             R0, [R4]
BL              sub_3D8A70
MOV             R0, R8
NOP
BL              sub_50C28C
MOV             R0, R8
NOP
BL              sub_50B780
NOP
NOP
B               loc_160AC0
MOV             R3, #0
LDR             R0, [R4]
MOV             R2, #1
MOV             R1, R3
BL              sub_3A2B2C
MOV             R3, #0
LDR             R0, [R4]
MOV             R2, R3
MOV             R1, #3
BL              sub_3A2B2C
MOV             R3, #0
LDR             R0, [R4]
MOV             R2, R3
MOV             R1, #4
BL              sub_3A2B2C
LDR             R0, [R4]
MOV             R3, #0
MOV             R2, #1
MOV             R1, #2
BL              sub_3A2B2C
MOV             R2, #1
LDR             R0, [R4]
MOV             R3, #0
MOV             R1, R2
BL              sub_3A2B2C
LDRB            R0, [R6,#0xA2]
STRB            R0, [R6,#0xA1]
POP             {R4-R10,PC}
