PUSH            {R4-R12,LR}
MOV             R6, R1
MOV             R7, R0
LDR             R10, =off_6D1648
VPUSH           {D8-D9}
LDR             R0, [R10]
BL              sub_1E4614
MOV             R5, R0
LDR             R0, [R10]
BL              sub_1E4604
CMP             R6, #0
MOV             R4, R0
BEQ             loc_19AFAC
LDR             R0, [R10]
LDR             R0, [R0,#0xBC]
MOV             R1, #1
BL              sub_166410
LDR             R1, [R5,#0x474]
ADD             R6, R4, #0x400
VLDR            S0, =1.0
STR             R1, [R4,#0x474]
LDR             R1, [R4,#0x464]
LDR             R2, [R5,#0x464]
MOV             R0, R7
BIC             R1, R1, #0xF
AND             R2, R2, #0xF
ORR             R1, R1, R2
STR             R1, [R4,#0x464]
BL              sub_19B970
VLDM            R0, {S16-S18}
VLDR            S1, [R5,#0x108]
VLDR            S0, [R5,#0x10C]
VLDR            S19, =0.0
VADD.F32        S1, S1, S16
VADD.F32        S0, S0, S17
VSTR            S1, [R4,#0x118]
VSTR            S0, [R4,#0x11C]
VSTR            S19, [R4,#0x120]
VSTR            S1, [R4,#0x108]
VSTR            S0, [R4,#0x10C]
VSTR            S19, [R4,#0x110]
LDR             R0, [R10]
BL              sub_1E45C8
LDR             R1, [R0,#0x14]
ORR             R1, R1, #0x80000
STR             R1, [R0,#0x14]
ADD             R0, R5, #0x800
VSTR            S19, [R0,#0x2C]
VSTR            S19, [R0,#0x28]
LDR             R0, [R10]
BL              sub_1E45C8
LDR             R1, [R0]
MOV             R2, #0
VMOV.F32        S1, S19
VMOV.F32        S0, S19
LDR             R3, [R1,#0xEC]
MOV             R1, R2
BLX             R3
LDR             R0, [R7,#0x1B4]
BIC             R0, R0, #0x100
STR             R0, [R7,#0x1B4]
LDR             R0, [R5,#0x4EC]
TST             R0, #1
BNE             loc_19AFA4
VSTR            S19, [R6,#0xBC]
MOV             R0, #0xFFFFFFFF
VSTR            S19, [R6,#0xB8]
STRB            R0, [R4,#0x65F]
MOV             R1, #0
STRB            R0, [R4,#0x65E]
STR             R1, [R4,#0x744]
STR             R1, [R4,#0x740]
LDR             R0, [R4]
ADD             R9, R4, #0x600
LDR             R1, [R0,#0x220]
MOV             R0, R4
BLX             R1
LDR             R0, [R4,#0x4EC]
ADD             R7, R4, #0x400
ADD             R7, R7, #0xEC
BIC             R0, R0, #2
BIC             R1, R0, #1
MOV             R0, R0,LSL#30
ADD             R8, R4, #0x5E0
ORR             R0, R1, R0,LSR#31
STR             R0, [R4,#0x4EC]
LDR             R0, [R4,#0x5E0]
BIC             R0, R0, #0x20 ; ' '
STR             R0, [R4,#0x5E0]
LDR             R0, [R10]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x14000
LDR             R11, [R0,#0x174]
LDR             R0, [R10]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x14000
MOV             R2, R11
LDR             R1, [R0,#0x170]
LDR             R0, [R4]
LDR             R3, [R0,#0x2E4]
MOV             R0, R4
BLX             R3
LDR             R0, =dword_6E1330
LDR             R0, [R0]
TST             R0, #1
BNE             loc_19AF24
LDR             R0, =dword_6E1330
BLX             sub_3022F4
CMP             R0, #0
BEQ             loc_19AF24
LDR             R0, =flt_711FE4
VSTR            S19, [R0]
VSTR            S19, [R0,#(flt_711FE8 - 0x711FE4)]
VSTR            S19, [R0,#(flt_711FEC - 0x711FE4)]
LDR             R0, =dword_6E1330
NOP
LDR             R0, =flt_711FE4
VLDR            S0, [R0]
VCMP.F32        S16, S0
VMRS            APSR_nzcv, FPSCR
VLDREQ          S0, [R0,#(flt_711FE8 - 0x711FE4)]
VCMPEQ.F32      S17, S0
VMRSEQ          APSR_nzcv, FPSCR
VLDREQ          S0, [R0,#(flt_711FEC - 0x711FE4)]
VCMPEQ.F32      S18, S0
VMRSEQ          APSR_nzcv, FPSCR
BNE             loc_19AF68
LDRB            R0, [R5,#0x65E]
STRB            R0, [R4,#0x65F]
STRB            R0, [R4,#0x65E]
LDR             R0, [R5,#0x740]
STR             R0, [R4,#0x744]
STR             R0, [R4,#0x740]
LDRSB           R0, [R9,#0x5E]
CMN             R0, #1
BNE             loc_19AFA4
VSTR            S19, [R6,#0xBC]
VSTR            S19, [R6,#0xB8]
LDR             R0, [R4,#0x4EC]
ORR             R0, R0, #2
BIC             R1, R0, #1
MOV             R0, R0,LSL#30
ORR             R0, R1, R0,LSR#31
STR             R0, [R7]
VSTR            S19, [R6,#0xC4]
LDR             R0, [R4,#0x5E0]
ORR             R0, R0, #0x20 ; ' '
STR             R0, [R8]
VPOP            {D8-D9}
POP             {R4-R12,PC}
LDR             R0, [R7,#0x1B4]
ORR             R0, R0, #0x100
STR             R0, [R7,#0x1B4]
LDR             R0, [R10]
LDR             R0, [R0,#0xBC]
VPOP            {D8-D9}
MOV             R1, #0
POP             {R4-R12,LR}
B               sub_166410
