PUSH            {R0-R11,LR}
MOV             R5, R3
MOV             R9, R2
LDR             R1, =off_6BC240
VPUSH           {D0}
VPUSH           {D8-D11}
VMOV.F64        D11, D0
SUB             SP, SP, #0x44
STR             R1, [R0],#4
BL              sub_14F198
SUB             R0, R0, #4
MOV             R11, #0
STRB            R11, [R0,#0x3F8]
ADD             R0, R0, #0x400
BL              sub_5A1E2C
LDR             R4, =off_6B7BEC
LDR             R1, =sub_5A2F28
MOV             R3, #1
MOV             R2, #0x1C
STR             R4, [R0],#0x18
BLX             sub_1002F4
SUB             R0, R0, #0x18
ADD             R1, R0, #0x18
MOV             R6, #1
STR             R1, [R0,#0x10]
STRB            R6, [R0,#0x14]
ADD             R0, R0, #0x34 ; '4'
BL              sub_5A1E2C
LDR             R1, =sub_5A2F28
MOV             R3, #1
MOV             R2, #0x1C
STR             R4, [R0],#0x18
BLX             sub_1002F4
SUB             R0, R0, #0x18
ADD             R1, R0, #0x18
STR             R1, [R0,#0x10]
STRB            R6, [R0,#0x14]
ADD             R0, R0, #0x8C
BL              sub_5A2BD0
LDR             R1, =off_6B7C1C
MOV             R3, #3
MOV             R2, #0x28 ; '('
STR             R1, [R0],#0x30
LDR             R1, =sub_5A39D0
BLX             sub_1002F4
SUB             R0, R0, #0x30 ; '0'
ADD             R2, R0, #0x30 ; '0'
STR             R2, [R0,#0x28]
MOV             R1, #3
STRB            R1, [R0,#0x2C]
SUB             R0, R0, #0x4C0
LDR             R1, =sub_587140
STRB            R6, [R0,#0x56C]
MOV             R3, #4
MOV             R2, #0x18
ADD             R0, R0, #0x570
BLX             sub_1002F4
LDR             R1, =nullsub_1087
ADD             R0, R0, #0x60 ; '`'
MOV             R3, #4
MOV             R2, #0xC
BLX             sub_1002F4
ADD             R0, R0, #0x30 ; '0'
SUB             R7, R0, #0x600
STR             R0, [R0,#0xF0]
STR             R0, [R0,#0xF4]
SUB             R0, R0, #0x200
STR             R0, [SP,#0xA0+var_90]
VLDR            S16, =0.0
STR             R11, [R7,#0x6F8]
STR             R11, [R7,#0x6FC]
VSTR            S16, [R0,#0x30C]
LDR             R8, =dword_6E1330
VSTR            S16, [R0,#0x310]
VSTR            S16, [R0,#0x314]
STR             R11, [R7,#0x71C]
STRB            R11, [R7,#0x56E]
LDR             R0, [R8]
ADD             R4, R7, #0x4C0
TST             R0, #1
BNE             loc_27DB34
MOV             R0, R8
BLX             sub_3022F4
CMP             R0, #0
BEQ             loc_27DB34
LDR             R0, =flt_711FE4
VSTR            S16, [R0]
VSTR            S16, [R0,#(flt_711FE8 - 0x711FE4)]
VSTR            S16, [R0,#(flt_711FEC - 0x711FE4)]
MOV             R0, R8
NOP
LDR             R6, =flt_711FE4
MOV             R0, R4
BL              sub_5A26D0
LDM             R6, {R0-R2}
ADD             R3, R4, #0x1C
ADD             R4, R4, #4
STM             R3, {R0-R2}
STM             R4, {R0-R2}
LDR             R0, [R8]
TST             R0, #1
BNE             loc_27DB8C
LDR             R0, =dword_6E1330
BLX             sub_3022F4
CMP             R0, #0
NOP
BEQ             loc_27DB8C
MOV             R0, R6
VSTR            S16, [R0]
VSTR            S16, [R0,#(flt_711FE8 - 0x711FE4)]
VSTR            S16, [R0,#(flt_711FEC - 0x711FE4)]
LDR             R0, =dword_6E1330
NOP
LDR             R4, =flt_711FE4
ADD             R3, R7, #0x400
ADD             R3, R3, #0x84
LDM             R4, {R0-R2}
STM             R3, {R0-R2}
LDR             R0, =dword_6E1330
LDR             R0, [R0]
TST             R0, #1
BNE             loc_27DBDC
LDR             R0, =dword_6E1330
BLX             sub_3022F4
CMP             R0, #0
NOP
BEQ             loc_27DBDC
MOV             R0, R4
VSTR            S16, [R0]
VSTR            S16, [R0,#(flt_711FE8 - 0x711FE4)]
VSTR            S16, [R0,#(flt_711FEC - 0x711FE4)]
LDR             R0, =dword_6E1330
NOP
LDM             R4, {R0-R2}
ADD             R3, R7, #0x400
ADD             R3, R3, #0x78 ; 'x'
STM             R3, {R0-R2}
ADD             R0, R7, #0x400
BL              sub_5A18EC
LDR             R0, [SP,#0xA0+var_90]
VSTR            S16, [R0,#0xC]
LDR             R0, [SP,#0xA0+var_90]
VSTR            S16, [R0,#4]
ADD             R0, R7, #0x400
ADD             R0, R0, #0x34 ; '4'
BL              sub_5A18EC
LDR             R0, [SP,#0xA0+var_90]
VLDR            S17, =1.0
VSTR            S16, [R0,#0x40]
LDR             R0, [SP,#0xA0+var_90]
VSTR            S16, [R0,#0x38]
LDR             R0, [SP,#0xA0+var_90]
VSTR            S16, [R0,#0x68]
LDR             R0, [SP,#0xA0+var_90]
VSTR            S16, [R0,#0x6C]
LDR             R0, [SP,#0xA0+var_90]
VSTR            S16, [R0,#0x70]
LDR             R0, [SP,#0xA0+var_90]
VSTR            S17, [R0,#0x74]
STRB            R11, [R7,#0x56D]
STRB            R11, [R7,#0x56E]
BL              sub_464168
VLDM            R0, {S0-S7}
ADD             R0, R0, #0x20 ; ' '
LDR             R1, [SP,#0xA0+var_90]
ADD             R2, R1, #0x90
ADD             R1, R1, #0xB0
VSTM            R2, {S0-S7}
LDM             R0, {R2-R4,R12}
LDR             R0, =off_6CDF98
STM             R1, {R2-R4,R12}
MUL             R2, R5, R9
STRB            R11, [R7,#0x708]
LDR             R1, [R0]
LDR             R1, [R1,#0x124]
STR             R1, [SP,#0xA0+var_70]
SUB             R1, R5, #1
STR             R2, [R7,#0x718]
SXTH            R1, R1
CMP             R1, #0
STR             R1, [SP,#0xA0+var_88]
BLT             loc_27DF44
ADD             R10, SP, #0xA0+var_7C
VLDR            S18, =0.000015259
VLDR            S19, =3.0
VLDR            S21, =-1.0
CMP             R9, #0
MOV             R5, #0
BLS             loc_27DF2C
LDR             R0, [SP,#0xA0+var_88]
AND             R0, R0, #0xFF
STR             R0, [SP,#0xA0+var_8C]
MOV             R3, #0
LDR             R1, [SP,#0xA0+var_30]
ADD             R6, SP, #0xA0+var_80
MOV             R2, R3
MOV             R0, #0x48 ; 'H'
BL              sub_10A358
CMP             R0, #0
MOVEQ           R4, #0
BEQ             loc_27DE40
STR             R7, [R0]
MOV             R2, #1
STRB            R11, [R0,#5]
STRB            R2, [R0,#0xC]
STRB            R11, [R0,#0xD]
STRB            R2, [R0,#0xE]
LDR             R1, =sub_587140
MOV             R3, #2
MOV             R2, #0x18
ADD             R0, R0, #0x18
BLX             sub_1002F4
VMOV            S0, R9
VMOV            S1, R5
SUB             R4, R0, #0x18
STRB            R5, [R0,#-0x14]
LDR             R0, [SP,#0xA0+var_8C]
ADD             R1, R4, #0x10
VCVT.F32.U32    S0, S0
VCVT.F32.U32    S1, S1
STRB            R0, [R4,#5]
LDR             R0, =off_6CDF98
LDR             R0, [R0]
VDIV.F32        S2, S17, S0
LDR             R8, [R0,#0x124]
LDR             R0, =dword_6D1F40
VMUL.F32        S0, S2, S1
VADD.F32        S1, S0, S2
VSTM            R1, {S0-S1}
BL              sub_546DB0
VMOV            S0, R0
LDR             R0, =dword_6D1F40
VCVT.F32.U32    S0, S0
VMUL.F32        S0, S0, S18
VMUL.F32        S20, S0, S19
BL              sub_546DB0
TST             R0, #1
VMOVNE.F32      S0, S17
VMOVEQ.F32      S0, S21
LDRB            R0, [R4,#5]
CMP             R0, #0
VMUL.F32        S2, S20, S0
BEQ             loc_27DDA8
TST             R0, #1
VMOVNE.F32      S0, S17
VMOVEQ.F32      S0, S21
VLDR            S1, [R8,#0x294]
VMLA.F32        S2, S0, S1
VMOV            S4, R0
VLDR            S1, [R8,#0x284]
VLDR            S3, [R8,#0x2A4]
VDIV.F32        S0, S2, S1
VCVT.F32.U32    S1, S4
VMUL.F32        S1, S1, S3
VMOV.F32        S3, S17
VSTR            S1, [R4,#8]
VLDR            S1, [R4,#0x10]
VADD.F32        S2, S1, S0
VSTR            S2, [R4,#0x10]
VLDR            S1, [R4,#0x14]
VCMPE.F32       S2, S3
VADD.F32        S0, S1, S0
VMOV.F32        S1, S16
VMRS            APSR_nzcv, FPSCR
VSTR            S0, [R4,#0x14]
VMOVGT.F32      S1, S3
BGT             loc_27DE00
VCMPE.F32       S2, S1
VMRS            APSR_nzcv, FPSCR
VMOVCS.F32      S1, S2
VMOV.F32        S2, S3
VMOV            R0, S1
VMOV.F32        S1, S16
VCMPE.F32       S0, S2
STR             R0, [R4,#0x10]
VMRS            APSR_nzcv, FPSCR
VMOVGT.F32      S0, S2
BGT             loc_27DE2C
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
VMOVCC.F32      S0, S1
CMP             R0, #0x3F000000
MOVLE           R0, #1
VSTR            S0, [R4,#0x14]
STRBLE          R0, [R4,#0xD]
STRBGT          R11, [R4,#0xD]
ADD             R0, R6, #4
STR             R0, [SP,#0xA0+var_78]
STR             R4, [SP,#0xA0+var_80]
B               loc_27DE90
DCD off_6BC240
DCD off_6B7BEC
DCD sub_5A2F28
DCD off_6B7C1C
DCD sub_5A39D0
DCD sub_587140
DCD nullsub_1087
DCFS 0.0
DCD dword_6E1330
DCD flt_711FE4
DCFS 1.0
DCD off_6CDF98
DCFS 0.000015259
DCFS 3.0
DCFS -1.0
DCD dword_6D1F40
STR             R0, [SP,#0xA0+var_7C]
LDR             R0, [R7,#0x6F4]
LDR             R12, [R7,#0x6F0]
LDR             R3, =0x2AAAAAAB
ADD             R2, R7, #0x600
SUB             R12, R0, R12
SMULL           R12, R3, R3, R12
MOV             R12, R3,ASR#1
SUB             R3, R12, R3,ASR#31
ADD             R3, R3, #1
CMP             R3, #0x14
BHI             loc_27DEF4
CMP             R0, #0
ADD             R2, R2, #0xF0
BEQ             loc_27DEE8
STR             R4, [R0],#4
ADD             R3, SP, #0xA0+var_7C
STR             R3, [R0]
LDR             R3, [SP,#0xA0+var_78]
STR             R3, [R0,#4]
STR             R0, [R3]
STR             R0, [SP,#0xA0+var_78]
LDR             R0, [R2,#4]
ADD             R0, R0, #0xC
STR             R0, [R2,#4]
LDR             R0, [SP,#0xA0+var_78]
CMP             R0, R10
BNE             loc_27DF0C
LDR             R0, [SP,#0xA0+var_80]
CMP             R0, #0
BLNE            sub_300FD4
ADD             R1, SP, #0xA0+var_7C
LDM             R1, {R0,R2}
STR             R2, [R0,#4]
STR             R0, [R2]
ADD             R0, R5, #1
UXTH            R5, R0
CMP             R5, R9
BCC             loc_27DCC8
LDR             R0, [SP,#0xA0+var_88]
SUB             R0, R0, #1
SXTH            R0, R0
CMP             R0, #0
STR             R0, [SP,#0xA0+var_88]
BGE             loc_27DCB0
MOV             R1, #1
ADD             R0, R7, #4
BL              sub_14C450
LDR             R0, [SP,#0xA0+var_70]
MOV             R1, #1
LDR             R0, [R0,#0x66C]
STRB            R0, [R7,#0xFA]
STRB            R1, [R7,#0xF6]
MOV             R1, #0
ADD             R0, R7, #4
BL              sub_14C3E8
LDR             R0, [SP,#0xA0+var_90]
VSTR            S22, [R0,#0x300]
LDR             R0, [SP,#0xA0+var_90]
VSTR            S23, [R0,#0x304]
MOV             R0, R7
BL              sub_27D3FC
LDR             R0, =dword_6E1330
STRB            R11, [R7,#0x708]
LDR             R0, [R0]
TST             R0, #1
BNE             loc_27DFC8
LDR             R0, =dword_6E1330
BLX             sub_3022F4
CMP             R0, #0
NOP
BEQ             loc_27DFC8
LDR             R0, =flt_711FE4
VSTR            S16, [R0]
VSTR            S16, [R0,#(flt_711FE8 - 0x711FE4)]
VSTR            S16, [R0,#(flt_711FEC - 0x711FE4)]
LDR             R0, =dword_6E1330
NOP
LDR             R0, =flt_711FE4
ADD             R1, R7, #0x400
ADD             R1, R1, #0x84
LDRD            R2, R3, [R0]
LDR             R0, [R0,#(flt_711FEC - 0x711FE4)]
STM             R1, {R2,R3}
MOV             R2, #0
STR             R0, [R7,#0x48C]
MOV             R3, #0x3F800000
STR             R2, [R7,#0x494]
STR             R3, [R7,#0x490]
STR             R2, [R7,#0x498]
LDR             R12, [R7,#0x484]
ADD             R0, R7, #0x490
STR             R12, [R7,#0x49C]
STRD            R2, R3, [R0,#0x10]
STR             R2, [R7,#0x4A8]
LDR             R12, [R7,#0x488]
STR             R2, [R7,#0x4B0]
STR             R12, [R7,#0x4AC]
STRD            R2, R3, [R0,#0x24]
LDR             R1, [R7,#0x48C]
MOV             R0, R7
STR             R1, [R7,#0x4BC]
BL              sub_27D73C
MOV             R0, R7
NOP
BL              sub_27CBB8
ADD             R4, R7, #0x6F0
MOV             R6, R7
LDM             R4, {R4,R5}
CMP             R4, R5
BEQ             loc_27E064
LDR             R0, [R4]
MOV             R1, R6
BL              sub_26A1F0
ADD             R4, R4, #0xC
CMP             R4, R5
BNE             loc_27E04C
ADD             SP, SP, #0x44 ; 'D'
MOV             R0, R7
VPOP            {D8-D11}
ADD             SP, SP, #0x18
POP             {R4-R11,PC}
