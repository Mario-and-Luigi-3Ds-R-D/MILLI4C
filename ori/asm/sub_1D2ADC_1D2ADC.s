ADD             R1, R0, #0x100000
ADD             R1, R1, #0xE000
PUSH            {R4-R6,LR}
MOV             R4, R0
LDR             R0, [R1,#0x90]
CMP             R0, #0
BEQ             loc_1D2B04
LDRB            R0, [R0,#0x16E]
CMP             R0, #0
BEQ             locret_1D2B38
LDR             R0, =0x10D4D8
MOV             R2, #0
STR             R2, [R1,#0x90]
ADD             R0, R0, R4
MOV             R5, R0
BL              sub_5711E4
MOV             R0, R5
NOP
BL              sub_571348
LDR             R1, =unk_653FC0
ADD             R2, R4, #0x1A0000
LDRD            R0, R1, [R1,#(off_654054 - 0x653FC0)]
STRD            R0, R1, [R2,#0x5C]
POP             {R4-R6,PC}
