PUSH            {R3-R5,LR}
MOV             R4, R3
LDR             R3, [SP,#0x10+arg_0]
STR             R3, [SP,#0x10+var_10]
MOV             R3, R4
BL              sub_22CF58
ADD             R0, R0, #0xE0
BL              sub_234BEC
LDR             R2, =off_6B3290
VLDR            S0, =0.0
MOV             R3, #0
ADD             R1, R2, #0x1D0
STR             R1, [R0],#-0xE0
MOV             R12, #0x10
STR             R2, [R0]
STRB            R3, [R0,#0x205]
VSTR            S0, [R0,#0x208]
ADD             R2, R0, #0x228
STRB            R12, [R0,#0x204]
STR             R2, [R0,#0x20C]
ADD             R2, R0, #0x268
STR             R2, [R0,#0x21C]
ADD             R2, R0, #0x2A8
STR             R2, [R0,#0x210]
ADD             R2, R0, #0x2E8
STR             R2, [R0,#0x220]
ADD             R2, R0, #0x328
ADD             R1, R0, #0x204
STR             R2, [R0,#0x214]
ADD             R2, R0, #0x368
STR             R2, [R1,#0x20]
ADD             R2, R0, #0x3A8
VLDR            S1, =1.0
STR             R2, [R1,#0x14]
VSTR            S1, [R0,#0xE4]
VSTR            S1, [R0,#0xE8]
VSTR            S1, [R0,#0xEC]
VSTR            S0, [R0,#0xF0]
VSTR            S0, [R0,#0xF4]
VSTR            S0, [R0,#0xF8]
VSTR            S0, [R0,#0x130]
VSTR            S0, [R0,#0x134]
VSTR            S0, [R0,#0x140]
VSTR            S0, [R0,#0x144]
LDR             R12, [R0,#0x164]
ADD             R1, R0, #0x400
VLDR            S3, =2.0
BIC             R12, R12, #7
STR             R12, [R0,#0x164]
LDRB            R12, [R0,#0x1AC]
VLDR            S1, =6.0
VLDR            S2, =-12.0
BIC             R12, R12, #1
STRB            R12, [R0,#0x1AC]
LDRB            R12, [R0,#0x1F4]
ADD             R2, R0, #0x400
CMP             R4, #0
BIC             R12, R12, #1
STRB            R12, [R0,#0x1F4]
LDRB            R12, [R0,#0x3F8]
ADD             R2, R2, #0x64 ; 'd'
BIC             R12, R12, #7
STRB            R12, [R0,#0x3F8]
LDRB            R12, [R0,#0x428]
BIC             R12, R12, #7
STRB            R12, [R0,#0x428]
STRH            R3, [R1,#0x68]
STRH            R3, [R1,#0x6C]
LDR             R12, [R0,#0x464]
BIC             R12, R12, #0x74000
STR             R12, [R0,#0x464]
VSTR            S3, [R1,#0x70]
VSTR            S0, [R1,#0x74]
VSTR            S1, [R1,#0x80]
VSTR            S0, [R1,#0x88]
VSTR            S1, [R1,#0x90]
VSTR            S2, [R1,#0x98]
VSTR            S1, [R1,#0x7C]
VSTR            S0, [R1,#0x84]
VSTR            S1, [R1,#0x8C]
VSTR            S2, [R1,#0x94]
VSTR            S0, [R1,#0x78]
STRB            R3, [R0,#0x4B4]
LDRB            R3, [R0,#0x4B5]
BIC             R3, R3, #0xFF
STRB            R3, [R0,#0x4B5]
LDRH            R3, [R1,#0xB6]
BIC             R3, R3, #0x6A ; 'j'
ORR             R3, R3, #0x10
STRH            R3, [R1,#0xB6]
BEQ             loc_230E2C
LDRSH           R3, [R4]
MOV             LR, #1
VMOV            S1, R3
VCVT.F32.S32    S1, S1
VSTR            S1, [R0,#0x108]
LDRSH           R3, [R4,#2]
VMOV            S1, R3
VCVT.F32.S32    S1, S1
VSTR            S1, [R0,#0x10C]
LDRSH           R3, [R4,#4]
VMOV            S1, R3
VCVT.F32.S32    S1, S1
VSTR            S1, [R0,#0x110]
LDRH            R3, [R4,#6]
LDR             R12, [R0,#0x464]
TST             R3, #0x8000
BICNE           R3, R3, #0x8000
MOVEQ           R3, #0
BIC             R12, R12, #0xF
AND             R3, R3, #0xF
ORR             R3, R3, R12
STR             R3, [R0,#0x464]
LDR             R12, [R4,#0x14]
LDRH            R3, [R1,#0xB6]
BIC             R12, LR, R12,LSR#19
BIC             R3, R3, #1
ORR             R3, R3, R12
STRH            R3, [R1,#0xB6]
LDR             R3, [R4,#0x14]
MOV             R12, R3,LSL#3
MOVS            R12, R12,LSR#29
BEQ             loc_230E18
CMP             R12, #3
LDREQ           R3, [R0,#0x464]
BICEQ           R3, R3, #0x700
BEQ             loc_230E10
LDR             R12, [R0,#0x464]
MOV             LR, #0x700
AND             R3, LR, R3,LSR#18
BIC             R12, R12, #0x700
ORR             R3, R3, R12
STR             R3, [R2]
B               loc_230E58
LDR             R3, [R0,#0x464]
BIC             R3, R3, #0x700
ORR             R3, R3, #0x300
STR             R3, [R2]
B               loc_230E58
VSTR            S0, [R0,#0x108]
VSTR            S0, [R0,#0x10C]
VSTR            S0, [R0,#0x110]
LDR             R3, [R0,#0x464]
BIC             R3, R3, #0x700
BIC             R3, R3, #0xF
ORR             R3, R3, #0x300
STR             R3, [R2]
LDRH            R2, [R1,#0xB6]
BIC             R2, R2, #1
STRH            R2, [R1,#0xB6]
ADD             R2, R0, #0x108
ADD             R4, R0, #0x118
VLDM            R2, {S1-S3}
MOV             R12, #0xF0
MOV             R2, #4
VSTM            R4, {S1-S3}
ADD             R4, R0, #0x130
VLDM            R4, {S1-S2}
ADD             R4, R0, #0x140
VSTR            S1, [R0,#0x138]
VSTR            S2, [R0,#0x13C]
VLDM            R4, {S1-S2}
VSTR            S1, [R0,#0x148]
VSTR            S2, [R0,#0x14C]
LDR             R3, [R0,#0x464]
BIC             LR, R3, #0xF0
AND             R3, R12, R3,LSL#4
ORR             R3, R3, LR
STR             R3, [R0,#0x464]
LDRH            R3, [R1,#0x68]
STRH            R3, [R1,#0x6A]
LDRH            R3, [R1,#0x6C]
STRH            R3, [R1,#0x6E]
LDRH            R3, [R1,#0xB6]
BIC             R12, R3, #4
AND             R2, R2, R3,LSL#1
ORR             R2, R2, R12
STRH            R2, [R1,#0xB6]
VSTR            S0, [R0,#0x124]
VSTR            S0, [R0,#0x128]
VSTR            S0, [R0,#0x12C]
POP             {R3-R5,PC}
