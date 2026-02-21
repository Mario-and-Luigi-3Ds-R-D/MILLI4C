PUSH            {R4-R6,LR}
MOV             R4, R0
SUB             SP, SP, #0x50
MOV             R0, #0
STR             R0, [R4,#4]
LDR             R1, [R2,#0x18]
LDR             R0, [R3,#0x18]
ORR             R0, R0, R1
BICS            R1, R0, #0xF
BNE             def_28B220; jumptable 0028B220 default case, cases 0,2,4,5,7
CMP             R0, #0xB; switch 11 cases
LDRCC           PC, [PC,R0,LSL#2]; switch jump
B               def_28B220; jumptable 0028B220 default case, cases 0,2,4,5,7
DCD def_28B220; jump table for switch statement
MOV             R0, R2; jumptable 0028B220 case 1
MOV             R1, R3
ADD             R3, SP, #0x60+var_54
ADD             R2, SP, #0x60+var_58
STRD            R2, R3, [SP,#0x60+var_60]
ADD             R3, R1, #0x84
ADD             R2, R0, #0x84
ADD             R1, R1, #0x3C ; '<'
ADD             R0, R0, #0x3C ; '<'
BL              sub_28CD44
CMP             R0, #0
NOP
BEQ             loc_28B2B0
VLDR            S0, [SP,#0x60+var_58]
VLDR            S1, =0.0
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
BHI             loc_28B2B0
VMOV            R0, S0
CMP             R0, #0x3F800000
BGT             loc_28B2B0
MOV             R0, #1
B               loc_28B4B4
MOV             R0, #0
B               loc_28B4B4
ADD             R1, R3, #0x24 ; '$'; jumptable 0028B220 case 8
ADD             R0, R2, #0x24 ; '$'
BL              sub_28C090
NOP
NOP
B               loc_28B4B4
LDR             R1, [R2,#0x18]; jumptable 0028B220 case 3
MOV             R0, R2
MOV             R12, R2
CMP             R1, #1
MOVNE           R0, R3
CMP             R1, #2
MOVNE           R12, R3
ADD             R1, R12, #0x44 ; 'D'
VLDR            S0, [R12,#0x40]
VLDR            S3, =0.0
VMUL.F32        S0, S0, S0
VLDM            R1, {S1-S2}
VMLA.F32        S0, S1, S1
VMLA.F32        S0, S2, S2
VCMP.F32        S0, S3
VMRS            APSR_nzcv, FPSCR
BNE             loc_28B324
ADD             R0, R0, #0x3C ; '<'
ADD             R1, R12, #0x24 ; '$'
VLDR            S0, [R12,#0x30]
B               loc_28B464
ADD             R2, R0, #0x3C ; '<'
VLDR            S0, [R12,#0x30]
MOV             R3, SP
ADD             R1, R12, #0x40 ; '@'
ADD             R0, R12, #0x34 ; '4'
BL              sub_28DED0
NOP
NOP
B               loc_28B4B4
LDR             R0, [R2,#0x18]; jumptable 0028B220 case 6
ADD             R6, SP, #0x60+var_54
CMP             R0, #4
MOVEQ           R5, R2
MOVNE           R5, R3
CMP             R0, #2
LDR             R0, =off_6BC440
MOVNE           R2, R3
STR             R0, [SP,#0x60+var_60]
LDR             R0, [R2,#4]
STR             R0, [SP,#0x60+var_5C]
LDR             R0, [R2,#8]
STR             R0, [SP,#0x60+var_58]
LDR             R0, =off_6BC458
STR             R0, [SP,#0x60+var_60]
ADD             R0, R2, #0xC
LDM             R0, {R0,R1,R3}
STM             R6, {R0,R1,R3}
ADD             R6, SP, #0x60+var_3C
LDR             R0, [R2,#0x18]
STR             R0, [SP,#0x60+var_48]
LDRB            R0, [R2,#0x1C]
STRB            R0, [SP,#0x60+var_44]
LDRB            R0, [R2,#0x1D]
STRB            R0, [SP,#0x60+var_43]
LDR             R0, [R2,#0x20]
STR             R0, [SP,#0x60+var_40]
LDR             R0, =off_6BC3CC
STR             R0, [SP,#0x60+var_60]
ADD             R0, R2, #0x24 ; '$'
LDM             R0, {R0,R1,R3,R12}
STM             R6, {R0,R1,R3,R12}
ADD             R0, R2, #0x34 ; '4'
ADD             R6, SP, #0x60+var_2C
LDM             R0, {R0,R1,R3}
ADD             R2, R2, #0x40 ; '@'
STM             R6, {R0,R1,R3}
ADD             R3, SP, #0x60+var_20
LDM             R2, {R0-R2}
MOV             R6, SP
STM             R3, {R0-R2}
ADD             R2, SP, #0x60+var_2C
ADD             R1, R5, #0xF0
MOV             R0, R2
BL              sub_1169FC
ADD             R2, R6, #0x24 ; '$'
ADD             R1, R5, #0xF0
MOV             R0, R2
BL              sub_1169FC
VLDR            S0, [SP,#0x60+var_3C]
VLDR            S5, [SP,#0x60+var_2C]
ADD             R1, SP, #0x60+var_38
VLDR            S4, [SP,#0x60+var_28]
VSUB.F32        S0, S0, S5
VLDM            R1, {S2-S3}
VLDR            S1, [SP,#0x60+var_24]
VSUB.F32        S2, S2, S4
VSUB.F32        S1, S3, S1
VLDR            S3, =0.0
VSTR            S0, [SP,#0x60+var_20]
VMUL.F32        S0, S0, S0
VSTR            S2, [SP,#0x60+var_1C]
VSTR            S1, [SP,#0x60+var_18]
VMLA.F32        S0, S2, S2
VMLA.F32        S0, S1, S1
VCMP.F32        S0, S3
VMRS            APSR_nzcv, FPSCR
BNE             loc_28B46C
ADD             R0, R5, #0x24 ; '$'
VLDR            S0, [SP,#0x60+var_30]
ADD             R1, R6, #0x24 ; '$'
BL              sub_28D484
B               loc_28B4B4
VLDR            S0, [SP,#0x60+var_30]
ADD             R3, SP, #0x60+var_14
ADD             R2, R5, #0x24 ; '$'
ADD             R1, R6, #0x40 ; '@'
ADD             R0, R6, #0x34 ; '4'
BL              sub_28D19C
NOP
NOP
B               loc_28B4B4
LDR             R1, [R2,#0x18]; jumptable 0028B220 case 9
MOV             R0, R3
CMP             R1, #8
MOVEQ           R0, R2
CMP             R1, #1
MOVNE           R2, R3
ADD             R1, R2, #0x3C ; '<'
ADD             R0, R0, #0x24 ; '$'
BL              sub_28C5EC
MOV             R1, #1
STRB            R0, [R4]
STR             R1, [R4,#4]
ADD             SP, SP, #0x50 ; 'P'; jumptable 0028B220 default case, cases 0,2,4,5,7
POP             {R4-R6,PC}
LDR             R1, [R2,#0x18]; jumptable 0028B220 case 10
MOV             R0, R2
MOV             R5, R2
CMP             R1, #8
MOVNE           R0, R3
CMP             R1, #2
MOVNE           R5, R3
ADD             R6, R0, #0x24 ; '$'
LDR             R0, [R5]
LDR             R1, [R0,#0x20]
MOV             R0, R5
BLX             R1
VLDR            S10, [R5,#0x30]
MOV             R1, R6
BL              sub_28BE9C
VMUL.F32        S1, S10, S10
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BHI             loc_28B2B0
B               loc_28B2A8
