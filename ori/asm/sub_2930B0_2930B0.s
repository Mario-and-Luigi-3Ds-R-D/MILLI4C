PUSH            {R4-R11,LR}
MOV             R6, R0
MOV             R8, #0
VPUSH           {D8-D9}
SUB             SP, SP, #0x14
LDRB            R0, [R0,#0xE]
CMP             R0, #0
BEQ             loc_2930E4
LDR             R0, [R6]
LDR             R1, [R0,#0x10]
MOV             R0, R6
BLX             R1
STRB            R8, [R6,#0xE]
LDR             R0, [R6,#0x20]
LDR             R4, [R6,#0x1C]
MOV             R10, #1
CMP             R0, R4
BEQ             loc_29328C
LDR             R9, =off_6CE970
LDR             R11, =dword_6E1330
VLDR            S19, =0.0039062
VLDR            S18, =0.5
VLDR            S16, =2.0
VLDR            S17, =0.0
LDR             R5, [R4]
LDRB            R0, [R5,#0x5F8]
CMP             R0, #0
BNE             loc_29327C
LDR             R0, [R9]
ADD             R0, R0, #0x190000
ADD             R0, R0, #0xDE00
LDRSH           R0, [R0,#(loc_19DEE0+2 - 0x19DE00)]
VMOV            S0, R0
ADD             R0, R5, #0x400
ADD             R0, R0, #0x22C
MOV             R7, R0
VCVT.F32.S32    S0, S0
VMUL.F32        S0, S0, S19
BL              sub_5A176C
ADD             R0, R5, #0x400
ADD             R1, R5, #0x400
VLDR            S0, [R0,#0x230]
ADD             R0, R5, #0x400
ADD             R0, R0, #0x1FC
VMUL.F32        S2, S0, S0
VLDR            S4, [R0,#4]
VLDR            S5, [R0,#0xC]
VLDR            S6, [R0]
VLDR            S3, [R0,#8]
ADD             R1, R1, #0x20C
ADD             R2, SP, #0x48+var_44
VMUL.F32        S1, S2, S0
VMUL.F32        S4, S4, S2
VMLA.F32        S5, S1, S6
VMLA.F32        S4, S0, S3
VADD.F32        S3, S5, S4
VMUL.F32        S4, S3, S18
VSTR            S4, [SP,#0x48+var_44]
VLDR            S3, [R0,#0x1C]
VLDM            R1, {S5-S7}
ADD             R1, SP, #0x48+var_44
VMLA.F32        S3, S1, S5
VMUL.F32        S6, S6, S2
VMLA.F32        S6, S0, S7
VADD.F32        S3, S3, S6
VMUL.F32        S3, S3, S18
VSTR            S3, [SP,#0x48+var_40]
VLDR            S5, [R0,#0x2C]
VLDR            S6, [R0,#0x28]
ADD             R0, R0, #0x20 ; ' '
VLDM            R0, {S7-S8}
MOV             R0, R5
VMLA.F32        S5, S1, S7
VMUL.F32        S2, S8, S2
VMUL.F32        S1, S4, S16
VMLA.F32        S2, S0, S6
VADD.F32        S0, S5, S2
VMUL.F32        S2, S3, S16
VMUL.F32        S0, S0, S18
VSTR            S0, [SP,#0x48+var_3C]
VMUL.F32        S0, S0, S16
VSTR            S0, [SP,#0x48+var_3C]
VSTM            R2, {S1-S2}
BL              sub_14E984
MOV             R0, R7
NOP
BL              sub_5F1964
CMP             R0, #0
NOP
BNE             loc_29327C
LDR             R0, [R11]
LDR             R7, [R9]
TST             R0, #1
BNE             loc_293254
LDR             R0, =dword_6E1330
BLX             sub_3022F4
CMP             R0, #0
NOP
BEQ             loc_293254
LDR             R0, =flt_711FE4
VSTR            S17, [R0]
VSTR            S17, [R0,#(flt_711FE8 - 0x711FE4)]
VSTR            S17, [R0,#(flt_711FEC - 0x711FE4)]
LDR             R0, =dword_6E1330
NOP
LDR             R3, =flt_711FE4
LDR             R1, =0x5DF
MOV             R2, R5
MOV             R0, R7
STR             R8, [SP,#0x48+var_48]
BL              sub_52AE88
MOV             R0, R5
NOP
BL              sub_528B1C
STRB            R10, [R5,#0x5F8]
LDR             R0, [R6,#0x20]
ADD             R4, R4, #0xC
CMP             R0, R4
BNE             loc_293110
ADD             R0, R6, #0x1C
LDM             R0, {R0,R5}
CMP             R0, R5
BEQ             loc_2932B0
LDR             R1, [R0]
LDRB            R1, [R1,#0x5F8]
CMP             R1, #1
ADDNE           R0, R0, #0xC
BNE             loc_293294
LDR             R9, =off_6B7BEC
CMP             R0, R5
BEQ             loc_29338C
ADD             R4, R0, #0xC
CMP             R4, R5
MOV             R7, R0
BEQ             loc_293388
LDR             R0, [R4]
LDRB            R1, [R0,#0x5F8]
CMP             R1, #1
BEQ             loc_29337C
LDR             R8, [R7]
CMP             R8, R0
BEQ             loc_293378
LDR             R2, [R7,#8]
ADD             R1, R7, #4
CMP             R2, R1
BNE             loc_293478
CMP             R8, #0
BEQ             loc_29333C
STR             R9, [R8,#0x62C]!
LDR             R1, =nullsub_300
MOV             R3, #1
MOV             R2, #0x1C
ADD             R0, R8, #0x18
BLX             sub_1009D8
MOV             R0, R8
NOP
NOP
SUB             R0, R0, #0x400
SUB             R0, R0, #0x22C
BL              sub_503254
NOP
NOP
BL              sub_300FD4
LDR             R3, [R4]
ADD             R1, R4, #4
ADD             R0, R7, #4
CMP             R1, R0
STR             R3, [R7]
LDRNE           R2, [R1,#4]
CMPNE           R2, R0
BEQ             loc_293378
LDM             R0, {R3,R12}
STR             R12, [R3,#4]
STR             R3, [R12]
STR             R2, [R0,#4]
STR             R0, [R2]
STR             R0, [R1,#4]
STR             R1, [R0]
ADD             R7, R7, #0xC
ADD             R4, R4, #0xC
CMP             R4, R5
BNE             loc_2932CC
MOV             R0, R7
LDR             R5, [R6,#0x20]
CMP             R0, R5
BEQ             loc_293434
LDR             R1, =0x2AAAAAAB
SUB             R0, R5, R0
SMULL           R1, R0, R1, R0
MOV             R1, R0,ASR#1
SUB             R0, R1, R0,ASR#31
SUB             R0, R0, R0,LSL#2
ADD             R7, R5, R0,LSL#2
CMP             R7, R5
BEQ             loc_293430
SUB             R5, R5, #0xC
ADD             R1, R5, #4
LDR             R0, [R5,#8]
MOV             R4, R5
CMP             R0, R1
BNE             loc_29341C
LDR             R8, [R4]
CMP             R8, #0
BEQ             loc_29341C
STR             R9, [R8,#0x62C]!
LDR             R1, =nullsub_300
MOV             R3, #1
MOV             R2, #0x1C
ADD             R0, R8, #0x18
BLX             sub_1009D8
MOV             R0, R8
NOP
NOP
SUB             R0, R0, #0x400
SUB             R0, R0, #0x22C
BL              sub_503254
NOP
NOP
BL              sub_300FD4
LDRD            R0, R1, [R4,#4]
CMP             R7, R5
STR             R1, [R0,#4]
STR             R0, [R1]
BNE             loc_2933BC
STR             R7, [R6,#0x20]
LDRD            R0, R1, [R6,#0x1C]
CMP             R0, R1
STRBEQ          R10, [R6,#0xC]
ADD             SP, SP, #0x14
VPOP            {D8-D9}
POP             {R4-R11,PC}
DCFS 0.0039062
DCFS 0.5
DCFS 2.0
DCD off_6CE970
DCD dword_6E1330
DCFS 0.0
DCD flt_711FE4
DCD 0x5DF
DCD off_6B7BEC
DCD nullsub_300
DCD 0x2AAAAAAB
LDR             R1, [R7,#4]
ADD             R0, R7, #4
STR             R2, [R1,#4]
STR             R1, [R2]
STR             R0, [R7,#4]
STR             R0, [R7,#8]
B               loc_29333C
