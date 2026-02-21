PUSH            {R4,LR}
MOV             R4, R0
BL              sub_4635D8
LDM             R0, {R1,R2}
LDR             R0, [R0,#8]
STR             R0, [R4,#8]
STM             R4, {R1,R2}
BL              sub_4635D8
LDM             R0, {R1,R2}
LDR             R0, [R0,#8]
STR             R0, [R4,#0x14]
ADD             R0, R4, #0xC
STM             R0, {R1,R2}
BL              sub_4635D8
LDM             R0, {R1-R3}
ADD             R12, R4, #0x18
MOV             R0, #0
VLDR            S0, =1.0
STM             R12, {R1-R3}
STRB            R0, [R4,#0x24]
VSTR            S0, [R4,#0x28]
MOV             R0, R4
POP             {R4,PC}
