PUSH            {R4-R6,LR}
MOV             R4, R0
ADD             R0, R0, #0x10C00
ADD             R0, R0, #0x254
MOV             R5, R0
BL              sub_2C666C
CMP             R0, #0
BEQ             locret_1DBF9C
MOV             R0, R5
BL              sub_2C66D8
LDR             R1, =unk_656B78
ADD             R2, R4, #0x20000
ADD             R2, R2, #0xA00
LDRD            R0, R1, [R1,#(off_656BF4 - 0x656B78)]
STRD            R0, R1, [R2,#0xBC]
POP             {R4-R6,PC}
