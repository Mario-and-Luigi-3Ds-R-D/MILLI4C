PUSH            {R4-R6,LR}
MOV             R4, R0
BL              sub_528E64
MOV             R5, R0
BL              sub_1451FC
STR             R0, [R5,#0x140]
MOV             R3, #0
MOV             R2, #3
MOV             R1, #2
MOV             R0, R4
BL              sub_52A660
MOV             R1, #0
MOV             R0, R4
BL              sub_529274
LDR             R1, =unk_653FC0
ADD             R2, R4, #0x1A0000
LDRD            R0, R1, [R1,#(off_654074 - 0x653FC0)]
STRD            R0, R1, [R2,#0x5C]
POP             {R4-R6,PC}
