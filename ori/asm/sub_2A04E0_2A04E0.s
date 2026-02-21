PUSH            {R4-R6,LR}
MOV             R4, R0
MOV             R6, R1
VPUSH           {D8-D9}
LDRB            R0, [R0,#0xB9]
CMP             R0, R6
BEQ             loc_2A05B4
LDRB            R1, [R4,#0xB8]
SUB             R2, R6, R1
CMP             R2, #0
MOV             R0, R1
MOVLT           R0, R6
BLT             loc_2A0524
LDRB            R3, [R4,#0x1E]
CMP             R3, R2
SUBLE           R0, R6, R3
ADDLE           R0, R0, #1
AND             R0, R0, #0xFF
SUB             R5, R0, R1
CMP             R5, #0
VLDR            S0, [R4,#0x100]
MOVGE           R1, R5
RSBLT           R1, R5, #0
VLDR            S17, =0.0
CMP             R1, #1
BEQ             loc_2A05BC
CMP             R5, #0
BEQ             loc_2A058C
STRB            R0, [R4,#0xB8]
ADD             R0, R4, #0xFC
BL              sub_5A18EC
RSB             R0, R5, #0
VMOV            S0, R0
ADD             R0, R4, #0xFC
VCVT.F32.S32    S16, S0
BL              sub_5A18EC
VSTR            S16, [R4,#0x108]
VMOV.F32        S0, S17
VSTR            S16, [R4,#0x100]
VLDR            S1, [R4,#0x2C]
MOV             R1, #0
ADD             R0, R4, #0xFC
BL              sub_5A13F0
STRB            R6, [R4,#0xB9]
LDR             R0, [R4,#0xB0]
CMP             R0, #0
LDRBNE          R1, [R4,#0xB4]
CMPNE           R1, #0
ADDNE           R1, R6, R6,LSL#2
MOVEQ           R0, #0
ADDNE           R0, R0, R1,LSL#2
LDR             R0, [R0]
STR             R0, [R4,#0xBC]
VPOP            {D8-D9}
POP             {R4-R6,PC}
VMOV            S1, R5
STRB            R0, [R4,#0xB8]
ADD             R0, R4, #0xFC
VCVT.F32.S32    S1, S1
VSUB.F32        S16, S0, S1
VLDR            S1, [R4,#0x2C]
VABS.F32        S0, S16
VMUL.F32        S18, S0, S1
BL              sub_5A18EC
VMOV.F32        S1, S18
VMOV.F32        S0, S17
VSTR            S16, [R4,#0x108]
VSTR            S16, [R4,#0x100]
MOV             R1, #0
ADD             R0, R4, #0xFC
BL              sub_5A13F0
NOP
NOP
B               loc_2A058C
