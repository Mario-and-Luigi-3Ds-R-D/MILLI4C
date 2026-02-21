PUSH            {R4,R5,LR}
MOV             R4, R0
ADD             R0, R0, #0x2B8
VPUSH           {D8}
SUB             SP, SP, #0xC
VLDR            S17, =1.0
VMOV.F32        S0, S17
BL              sub_5A176C
VMOV.F32        S16, S0
VMOV.F32        S0, S17
ADD             R0, R4, #0x2EC
BL              sub_5A176C
VCVT.S32.F32    S0, S0
MOV             R1, #0xFFFFFF00
MOV             R2, SP
VMOV            R0, S0
VMOV.F32        S0, S16
ORR             R0, R0, R1
MOV             R1, #0
REV             R0, R0
VSTR            S0, [R4,#0x280]
VSTR            S0, [R4,#0x284]
VSTR            S0, [R4,#0x288]
STR             R0, [SP,#0x20+var_20]
ADD             R0, R4, #0x160
BL              sub_12C9C4
ADD             R0, R4, #0x320
BL              sub_5F1964
CMP             R0, #0
MOV             R5, #1
BEQ             loc_184D50
VMOV.F32        S0, S17
ADD             R0, R4, #0x320
BL              sub_5A176C
VCVT.S32.F32    S0, S0
ADD             R2, SP, #0x20+var_1C
VMOV            R0, S0
MOV             R1, R0,LSL#24
ORR             R1, R1, R0,LSL#16
ORR             R1, R1, R0,LSL#8
ORR             R0, R0, R1
MOV             R1, #1
REV             R0, R0
STR             R0, [SP,#0x20+var_1C]
ADD             R0, R4, #0xC
BL              sub_12C9C4
ADD             R0, R4, #0x320
BL              sub_5F1964
CMP             R0, #0
STRBEQ          R5, [R4,#0x7F]
ADD             R0, R4, #0x2B8
BL              sub_5F1964
CMP             R0, #0
NOP
BNE             loc_184D8C
MOV             R0, #0
STRB            R0, [R4,#0x270]
MOV             R1, R0
VLDR            S0, =45.0
ADD             R0, R4, #0x2B8
STRB            R5, [R4,#0x1D3]
BL              sub_5A1924
LDR             R1, =off_6738C0
LDRD            R0, R1, [R1,#(off_673900 - 0x6738C0)]
STRD            R0, R1, [R4]
ADD             SP, SP, #0xC
VPOP            {D8}
POP             {R4,R5,PC}
