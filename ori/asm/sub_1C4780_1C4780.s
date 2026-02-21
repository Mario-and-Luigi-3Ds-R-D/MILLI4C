PUSH            {R4-R6,LR}
MOV             R4, R0
LDR             R6, =off_6CE118
MOV             R1, #1
VPUSH           {D8-D11}
SUB             SP, SP, #0x28
MOV             R0, #7
STRB            R1, [R4,#0xF2]
STRB            R0, [R4,#0x410]
LDR             R0, [R6]
ADD             R1, R0, #0x800
ADD             R0, R4, #0x24 ; '$'
ADD             R1, R1, #0x1C
VLDM            R0, {S18-S20}
MOV             R0, R4
BL              sub_14E984
VLDR            S0, [R4,#0x24]
VLDR            S1, [R4,#0x2C]
LDR             R0, =0x40C
VSUB.F32        S0, S18, S0
VSUB.F32        S1, S20, S1
VLDR            S16, =0.0
VSTR            S0, [SP,#0x58+var_4C]
VSTR            S1, [SP,#0x58+var_44]
VSTR            S16, [SP,#0x58+var_48]
LDRH            R0, [R0,R4]
LDR             R1, [R6]
VMOV            S0, R0
LDR             R1, [R1,#8]
ADD             R0, R1, #0x400
VCVT.F32.U32    S0, S0
VLDR            S1, [R0,#0x14]
VLDR            S21, [R0,#0x10]
ADD             R0, R1, #0x400
ADD             R0, R0, #0x18
VMLA.F32        S21, S0, S1
VLDM            R0, {S0-S1}
LDR             R0, =dword_6D1F40
BL              sub_47EAA4
LDR             R5, =dword_6CE140
VMOV.F32        S22, S0
VLDR            S17, =1.0
LDR             R0, [R5,#(dword_6CE148 - 0x6CE140)]
TST             R0, #1
BNE             loc_1C4858
ADD             R0, R5, #8
BLX             sub_3022F4
CMP             R0, #0
BEQ             loc_1C4858
LDR             R0, =flt_6E1AB4
VSTM            R0, {S16-S17}
VSTR            S16, [R0,#(flt_6E1ABC - 0x6E1AB4)]
ADD             R0, R5, #8
NOP
LDR             R2, =flt_6E1AB4
ADD             R3, SP, #0x58+var_40
VMOV.F32        S0, S21
LDM             R2, {R0-R2}
STM             R3, {R0-R2}
ADD             R2, SP, #0x58+var_4C
MOV             R1, #0
ADD             R0, R4, #0x1DC
BL              sub_5A2B20
VLDR            S0, [R4,#0x28]
VMOV.F32        S2, S22
VMOV.F32        S1, S21
VSUB.F32        S0, S19, S0
ADD             R2, SP, #0x58+var_40
MOV             R1, #1
ADD             R0, R4, #0x1DC
BL              sub_5A28C4
LDR             R0, [R6]
LDR             R0, [R0,#8]
ADD             R0, R0, #0x420
VLDM            R0, {S0-S1}
LDR             R0, =dword_6D1F40
BL              sub_47EAA4
ADD             R0, R4, #0x24 ; '$'
VMOV.F32        S22, S0
VLDM            R0, {S0-S2}
LDR             R0, =dword_6D1F40
VSUB.F32        S18, S18, S0
VSUB.F32        S19, S19, S1
VSUB.F32        S20, S20, S2
BL              sub_546DB0
TST             R0, #1
LDR             R0, [R5,#(dword_6CE148 - 0x6CE140)]
AND             R0, R0, #1
BEQ             loc_1C4944
CMP             R0, #0
BNE             loc_1C4914
LDR             R0, =dword_6CE148
BLX             sub_3022F4
CMP             R0, #0
NOP
BEQ             loc_1C4914
LDR             R0, =flt_6E1AB4
VSTM            R0, {S16-S17}
VSTR            S16, [R0,#(flt_6E1ABC - 0x6E1AB4)]
LDR             R0, =dword_6CE148
NOP
LDR             R0, =flt_6E1AB4
VLDR            S4, [R0]
VLDR            S3, [R0,#(flt_6E1AB8 - 0x6E1AB4)]
VLDR            S5, [R0,#(flt_6E1ABC - 0x6E1AB4)]
VMUL.F32        S2, S4, S19
VMUL.F32        S0, S3, S20
VMUL.F32        S1, S5, S18
VMLS.F32        S2, S3, S18
VMLS.F32        S0, S5, S19
VMLS.F32        S1, S4, S20
VSTMEA          SP, {S0-S2}
B               loc_1C49A8
CMP             R0, #0
BNE             loc_1C4974
LDR             R0, =dword_6CE148
BLX             sub_3022F4
CMP             R0, #0
NOP
BEQ             loc_1C4974
LDR             R0, =flt_6E1AB4
VSTM            R0, {S16-S17}
VSTR            S16, [R0,#(flt_6E1ABC - 0x6E1AB4)]
LDR             R0, =dword_6CE148
NOP
LDR             R0, =flt_6E1AB4
VLDR            S3, [R0,#(flt_6E1ABC - 0x6E1AB4)]
VLDR            S5, [R0]
VLDR            S4, [R0,#(flt_6E1AB8 - 0x6E1AB4)]
VMUL.F32        S0, S19, S3
VMUL.F32        S2, S20, S5
VMUL.F32        S1, S18, S4
VMLS.F32        S0, S20, S4
VMLS.F32        S2, S18, S3
VMLS.F32        S1, S19, S5
VSTR            S0, [SP,#0x58+var_58]
VSTR            S2, [SP,#0x58+var_54]
VSTR            S1, [SP,#0x58+var_50]
LDR             R0, [R5]
TST             R0, #1
BNE             loc_1C49DC
LDR             R0, =dword_6CE140
BLX             sub_3022F4
CMP             R0, #0
NOP
BEQ             loc_1C49DC
LDR             R0, =unk_6E1A9C
VSTM            R0!, {S16}
VSTM            R0, {S16-S17}
LDR             R0, =dword_6CE140
NOP
MOV             R1, SP
LDR             R2, =unk_6E1A9C
MOV             R0, R1
BL              sub_4632FC
VMOV.F32        S2, S22
VMOV.F32        S1, S21
VMOV.F32        S0, S16
MOV             R2, SP
MOV             R1, #2
ADD             R0, R4, #0x1DC
BL              sub_5A28C4
MOV             R0, R4
NOP
BL              sub_5C55B8
STR             R0, [R4,#0x8A4]
LDR             R2, =dword_6D1F40
MOV             R1, #0x20 ; ' '
MOV             R0, #0x1E
BL              sub_47EADC
AND             R1, R0, #0xFF
MOV             R3, #0x100
MOV             R2, #0
MOV             R0, R4
BL              sub_14C548
LDR             R6, =dword_6D1F40
MOV             R0, R4
BL              sub_5C5724
MOV             R5, R0
MOV             R0, R6
BL              sub_546DB0
MUL             R0, R0, R5
MOV             R1, R0,LSR#16
MOV             R0, R4
BL              sub_14F01C
ADD             SP, SP, #0x28 ; '('
VPOP            {D8-D11}
POP             {R4-R6,PC}
