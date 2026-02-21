PUSH            {R4,R5,LR}
MOV             R4, R0
AND             R0, R1, #0x7F
LDR             R1, =unk_656C74
MOV             R3, #0x100
VPUSH           {D8}
SUB             SP, SP, #4
LDRB            R1, [R1,R0]
MOV             R2, #0
ADD             R0, R4, #0x190
BL              sub_11DCDC
LDR             R0, =flt_6E34B0
ADD             R5, R4, #0x100
VLDR            S16, [R0,#(flt_6E3718 - 0x6E34B0)]
MOV             R0, R5
BL              sub_5A26D0
ADD             R0, R4, #0x2A0
ADD             R3, R5, #0x20 ; ' '
LDM             R0, {R0-R2}
VMOV.F32        S0, S16
STR             R0, [R5,#0x1C]
ADD             R5, R5, #4
STM             R3, {R1,R2}
STM             R5, {R0-R2}
ADD             R2, R4, #0x294
MOV             R1, #0
ADD             R0, R4, #0x100
BL              sub_5A2298
MOV             R0, #0xFFFFFF00
ADD             R5, R4, #0x158
REV             R0, R0
STR             R0, [SP,#0x18+var_18]
MOV             R0, R5
BL              sub_4E63E0
LDR             R0, [SP,#0x18+var_18]
VMOV.F32        S0, S16
MOV             R1, SP
STR             R0, [R5,#4]
STR             R0, [R5]
MOV             R0, #0xFFFFFFFF
REV             R0, R0
STR             R0, [SP,#0x18+var_18]
ADD             R0, R4, #0x158
BL              sub_4E665C
MOV             R0, #1
STRB            R0, [R4,#0xFD]
ADD             SP, SP, #4
VPOP            {D8}
POP             {R4,R5,PC}
