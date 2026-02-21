PUSH            {R4-R6,LR}
MOV             R4, R1
ADD             R1, R1, #4
MOV             R5, R0
LDM             R1, {R1,R2}
LDR             R0, [R0,#0x34]
ADD             R1, R1, R2
SUB             R1, R1, R0
SUB             R1, R1, #0x18
MOV             R1, R1,LSR#3
STR             R1, [R0,#8]
LDRD            R0, R1, [R4,#4]
BL              sub_122994
LDR             R1, [R4,#0xC]
MOV             R0, #0
ORR             R1, R1, #4
STR             R1, [R4,#0xC]
LDR             R1, [R5,#0x30]
STR             R1, [R4,#8]
STR             R0, [R5,#0x34]
STR             R0, [R5,#0x30]
POP             {R4-R6,PC}
