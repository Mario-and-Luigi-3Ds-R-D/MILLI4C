PUSH            {R4,LR}
MOV             R4, R0
VPUSH           {D8}
SUB             SP, SP, #0x88
ADD             R3, R4, #4
ADD             R2, SP, #0x98+var_50
VLDM            R3, {S0-S1}
MOV             R1, SP
ADD             R0, SP, #0x98+var_8C
BL              sub_252614
LDR             R0, [SP,#0x98+var_50]
VLDR            S16, =0.0
STR             R0, [SP,#0x98+var_80]
LDR             R0, [SP,#0x98+var_4C]
STR             R0, [SP,#0x98+var_70]
LDR             R0, [SP,#0x98+var_48]
STR             R0, [SP,#0x98+var_60]
LDR             R0, [SP,#0x98+var_8C]
STR             R0, [SP,#0x98+var_7C]
LDR             R0, [SP,#0x98+var_88]
STR             R0, [SP,#0x98+var_6C]
LDR             R0, [SP,#0x98+var_84]
STR             R0, [SP,#0x98+var_5C]
LDR             R0, [SP,#0x98+var_98]
STR             R0, [SP,#0x98+var_78]
LDR             R0, [SP,#0x98+var_94]
STR             R0, [SP,#0x98+var_68]
LDR             R0, [SP,#0x98+var_90]
STR             R0, [SP,#0x98+var_58]
LDR             R0, =dword_6E1330
LDR             R0, [R0]
TST             R0, #1
BNE             loc_24CCD8
LDR             R0, =dword_6E1330
BLX             sub_3022F4
CMP             R0, #0
BEQ             loc_24CCD8
LDR             R0, =flt_711FE4
VSTR            S16, [R0]
VSTR            S16, [R0,#(flt_711FE8 - 0x711FE4)]
VSTR            S16, [R0,#(flt_711FEC - 0x711FE4)]
LDR             R0, =dword_6E1330
NOP
LDR             R0, =flt_711FE4
VLDR            S3, =0.71111
VMOV.F32        S0, S16
LDR             R1, [R0]
STR             R1, [SP,#0x98+var_74]
LDR             R1, [R0,#(flt_711FE8 - 0x711FE4)]
VMOV.F32        S1, S0
STR             R1, [SP,#0x98+var_64]
LDR             R0, [R0,#(flt_711FEC - 0x711FE4)]
MOV             R1, #1
STR             R0, [SP,#0x98+var_54]
VLDR            S2, [R4]
ADD             R0, SP, #0x98+var_40
VMUL.F32        S2, S2, S3
BL              sub_463BA8
ADD             R2, SP, #0x98+var_40
ADD             R1, SP, #0x98+var_80
ADD             R0, R4, #0x40 ; '@'
BL              sub_141F30
ADD             SP, SP, #0x88
VPOP            {D8}
POP             {R4,PC}
