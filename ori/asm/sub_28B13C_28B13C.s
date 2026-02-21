PUSH            {R4-R6,LR}
MOV             R6, #0
STR             R6, [R0,#4]
MOV             R4, R0
STR             R6, [R0,#8]
LDR             R0, =off_6BC458
MOV             R5, R1
STR             R0, [R4]
BL              sub_4635D8
LDM             R0, {R2,R3,R12}
ADD             LR, R4, #0xC
STR             R5, [R4,#0x18]
MOV             R1, #1
STM             LR, {R2,R3,R12}
MOV             R0, #0xFFFFFFFF
STRB            R6, [R4,#0x1C]
STRB            R1, [R4,#0x1D]
STR             R0, [R4,#0x20]
LDR             R0, =off_6BC388
STR             R0, [R4]
BL              sub_4635D8
LDM             R0, {R1,R2}
ADD             R3, R4, #0x84
LDR             R0, [R0,#8]
STR             R0, [R4,#0x8C]
STM             R3, {R1,R2}
ADD             R3, R4, #0x78 ; 'x'
STR             R0, [R4,#0x80]
STM             R3, {R1,R2}
ADD             R3, R4, #0x6C ; 'l'
STR             R0, [R4,#0x74]
STM             R3, {R1,R2}
ADD             R3, R4, #0x30 ; '0'
STR             R0, [R4,#0x38]
STM             R3, {R1,R2}
STR             R0, [R4,#0x2C]
ADD             R0, R4, #0x24 ; '$'
STM             R0, {R1,R2}
MOV             R0, R4
POP             {R4-R6,PC}
