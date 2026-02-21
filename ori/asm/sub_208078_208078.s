PUSH            {R4-R10,LR}
MOV             R5, R1
MOV             R4, R2
MOV             R10, R0
ADD             R0, R2, #8
LDR             R1, [R2,#0x10]
LDM             R0, {R0,R2}
SUB             SP, SP, #0x18
AND             R7, R1, #0xFF
UXTH            R1, R0
LDR             R0, [R4,#0x74]
SXTH            R9, R2
STR             R0, [SP,#0x38+var_38]
LDR             R0, [R4,#0x78]
STR             R0, [SP,#0x38+var_34]
LDR             R0, [R4,#0x7C]
STR             R0, [SP,#0x38+var_30]
LDR             R0, =off_6CE970
LDR             R0, [R0]
BL              sub_52F368
MOV             R8, R0
LDR             R0, =dword_6CE728
MOV             R6, SP
LDR             R0, [R0]
TST             R0, #1
BNE             loc_20810C
LDR             R0, =dword_6CE728
BLX             sub_3022F4
CMP             R0, #0
BEQ             loc_20810C
LDR             R0, =flt_6E2360
VLDR            S0, =-100000.0
VSTR            S0, [R0]
VSTR            S0, [R0,#(flt_6E2364 - 0x6E2360)]
VSTR            S0, [R0,#(flt_6E2368 - 0x6E2360)]
LDR             R0, =dword_6CE728
NOP
LDR             R0, =flt_6E2360
VLDR            S1, [SP,#0x38+var_38]
VLDR            S0, [R0]
VCMP.F32        S0, S1
VMRS            APSR_nzcv, FPSCR
BNE             loc_208150
VLDR            S1, [SP,#0x38+var_34]
VLDR            S0, [R0,#(flt_6E2364 - 0x6E2360)]
VCMP.F32        S0, S1
VMRS            APSR_nzcv, FPSCR
BNE             loc_208150
VLDR            S0, [R0,#(flt_6E2368 - 0x6E2360)]
VLDR            S1, [SP,#0x38+var_30]
VCMP.F32        S0, S1
VMRS            APSR_nzcv, FPSCR
MOVEQ           R6, #0
BEQ             loc_2081A0
CMP             R7, #0
BEQ             loc_2081A0
LDR             R0, [R8,#0x18]
MOV             R2, #0
LDR             R1, [R0]
LDR             R3, [R1,#0x28]
ADD             R1, SP, #0x38+var_2C
BLX             R3
VLDR            S0, [SP,#0x38+var_38]
VLDR            S1, [SP,#0x38+var_2C]
VADD.F32        S0, S0, S1
VSTR            S0, [SP,#0x38+var_38]
VLDR            S0, [SP,#0x38+var_34]
VLDR            S1, [SP,#0x38+var_28]
VADD.F32        S0, S0, S1
VSTR            S0, [SP,#0x38+var_34]
VLDR            S0, [SP,#0x38+var_30]
VLDR            S1, [SP,#0x38+var_24]
VADD.F32        S0, S0, S1
VSTR            S0, [SP,#0x38+var_30]
MOV             R2, R6
MOV             R1, R9
MOV             R0, R8
BL              sub_4F2870
LDRH            R1, [R4]
CMP             R1, #0xA3
BNE             loc_2081E0
VMOV            S0, R0
LDRH            R3, [R4,#2]
CMP             R5, #0
ADDNE           R2, R5, #4
MOVEQ           R2, #0
MOV             R1, R10
VCVT.F32.S32    S0, S0
MOV             R0, R3
BL              sub_145730
ADD             SP, SP, #0x18
MOV             R0, #0
POP             {R4-R10,PC}
