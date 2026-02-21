PUSH            {R4,LR}
MOV             R4, R0
LDR             R0, =dword_69829C
MOV             R2, R1
MOV             R1, R4
LDR             R0, [R0]
BL              sub_10DEF4
AND             R0, R0, #0x80000000
CMP             R0, #0
MOVLT           R0, #0
BLT             locret_1076B8
LDR             R0, =off_6D307C
STR             R4, [R0,#(dword_6D3080 - 0x6D307C)]
LDR             R0, [R4,#0x14]
CMP             R0, #0
MOVNE           R0, #1
BLNE            sub_118E50
MOV             R0, R4
POP             {R4,PC}
