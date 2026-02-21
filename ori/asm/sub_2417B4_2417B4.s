PUSH            {R4-R6,LR}
MOV             R4, R0
VLDR            S2, =104.72
VLDR            S1, =0.0
VPUSH           {D8}
SUB             SP, SP, #0x10
LDR             R5, [R0,#4]
LDR             R0, [R0,#8]
ADD             R5, R5, #0x108
VLDR            S0, [R0,#0x364]
ADD             R0, SP, #0x28+var_24
VMUL.F32        S0, S0, S2
VLDM            R5, {S2-S4}
VADD.F32        S2, S2, S1
VADD.F32        S1, S4, S1
VADD.F32        S0, S3, S0
VSTR            S2, [SP,#0x28+var_28]
VSTM            R0, {S0-S1}
LDR             R0, [R4,#8]
LDRSH           R0, [R0]
CMP             R0, #0x28; switch 40 cases
LDRCC           PC, [PC,R0,LSL#2]; switch jump
B               def_241808; jumptable 00241808 default case, cases 3,5-16,18,20,22,25,29,31-38
DCD loc_2418B0; jump table for switch statement
LDR             R0, [R4,#8]; jumptable 00241808 case 0
LDRSH           R0, [R0,#2]
CMP             R0, #0x11
CMPNE           R0, #0x12
BEQ             loc_2418D0
CMP             R0, #0x13
CMPNE           R0, #0x14
BNE             loc_241900
LDR             R0, [R4,#0xAEC]
CMP             R0, #0
BEQ             loc_241900
BL              sub_5CA52C
CMP             R0, #0
NOP
BEQ             loc_2418F8
LDR             R0, [R4,#0xAEC]
MOV             R1, #0
BL              sub_234A48
MOV             R0, #0
STR             R0, [R4,#0xAEC]
LDR             R0, [R4,#8]
LDRH            R0, [R0,#2]
CMP             R0, #0x1C
BNE             def_241808; jumptable 00241808 default case, cases 3,5-16,18,20,22,25,29,31-38
LDR             R0, =off_6D1648
LDR             R0, [R0]
LDR             R0, [R0,#0xBC]
LDR             R1, =dword_6E132C
ADD             R4, R0, #0x14000
LDR             R1, [R1]
TST             R1, #1
BNE             loc_241960
LDR             R0, =dword_6E132C
BLX             sub_3022F4
CMP             R0, #0
NOP
BEQ             loc_241960
LDR             R0, =flt_711FD8
VLDR            S0, =1.0
VSTR            S0, [R0]
VSTR            S0, [R0,#(flt_711FDC - 0x711FD8)]
VSTR            S0, [R0,#(flt_711FE0 - 0x711FD8)]
LDR             R0, =dword_6E132C
NOP
LDR             R2, =flt_711FD8
ADD             R4, R4, #0x2D8
LDM             R2, {R0-R2}
STM             R4, {R0-R2}
ADD             SP, SP, #0x10; jumptable 00241808 default case, cases 3,5-16,18,20,22,25,29,31-38
VPOP            {D8}
POP             {R4-R6,PC}
LDR             R0, [R4,#8]; jumptable 00241808 case 1
LDR             R1, [R0,#0x584]
CMP             R1, #0
BEQ             loc_2419BC
LDRH            R0, [R0,#2]
CMP             R0, #0
BNE             def_241808; jumptable 00241808 default case, cases 3,5-16,18,20,22,25,29,31-38
MOV             R0, R1
BL              sub_5CA52C
CMP             R0, #0
NOP
BEQ             loc_2419BC
LDR             R0, [R4,#8]
LDR             R0, [R0,#0x584]
CMP             R0, #0
BNE             def_241808; jumptable 00241808 default case, cases 3,5-16,18,20,22,25,29,31-38
LDR             R1, [R4,#4]
VLDR            S0, =0.0
LDR             R0, =0x2005B
MOV             R2, #0
VMOV.F32        S1, S0
BL              sub_1459F8
LDR             R1, [R4,#8]
STR             R0, [R1,#0x584]
ADD             SP, SP, #0x10
VPOP            {D8}
POP             {R4-R6,PC}
VLDR            S16, =0.0; jumptable 00241808 case 2
LDR             R1, [R4,#4]
LDR             R0, =0x2005C
VMOV.F32        S1, S16
VMOV.F32        S0, S16
MOV             R2, #0
BL              sub_1459F8
VMOV.F32        S1, S16
VMOV.F32        S0, S16
LDR             R1, [R4,#4]
LDR             R0, =0x2007A
MOV             R2, #0
B               loc_241A5C
LDR             R0, [R4,#0x4C]; jumptable 00241808 case 4
LDR             R1, =0x41A00000
CMP             R0, R1
BLE             def_241808; jumptable 00241808 default case, cases 3,5-16,18,20,22,25,29,31-38
LDR             R0, =off_6D1648
LDR             R0, [R0]
LDR             R0, [R0,#0xBC]
MOV             R3, #1
MOV             R2, R5
MOV             R1, #0xA
BL              sub_168114
VLDR            S0, =0.0
LDR             R1, [R4,#4]
LDR             R0, =0x20065
VMOV.F32        S1, S0
MOV             R2, #0
BL              sub_1459F8
ADD             SP, SP, #0x10
VPOP            {D8}
POP             {R4-R6,PC}
LDR             R0, [R4,#0xAEC]; jumptable 00241808 case 17
CMP             R0, #0
BNE             def_241808; jumptable 00241808 default case, cases 3,5-16,18,20,22,25,29,31-38
LDR             R1, [R4,#4]
VLDR            S0, =0.0
LDR             R0, =0x2004C
MOV             R2, #0
VMOV.F32        S1, S0
BL              sub_1459F8
NOP
NOP
B               loc_241C68
LDR             R0, [R4,#0xAD8]; jumptable 00241808 case 19
ADD             R6, R4, #0x800
ADD             R6, R6, #0x2D8
CMP             R0, #0
BEQ             loc_241AC8
LDRB            R1, [R0,#0x16E]
CMP             R1, #0
BNE             loc_241AC8
BL              sub_533330
MOV             R0, #0
STR             R0, [R6]
LDR             R0, [R4,#8]
LDRH            R0, [R0,#2]
CMP             R0, #0x12
BNE             def_241808; jumptable 00241808 default case, cases 3,5-16,18,20,22,25,29,31-38
LDR             R0, =off_6D1648
LDR             R0, [R0]
LDR             R0, [R0,#0xBC]
MOV             R3, #1
MOV             R2, R5
MOV             R1, #0x33 ; '3'
BL              sub_168114
ADD             SP, SP, #0x10
VPOP            {D8}
POP             {R4-R6,PC}
DCFS 104.72
DCFS 0.0
DCD off_6D1648
DCD dword_6E132C
DCFS 1.0
DCD flt_711FD8
DCD 0x2005B
DCD 0x2005C
DCD 0x2007A
DCD 0x41A00000
DCD 0x20065
DCD 0x2004C
LDR             R0, [R4,#8]; jumptable 00241808 case 21
LDRSH           R0, [R0,#2]
CMP             R0, #0x13
CMPNE           R0, #0x14
BNE             loc_241B74
LDR             R0, [R4,#0xAEC]
CMP             R0, #0
BEQ             loc_241B74
BL              sub_5CA52C
CMP             R0, #0
NOP
BEQ             loc_241B6C
LDR             R0, [R4,#0xAEC]
MOV             R1, #0
BL              sub_234A48
MOV             R0, #0
STR             R0, [R4,#0xAEC]
LDR             R0, [R4,#0xADC]
CMP             R0, #0
BNE             loc_241BA0
LDR             R0, =off_6D1648
LDR             R0, [R0]
LDR             R0, [R0,#0xBC]
MOV             R3, #0
MOV             R2, SP
MOV             R1, #9
BL              sub_168114
STR             R0, [R4,#0xADC]
VLDR            S16, =0.0
LDR             R1, [R4,#4]
LDR             R0, =0x2004D
VMOV.F32        S1, S16
VMOV.F32        S0, S16
MOV             R2, #0
BL              sub_1459F8
VMOV.F32        S1, S16
VMOV.F32        S0, S16
LDR             R1, [R4,#4]
LDR             R0, =0x2007E
MOV             R2, #0
B               loc_241A5C
LDR             R0, [R4,#0xADC]; jumptable 00241808 case 23
ADD             R5, R4, #0x800
ADD             R5, R5, #0x2DC
CMP             R0, #0
BEQ             def_241808; jumptable 00241808 default case, cases 3,5-16,18,20,22,25,29,31-38
BL              sub_533330
MOV             R0, #0
STR             R0, [R5]
ADD             SP, SP, #0x10
VPOP            {D8}
POP             {R4-R6,PC}
LDR             R0, [R4,#8]; jumptable 00241808 case 24
LDRH            R0, [R0,#2]
CMP             R0, #0x12
BNE             def_241808; jumptable 00241808 default case, cases 3,5-16,18,20,22,25,29,31-38
LDR             R0, [R4,#0xAD8]
ADD             R5, R4, #0x800
ADD             R5, R5, #0x2D8
CMP             R0, #0
BEQ             loc_241C3C
LDRB            R1, [R0,#0x16E]
CMP             R1, #0
BNE             loc_241C3C
BL              sub_533330
MOV             R0, #0
STR             R0, [R5]
LDR             R0, [R4,#0xAEC]
CMP             R0, #0
BEQ             def_241808; jumptable 00241808 default case, cases 3,5-16,18,20,22,25,29,31-38
BL              sub_5CA52C
CMP             R0, #0
NOP
BEQ             loc_241C64
LDR             R0, [R4,#0xAEC]
MOV             R1, #0
BL              sub_234A48
MOV             R0, #0
STR             R0, [R4,#0xAEC]
ADD             SP, SP, #0x10
VPOP            {D8}
POP             {R4-R6,PC}
VLDR            S16, =0.0; jumptable 00241808 case 26
LDR             R1, [R4,#4]
LDR             R0, =0x2004E
VMOV.F32        S1, S16
VMOV.F32        S0, S16
MOV             R2, #0
BL              sub_1459F8
VMOV.F32        S1, S16
VMOV.F32        S0, S16
LDR             R1, [R4,#4]
LDR             R0, =0x2007B
MOV             R2, #0
B               loc_241A5C
LDR             R0, [R4,#0xAE0]; jumptable 00241808 case 27
CMP             R0, #0
BNE             def_241808; jumptable 00241808 default case, cases 3,5-16,18,20,22,25,29,31-38
LDR             R0, =off_6D1648
LDR             R0, [R0]
LDR             R0, [R0,#0xBC]
MOV             R3, #0
MOV             R2, SP
MOV             R1, #0xB
BL              sub_168114
STR             R0, [R4,#0xAE0]
ADD             SP, SP, #0x10
VPOP            {D8}
POP             {R4-R6,PC}
LDR             R0, [R4,#0xAE0]; jumptable 00241808 case 28
ADD             R6, R4, #0xAE0
CMP             R0, #0
BEQ             loc_241D00
BL              sub_533330
MOV             R0, #0
STR             R0, [R6]
LDR             R6, =off_6D1648
VLDR            S16, =0.0
LDR             R0, [R6]
LDR             R0, [R0,#0xBC]
MOV             R3, #1
MOV             R2, R5
MOV             R1, #0xC
BL              sub_168114
STR             R0, [R4,#0xAE0]
LDR             R0, [R4,#4]
ADD             R0, R0, #0x400
VLDR            S0, [R0,#0xC4]
VCMPE.F32       S0, S16
VMRS            APSR_nzcv, FPSCR
VMOVGE          R0, S0
BGE             loc_241D4C
VMOV.F32        S1, S0
VNEG.F32        S1, S1
VMOV            R0, S1
LDR             R1, =0x41D00000
CMP             R0, R1
BGE             loc_241D74
MOV             R0, #9
VLDR            S0, =10.0
ADD             R1, R4, #0x800
STRB            R0, [R4,#0xA78]
VSTR            S0, [R1,#0x27C]
VLDR            S16, =25.0
B               loc_241DC4
VCMPE.F32       S16, S0
LDR             R1, =0x42200000
VMRS            APSR_nzcv, FPSCR
VNEGHI.F32      S0, S0
VMOV            R0, S0
CMP             R0, R1
BGE             loc_241DAC
MOV             R0, #0xD
VLDR            S0, =15.0
ADD             R1, R4, #0x800
STRB            R0, [R4,#0xA78]
VSTR            S0, [R1,#0x27C]
VLDR            S16, =38.0
B               loc_241DC4
MOV             R0, #0x12
VLDR            S0, =20.0
ADD             R1, R4, #0x800
VLDR            S16, =50.0
STRB            R0, [R4,#0xA78]
VSTR            S0, [R1,#0x27C]
LDR             R0, [R6]
LDR             R0, [R0,#0xBC]
ADD             R6, R4, #0x800
LDRB            R3, [R4,#0xA78]
ADD             R6, R6, #0x278
MOV             R2, R5
MOV             R1, #0x69 ; 'i'
BL              sub_168114
STR             R0, [R4,#0xA74]
LDRB            R1, [R6]
ADD             R5, R4, #0x800
ADD             R4, R0, #4
VMOV            S0, R1
LDRSH           R0, [R0,#0xC]
ADD             R5, R5, #0x274
MOV             R0, R0,LSL#8
VCVT.F32.U32    S1, S0
VDIV.F32        S0, S16, S1
VLDR            S1, =2.0
VMUL.F32        S0, S0, S1
VCVT.S32.F32    S0, S0
VMOV            R1, S0
BL              sub_2FEFCC
SXTH            R1, R0
MOV             R0, R4
BL              sub_123CE8
LDR             R0, [R5]
MOV             R1, R5
STR             R1, [R0,#0x180]
ADD             SP, SP, #0x10
VPOP            {D8}
POP             {R4-R6,PC}
VLDR            S0, =0.0; jumptable 00241808 case 30
LDR             R1, [R4,#4]
LDR             R0, =0x2007C
VMOV.F32        S1, S0
MOV             R2, #0
B               loc_241A5C
VLDR            S0, =0.0; jumptable 00241808 case 39
LDR             R1, [R4,#0xAC4]
LDR             R0, =0x208EA
VMOV.F32        S1, S0
MOV             R2, #0
B               loc_241A5C
