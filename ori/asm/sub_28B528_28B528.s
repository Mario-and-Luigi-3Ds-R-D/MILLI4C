PUSH            {R4-R11,LR}
MOV             R5, R2
MOV             R7, R0
MOV             R0, #0
MOV             R6, R3
VPUSH           {D8}
SUB             SP, SP, #0x4C
LDR             R4, [SP,#0x78+arg_0]
STR             R0, [R7,#4]
LDR             R10, [R2,#0x18]
LDR             R0, [R3,#0x18]
ORR             R0, R0, R10
BICS            R1, R0, #0xF
BNE             def_28B564; jumptable 0028B564 default case, cases 0,2,4,5,7
CMP             R0, #0xB; switch 11 cases
LDRCC           PC, [PC,R0,LSL#2]; switch jump
B               def_28B564; jumptable 0028B564 default case, cases 0,2,4,5,7
DCD def_28B564; jump table for switch statement
VLDR            S0, [R5,#0x84]; jumptable 0028B564 case 1
VLDR            S1, [R6,#0x84]
VCMP.F32        S0, S1
VMRS            APSR_nzcv, FPSCR
BNE             loc_28B6D4
VLDR            S0, [R5,#0x88]
VLDR            S1, [R6,#0x88]
VCMP.F32        S0, S1
VMRS            APSR_nzcv, FPSCR
BNE             loc_28B6D4
VLDR            S0, [R5,#0x8C]
VLDR            S1, [R6,#0x8C]
VCMP.F32        S0, S1
VMRS            APSR_nzcv, FPSCR
BNE             loc_28B6D4
BL              sub_4635D8
VLDR            S0, [R6,#0x84]
VLDR            S1, [R0]
VCMP.F32        S0, S1
VMRS            APSR_nzcv, FPSCR
BNE             loc_28B6D4
VLDR            S0, [R6,#0x88]
VLDR            S1, [R0,#4]
VCMP.F32        S0, S1
VMRS            APSR_nzcv, FPSCR
BNE             loc_28B6D4
VLDR            S0, [R6,#0x8C]
VLDR            S1, [R0,#8]
VCMP.F32        S0, S1
VMRS            APSR_nzcv, FPSCR
BNE             loc_28B6D4
VLDR            S0, =0.0
VSTR            S0, [SP,#0x78+var_70]
VLDR            S0, [R5,#0x3C]
VLDR            S1, [R6,#0x48]
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
VLDR            S0, [R5,#0x48]
VLDR            S1, [R6,#0x3C]
MOVGT           R1, #1
MOVLE           R1, #0
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
VLDR            S0, [R5,#0x40]
VLDR            S1, [R6,#0x4C]
MOVCC           R2, #1
MOVCS           R2, #0
VCMPE.F32       S0, S1
ORR             R2, R2, R1
VMRS            APSR_nzcv, FPSCR
VLDR            S0, [R5,#0x4C]
VLDR            S1, [R6,#0x40]
MOVGT           R1, #1
MOVLE           R1, #0
VCMPE.F32       S0, S1
ORR             R2, R2, R1
VMRS            APSR_nzcv, FPSCR
VLDR            S0, [R5,#0x44]
VLDR            S1, [R6,#0x50]
MOVCC           R1, #1
MOVCS           R1, #0
VCMPE.F32       S0, S1
ORR             R2, R2, R1
VMRS            APSR_nzcv, FPSCR
VLDR            S0, [R5,#0x50]
VLDR            S1, [R6,#0x44]
MOVGT           R1, #1
MOVLE           R1, #0
VCMPE.F32       S0, S1
ORR             R1, R1, R2
MOV             R2, #1
VMRS            APSR_nzcv, FPSCR
MOVCC           R0, #1
MOVCS           R0, #0
ORR             R0, R0, R1
EOR             R1, R0, #1
MOV             R0, R7
STRB            R1, [R7]
B               loc_28B734
ADD             R1, SP, #0x78+var_6C
ADD             R0, SP, #0x78+var_70
STRD            R0, R1, [SP,#0x78+var_78]
ADD             R3, R6, #0x84
ADD             R2, R5, #0x84
ADD             R1, R6, #0x3C ; '<'
ADD             R0, R5, #0x3C ; '<'
BL              sub_28CD44
CMP             R0, #0
NOP
BEQ             loc_28B724
VLDR            S0, [SP,#0x78+var_70]
VLDR            S1, =0.0
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
BHI             loc_28B724
VMOV            R0, S0
CMP             R0, #0x3F800000
MOVLE           R0, #1
BLE             loc_28B728
MOV             R0, #0
STRB            R0, [R7]
MOV             R2, #1
MOV             R0, R7
STR             R2, [R7,#4]
LDRB            R0, [R0]
CMP             R0, #0
BEQ             def_28B564; jumptable 0028B564 default case, cases 0,2,4,5,7
ADD             R0, R4, #0x24 ; '$'
STM             R0, {R5,R6}
LDR             R0, [R5]
LDR             R1, [R0,#0x20]
MOV             R0, R5
BLX             R1
ADD             R5, R5, #0x84
VLDR            S0, [SP,#0x78+var_70]
VLDM            R5, {S1-S3}
VMUL.F32        S1, S1, S0
VMUL.F32        S2, S2, S0
VMUL.F32        S0, S3, S0
VLDM            R0, {S3-S5}
VADD.F32        S1, S3, S1
VADD.F32        S2, S4, S2
VADD.F32        S0, S5, S0
VSTR            S0, [R4,#8]
VSTM            R4, {S1-S2}
LDR             R0, [R6]
LDR             R1, [R0,#0x20]
MOV             R0, R6
BLX             R1
ADD             R6, R6, #0x84
VLDR            S0, [SP,#0x78+var_70]
VLDR            S4, [R0]
VLDR            S6, [R0,#4]
VLDR            S5, [R0,#8]
ADD             R0, R4, #0x10
VLDM            R6, {S1-S3}
VMUL.F32        S1, S1, S0
VMUL.F32        S2, S2, S0
VMUL.F32        S3, S3, S0
VADD.F32        S4, S4, S1
VADD.F32        S1, S6, S2
VADD.F32        S2, S5, S3
VSTR            S4, [R4,#0xC]
VSTR            S0, [R4,#0x2C]
VSTM            R0, {S1-S2}
BL              sub_4635D8
LDR             R2, [R0]
LDR             R1, [R0,#4]
LDR             R0, [R0,#8]
STR             R2, [R4,#0x18]!
STR             R1, [R4,#4]
STR             R0, [R4,#8]
ADD             SP, SP, #0x4C ; 'L'; jumptable 0028B564 default case, cases 0,2,4,5,7
VPOP            {D8}
POP             {R4-R11,PC}
ADD             R1, R6, #0x24 ; '$'; jumptable 0028B564 case 8
ADD             R0, R5, #0x24 ; '$'
BL              sub_28C090
MOV             R1, #1
STRB            R0, [R7]
TST             R0, #0xFF
STR             R1, [R7,#4]
BEQ             def_28B564; jumptable 0028B564 default case, cases 0,2,4,5,7
ADD             R0, R4, #0x24 ; '$'
ADD             R3, R4, #0xC
STM             R0, {R5,R6}
ADD             R5, R5, #0x24 ; '$'
ADD             R6, R6, #0x24 ; '$'
LDM             R5, {R0-R2}
VLDR            S0, =0.0
STM             R4, {R0-R2}
LDM             R6, {R0-R2}
STM             R3, {R0-R2}
VSTR            S0, [R4,#0x2C]
BL              sub_4635D8
LDM             R0, {R1,R2}
LDR             R0, [R0,#8]
STR             R0, [R4,#0x20]
ADD             R4, R4, #0x18
STM             R4, {R1,R2}
ADD             SP, SP, #0x4C ; 'L'
VPOP            {D8}
POP             {R4-R11,PC}
CMP             R10, #1; jumptable 0028B564 case 3
MOVEQ           R9, R2
MOVNE           R9, R3
CMP             R10, #2
MOV             R8, R5
MOVNE           R8, R6
ADD             R0, R8, #0x44 ; 'D'
VLDR            S0, [R8,#0x40]
VLDR            S7, =0.0
VMUL.F32        S2, S0, S0
VLDM            R0, {S0-S1}
VMLA.F32        S2, S0, S0
VMLA.F32        S2, S1, S1
VCMP.F32        S2, S7
VMRS            APSR_nzcv, FPSCR
BNE             loc_28B970
ADD             R0, R9, #0x3C ; '<'
ADD             R1, R8, #0x24 ; '$'
VLDR            S0, [R8,#0x30]
BL              sub_28D484
MOV             R1, #1
STRB            R0, [R7]
TST             R0, #0xFF
STR             R1, [R7,#4]
BEQ             def_28B564; jumptable 0028B564 default case, cases 0,2,4,5,7
ADD             R0, R4, #0x24 ; '$'
ADD             R2, R8, #0x24 ; '$'
STM             R0, {R5,R6}
ADD             R1, R9, #0x3C ; '<'
VSTR            S7, [R4,#0x2C]
ADD             R0, R4, #0x18
BL              sub_28C568
CMP             R10, #1
NOP
BEQ             loc_28B944
VSTR            S7, [R4,#0x2C]
LDR             R0, [R9]
LDR             R1, [R0,#0x20]
MOV             R0, R9
BLX             R1
LDM             R0, {R1,R2}
ADD             R8, R8, #0x24 ; '$'
LDR             R0, [R0,#8]
STR             R0, [R4,#0x14]
ADD             R0, R4, #0xC
STM             R0, {R1,R2}
LDM             R8, {R0-R2}
STM             R4, {R0-R2}
ADD             SP, SP, #0x4C ; 'L'
VPOP            {D8}
POP             {R4-R11,PC}
DCFS 0.0
LDR             R0, [R9]
LDR             R1, [R0,#0x20]
MOV             R0, R9
BLX             R1
LDM             R0, {R1,R2}
ADD             R8, R8, #0x24 ; '$'
LDR             R0, [R0,#8]
STR             R0, [R4,#8]
STM             R4, {R1,R2}
LDM             R8, {R0-R2}
B               loc_28BC34
VLDR            S0, [R8,#0x30]
ADD             R3, R4, #0x2C ; ','
ADD             R2, R9, #0x3C ; '<'
ADD             R1, R8, #0x40 ; '@'
ADD             R0, R8, #0x34 ; '4'
BL              sub_28D19C
MOV             R1, #1
STRB            R0, [R7]
TST             R0, #0xFF
STR             R1, [R7,#4]
BEQ             def_28B564; jumptable 0028B564 default case, cases 0,2,4,5,7
ADD             R0, R4, #0x24 ; '$'
CMP             R10, #1
STM             R0, {R5,R6}
LDR             R0, [R9]
LDR             R1, [R0,#0x20]
MOV             R0, R9
BEQ             loc_28BA10
BLX             R1
LDM             R0, {R1,R2}
ADD             R5, R8, #0x34 ; '4'
LDR             R0, [R0,#8]
STR             R0, [R4,#0x14]
ADD             R0, R4, #0xC
STM             R0, {R1,R2}
ADD             R0, R8, #0x40 ; '@'
VLDR            S0, [R4,#0x2C]
BL              sub_5E0C80
VLDM            R5, {S3-S5}
MOV             R2, R4
ADD             R1, R9, #0x3C ; '<'
ADD             R0, R4, #0x18
VADD.F32        S0, S3, S0
VADD.F32        S2, S5, S2
VADD.F32        S1, S4, S1
VSTM            R4, {S0-S2}
ADD             SP, SP, #0x4C ; 'L'
VPOP            {D8}
POP             {R4-R11,LR}
B               sub_28C568
NOP
BLX             R1
LDM             R0, {R1,R2}
ADD             R5, R8, #0x34 ; '4'
LDR             R0, [R0,#8]
STR             R0, [R4,#8]
STM             R4, {R1,R2}
ADD             R0, R8, #0x40 ; '@'
VLDR            S0, [R4,#0x2C]
BL              sub_5E0C80
VLDM            R5, {S3-S5}
ADD             R0, R4, #0xC
ADD             R2, R4, #0xC
ADD             R1, R9, #0x3C ; '<'
VADD.F32        S0, S3, S0
VADD.F32        S2, S5, S2
VADD.F32        S1, S4, S1
VSTM            R0, {S0-S2}
ADD             SP, SP, #0x4C ; 'L'
ADD             R0, R4, #0x18
VPOP            {D8}
POP             {R4-R11,LR}
B               sub_28C568
CMP             R10, #4; jumptable 0028B564 case 6
LDR             R0, =off_6BC440
MOVEQ           R8, R2
MOVNE           R8, R3
CMP             R10, #2
MOV             R9, R5
MOVNE           R9, R6
STR             R0, [SP,#0x78+var_78]
LDR             R0, [R9,#4]
ADD             R3, SP, #0x78+var_6C
ADD             R11, SP, #0x78+var_54
STR             R0, [SP,#0x78+var_74]
LDR             R0, [R9,#8]
STR             R0, [SP,#0x78+var_70]
LDR             R0, =off_6BC458
STR             R0, [SP,#0x78+var_78]
ADD             R0, R9, #0xC
LDM             R0, {R0-R2}
STM             R3, {R0-R2}
LDR             R0, [R9,#0x18]
STR             R0, [SP,#0x78+var_60]
LDRB            R0, [R9,#0x1C]
STRB            R0, [SP,#0x78+var_5C]
LDRB            R0, [R9,#0x1D]
STRB            R0, [SP,#0x78+var_5B]
LDR             R0, [R9,#0x20]
STR             R0, [SP,#0x78+var_58]
LDR             R0, =off_6BC3CC
STR             R0, [SP,#0x78+var_78]
ADD             R0, R9, #0x24 ; '$'
LDM             R0, {R0-R3}
STM             R11, {R0-R3}
ADD             R0, R9, #0x34 ; '4'
ADD             R3, SP, #0x78+var_44
LDM             R0, {R0-R2}
MOV             R11, SP
STM             R3, {R0-R2}
ADD             R0, R9, #0x40 ; '@'
ADD             R3, SP, #0x78+var_38
LDM             R0, {R0-R2}
STM             R3, {R0-R2}
ADD             R2, SP, #0x78+var_44
ADD             R1, R8, #0xF0
MOV             R0, R2
BL              sub_1169FC
ADD             R2, R11, #0x24 ; '$'
ADD             R1, R8, #0xF0
MOV             R0, R2
BL              sub_1169FC
VLDR            S2, [SP,#0x78+var_54]
VLDR            S5, [SP,#0x78+var_44]
VLDR            S1, [SP,#0x78+var_50]
VLDR            S4, [SP,#0x78+var_40]
VSUB.F32        S2, S2, S5
VLDR            S0, [SP,#0x78+var_4C]
VLDR            S3, [SP,#0x78+var_3C]
VSUB.F32        S1, S1, S4
VLDR            S16, =0.0
VSUB.F32        S0, S0, S3
VSTR            S2, [SP,#0x78+var_38]
VMUL.F32        S2, S2, S2
VSTR            S1, [SP,#0x78+var_34]
VSTR            S0, [SP,#0x78+var_30]
VMLA.F32        S2, S1, S1
VMLA.F32        S2, S0, S0
VCMP.F32        S2, S16
VMRS            APSR_nzcv, FPSCR
BNE             loc_28BC3C
ADD             R0, R8, #0x24 ; '$'
VLDR            S0, [SP,#0x78+var_48]
ADD             R1, R11, #0x24 ; '$'
BL              sub_28D484
MOV             R1, #1
STRB            R0, [R7]
TST             R0, #0xFF
STR             R1, [R7,#4]
BEQ             def_28B564; jumptable 0028B564 default case, cases 0,2,4,5,7
ADD             R0, R4, #0x24 ; '$'
ADD             R2, R11, #0x24 ; '$'
STM             R0, {R5,R6}
ADD             R1, R8, #0x24 ; '$'
VSTR            S16, [R4,#0x2C]
ADD             R0, R4, #0x18
BL              sub_28C568
ADD             R2, R4, #0x18
ADD             R1, R8, #0xC0
MOV             R0, R2
BL              sub_1169FC
CMP             R10, #1
NOP
BEQ             loc_28BC0C
VSTR            S16, [R4,#0x2C]
LDR             R0, [R8]
LDR             R1, [R0,#0x20]
MOV             R0, R8
BLX             R1
LDM             R0, {R1,R2}
ADD             R9, R9, #0x24 ; '$'
LDR             R0, [R0,#8]
STR             R0, [R4,#0x14]
ADD             R0, R4, #0xC
STM             R0, {R1,R2}
LDM             R9, {R0-R2}
B               loc_28B930
LDR             R0, [R8]
LDR             R1, [R0,#0x20]
MOV             R0, R8
BLX             R1
LDM             R0, {R1,R2}
ADD             R9, R9, #0x24 ; '$'
LDR             R0, [R0,#8]
STR             R0, [R4,#8]
STM             R4, {R1,R2}
LDM             R9, {R0-R2}
ADD             R4, R4, #0xC
B               loc_28B930
VLDR            S0, [SP,#0x78+var_48]
ADD             R3, R4, #0x2C ; ','
ADD             R2, R8, #0x24 ; '$'
ADD             R1, R11, #0x40 ; '@'
ADD             R0, R11, #0x34 ; '4'
BL              sub_28D19C
MOV             R1, #1
STRB            R0, [R7]
TST             R0, #0xFF
STR             R1, [R7,#4]
BEQ             def_28B564; jumptable 0028B564 default case, cases 0,2,4,5,7
ADD             R0, R4, #0x24 ; '$'
CMP             R10, #4
STM             R0, {R5,R6}
LDR             R0, [R8]
LDR             R1, [R0,#0x20]
MOV             R0, R8
BEQ             loc_28BCFC
BLX             R1
LDM             R0, {R1,R2}
LDR             R0, [R0,#8]
STR             R0, [R4,#0x14]
ADD             R0, R4, #0xC
STM             R0, {R1,R2}
ADD             R0, R11, #0x40 ; '@'
VLDR            S0, [R4,#0x2C]
BL              sub_5E0C80
ADD             R0, SP, #0x78+var_44
MOV             R2, R4
VLDM            R0, {S3-S5}
ADD             R1, R8, #0x24 ; '$'
ADD             R0, R4, #0x18
VADD.F32        S0, S3, S0
VADD.F32        S2, S5, S2
VADD.F32        S1, S4, S1
VSTM            R4, {S0-S2}
BL              sub_28C568
MOV             R2, R4
ADD             R1, R8, #0xC0
MOV             R0, R2
BL              sub_1169FC
ADD             R2, R4, #0x18
ADD             R1, R8, #0xC0
MOV             R0, R2
BL              sub_1169FC
ADD             SP, SP, #0x4C ; 'L'
VPOP            {D8}
POP             {R4-R11,PC}
NOP
BLX             R1
LDM             R0, {R1,R2}
LDR             R0, [R0,#8]
STR             R0, [R4,#8]
STM             R4, {R1,R2}
ADD             R0, R11, #0x40 ; '@'
VLDR            S0, [R4,#0x2C]
BL              sub_5E0C80
ADD             R0, SP, #0x78+var_44
ADD             R3, R4, #0xC
VLDM            R0, {S3-S5}
ADD             R2, R4, #0xC
ADD             R1, R8, #0x24 ; '$'
ADD             R0, R4, #0x18
VADD.F32        S0, S3, S0
VADD.F32        S2, S5, S2
VADD.F32        S1, S4, S1
VSTM            R3, {S0-S2}
BL              sub_28C568
ADD             R2, R4, #0xC
ADD             R1, R8, #0xC0
MOV             R0, R2
BL              sub_1169FC
NOP
NOP
B               loc_28BCE0
MOV             R0, R2; jumptable 0028B564 case 9
CMP             R10, #8
MOVNE           R0, R3
MOV             R2, R10
CMP             R2, #1
MOV             R1, R5
MOVNE           R1, R6
ADD             R1, R1, #0x3C ; '<'
ADD             R0, R0, #0x24 ; '$'
BL              sub_28C5EC
MOV             R1, #1
STRB            R0, [R7]
TST             R0, #0xFF
STR             R1, [R7,#4]
BEQ             def_28B564; jumptable 0028B564 default case, cases 0,2,4,5,7
ADD             R0, R4, #0x24 ; '$'
STM             R0, {R5,R6}
LDR             R0, [R5]
LDR             R1, [R0,#0x20]
MOV             R0, R5
BLX             R1
LDM             R0, {R1,R2}
LDR             R0, [R0,#8]
STR             R0, [R4,#8]
STM             R4, {R1,R2}
LDR             R0, [R6]
LDR             R1, [R0,#0x20]
MOV             R0, R6
BLX             R1
LDM             R0, {R1,R2}
LDR             R0, [R0,#8]
VLDR            S0, =0.0
STR             R0, [R4,#0x14]
ADD             R0, R4, #0xC
STM             R0, {R1,R2}
VSTR            S0, [R4,#0x2C]
BL              sub_4635D8
LDM             R0, {R1,R2}
LDR             R0, [R0,#8]
STR             R0, [R4,#0x20]
ADD             R4, R4, #0x18
STM             R4, {R1,R2}
ADD             SP, SP, #0x4C ; 'L'
VPOP            {D8}
POP             {R4-R11,PC}
CMP             R10, #8; jumptable 0028B564 case 10
MOV             R0, R2
MOV             R1, R10
MOVNE           R0, R3
CMP             R1, #2
MOV             R8, R5
MOVNE           R8, R6
ADD             R9, R0, #0x24 ; '$'
LDR             R0, [R8]
LDR             R1, [R0,#0x20]
MOV             R0, R8
BLX             R1
VLDR            S10, [R8,#0x30]
MOV             R1, R9
BL              sub_28BE9C
VMUL.F32        S1, S10, S10
MOV             R2, #1
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
MOVLS           R0, #1
MOVHI           R0, #0
STRB            R0, [R7]
TST             R0, #0xFF
STR             R2, [R7,#4]
BNE             loc_28BDA4
ADD             SP, SP, #0x4C ; 'L'
VPOP            {D8}
POP             {R4-R11,PC}
