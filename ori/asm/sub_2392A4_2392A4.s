PUSH            {R4,R5,LR}
MOV             R4, R0
VLDR            S1, =104.72
VPUSH           {D8-D9}
SUB             SP, SP, #0xC
LDR             R1, [R4,#8]
LDR             R0, [R0,#4]
VLDR            S18, =0.0
VLDR            S0, [R1,#0x364]
ADD             R0, R0, #0x108
VMUL.F32        S0, S0, S1
VLDR            S1, [R0]
VLDR            S3, [R0,#4]
VLDR            S2, [R0,#8]
VADD.F32        S1, S1, S18
VADD.F32        S2, S2, S18
VADD.F32        S0, S3, S0
VSTR            S1, [SP,#0x28+var_28]
VSTR            S0, [SP,#0x28+var_24]
VSTR            S2, [SP,#0x28+var_20]
LDR             R1, [R4,#4]
ADD             R0, R1, #0x17400
LDRB            R2, [R0,#0xAE]
CMP             R2, #0
BNE             loc_239328
LDRB            R0, [R0,#0xAD]
CMP             R0, #0
BEQ             loc_239328
VMOV.F32        S0, S18
LDR             R0, =0x10001
MOV             R2, #0
VLDR            S1, =209.44
BL              sub_1459F8
LDR             R0, [R4,#8]
LDRSH           R0, [R0]
CMP             R0, #0x1D; switch 29 cases
LDRCC           PC, [PC,R0,LSL#2]; switch jump
B               def_239334; jumptable 00239334 default case, cases 0-20,22-26
DCD def_239334; jump table for switch statement
LDR             R0, [R4,#0xADC]; jumptable 00239334 case 21
CMP             R0, #0
MOVNE           R1, SP
BLNE            sub_231750
NOP
NOP
B               def_239334; jumptable 00239334 default case, cases 0-20,22-26
LDR             R0, [R4,#0xAE0]; jumptable 00239334 case 27
MOV             R1, SP
BL              sub_231750
NOP
NOP
B               def_239334; jumptable 00239334 default case, cases 0-20,22-26
LDR             R0, [R4,#0xA74]; jumptable 00239334 case 28
CMP             R0, #0
BEQ             loc_239450
LDR             R0, =off_6D1648
LDR             R0, [R0]
LDR             R0, [R0,#0xBC]
ADD             R5, R0, #0x14000
ADD             R0, R4, #0x800
VLDR            S1, =0.03125
VLDR            S0, [R0,#0x27C]
LDR             R0, [R4,#8]
ADD             R5, R5, #0x2D8
VMUL.F32        S17, S0, S1
VLDR            S16, =1.0
ADD             R0, R0, #6
BL              sub_45AAB8
VLDR            S1, =1.5708
VMUL.F32        S0, S0, S1
VLDR            S1, =40.744
VMUL.F32        S0, S0, S1
BL              sub_464380
VSUB.F32        S0, S16, S0
VMUL.F32        S1, S16, S0
VMUL.F32        S2, S17, S0
VMUL.F32        S0, S16, S0
VSTR            S0, [R5,#8]
VSTM            R5, {S1-S2}
LDR             R0, [R4,#0xAF0]
CMP             R0, #0
BNE             def_239334; jumptable 00239334 default case, cases 0-20,22-26
LDR             R0, [R4,#8]
LDRB            R0, [R0,#4]
CMP             R0, #0
BNE             def_239334; jumptable 00239334 default case, cases 0-20,22-26
LDR             R0, =off_6D1648
LDR             R0, [R0]
BL              sub_1E45C8
LDR             R0, [R0,#0x890]
TST             R0, #1
BNE             def_239334; jumptable 00239334 default case, cases 0-20,22-26
VMOV.F32        S0, S18
LDR             R1, [R4,#4]
LDR             R0, =0x2004F
MOV             R2, #0
VMOV.F32        S1, S0
BL              sub_1459F8
STR             R0, [R4,#0xAF0]
LDR             R0, [R4,#4]; jumptable 00239334 default case, cases 0-20,22-26
ADD             R0, R0, #0x400
LDRH            R0, [R0,#0x68]
CMP             R0, #0
BNE             loc_23957C
LDR             R0, [R4,#8]
VLDR            S16, =1.0
ADD             R0, R0, #0x400
ADD             R0, R0, #0x178
LDRSH           R1, [R0,#2]
LDRSH           R2, [R0]
VMOV            S0, R1
VMOV            S1, R2
VCVT.F32.S32    S0, S0
VCVT.F32.S32    S1, S1
VSUB.F32        S0, S0, S16
VCMP.F32        S1, S0
VMRS            APSR_nzcv, FPSCR
BNE             loc_239574
LDR             R0, =dword_6D1F40
BL              sub_546DB0
ADD             R0, R0, R0,LSL#2
MOV             R0, R0,LSL#1
MOV             R1, R0,LSR#16
MOV             R0, R4
BL              sub_542C78
LDR             R0, [R4,#8]
ADD             R5, R0, #0x400
LDR             R0, =dword_6D1F40
ADD             R5, R5, #0x178
BL              sub_546DB0
MOV             R1, #0xB4
VLDR            S1, =0.5
MUL             R0, R0, R1
MOV             R0, R0,LSR#16
ADD             R0, R0, #0x12C
BIC             R1, R0, #1
VMOV            S0, R1
TST             R0, #1
MOV             R1, #0
STRH            R1, [R5]
VCVT.F32.U32    S0, S0
VMUL.F32        S0, S0, S1
VADDNE.F32      S0, S0, S16
VCVT.S32.F32    S0, S0
VMOV            R0, S0
SXTH            R0, R0
CMP             R0, #1
MOVLT           R0, #1
STRH            R0, [R5,#2]
MOV             R0, #0
STRB            R0, [R5,#4]
B               loc_23957C
NOP
BL              sub_45AA4C
LDR             R1, [R4,#4]
LDR             R0, =0x468
LDRH            R0, [R0,R1]
CMP             R0, #1
CMPNE           R0, #3
BNE             loc_23968C
LDR             R0, [R4,#8]
VLDR            S16, =1.0
ADD             R0, R0, #0x500
ADD             R0, R0, #0x7E ; '~'
LDRSH           R2, [R0,#2]
LDRSH           R3, [R0]
VMOV            S1, R2
VMOV            S0, R3
VCVT.F32.S32    S1, S1
VCVT.F32.S32    S0, S0
VSUB.F32        S1, S1, S16
VCMP.F32        S0, S1
VMRS            APSR_nzcv, FPSCR
BNE             loc_239684
VMOV.F32        S0, S18
LDR             R0, =0x20077
MOV             R2, #0
VMOV.F32        S1, S0
BL              sub_1459F8
LDR             R0, [R4,#8]
ADD             R5, R0, #0x500
LDR             R0, =dword_6D1F40
ADD             R5, R5, #0x7E ; '~'
BL              sub_546DB0
MOV             R1, #0x12C
VLDR            S1, =0.5
MUL             R0, R0, R1
MOV             R0, R0,LSR#16
ADD             R0, R0, #0xB4
BIC             R1, R0, #1
VMOV            S0, R1
TST             R0, #1
MOV             R1, #0
STRH            R1, [R5]
VCVT.F32.U32    S0, S0
VMUL.F32        S0, S0, S1
VADDNE.F32      S0, S0, S16
VCVT.S32.F32    S0, S0
VMOV            R0, S0
SXTH            R0, R0
CMP             R0, #1
MOVLT           R0, #1
STRH            R0, [R5,#2]
MOV             R0, #0
STRB            R0, [R5,#4]
B               loc_23968C
DCFS 104.72
DCFS 0.0
DCFS 209.44
DCD 0x10001
DCD off_6D1648
DCFS 0.03125
DCFS 1.0
DCFS 1.5708
DCFS 40.744
DCD 0x2004F
DCD dword_6D1F40
DCFS 0.5
DCD 0x468
DCD 0x20077
NOP
BL              sub_45AA4C
LDR             R1, [R4,#4]
LDR             R0, =0x468
LDRH            R0, [R0,R1]
CMP             R0, #0x13
CMPNE           R0, #0x14
BNE             loc_239758
ADD             R5, R4, #0x800
ADD             R5, R5, #0x2E4
VLDR            S16, =1.0
LDRSH           R0, [R5,#2]
LDRSH           R2, [R5]
VMOV            S0, R0
VMOV            S1, R2
VCVT.F32.S32    S2, S0
VCVT.F32.S32    S0, S1
VSUB.F32        S1, S2, S16
VCMP.F32        S0, S1
VMRS            APSR_nzcv, FPSCR
BNE             loc_239750
VMOV.F32        S0, S18
LDR             R0, =0x2007D
MOV             R2, #0
VMOV.F32        S1, S0
BL              sub_1459F8
LDR             R0, =dword_6D1F40
NOP
BL              sub_546DB0
MOV             R1, #0x12C
VLDR            S1, =0.5
MUL             R0, R0, R1
MOV             R0, R0,LSR#16
ADD             R0, R0, #0xB4
BIC             R1, R0, #1
VMOV            S0, R1
TST             R0, #1
MOV             R1, #0
STRH            R1, [R5]
VCVT.F32.U32    S0, S0
VMUL.F32        S0, S0, S1
VADDNE.F32      S0, S0, S16
VCVT.S32.F32    S0, S0
VMOV            R0, S0
SXTH            R0, R0
CMP             R0, #1
MOVLT           R0, #1
STRH            R0, [R5,#2]
MOV             R0, #0
STRB            R0, [R5,#4]
B               loc_239758
MOV             R0, R5
BL              sub_45AA4C
LDR             R0, [R4,#4]
ADD             R0, R0, #0x400
LDRH            R0, [R0,#0x68]
CMP             R0, #0x1C
LDRNE           R0, [R4,#0xAF0]
CMPNE           R0, #0
MOVNE           R0, #0
STRNE           R0, [R4,#0xAF0]
BEQ             loc_23977C
ADD             SP, SP, #0xC
VPOP            {D8-D9}
POP             {R4,R5,PC}
