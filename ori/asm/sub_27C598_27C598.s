PUSH            {R4-R8,LR}
MOV             R5, R0
LDRB            R0, [R0,#0x3F8]
CMP             R0, #1
BEQ             loc_27C630
MOV             R2, #0
MOV             R3, #0x3F800000
STR             R2, [R5,#0x494]
STR             R3, [R5,#0x490]
STR             R2, [R5,#0x498]
LDR             R12, [R5,#0x484]
ADD             R0, R5, #0x490
STR             R12, [R5,#0x49C]
STRD            R2, R3, [R0,#0x10]
STR             R2, [R5,#0x4A8]
LDR             R12, [R5,#0x488]
STR             R2, [R5,#0x4B0]
STR             R12, [R5,#0x4AC]
STRD            R2, R3, [R0,#0x24]
LDR             R1, [R5,#0x48C]
STR             R1, [R5,#0x4BC]
MOV             R0, R5
BL              sub_27D73C
MOV             R0, R5
NOP
BL              sub_27CBB8
ADD             R4, R5, #0x6F0
MOV             R6, R5
LDM             R4, {R4,R5}
CMP             R4, R5
BEQ             locret_27C62C
LDR             R0, [R4]
MOV             R1, R6
BL              sub_26A1F0
ADD             R4, R4, #0xC
CMP             R4, R5
BNE             loc_27C614
POP             {R4-R8,PC}
LDM             R1, {R0,R2-R4,R6-R8,R12}
ADD             LR, R5, #0x490
STM             LR, {R0,R2-R4,R6-R8,R12}
ADD             R4, R5, #0x400
ADD             R4, R4, #0xB8
LDR             R0, [R1,#0x28]
LDRD            R2, R3, [R1,#0x20]
LDR             R1, [R1,#0x2C]
STM             R4, {R0,R1}
ADD             R0, R5, #0x4B0
STM             R0, {R2,R3}
B               loc_27C5EC
