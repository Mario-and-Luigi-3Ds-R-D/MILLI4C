PUSH            {R4,LR}
MOV             R4, R0
LDR             R1, =dword_6ED9B8
MOV             R3, #0x800000
MOV             R2, #0
MOV             R0, #8
BL              sub_10A358
CMP             R0, #0
BEQ             loc_1E4654
BL              sub_1EA5A8
LDR             R1, =off_6B1994
STR             R1, [R0]
STR             R0, [R4,#0xC4]
LDR             R1, =dword_6ED9B8
LDR             R0, =0x17AD0
MOV             R3, #0x800000
MOV             R2, #0
BL              sub_10A358
CMP             R0, #0
NOP
BLNE            sub_168AA0
STR             R0, [R4,#0xBC]
LDR             R1, =dword_6ED9B8
LDR             R0, =0x3C188
MOV             R3, #0x800000
MOV             R2, #0
BL              sub_10A358
CMP             R0, #0
NOP
BLNE            sub_162564
STR             R0, [R4,#0xC0]
LDR             R0, [R4]
LDR             R1, [R0,#0x1C]
MOV             R0, R4
POP             {R4,LR}
BX              R1
