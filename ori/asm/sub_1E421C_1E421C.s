PUSH            {R4-R8,LR}
MOV             R6, R0
MOV             R4, R1
MOV             R5, R2
VPUSH           {D8}
SUB             SP, SP, #8
LDRB            R0, [R2,#0x75C]
ANDS            R0, R0, #8
BEQ             loc_1E4320
LDR             R0, [R4,#0x658]
VLDR            S0, =0.5
TST             R0, #0x800
BNE             loc_1E432C
LDR             R0, [R6,#0xC4]
LDR             R0, [R0,#4]
LDR             R1, [R0,#4]
ADD             R0, R5, #0x400
ADD             R1, R1, #0x2400
ADD             R1, R1, #0x298
LDRB            R1, [R1]
CMP             R1, #0
BEQ             loc_1E4290
CMP             R1, #1
BEQ             loc_1E42D0
CMP             R1, #2
BEQ             loc_1E42B0
CMP             R1, #3
BNE             loc_1E432C
B               loc_1E42F8
VLDR            S1, [R5,#0x10C]
VLDR            S2, [R0,#0x234]
VLDR            S3, [R4,#0x10C]
VMLA.F32        S1, S2, S0
VCMPE.F32       S1, S3
VMRS            APSR_nzcv, FPSCR
BGT             loc_1E431C
B               loc_1E432C
VLDR            S1, [R5,#0x10C]
VLDR            S2, [R0,#0x234]
VLDR            S3, [R4,#0x10C]
VMLA.F32        S1, S2, S0
VCMPE.F32       S1, S3
VMRS            APSR_nzcv, FPSCR
BCC             loc_1E431C
B               loc_1E432C
ADD             R0, R0, #0x224
VLDR            S1, [R5,#0x108]
VLDR            S4, [R4,#0x108]
VLDM            R0, {S2-S3}
VADD.F32        S1, S1, S2
VMLA.F32        S1, S3, S0
VCMPE.F32       S1, S4
VMRS            APSR_nzcv, FPSCR
BGT             loc_1E431C
B               loc_1E432C
ADD             R0, R0, #0x224
VLDR            S1, [R5,#0x108]
VLDR            S4, [R4,#0x108]
VLDM            R0, {S2-S3}
VADD.F32        S1, S1, S2
VMLA.F32        S1, S3, S0
VCMPE.F32       S1, S4
VMRS            APSR_nzcv, FPSCR
BCS             loc_1E432C
MOV             R0, #0
ADD             SP, SP, #8
VPOP            {D8}
POP             {R4-R8,PC}
LDRB            R0, [R4,#0xDE]
VLDR            S16, =0.0
VLDR            S2, =-1.0
BIC             R0, R0, #8
STRB            R0, [R4,#0xDE]
LDR             R0, [R4]
VMOV.F32        S0, S16
VLDR            S1, =1.0
LDR             R1, [R0,#0x214]
MOV             R0, R4
BLX             R1
ADD             R7, R4, #0x400
MOV             R8, #0
LDRH            R0, [R7,#0x68]
SUB             R0, R0, #8
CMP             R0, #8
BCS             loc_1E43AC
LDR             R0, [R4]
LDR             R1, [R0,#0x370]
MOV             R0, R4
BLX             R1
LDR             R0, [R4]
LDR             R1, [R0,#0x3C0]
MOV             R0, R4
BLX             R1
STRH            R8, [R7,#0x68]
VSTR            S16, [R7,#0x78]
LDR             R0, [R6,#0xC4]
LDR             R0, [R0,#4]
LDR             R1, [R0,#0x14]
BIC             R1, R1, #0x40 ; '@'
STR             R1, [R0,#0x14]
MOV             R0, R6
BL              sub_1ED874
LDRB            R1, [R5,#0x75C]
LDR             R3, =0x20003
LDR             R8, =dword_6E1330
TST             R1, #0x10
MOV             R7, #8
BEQ             loc_1E4450
VMOV.F32        S0, S16
MOV             R1, #3
STRB            R1, [R0,#0xF]
MOV             R2, #0
MOV             R1, R5
MOV             R0, R3
VMOV.F32        S1, S0
BL              sub_1459F8
STR             R7, [R6,#0x154]
LDR             R0, [R8]
TST             R0, #1
BNE             loc_1E4428
MOV             R0, R8
BLX             sub_3022F4
CMP             R0, #0
NOP
BEQ             loc_1E4428
LDR             R0, =flt_711FE4
VSTR            S16, [R0]
VSTR            S16, [R0,#(flt_711FE8 - 0x711FE4)]
VSTR            S16, [R0,#(flt_711FEC - 0x711FE4)]
MOV             R0, R8
NOP
LDR             R0, =flt_711FE4
LDR             R2, =0x1AA
MOV             R3, R4
STR             R0, [SP,#0x28+var_28]
LDR             R0, [R6,#0xA0]
MOV             R1, #0
BL              sub_2D3F94
NOP
NOP
B               loc_1E44C8
VMOV.F32        S0, S16
MOV             R1, #1
STRB            R1, [R0,#0xF]
MOV             R2, #0
MOV             R1, R5
MOV             R0, R3
VMOV.F32        S1, S0
BL              sub_1459F8
STR             R7, [R6,#0x154]
LDR             R0, [R8]
TST             R0, #1
BNE             loc_1E44AC
LDR             R0, =dword_6E1330
BLX             sub_3022F4
CMP             R0, #0
NOP
BEQ             loc_1E44AC
LDR             R0, =flt_711FE4
VSTR            S16, [R0]
VSTR            S16, [R0,#(flt_711FE8 - 0x711FE4)]
VSTR            S16, [R0,#(flt_711FEC - 0x711FE4)]
LDR             R0, =dword_6E1330
NOP
LDR             R0, =flt_711FE4
MOV             R3, R4
MOV             R2, #0x110
STR             R0, [SP,#0x28+var_28]
LDR             R0, [R6,#0xA0]
MOV             R1, #0
BL              sub_2D3F94
LDR             R1, =off_68E84C
LDRD            R0, R1, [R1]
STRD            R0, R1, [R6,#0x4C]
ADD             SP, SP, #8
MOV             R0, #1
VPOP            {D8}
POP             {R4-R8,PC}
