PUSH            {R4-R11,LR}
MOV             R4, R0
VPUSH           {D8-D9}
VMOV.F32        S16, S0
SUB             SP, SP, #0x1C
LDRB            R0, [R0,#4]
CMP             R0, #0
CMPNE           R0, #2
BEQ             loc_28217C
CMP             R0, #3
CMPNE           R0, #0xA
MOVNE           R0, #0
BNE             loc_2823DC
LDR             R1, [R4,#0x41C]
MOV             R7, #1
MOV             R8, #0
SUB             R1, R1, #1
STR             R1, [R4,#0x41C]
STRB            R7, [R4,#0x418]
LDR             R0, [R4,#0x428]
CMP             R0, #0
BEQ             loc_2821B8
MOV             R1, #0
BL              sub_1586A8
LDR             R0, [R4,#0x428]
CMP             R0, #0
STRNE           R8, [R0,#0x64]
STRNE           R8, [R4,#0x428]
LDR             R0, [R4,#0x41C]
LDR             R9, =off_6CE970
LDR             R10, =dword_6E1330
LDR             R11, =0x16D
VLDR            S18, =1.0
VLDR            S17, =0.0
ADD             R5, R4, #0x400
CMP             R0, #0
ADD             R5, R5, #0x2C ; ','
ADD             R6, R4, #0x400
BGT             loc_2822E8
MOV             R0, R4
BL              sub_282054
LDR             R0, [R10]
LDR             R7, [R9]
TST             R0, #1
BNE             loc_282228
MOV             R0, R10
BLX             sub_3022F4
CMP             R0, #0
NOP
BEQ             loc_282228
LDR             R0, =flt_711FE4
VSTR            S17, [R0]
VSTR            S17, [R0,#(flt_711FE8 - 0x711FE4)]
VSTR            S17, [R0,#(flt_711FEC - 0x711FE4)]
MOV             R0, R10
NOP
LDR             R3, =flt_711FE4
ADD             R2, R4, #8
MOV             R1, R11
MOV             R0, R7
STR             R8, [SP,#0x50+var_50]
BL              sub_52B72C
LDR             R1, [R0,#0x19C]
ORR             R1, R1, #0x100000
STR             R1, [R0,#0x19C]
MOV             R0, #0xB
STRB            R0, [R4,#4]
ADD             R0, R4, #0x1E4
BL              sub_5A26D0
VLDR            S0, [R5]
VLDR            S3, [R4,#0x2C]
VLDR            S1, [R5,#8]
VLDR            S2, [R4,#0x34]
VSUB.F32        S0, S0, S3
ADD             R2, SP, #0x50+var_4C
VSUB.F32        S1, S1, S2
VMOV.F32        S2, S16
MOV             R1, #1
VSTR            S0, [SP,#0x50+var_40]
VSUB.F32        S0, S16, S18
VSTR            S1, [SP,#0x50+var_38]
VSTR            S17, [SP,#0x50+var_3C]
VSTM            R2, {S17-S18}
VSTR            S17, [SP,#0x50+var_44]
LDR             R0, [R4]
VLDR            S1, [R0,#0x70]
ADD             R0, R4, #0x1E4
BL              sub_5A28C4
LDR             R0, [R4,#0x20C]
ADD             R2, SP, #0x50+var_40
MOV             R1, #0
VLDR            S0, [R0,#0x38]
ADD             R0, R4, #0x1E4
BL              sub_5A2B20
LDR             R0, [R4,#0x30]
MOV             R3, #0x100
MOV             R2, #0
STR             R0, [R6,#0x14]
MOV             R1, #1
ADD             R0, R4, #8
BL              sub_14C430
NOP
NOP
B               loc_2823D8
STRB            R7, [R4,#4]
LDR             R0, [R10]
LDR             R7, [R9]
TST             R0, #1
BNE             loc_282328
LDR             R0, =dword_6E1330
BLX             sub_3022F4
CMP             R0, #0
NOP
BEQ             loc_282328
LDR             R0, =flt_711FE4
VSTR            S17, [R0]
VSTR            S17, [R0,#(flt_711FE8 - 0x711FE4)]
VSTR            S17, [R0,#(flt_711FEC - 0x711FE4)]
LDR             R0, =dword_6E1330
NOP
LDR             R3, =flt_711FE4
ADD             R2, R4, #8
MOV             R1, R11
MOV             R0, R7
STR             R8, [SP,#0x50+var_50]
BL              sub_52B72C
LDR             R1, [R0,#0x19C]
ORR             R1, R1, #0x100000
STR             R1, [R0,#0x19C]
ADD             R0, R4, #0x1E4
BL              sub_5A26D0
VLDR            S1, [R5]
VLDR            S3, [R4,#0x2C]
VLDR            S0, [R5,#8]
VLDR            S2, [R4,#0x34]
VSUB.F32        S1, S1, S3
ADD             R2, SP, #0x50+var_4C
VSUB.F32        S0, S0, S2
MOV             R1, #1
VSTR            S1, [SP,#0x50+var_40]
VMOV.F32        S1, S16
VSTR            S0, [SP,#0x50+var_38]
VSTR            S17, [SP,#0x50+var_3C]
VSTM            R2, {S17-S18}
VSTR            S17, [SP,#0x50+var_44]
LDR             R0, [R4]
VLDR            S0, [R4,#0x30]
VNEG.F32        S0, S0
VLDR            S2, [R0,#0x3C]
ADD             R0, R4, #0x1E4
BL              sub_5A2954
LDR             R0, [R4,#0x20C]
ADD             R2, SP, #0x50+var_40
MOV             R1, #0
VLDR            S0, [R0,#0x38]
ADD             R0, R4, #0x1E4
BL              sub_5A2B20
LDR             R0, [R4,#0x30]
MOV             R3, #0x100
MOV             R2, #0
STR             R0, [R6,#0x14]
MOV             R1, #1
ADD             R0, R4, #8
BL              sub_14C430
MOV             R0, #1
ADD             SP, SP, #0x1C
VPOP            {D8-D9}
POP             {R4-R11,PC}
