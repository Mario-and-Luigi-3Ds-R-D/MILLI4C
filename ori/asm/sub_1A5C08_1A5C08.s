PUSH            {R4-R6,LR}
ADD             R4, R0, #0x2C ; ','
MOV             R5, R1
MOV             R0, R4
BL              sub_5A18EC
VLDR            S0, =0.0
ADD             R3, R4, #0x40 ; '@'
VSTR            S0, [R4,#0xC]
VSTR            S0, [R4,#4]
LDM             R5, {R0-R2}
ADD             R4, R4, #0x34 ; '4'
STM             R3, {R0-R2}
LDM             R5, {R0-R2}
STM             R4, {R0-R2}
POP             {R4-R6,PC}
