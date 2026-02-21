PUSH            {R4-R7,LR}
ADD             R0, R2, #0x18
ADD             R4, R2, #0x10
LDM             R0, {R0,R6}
ADD             R1, R2, #8
LDR             R3, [R2,#0x20]
LDM             R4, {R4,R7}
SUB             SP, SP, #0x1C
LDR             R5, [R2,#0x28]
VLDR            S0, [R2,#0x84]
ORR             R3, R3, R6,LSL#8
LDM             R1, {R1,R12}
MOV             R6, #0
VLDR            S1, =0.125
ORR             R0, R0, R7,LSL#8
STRH            R6, [SP,#0x30+var_30]
VSTR            S1, [SP,#0x30+var_20]
REV             R0, R0
STRH            R12, [SP,#0x30+var_2E]
STRH            R4, [SP,#0x30+var_2C]
STR             R0, [SP,#0x30+var_2A]
REV             R0, R3
MOV             R2, #0xFFFFFFFF
STR             R0, [SP,#0x30+var_26]
LDR             R0, =off_6CE970
REV             R2, R2
MOV             R2, #0xFFFFFF00
VSTR            S0, [SP,#0x30+var_20]
STRB            R5, [SP,#0x30+var_1C]
UXTH            R1, R1
REV             R2, R2
LDR             R0, [R0]
BL              sub_528FF0
MOV             R1, SP
BL              sub_14F09C
ADD             SP, SP, #0x1C
MOV             R0, #0
POP             {R4-R7,PC}
