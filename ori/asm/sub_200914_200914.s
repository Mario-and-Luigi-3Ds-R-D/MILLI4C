LDR             R1, =off_67ECA8
PUSH            {R4-R6,LR}
MOV             R4, R0
MOV             R5, #0
LDRD            R0, R1, [R1]
MOV             R2, #4
STRD            R0, R1, [R4]
LDR             R1, =0xFFFF
ADD             R0, R4, #0xC
STR             R5, [R4,#8]
BL              sub_110BE4
MOV             R0, R4
STRH            R5, [R4,#0x10]
POP             {R4-R6,PC}
