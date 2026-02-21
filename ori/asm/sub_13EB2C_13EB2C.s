MOV             R1, #0xFFFFFFFF
STRH            R1, [R0,#0x6C]
NOP
PUSH            {R4,R5,LR}
MOV             R4, R0
LDRH            R0, [R0,#0x6C]
SUB             SP, SP, #0xC
MOV             R5, #0
TST             R0, #1
BEQ             loc_13EB60
MOV             R0, R4
BL              sub_13EA08
MOV             R5, #1
LDRH            R0, [R4,#0x6C]
TST             R0, #2
BEQ             loc_13EBB8
LDR             R0, [R4,#0x20]
VLDR            S1, =0.000030555
VMOV            S0, R0
VCVT.F32.S32    S2, S0
VLDR            S0, [R4,#0x24]
VMUL.F32        S1, S2, S1
VMUL.F32        S0, S0, S1
VSTR            S0, [R4,#0x28]
LDR             R0, [R4]
AND             R1, R0, #0xFF
LDR             R0, =dword_70EE68
BL              sub_13E514
LDRB            R0, [R4,#0xE]
CMP             R0, #0
BNE             loc_13EBB4
LDRH            R0, [R4,#0x6C]
ORR             R1, R0, #0x20 ; ' '
STRH            R1, [R4,#0x6C]
MOV             R5, #1
LDRH            R0, [R4,#0x6C]
TST             R0, #4
BEQ             loc_13EBDC
LDR             R0, [R4]
LDRB            R2, [R4,#0xF]
AND             R1, R0, #0xFF
LDR             R0, =dword_70EE68
BL              sub_13E5AC
MOV             R5, #1
LDRH            R0, [R4,#0x6C]
TST             R0, #8
BEQ             loc_13EC00
LDR             R0, [R4]
LDRSH           R2, [R4,#0x10]
LDRSH           R3, [R4,#0x12]
AND             R1, R0, #0xFF
LDR             R0, =dword_70EE68
BL              sub_13E604
LDRH            R0, [R4,#0x6C]
TST             R0, #0x10
BEQ             loc_13EC34
LDRSH           R1, [R4,#0x1A]
LDRSH           R12, [R4,#0x1C]
LDRSH           R0, [R4,#0x18]
LDRSH           R2, [R4,#0x14]
LDRSH           R3, [R4,#0x16]
STMEA           SP, {R0,R1,R12}
LDR             R0, [R4]
AND             R1, R0, #0xFF
LDR             R0, =dword_70EE68
BL              sub_13E664
LDRH            R0, [R4,#0x6C]
TST             R0, #0x20
BEQ             loc_13ECA8
LDRB            R0, [R4,#0xE]
MOV             R2, #2
MOV             R3, #1
CMP             R0, #0
BEQ             loc_13EC60
CMP             R0, #1
MOVEQ           R2, #1
B               loc_13EC8C
VLDR            S0, [R4,#0x28]
LDR             R1, =0x3FAAAAAB
VMOV            R0, S0
MOV             R3, #1
MOV             R2, #0
CMP             R0, R1
MOVGT           R3, #0
BGT             loc_13EC8C
VMOV            R0, S0
CMP             R0, #0x3F800000
MOVLE           R3, #2
LDR             R0, [R4]
AND             R1, R0, #0xFF
LDR             R0, =dword_70EE68
BL              sub_13E4AC
NOP
NOP
B               loc_13ECB0
CMP             R5, #0
BEQ             loc_13EDA0
LDR             R1, =0x578
LDRH            R3, [R4,#0x1E]
MOV             R2, #0
LDR             R2, =unk_69B168
STR             R1, [R4,#0x2C]
MOV             R1, #0x18
AND             R1, R1, R3,LSL#1
AND             R0, R3, #3
ADD             R1, R1, R2
ADD             R2, R1, R0,LSL#2
VLDR            S2, [R4,#0x28]
LDR             R1, [R2,#-4]
VLDR            S0, =1400.0
LDR             R3, =unk_69B180
VMOV            S1, R1
VCVT.F32.S32    S1, S1
VMLA.F32        S0, S1, S2
VCVT.U32.F32    S0, S0
VMOV            R1, S0
STR             R1, [R4,#0x2C]
LDRB            R2, [R4,#0xE]
ADD             R2, R3, R2,LSL#3
ADD             R2, R2, R0,LSL#2
ADD             R3, R3, #0x18
LDR             R2, [R2,#-4]
ADD             R1, R1, R2
STR             R1, [R4,#0x2C]
LDRB            R2, [R4,#0xF]
ADD             R2, R3, R2,LSL#3
ADD             R0, R2, R0,LSL#2
LDR             R0, [R0,#-4]
ADD             R1, R1, R0
STR             R1, [R4,#0x2C]
LDR             R2, [R4,#0x48]
MOV             R0, #1
CMP             R2, #0
LDREQ           R2, [R4,#0x4C]
CMPEQ           R2, #0
BNE             loc_13ED60
LDR             R2, [R4,#0x50]
CMP             R2, #0
LDREQ           R2, [R4,#0x54]
CMPEQ           R2, #0
BEQ             loc_13ED64
MOV             R0, #2
LDR             R2, [R4,#0x58]
CMP             R2, #0
LDREQ           R2, [R4,#0x5C]
CMPEQ           R2, #0
BNE             loc_13ED8C
LDR             R2, [R4,#0x60]
CMP             R2, #0
LDREQ           R2, [R4,#0x64]
CMPEQ           R2, #0
BEQ             loc_13ED90
ADD             R0, R0, #1
LDR             R2, =0x113
MUL             R0, R0, R2
ADD             R1, R1, R0,LSL#3
STR             R1, [R4,#0x2C]
LDRH            R0, [R4,#0x6C]
AND             R0, R0, #0x8000
STRH            R0, [R4,#0x6C]
ADD             SP, SP, #0xC
POP             {R4,R5,PC}
