PUSH            {R4-R11,LR}
ADD             R5, SP, #0x24+arg_0
LDM             R5, {R4,R12}
ADD             R5, SP, #0x24+arg_8
LDR             LR, [SP,#0x24+arg_2C]
VLDM            R5, {S0-S1}
LDR             R5, [SP,#0x24+arg_10]
LDRD            R6, R7, [SP,#0x24+arg_14]
LDRD            R8, R9, [SP,#0x24+arg_1C]
LDRD            R10, R11, [SP,#0x24+arg_24]
STRH            R1, [R0]
STRH            R2, [R0,#2]
STRH            R3, [R0,#4]
STRH            R4, [R0,#6]
STRB            R12, [R0,#8]
VSTR            S0, [R0,#0xC]
VSTR            S1, [R0,#0x10]
STRB            R5, [R0,#0x14]
STRH            R6, [R0,#0x16]
LDRH            R2, [R0,#0x18]
MOV             R3, #2
MOV             R5, #0xC
AND             R12, R3, R8,LSL#1
AND             R3, R5, R9,LSL#2
BIC             R5, R2, #1
AND             R1, R7, #1
ORR             R1, R1, R5
BIC             R1, R1, #2
ORR             R1, R1, R12
MOV             R4, #0x10
AND             R2, R4, R10,LSL#4
BIC             R1, R1, #0xC
ORR             R1, R1, R3
MOV             R4, #0x60 ; '`'
BIC             R1, R1, #0x10
AND             R12, R4, R11,LSL#5
ORR             R1, R1, R2
BIC             R1, R1, #0x60 ; '`'
MOV             R5, #0x780
ORR             R1, R1, R12
AND             R4, R5, LR,LSL#7
BIC             R1, R1, #0x780
ORR             R1, R1, R4
STRH            R1, [R0,#0x18]
POP             {R4-R11,PC}
