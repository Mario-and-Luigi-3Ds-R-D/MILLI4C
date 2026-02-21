PUSH            {R4-R10,LR}
MOV             R5, R0
MOV             R0, #0xEA
VPUSH           {D8}
NOP
LDR             R7, =off_6D1648
MOV             R1, R0
LDR             R2, [R7]
LDR             R2, [R2,#0xA0]
ADD             R2, R2, #0x14400
ADD             R2, R2, #0x204
MOV             R0, R2
BL              sub_50EB80
LDR             R0, [R5]
CMP             R0, #0
BNE             loc_1E1E3C
VLDR            S16, =0.0
VLDR            S0, =1.0
VSTR            S16, [R5,#4]
VLDR            S17, =2.0
VSTR            S16, [R5,#8]
VSTR            S0, [R5,#0xC]
VMOV.F32        S1, S17
VMOV.F32        S0, S16
BL              sub_5F63A4
VSTR            S0, [R5,#0x10]
VSTR            S0, [R5,#0x14]
VMOV.F64        D0, D8
MOV             R6, #0
VSTR            S16, [R5,#0x1C]
STRB            R6, [R5,#0x4D]
BL              sub_5F63A4
VSTR            S0, [R5,#0x58]
VSTR            S0, [R5,#0x5C]
VSTR            S16, [R5,#0x64]
STRB            R6, [R5,#0x95]
VSTR            S16, [R5,#0xBC]
MOV             R2, #0x18
MOV             R1, #0
ADD             R0, R5, #0xC0
BL              sub_110BE4
VLDR            S2, =0.4
STRB            R6, [R5,#0xD8]
VLDR            S4, =0.0088889
VSTR            S16, [R5,#0x28]
VLDR            S3, =0.0027778
VSTR            S2, [R5,#0x38]
VLDR            S5, =0.6
VSTR            S4, [R5,#0x3C]
VSTR            S3, [R5,#0x40]
VLDR            S0, =0.016667
VLDR            S1, =0.084722
VSTR            S5, [R5,#0x48]
ADD             R0, R5, #0x2C ; ','
LDR             R8, =dword_6E1330
LDR             R9, =flt_711FE4
MOV             R4, #0
VSTM            R0, {S0-S1}
LDR             R0, [R7]
LDR             R0, [R0,#0xC4]
LDR             R0, [R0,#4]
LDR             R0, [R0,#4]
LDR             R0, [R0,#0x634]
STR             R0, [R5,#0xAC]
ADD             R0, R5, R4,LSL#2
STR             R6, [R0,#0x120]
LDR             R0, [R8]
TST             R0, #1
BNE             loc_1E1DB4
LDR             R0, =dword_6E1330
BLX             sub_3022F4
CMP             R0, #0
NOP
BEQ             loc_1E1DB4
LDR             R0, =flt_711FE4
VSTR            S16, [R0]
VSTR            S16, [R0,#(flt_711FE8 - 0x711FE4)]
VSTR            S16, [R0,#(flt_711FEC - 0x711FE4)]
LDR             R0, =dword_6E1330
NOP
ADD             R1, R4, R4,LSL#1
LDM             R9, {R0,R2,R3}
ADD             R1, R5, R1,LSL#2
ADD             R10, R1, #0x150
ADD             R1, R1, #0x12C
STM             R10, {R0,R2,R3}
ADD             R4, R4, #1
STM             R1, {R0,R2,R3}
CMP             R4, #3
BLT             loc_1E1D74
LDR             R0, [R7]
LDR             R0, [R0,#0xBC]
ADD             R6, R0, #0x13C00
ADD             R6, R6, #0x108
MOV             R4, #0
LDRB            R7, [R6,#0x18]
CMP             R7, #0
MOVGT           R8, #0xA4
BLE             loc_1E1E3C
MOV             R1, #0x67 ; 'g'
LDR             R0, [R6]
MUL             R1, R4, R1
ADD             R1, R8, R1,LSL#2
LDR             R0, [R0,R1]
ADR             R1, aCylinder01; "cylinder_01"
BL              sub_2D8FD8
CMP             R0, #0
NOP
BEQ             loc_1E1E44
MOV             R0, #0x67 ; 'g'
LDR             R1, [R6]
MUL             R0, R4, R0
ADD             R0, R1, R0,LSL#2
STR             R0, [R5]
VPOP            {D8}
POP             {R4-R10,PC}
ADD             R4, R4, #1
CMP             R4, R7
BLT             loc_1E1E00
VPOP            {D8}
POP             {R4-R10,PC}
