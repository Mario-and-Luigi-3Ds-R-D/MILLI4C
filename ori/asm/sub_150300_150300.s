PUSH            {R4-R6,LR}
MOV             R5, R0
VPUSH           {D8-D9}
SUB             SP, SP, #0x28
LDR             R0, [R0,#8]
LDR             R4, [R0,#0x18]
MOV             R0, R4
BL              sub_5C5820
CMP             R0, #0
BNE             loc_150418
LDR             R0, [R5,#8]
VLDR            S5, [R4,#0x24]
VLDR            S4, [R4,#0x28]
VLDR            S2, [R4,#0x2C]
VLDR            S0, [R0,#0x1C]
VLDR            S3, [R0,#0x20]
VLDR            S1, [R0,#0x24]
VSUB.F32        S0, S0, S5
VSUB.F32        S18, S3, S4
VSUB.F32        S1, S1, S2
LDR             R6, =dword_6E197C
VLDR            S16, =0.0
ADD             R2, SP, #0x48+var_38
MOV             R1, #1
VSTR            S0, [SP,#0x48+var_2C]
VSTR            S18, [SP,#0x48+var_28]
VSTR            S1, [SP,#0x48+var_24]
VLDR            S1, [R6,#(flt_6E1990 - 0x6E197C)]
VLDR            S0, =0.5
VSTR            S16, [SP,#0x48+var_38]
VSUB.F32        S1, S1, S18
VMUL.F32        S17, S1, S0
VCMPE.F32       S17, S16
VMRS            APSR_nzcv, FPSCR
VLDR            S0, =1.0
VMOVCC.F32      S17, S16
VSTR            S0, [SP,#0x48+var_34]
VSTR            S16, [SP,#0x48+var_30]
LDR             R0, [R6,#(dword_6E198C - 0x6E197C)]
VMOV.F32        S0, S18
VMOV            S2, R0
VMOV.F32        S1, S17
STR             R0, [SP,#0x48+var_40]
ADD             R0, R4, #0x1DC
BL              sub_5A2954
VMOV.F32        S1, S17
VMOV.F32        S0, S18
VLDR            S2, [R6,#(dword_6E198C - 0x6E197C)]
BL              sub_589714
VSTR            S16, [SP,#0x48+var_28]
ADD             R2, SP, #0x48+var_2C
MOV             R1, #0
ADD             R0, R4, #0x1DC
BL              sub_5A2B20
MOV             R3, #0x100
MOV             R2, #0
MOV             R1, #2
MOV             R0, R4
BL              sub_14C548
BL              sub_48004C
CMP             R0, #0
BEQ             loc_15040C
LDR             R0, [R5,#8]
LDRH            R0, [R0,#0x10]
CMP             R0, #0x1000
ADDEQ           R0, R5, #0x24 ; '$'
BLEQ            sub_47D780
LDR             R1, =unk_63E868
LDRD            R0, R1, [R1,#(off_63E898 - 0x63E868)]
STRD            R0, R1, [R5,#0xC]
ADD             SP, SP, #0x28 ; '('
VPOP            {D8-D9}
POP             {R4-R6,PC}
