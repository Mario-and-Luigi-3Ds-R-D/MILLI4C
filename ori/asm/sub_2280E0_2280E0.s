ADD             R0, R0, #0x12400
ADD             R0, R0, #0x2E8
LDR             R0, [R0]
NOP
PUSH            {R4-R6,LR}
MOV             R4, R0
MOV             R0, #2
STRB            R0, [R4]
LDR             R0, [R4,#4]
ADD             R3, R4, #8
VLDR            S0, =0.0
ADD             R1, R0, #0x24 ; '$'
LDR             R0, [R0,#0x2C]
LDM             R1, {R1,R2}
STR             R0, [R4,#0x10]
LDR             R0, =off_6CDA80
STM             R3, {R1,R2}
LDR             R0, [R0]
ADD             R0, R0, #0x12400
ADD             R0, R0, #0x2F4
LDR             R5, [R0]
ADD             R0, R4, #0xE4
VLDR            S1, [R5,#0x60]
BL              sub_5A14A4
ADD             R4, R4, #0x20 ; ' '
MOV             R0, R4
BL              sub_5A26D0
ADD             R5, R5, #0x1D0
ADD             R3, R4, #0x1C
LDM             R5, {R0-R2}
ADD             R4, R4, #4
STM             R3, {R0-R2}
STM             R4, {R0-R2}
POP             {R4-R6,PC}
