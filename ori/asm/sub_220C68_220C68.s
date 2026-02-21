PUSH            {R4,R5,LR}
MOV             R5, R1
MOV             R4, R0
VPUSH           {D8-D10}
SUB             SP, SP, #0x3C
ADR             R2, aElbowR; "elbow_R"
STR             R1, [R0,#8]
BL              sub_2CF3DC
STR             R0, [R4,#0x14]
ADR             R2, aHandR; "hand_R"
MOV             R1, R5
MOV             R0, R4
BL              sub_2CF3DC
STR             R0, [R4,#0x18]
LDR             R1, [R4,#0x14]
VLDR            S1, [R0,#0xC]
VLDR            S0, [R0,#0x1C]
LDR             R5, =dword_6E1320
VLDR            S3, [R1,#0xC]
VLDR            S2, [R1,#0x1C]
VLDR            S16, =0.0
VSUB.F32        S18, S1, S3
VSUB.F32        S17, S0, S2
LDR             R0, [R5]
TST             R0, #1
BNE             loc_220CF4
MOV             R0, R5
BLX             sub_3022F4
CMP             R0, #0
BEQ             loc_220CF4
LDR             R0, =flt_6E1324
VSTR            S16, [R0]
VSTR            S16, [R0,#(flt_6E1328 - 0x6E1324)]
MOV             R0, R5
NOP
VMUL.F32        S0, S18, S18
VLDR            S19, =1.0
LDR             R0, =flt_6E1324
VMLA.F32        S0, S17, S17
VCMP.F32        S0, S16
VMRS            APSR_nzcv, FPSCR
VLDREQ          S1, [R0]
VLDREQ          S0, [R0,#(flt_6E1328 - 0x6E1324)]
BEQ             loc_220D28
VSQRT.F32       S1, S0
VDIV.F32        S0, S19, S1
VMUL.F32        S1, S18, S0
VMUL.F32        S0, S17, S0
VLDR            S4, =-10.0
LDR             R0, [R4,#0x18]
LDR             R1, [R4,#0x18]
VLDR            S3, [R0,#0xC]
VLDR            S2, [R0,#0x1C]
MOV             R0, SP
VMUL.F32        S1, S1, S4
VMUL.F32        S0, S0, S4
VADD.F32        S17, S3, S1
VADD.F32        S18, S2, S0
BL              sub_1169CC
VSTR            S16, [SP,#0x60+var_34]
VSTR            S16, [SP,#0x60+var_44]
VLDR            S0, =-1.0
VSTR            S16, [SP,#0x60+var_54]
VSTR            S0, [SP,#0x60+var_30]
VSTR            S16, [SP,#0x60+var_2C]
ADD             R2, SP, #0x60+var_30
VSTR            S16, [SP,#0x60+var_28]
MOV             R1, SP
MOV             R0, R2
BL              sub_1169FC
LDR             R0, [R5]
VLDR            S21, [SP,#0x60+var_30]
VLDR            S20, [SP,#0x60+var_2C]
TST             R0, #1
BNE             loc_220DBC
LDR             R0, =dword_6E1320
BLX             sub_3022F4
CMP             R0, #0
NOP
BEQ             loc_220DBC
LDR             R0, =flt_6E1324
VSTR            S16, [R0]
VSTR            S16, [R0,#(flt_6E1328 - 0x6E1324)]
LDR             R0, =dword_6E1320
NOP
VMUL.F32        S0, S21, S21
LDR             R0, =flt_6E1324
VMLA.F32        S0, S20, S20
VCMP.F32        S0, S16
VMRS            APSR_nzcv, FPSCR
VLDMEQ          R0, {S0-S1}
BEQ             loc_220DE8
VSQRT.F32       S2, S0
VDIV.F32        S1, S19, S2
VMUL.F32        S0, S21, S1
VMUL.F32        S1, S20, S1
ADD             R0, R4, #0x1C
LDR             R5, =off_6D1648
VSTM            R0, {S0-S1}
LDR             R0, [R4,#4]
ADD             R0, R0, #0x400
VSTR            S17, [R0,#0x334]
LDR             R0, [R4,#4]
ADD             R0, R0, #0x400
VSTR            S17, [R0,#0x328]
LDR             R0, [R4,#4]
ADD             R0, R0, #0x400
VSTR            S18, [R0,#0x338]
LDR             R0, [R4,#4]
ADD             R0, R0, #0x400
VSTR            S18, [R0,#0x32C]
LDR             R0, [R5]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x15000
ADD             R0, R0, #0x13C
BL              sub_19A10C
CMP             R0, #9
LDR             R0, [R5]
BEQ             loc_220EA4
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x15000
ADD             R0, R0, #0x13C
BL              sub_19A10C
CMP             R0, #0xB
NOP
BNE             loc_220E98
LDR             R0, [R5]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x15000
LDR             R0, [R0,#0x1CC]
LDR             R0, [R0,#0x338]
TST             R0, #1
BEQ             loc_220E98
LDR             R0, [R4,#0x28]
MOV             R2, #0
MOV             R1, #1
ORR             R0, R0, #1
STR             R0, [R4,#0x28]
MOV             R0, R4
BL              sub_220974
ADD             SP, SP, #0x3C ; '<'
VPOP            {D8-D10}
POP             {R4,R5,PC}
NOP
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x15000
LDR             R0, [R0,#0x1CC]
LDR             R0, [R0,#0x3D0]
TST             R0, #1
BEQ             loc_220E98
LDR             R0, [R4,#0x28]
MOV             R1, #0
ORR             R0, R0, #1
STR             R0, [R4,#0x28]
LDR             R0, [R4,#4]
BL              sub_5088B4
ADD             SP, SP, #0x3C ; '<'
VPOP            {D8-D10}
POP             {R4,R5,PC}
