PUSH            {R4,R5,LR}
MOV             R4, R0
VPUSH           {D8}
SUB             SP, SP, #0xC
LDR             R0, [R0,#4]
ADD             R1, R0, #0x108
LDR             R0, [R4,#8]
LDRSH           R0, [R0]
CMP             R0, #0x1B; switch 27 cases
LDRCC           PC, [PC,R0,LSL#2]; switch jump
B               def_1BBF3C; jumptable 001BBF3C default case, cases 0-16,21,24,25
DCD def_1BBF3C; jump table for switch statement
LDR             R0, =0x11E0; jumptable 001BBF3C cases 17-20,22,23
LDR             R0, [R0,R4]
CMP             R0, #0
BLNE            sub_231750
NOP
NOP
B               def_1BBF3C; jumptable 001BBF3C default case, cases 0-16,21,24,25
ADD             R1, R4, #0x1000; jumptable 001BBF3C case 26
LDR             R0, [R1,#0x1F0]
CMP             R0, #0
BEQ             def_1BBF3C; jumptable 001BBF3C default case, cases 0-16,21,24,25
ADD             R0, R4, #0x1000
ADD             R0, R0, #0x198
VLDR            S1, =0.0
VLDR            S0, [R0]
VSTR            S0, [SP,#0x20+var_20]
VLDR            S2, [R0,#4]
VSTR            S2, [SP,#0x20+var_1C]
VSTR            S1, [SP,#0x20+var_18]
LDR             R0, [R4,#4]
ADD             R0, R0, #0x108
VLDR            S3, [R0]
VADD.F32        S0, S0, S3
VSTR            S0, [SP,#0x20+var_20]
VLDR            S0, [R0,#4]
VADD.F32        S0, S2, S0
VSTR            S0, [SP,#0x20+var_1C]
VLDR            S0, [R0,#8]
VADD.F32        S0, S1, S0
VSTR            S0, [SP,#0x20+var_18]
LDR             R0, [R1,#0x1F0]
MOV             R1, SP
BL              sub_231750
LDR             R0, [R4,#4]; jumptable 001BBF3C default case, cases 0-16,21,24,25
ADD             R0, R0, #0x400
LDRH            R0, [R0,#0x68]
CMP             R0, #0
BNE             loc_1BC150
LDR             R0, [R4,#8]
VLDR            S16, =1.0
ADD             R2, R0, #0x400
ADD             R2, R2, #0x178
LDRSH           R1, [R2,#2]
LDRSH           R0, [R2]
VMOV            S1, R1
VMOV            S0, R0
VCVT.F32.S32    S1, S1
VCVT.F32.S32    S0, S0
VSUB.F32        S1, S1, S16
VCMP.F32        S0, S1
VMRS            APSR_nzcv, FPSCR
BNE             loc_1BC108
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
B               loc_1BC150
LDRB            R1, [R2,#4]
CMP             R1, #0
BNE             loc_1BC150
LDRSH           R1, [R2,#2]
ADD             R0, R0, #1
VMOV            S1, R1
SXTH            R0, R0
VMOV            S0, R0
STRH            R0, [R2]
VCVT.F32.S32    S1, S1
VCVT.F32.S32    S0, S0
VSUB.F32        S1, S1, S16
VCMP.F32        S0, S1
VMRS            APSR_nzcv, FPSCR
BEQ             loc_1BC150
CMP             R1, R0
MOVLE           R0, R1
STRH            R0, [R2]
LDR             R1, [R4,#4]
LDR             R0, =0x468
LDRH            R0, [R0,R1]
CMP             R0, #1
CMPNE           R0, #3
BNE             loc_1BC21C
LDR             R0, [R4,#8]
VLDR            S16, =1.0
ADD             R0, R0, #0x500
ADD             R0, R0, #0x7E ; '~'
LDRSH           R3, [R0,#2]
LDRSH           R2, [R0]
VMOV            S1, R3
VMOV            S0, R2
VCVT.F32.S32    S1, S1
VCVT.F32.S32    S0, S0
VSUB.F32        S1, S1, S16
VCMP.F32        S0, S1
VMRS            APSR_nzcv, FPSCR
BNE             loc_1BC228
LDR             R0, =0x20078
VLDR            S0, =0.0
MOV             R2, #0
VMOV.F32        S1, S0
BL              sub_1459F8
LDR             R0, [R4,#8]
ADD             R4, R0, #0x500
LDR             R0, =dword_6D1F40
ADD             R4, R4, #0x7E ; '~'
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
STRH            R1, [R4]
VCVT.F32.U32    S0, S0
VMUL.F32        S0, S0, S1
VADDNE.F32      S0, S0, S16
VCVT.S32.F32    S0, S0
VMOV            R0, S0
SXTH            R0, R0
CMP             R0, #1
MOVLT           R0, #1
STRH            R0, [R4,#2]
MOV             R0, #0
STRB            R0, [R4,#4]
ADD             SP, SP, #0xC
VPOP            {D8}
POP             {R4,R5,PC}
LDRB            R1, [R0,#4]
CMP             R1, #0
BNE             loc_1BC21C
LDRSH           R1, [R0,#2]
ADD             R2, R2, #1
VMOV            S1, R1
SXTH            R2, R2
VMOV            S0, R2
STRH            R2, [R0]
VCVT.F32.S32    S1, S1
VCVT.F32.S32    S0, S0
VSUB.F32        S1, S1, S16
VCMP.F32        S0, S1
VMRS            APSR_nzcv, FPSCR
BEQ             loc_1BC21C
CMP             R1, R2
MOVGT           R1, R2
STRH            R1, [R0]
ADD             SP, SP, #0xC
VPOP            {D8}
POP             {R4,R5,PC}
