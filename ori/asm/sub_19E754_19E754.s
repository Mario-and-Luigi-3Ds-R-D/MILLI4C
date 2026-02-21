PUSH            {R4-R7,LR}
MOV             R4, R0
ADD             R0, R0, #0x3C ; '<'
VPUSH           {D8}
SUB             SP, SP, #0x14
BL              sub_61E74C
LDRB            R0, [R4,#0x60]
MOV             R7, #1
ADD             R5, R4, #0x4C ; 'L'
CMP             R0, #0
MOV             R6, #0
BEQ             loc_19E860
LDR             R0, [R5,#0x10]
BL              sub_5F19B8
CMP             R0, #0
BNE             loc_19E860
LDR             R0, [R5,#0x18]
ADD             R1, R0, #1
STR             R1, [R5,#0x18]
LDR             R0, [R5]
LDR             R3, [R5,#0x10]
VLDR            S0, [R0,#0x10]
VCVT.U32.F32    S0, S0
VMOV            R2, S0
CMP             R2, R1
MOVLS           R0, R6
BLS             loc_19E85C
ADD             R1, R1, R1,LSL#2
MOV             R2, SP
ADD             R0, R0, R1,LSL#2
ADD             R0, R0, #0x14
MOV             R1, #0
VLDM            R0, {S0-S3}
VSTMEA          SP, {S0-S3}
VLDR            S0, [R0,#0x10]
VCVT.U32.F32    S0, S0
VMOV            R0, S0
ANDS            R12, R0, #0xFF
STRB            R12, [SP,#0x30+var_20]
VLDR            S1, [R5,#4]
VLDR            S0, [SP,#0x30+var_30]
MOV             R0, R3
VADD.F32        S0, S0, S1
VSTR            S0, [SP,#0x30+var_30]
VLDR            S1, [R5,#8]
VLDR            S0, [SP,#0x30+var_2C]
VADD.F32        S0, S0, S1
VSTR            S0, [SP,#0x30+var_2C]
VLDR            S1, [R5,#0xC]
VADD.F32        S0, S2, S1
VSTR            S0, [SP,#0x30+var_28]
BEQ             loc_19E83C
CMP             R12, #1
BEQ             loc_19E850
CMP             R12, #2
VMOVEQ.F32      S0, S3
BLEQ            sub_5A2298
B               loc_19E858
VMOV.F32        S0, S3
BL              sub_5A2708
NOP
NOP
B               loc_19E858
VMOV.F32        S0, S3
BL              sub_5A2074
MOV             R0, R7
STRB            R0, [R5,#0x14]
LDRB            R0, [R4,#0x20]
CMP             R0, #0xB; switch 11 cases
LDRCC           PC, [PC,R0,LSL#2]; switch jump
B               def_19E868; jumptable 0019E868 default case
DCD loc_19EAA0; jump table for switch statement
LDR             R0, [R4,#4]; jumptable 0019E868 case 5
MOV             R1, R0
ADD             R0, R0, #0x39C
VLDM            R0, {S0-S1}
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BLT             def_19E868; jumptable 0019E868 default case
ADD             R0, R1, #0x24 ; '$'
LDR             R1, [R1,#0x2C]
LDM             R0, {R0,R2}
ADD             R3, SP, #0x30+var_2C
STR             R1, [SP,#0x30+var_24]
LDR             R5, =off_6CE970
STM             R3, {R0,R2}
MOV             R3, #1
VLDR            S0, =0.0
ADD             R2, SP, #0x30+var_2C
VSTR            S0, [SP,#0x30+var_28]
LDR             R0, [R5]
ADD             R1, R3, #0x670
STR             R6, [SP,#0x30+var_30]
BL              sub_52AEA8
LDR             R0, =0xFFE683CC
LDR             R12, [R5]
LDR             R1, [R4,#4]
LDR             R2, =0x30752
MOV             R3, #0
SUB             R0, R12, R0
BL              sub_503720
MOV             R0, #4
NOP
B               loc_19ED74
LDR             R0, [R4,#4]; jumptable 0019E868 case 4
LDR             R0, [R0,#0x410]
BL              sub_5C6830
CMP             R0, #0
NOP
BNE             def_19E868; jumptable 0019E868 default case
MOV             R0, #6
STRB            R0, [R4,#0x20]
LDR             R0, =off_6CE388
LDR             R4, [R4,#4]
LDR             R0, [R0]
ADD             R4, R4, #0x39C
LDR             R0, [R0,#0x98]
LDR             R0, [R0,#0x360]
VLDR            S0, =0.0
VSTR            S0, [R4]
STR             R0, [R4,#4]
ADD             SP, SP, #0x14; jumptable 0019E868 default case
VPOP            {D8}
POP             {R4-R7,PC}
LDR             R0, [R4,#4]; jumptable 0019E868 case 6
ADD             R0, R0, #0x39C
VLDM            R0, {S0-S1}
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BLT             def_19E868; jumptable 0019E868 default case
MOV             R1, R6
ADD             R0, R4, #8
STR             R6, [R4,#0x24]
BL              sub_5C6498
MOV             R5, R0
LDR             R0, [R4,#0x24]
ADD             R1, R0, #1
ADD             R0, R4, #8
BL              sub_5C6498
CMP             R5, R0
NOP
BNE             loc_19E9EC
LDR             R0, [R4,#4]
STRB            R6, [R0,#0x445]
LDR             R0, [R4,#4]
LDR             R0, [R0,#0x410]
BL              sub_1A5C48
MOV             R0, #3
STRB            R0, [R4,#0x20]
STRB            R6, [R4,#0x68]
LDR             R0, [R4,#0x24]
ADD             R0, R0, #1
STR             R0, [R4,#0x24]
ADD             SP, SP, #0x14
VPOP            {D8}
POP             {R4-R7,PC}
LDR             R0, [R4,#4]
LDR             R0, [R0,#0x410]
BL              sub_1A54F0
MOV             R0, #0xA
STRB            R0, [R4,#0x20]
ADD             SP, SP, #0x14
VPOP            {D8}
POP             {R4-R7,PC}
LDR             R0, [R4,#4]; jumptable 0019E868 case 1
ADD             R1, R0, #0x39C
VLDM            R1, {S0-S1}
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
BHI             def_19E868; jumptable 0019E868 default case
LDR             R0, [R0,#0x410]
BL              sub_5C6830
CMP             R0, #0
NOP
BNE             def_19E868; jumptable 0019E868 default case
ADD             R0, R4, #8
BL              sub_5C6460
LDR             R1, [R4,#0x24]
SUB             R0, R0, #1
CMP             R0, R1
BNE             loc_19EA74
LDR             R0, [R4,#4]
LDR             R0, [R0,#0x410]
BL              sub_1A55B4
MOV             R0, #8
STRB            R0, [R4,#0x20]
STRB            R6, [R4,#0x68]
ADD             SP, SP, #0x14
VPOP            {D8}
POP             {R4-R7,PC}
ADD             R0, R4, #8
BL              sub_5C6498
MOV             R5, R0
LDR             R0, [R4,#0x24]
ADD             R1, R0, #1
ADD             R0, R4, #8
BL              sub_5C6498
CMP             R5, R0
NOP
BNE             loc_19E9EC
B               loc_19E9B4
LDR             R0, [R4,#4]; jumptable 0019E868 case 0
ADD             R0, R0, #0x1DC
BL              sub_5F19B8
CMP             R0, #0
NOP
BNE             def_19E868; jumptable 0019E868 default case
ADD             SP, SP, #0x14
MOV             R0, R4
VPOP            {D8}
POP             {R4-R7,LR}
B               sub_19EEC0
LDRB            R0, [R4,#0x68]; jumptable 0019E868 case 3
CMP             R0, #0
BNE             loc_19EB2C
LDR             R0, [R4,#4]
LDR             R0, [R0,#0x410]
BL              sub_5F1558
LDR             R0, =off_6CE388
VMOV.F32        S16, S0
LDR             R0, [R0]
LDR             R0, [R0,#0x98]
ADD             R0, R0, #0x400
VLDR            S0, [R0,#0x2D4]
VCMPE.F32       S16, S0
VMRS            APSR_nzcv, FPSCR
BLT             loc_19EB2C
LDR             R12, =off_6CE970
LDR             R0, =0xFFE683CC
LDR             R1, [R4,#4]
LDR             R2, =0x30746
LDR             R12, [R12]
MOV             R3, #0
SUB             R0, R12, R0
BL              sub_503720
STRB            R7, [R4,#0x68]
LDR             R0, [R4,#4]
LDR             R0, [R0,#0x410]
BL              sub_5C6830
CMP             R0, #0
NOP
BNE             def_19E868; jumptable 0019E868 default case
LDR             R0, =off_6CE388
LDR             R0, [R0]
LDR             R0, [R0,#0x98]
VLDR            S0, [R0,#0x60]
ADD             SP, SP, #0x14
MOV             R0, R4
VPOP            {D8}
POP             {R4-R7,LR}
B               sub_19F17C
LDR             R0, [R4,#4]; jumptable 0019E868 case 9
LDR             R0, [R0,#0x410]
BL              sub_5C6830
CMP             R0, #0
NOP
BNE             def_19E868; jumptable 0019E868 default case
VLDR            S0, [R4,#0x2C]
ADD             SP, SP, #0x14
MOV             R0, R4
VPOP            {D8}
POP             {R4-R7,LR}
B               sub_19F17C
LDRB            R0, [R4,#0x68]; jumptable 0019E868 case 8
CMP             R0, #0
BNE             loc_19EBF8
LDR             R0, [R4,#4]
LDR             R0, [R0,#0x410]
BL              sub_5F1558
LDR             R0, =off_6CE388
VMOV.F32        S16, S0
LDR             R0, [R0]
LDR             R0, [R0,#0x98]
ADD             R0, R0, #0x400
VLDR            S0, [R0,#0x2D8]
VCMPE.F32       S16, S0
VMRS            APSR_nzcv, FPSCR
BLT             loc_19EBF8
LDR             R12, =off_6CE970
LDR             R0, =0xFFE683CC
LDR             R1, [R4,#4]
LDR             R2, =0x30747
LDR             R12, [R12]
MOV             R3, #0
SUB             R0, R12, R0
BL              sub_503720
STRB            R7, [R4,#0x68]
LDR             R0, [R4,#4]
LDR             R0, [R0,#0x410]
BL              sub_5C6830
CMP             R0, #0
NOP
BNE             def_19E868; jumptable 0019E868 default case
ADD             SP, SP, #0x14
MOV             R0, R4
VPOP            {D8}
POP             {R4-R7,LR}
B               sub_19E480
DCFS 0.0
DCD off_6CE970
DCD 0x30752
DCD 0xFFE683CC
DCD off_6CE388
DCD 0x30746
DCD 0x30747
LDR             R5, [R4,#4]; jumptable 0019E868 case 2
LDRB            R0, [R5,#0x40C]
CMP             R0, #0
BEQ             loc_19ECE4
LDR             R0, =off_6CE970
MOV             R3, #0
MOV             R4, SP
MOV             R2, R3
LDR             R0, [R0]
ADD             R1, R0, #0x68 ; 'h'
MOV             R0, #0x10
BL              sub_10A358
CMP             R0, #0
NOP
BEQ             loc_19EC84
LDR             R1, =off_6BB3FC
STM             R0, {R1,R5}
MOV             R1, R4
STR             R0, [SP,#0x30+var_30]
ADD             R0, R4, #4
STR             R0, [SP,#0x30+var_28]
STR             R0, [SP,#0x30+var_2C]
MOV             R2, #0
ADD             R0, R5, #0x3F4
BL              sub_61E2FC
LDR             R1, [SP,#0x30+var_28]
ADD             R0, SP, #0x30+var_2C
CMP             R1, R0
BNE             loc_19ECCC
LDR             R0, [SP,#0x30+var_30]
CMP             R0, #0
BEQ             loc_19ECCC
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
LDRD            R0, R1, [SP,#0x30+var_2C]
STR             R1, [R0,#4]
STR             R0, [R1]
ADD             SP, SP, #0x14
VPOP            {D8}
POP             {R4-R7,PC}
ADD             R0, R5, #0x1DC
BL              sub_5F19B8
CMP             R0, #0
NOP
BNE             def_19E868; jumptable 0019E868 default case
LDR             R7, =off_6CE388
LDR             R0, [R7]
LDR             R0, [R0,#0x4C8]
MOV             R5, R0
LDR             R0, [R7]
BL              sub_5C686C
CMP             R5, R0
NOP
BNE             loc_19ED84
LDR             R0, [R4,#4]
LDR             R0, [R0,#0x410]
BL              sub_1A555C
LDR             R0, [R4,#4]
LDR             R5, [R0,#0x41C]
LDR             R0, [R5,#8]
CMP             R0, #0
BEQ             loc_19ED50
BL              sub_533330
LDR             R0, [R5,#8]
CMP             R0, #0
STRNE           R6, [R0,#0x184]
STRNE           R6, [R5,#8]
LDR             R12, =off_6CE970
LDR             R0, =0xFFE683CC
LDR             R1, [R4,#4]
LDR             R2, =0x3074B
LDR             R12, [R12]
MOV             R3, #0
SUB             R0, R12, R0
BL              sub_503720
MOV             R0, #7
STRB            R0, [R4,#0x20]
ADD             SP, SP, #0x14
VPOP            {D8}
POP             {R4-R7,PC}
LDRB            R5, [R4,#0x28]
LDR             R0, [R7]
LDR             R0, [R0,#0x4C8]
MOV             R1, R0
LDR             R0, [R7]
BL              sub_5C6858
NOP
NOP
BL              sub_19E028
MOV             R2, R0
STRB            R0, [R4,#0x28]
MOV             R1, R5
ADD             R0, R4, #8
BL              sub_19DD64
ADD             R0, R4, #8
NOP
BL              sub_5C6460
SUB             R1, R0, #1
ADD             R0, R4, #8
BL              sub_5C6498
STRB            R0, [R4,#0x28]
ADD             R0, R4, #8
BL              sub_5C6410
MOV             R5, R0
ADD             R0, R4, #8
BL              sub_5C6460
SUB             R0, R0, #1
CMP             R5, R0
LDR             R0, [R7]
BNE             loc_19EE10
LDR             R0, [R0,#0x98]
VLDR            S0, [R0,#0x5C]
VCVT.F32.U32    S0, S0
VSTR            S0, [R4,#0x2C]
B               loc_19EE20
NOP
LDR             R0, [R0,#0x98]
LDR             R0, [R0,#0x58]
STR             R0, [R4,#0x2C]
STR             R6, [R4,#0x24]
ADD             SP, SP, #0x14
MOV             R0, R4
VPOP            {D8}
POP             {R4-R7,LR}
B               sub_19EEC0
LDR             R0, [R4,#4]; jumptable 0019E868 case 7
LDR             R0, [R0,#0x410]
BL              sub_5C6830
CMP             R0, #0
NOP
BNE             def_19E868; jumptable 0019E868 default case
LDR             R0, [R4,#4]
ADD             R0, R0, #0x3F4
BL              sub_61E3C4
ADD             SP, SP, #0x14
VPOP            {D8}
POP             {R4-R7,PC}
LDR             R0, [R4,#4]; jumptable 0019E868 case 10
LDR             R0, [R0,#0x410]
BL              sub_5C6830
CMP             R0, #0
NOP
BNE             def_19E868; jumptable 0019E868 default case
LDR             R0, =off_6CE388
LDR             R0, [R0]
LDR             R0, [R0,#0x98]
VLDR            S0, [R0,#0x40]
LDR             R0, [R4,#0x24]
ADD             R1, R0, #1
MOV             R0, R4
BL              sub_19E3F0
LDR             R0, [R4,#0x24]
ADD             R0, R0, #1
STR             R0, [R4,#0x24]
ADD             SP, SP, #0x14
VPOP            {D8}
POP             {R4-R7,PC}
