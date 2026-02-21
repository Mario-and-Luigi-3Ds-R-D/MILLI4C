PUSH            {R4-R6,LR}
MOV             R5, R0
LDM             R1, {R0,R2}
ADD             R3, R5, #0x400
LDR             R1, [R1,#8]
ADD             R3, R3, #0x84
ADD             R4, R5, #0x4A0
STR             R1, [R5,#0x48C]
STM             R3, {R0,R2}
MOV             R1, #0
MOV             R3, #0x3F800000
STR             R1, [R5,#0x494]
STR             R3, [R5,#0x490]
STR             R1, [R5,#0x498]
LDR             R12, [R5,#0x484]
ADD             R0, R5, #0x490
STR             R12, [R5,#0x49C]
STM             R4, {R1,R3}
ADD             R4, R5, #0x400
STR             R1, [R5,#0x4A8]
LDR             R12, [R5,#0x488]
ADD             R4, R4, #0xB4
STR             R1, [R5,#0x4B0]
STR             R12, [R5,#0x4AC]
STM             R4, {R1,R3}
LDR             R1, [R5,#0x48C]
STR             R1, [R0,#0x2C]
MOV             R0, R5
BL              sub_27D73C
MOV             R0, R5
BL              sub_27CBB8
ADD             R4, R5, #0x6F0
MOV             R6, R5
LDM             R4, {R4,R5}
CMP             R4, R5
BEQ             locret_27C708
LDR             R0, [R4]
MOV             R1, R6
BL              sub_26A1F0
ADD             R4, R4, #0xC
CMP             R4, R5
BNE             loc_27C6F0
POP             {R4-R6,PC}
