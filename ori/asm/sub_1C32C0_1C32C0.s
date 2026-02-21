PUSH            {R4-R6,LR}
MOV             R4, R0
VPUSH           {D8-D9}
VMOV.F32        S16, S0
SUB             SP, SP, #0x28
LDRB            R0, [R0,#0xB0]
CMP             R0, #0xC; switch 12 cases
LDRCC           PC, [PC,R0,LSL#2]; switch jump
B               def_1C32DC; jumptable 001C32DC default case, cases 0,5,8-10
DCD def_1C32DC; jump table for switch statement
LDRB            R0, [R4,#0xB1]; jumptable 001C32DC case 7
CMP             R0, #0
BEQ             loc_1C332C
CMP             R0, #1
BNE             def_1C32DC; jumptable 001C32DC default case, cases 0,5,8-10
B               loc_1C3388
LDR             R0, [R4,#0xAC]
MOV             R3, R0
ADD             R0, R0, #0x39C
VLDM            R0, {S0-S1}
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BLT             def_1C32DC; jumptable 001C32DC default case, cases 0,5,8-10
LDR             R0, =off_6CDD80
MOV             R2, #0
LDR             R0, [R0]
LDR             R1, [R0,#0xF44]
LDR             R0, [R3]
LDR             R12, [R0,#0x58]
MOV             R0, R3
BLX             R12
LDR             R0, [R4,#0xAC]
MOV             R3, #0x100
MOV             R2, #1
MOV             R1, #0
BL              sub_14C548
MOV             R0, #1
NOP
B               loc_1C37AC
LDR             R0, [R4,#0xAC]
BL              sub_5C5820
CMP             R0, #0
NOP
BNE             def_1C32DC; jumptable 001C32DC default case, cases 0,5,8-10
MOV             R0, #0
STRB            R0, [R4,#0xB0]
LDR             R0, [R4,#0xAC]
MOV             R3, #0x100
MOV             R2, #0
MOV             R1, #1
BL              sub_14C430
LDR             R0, [R4,#0xAC]
MOV             R2, #0
LDR             R1, [R0]
LDR             R3, [R1,#0x2C]
ADD             R1, SP, #0x48+var_44
BLX             R3
LDR             R4, =off_6CDD80
VLDR            S0, [SP,#0x48+var_44]
ADD             R1, SP, #0x48+var_44
LDR             R2, [R4]
LDR             R0, [R2,#8]
ADD             R0, R0, #0x570
VLDR            S1, [R0]
VADD.F32        S0, S0, S1
VSTR            S0, [SP,#0x48+var_44]
VLDR            S1, [R0,#4]
VLDR            S0, [SP,#0x48+var_40]
VADD.F32        S0, S0, S1
VSTR            S0, [SP,#0x48+var_40]
VLDR            S1, [R0,#8]
VLDR            S0, [SP,#0x48+var_3C]
ADD             R0, R2, #0x400
ADD             R0, R0, #0x204
VADD.F32        S0, S0, S1
VSTR            S0, [SP,#0x48+var_3C]
BL              sub_14E984
LDR             R0, [R4]
MOV             R1, #1
ADD             R5, R0, #0x400
ADD             R4, R0, #0x930
STRB            R1, [R0,#0x6F6]
MOV             R0, #0xFFFFFF00
ADD             R5, R5, #0x204
REV             R0, R0
STR             R0, [SP,#0x48+var_38]
MOV             R0, R4
BL              sub_4E63E0
LDR             R0, [SP,#0x48+var_38]
ADD             R1, SP, #0x48+var_38
VLDR            S0, =4.0
STR             R0, [R4,#4]
STR             R0, [R4]
MOV             R0, #0xFFFFFFFF
REV             R0, R0
STR             R0, [SP,#0x48+var_38]
ADD             R0, R5, #0x32C
BL              sub_4E665C
NOP
NOP
B               def_1C32DC; jumptable 001C32DC default case, cases 0,5,8-10
LDR             R0, [R4,#0xAC]; jumptable 001C32DC case 3
ADD             R0, R0, #0x1DC
BL              sub_5F19B8
CMP             R0, #0
NOP
BNE             def_1C32DC; jumptable 001C32DC default case, cases 0,5,8-10
B               loc_1C37DC
LDR             R0, =off_6CE970; jumptable 001C32DC case 1
LDR             R0, [R0]
ADD             R0, R0, #0x100000
ADD             R0, R0, #0x9B000
LDR             R0, [R0,#(loc_19B0B4 - 0x19B000)]
TST             R0, #1
BEQ             def_1C32DC; jumptable 001C32DC default case, cases 0,5,8-10
LDR             R0, =off_6CDD80
MOV             R1, SP
VLDR            S0, =4.0
LDR             R0, [R0]
ADD             R2, R0, #0x400
MOV             R0, #0xFFFFFF00
ADD             R2, R2, #0x204
REV             R0, R0
STR             R0, [SP,#0x48+var_48]
ADD             R0, R2, #0x32C
BL              sub_4E665C
MOV             R0, R4
NOP
BL              sub_1C2FF0
NOP
NOP
B               def_1C32DC; jumptable 001C32DC default case, cases 0,5,8-10
LDR             R0, =off_6CE970; jumptable 001C32DC case 2
LDR             R0, [R0]
ADD             R0, R0, #0x100000
ADD             R0, R0, #0x9B000
LDR             R0, [R0,#(loc_19B0B4 - 0x19B000)]
TST             R0, #1
BEQ             loc_1C352C
MOV             R0, R4
BL              sub_1C2FF0
NOP
NOP
B               loc_1C3634
LDR             R0, [R4,#0xAC]
MOV             R1, SP
VLDR            S17, [R0,#0x24]
MOV             R0, R4
BL              sub_1C2D34
VLDR            S0, [SP,#0x48+var_48]
ADD             R3, SP, #0x48+var_38
ADD             R2, SP, #0x48+var_38
VMUL.F32        S1, S0, S16
ADD             R1, R4, #0xC4
VSTR            S1, [SP,#0x48+var_48]
VLDR            S0, [SP,#0x48+var_44]
VMUL.F32        S2, S0, S16
VSTR            S2, [SP,#0x48+var_44]
VLDR            S0, [SP,#0x48+var_40]
VMUL.F32        S0, S0, S16
VSTR            S0, [SP,#0x48+var_40]
LDR             R0, [R4,#0xAC]
ADD             R0, R0, #0x24 ; '$'
VLDM            R0, {S3-S5}
ADD             R0, SP, #0x48+var_2C
VADD.F32        S1, S3, S1
VADD.F32        S0, S5, S0
VADD.F32        S2, S4, S2
VSTR            S0, [SP,#0x48+var_30]
VSTM            R3, {S1-S2}
BL              sub_438BA4
LDR             R0, [SP,#0x48+var_34]
STR             R0, [SP,#0x48+var_28]
LDR             R0, [R4,#0xAC]
LDR             R1, [R0]
LDR             R2, [R1,#0x20]
ADD             R1, SP, #0x48+var_2C
BLX             R2
VLDR            S0, [SP,#0x48+var_2C]
VLDR            S18, =0.0
VSUB.F32        S16, S0, S17
VCMP.F32        S16, S18
VMRS            APSR_nzcv, FPSCR
BEQ             loc_1C360C
LDR             R0, =off_6CDD80
LDR             R0, [R0]
ADD             R0, R0, #0xC00
ADD             R0, R0, #0x2D4
BL              sub_54386C
VCMPE.F32       S16, S18
LDR             R0, [R4,#0xAC]
MOV             R3, #0x100
MOV             R2, #0
VMRS            APSR_nzcv, FPSCR
MOVGT           R1, #2
MOVLE           R1, #5
BL              sub_14C430
NOP
NOP
B               loc_1C3634
LDR             R0, [R4,#0xAC]
MOV             R3, #0x100
MOV             R2, #0
MOV             R1, #1
BL              sub_14C430
LDR             R0, =off_6CDD80
LDR             R0, [R0]
ADD             R0, R0, #0xC00
ADD             R0, R0, #0x2D4
BL              sub_5438BC
LDR             R0, [R4,#0xAC]
ADD             R1, R0, #0x24 ; '$'
ADD             R0, R4, #0x1C
BL              sub_4375B4
NOP
NOP
B               def_1C32DC; jumptable 001C32DC default case, cases 0,5,8-10
LDRB            R0, [R4,#0xB1]; jumptable 001C32DC case 6
CMP             R0, #0
BEQ             loc_1C3670
CMP             R0, #1
BEQ             loc_1C3720
CMP             R0, #2
BNE             def_1C32DC; jumptable 001C32DC default case, cases 0,5,8-10
B               loc_1C37D0
LDR             R0, [R4,#0xAC]
ADD             R0, R0, #0x1DC
BL              sub_5F19B8
CMP             R0, #0
NOP
BNE             def_1C32DC; jumptable 001C32DC default case, cases 0,5,8-10
LDR             R5, =off_6CE970
MOV             R0, #1
MOV             R1, #0
STRB            R0, [R4,#0xB1]
STR             R1, [SP,#0x48+var_48]
LDR             R6, =0x10D4D8
LDR             R0, [R5]
MOV             R3, #0x100
MOV             R2, R1
ADD             R0, R0, R6; loc_10D4D8
BL              sub_4E3CA0
LDR             R0, =off_6CDD80
VLDR            S1, =0.0
LDR             R0, [R0]
LDR             R0, [R0,#8]
LDR             R0, [R0,#0xEC]
VMOV            S0, R0
STR             R0, [SP,#0x48+var_48]
LDR             R0, [R5]
ADD             R0, R0, R6; loc_10D4D8
BL              sub_4E4124
LDR             R0, [R5]
LDR             R12, =0xFFE683CC
ADD             R1, R6, #0x18
LDR             R2, =0x301FF
LDR             R1, [R0,R1]
MOV             R3, #0
SUB             R0, R0, R12
BL              sub_503720
MOV             R5, R0
LDR             R0, [R4,#0xE0]!
LDR             R1, [R0,#8]
MOV             R0, R4
BLX             R1
CMP             R5, #0
STR             R5, [R4,#4]
STRNE           R4, [R5,#0x64]
B               def_1C32DC; jumptable 001C32DC default case, cases 0,5,8-10
LDR             R0, [R4,#0xAC]
ADD             R0, R0, #0x1DC
BL              sub_5F19B8
CMP             R0, #0
NOP
BNE             def_1C32DC; jumptable 001C32DC default case, cases 0,5,8-10
LDR             R0, [R4,#0xE4]
CMP             R0, #0
MOVNE           R1, #0
BLNE            sub_1586A8
MOV             R2, #0
LDR             R0, [R4,#0xAC]
MOV             R3, #0x100
MOV             R1, R2
BL              sub_14C548
LDR             R0, [R4,#0xAC]
MOV             R1, #0
STRB            R1, [R0,#0xF3]
LDR             R0, =off_6CDD80
LDR             R1, [R0]
ADD             R0, R4, #0xB4
LDR             R2, [R1,#0xF04]
LDR             R2, [R2,#4]
STR             R2, [R4,#0xB8]
LDR             R2, [R1,#0xF04]
STR             R2, [R4,#0xBC]
LDR             R2, [R1,#0xF04]
LDR             R2, [R2,#4]
STR             R0, [R2,#8]
LDR             R1, [R1,#0xF04]
STR             R0, [R1,#4]
LDR             R1, [R4,#0xB4]
LDR             R1, [R1,#8]
BLX             R1
MOV             R0, #2
STRB            R0, [R4,#0xB1]
B               def_1C32DC; jumptable 001C32DC default case, cases 0,5,8-10
DCD off_6CDD80
DCFS 4.0
DCD off_6CE970
DCFS 0.0
DCD 0x10D4D8
DCD 0x301FF
DCD 0xFFE683CC
LDRB            R0, [R4,#0xC0]
CMP             R0, #0
BEQ             def_1C32DC; jumptable 001C32DC default case, cases 0,5,8-10
MOV             R0, #5
STRB            R0, [R4,#0xB0]
B               def_1C32DC; jumptable 001C32DC default case, cases 0,5,8-10
MOV             R0, R4; jumptable 001C32DC case 4
BL              sub_1C3128
NOP
NOP
B               def_1C32DC; jumptable 001C32DC default case, cases 0,5,8-10
LDRB            R0, [R4,#0xB1]; jumptable 001C32DC case 11
CMP             R0, #0
BNE             def_1C32DC; jumptable 001C32DC default case, cases 0,5,8-10
LDR             R0, [R4,#0xAC]
BL              sub_5C5820
CMP             R0, #0
NOP
BNE             def_1C32DC; jumptable 001C32DC default case, cases 0,5,8-10
LDR             R0, [R4,#0xAC]
MOV             R3, #0x100
MOV             R2, #0
MOV             R1, #1
BL              sub_14C548
MOV             R0, #1
STRB            R0, [R4,#0xB1]
ADD             SP, SP, #0x28 ; '('; jumptable 001C32DC default case, cases 0,5,8-10
MOV             R0, #1
VPOP            {D8-D9}
POP             {R4-R6,PC}
