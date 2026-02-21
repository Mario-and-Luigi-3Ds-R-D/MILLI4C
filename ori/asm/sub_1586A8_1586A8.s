PUSH            {R4,LR}
MOV             R4, R0
LDR             R0, [R0,#0x14]
CMP             R0, #0
MOVEQ           R0, #5
BEQ             loc_1586E0
ADD             R0, R1, R1,LSR#31
ADD             R1, R4, #0x10
MOV             R2, R0,ASR#1
CMP             R2, #2
LDR             R0, =unk_6EB568
MOVLT           R2, #2
BL              sub_51C77C
MOV             R0, #4
STRB            R0, [R4,#0x40]
POP             {R4,PC}
