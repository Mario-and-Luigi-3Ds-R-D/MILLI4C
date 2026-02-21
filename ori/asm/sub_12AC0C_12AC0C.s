PUSH            {R4-R11,LR}
MOV             R4, R0
LDR             R0, =dword_6D4598
VPUSH           {D8-D9}
SUB             SP, SP, #0x4C
LDR             R0, [R0,#(dword_6D45A0 - 0x6D4598)]
STR             R0, [SP,#0x80+var_60]
LDR             R0, [R0]
CMP             R0, #0
BEQ             loc_12B54C
LDR             R1, [SP,#0x80+var_60]
LDR             R1, [R1,#0x1C]
CMP             R0, R1
BNE             loc_12B54C
LDR             R0, =unk_70C1D0
VLDR            S16, =2.0
STR             R0, [SP,#0x80+var_50]
LDR             R0, [SP,#0x80+var_60]
LDR             R0, [R0]
SUB             R1, R0, #0x300
SUBS            R1, R1, #0xE7
BEQ             def_12AC68; jumptable 0012AC68 default case, case 0
CMP             R0, #9; switch 9 cases
LDRCC           PC, [PC,R0,LSL#2]; switch jump
B               def_12AC68; jumptable 0012AC68 default case, case 0
DCD def_12AC68; jump table for switch statement
LDR             R0, [SP,#0x80+var_60]; jumptable 0012AC68 case 1
LDR             R5, [R4,#0xC]
VLDR            S0, [R0,#0xC]
LDR             R6, [R0,#8]
LDR             R7, [R0,#4]
VCVT.F32.S32    S0, S0
CMP             R6, #0
VMUL.F32        S0, S0, S16
VCVT.S32.F32    S0, S0
VMOV            R8, S0
BLT             loc_12AD14
MOV             R0, R5
BL              sub_12CD2C
CMP             R0, #0
NOP
BEQ             loc_12ACF8
MOV             R1, R6
MOV             R0, R5
BL              sub_1348CC
CMP             R0, #0
NOP
BEQ             loc_12ACF8
MOV             R1, R8
MOV             R0, R5
BL              sub_13551C
LDRD            R0, R1, [R4,#8]
ADD             R5, R5, #0x480
ADD             R0, R0, R0,LSL#3
ADD             R0, R1, R0,LSL#7
CMP             R0, R5
BNE             loc_12ACC0
B               def_12AC68; jumptable 0012AC68 default case, case 0
CMN             R7, #1
BNE             loc_12AD58
MOV             R0, R5
BL              sub_12CD2C
CMP             R0, #0
NOP
BEQ             loc_12AD3C
MOV             R1, R8
MOV             R0, R5
BL              sub_13551C
LDRD            R0, R1, [R4,#8]
ADD             R5, R5, #0x480
ADD             R0, R0, R0,LSL#3
ADD             R0, R1, R0,LSL#7
CMP             R0, R5
BNE             loc_12AD1C
B               def_12AC68; jumptable 0012AC68 default case, case 0
MOV             R1, R7
MOV             R0, R5
BL              sub_12B880
CMP             R0, #0
NOP
BEQ             loc_12AD7C
MOV             R1, R8
MOV             R0, R5
BL              sub_13551C
LDRD            R0, R1, [R4,#8]
ADD             R5, R5, #0x480
ADD             R0, R0, R0,LSL#3
ADD             R0, R1, R0,LSL#7
CMP             R0, R5
BNE             loc_12AD58
B               def_12AC68; jumptable 0012AC68 default case, case 0
LDR             R0, [SP,#0x80+var_60]; jumptable 0012AC68 case 2
ADD             R0, R0, #4
LDM             R0, {R0,R5}
STR             R0, [SP,#0x80+var_68]
LDR             R0, [SP,#0x80+var_60]
ADD             R0, R0, #0xC
VLDM            R0, {S17-S18}
LDR             R0, =0x10624DD3
SMULL           R1, R0, R0, R5
MOV             R1, R0,ASR#6
SUB             R6, R1, R0,ASR#31
ORR             R1, R6, #0x1000000
MOV             R0, #1
BL              sub_136810
CMP             R0, #0
STR             R0, [SP,#0x80+var_70]
BEQ             loc_12AEE0
MOV             R0, #0xFFFFFF83
MUL             R0, R6, R0
ADD             R1, R5, R0,LSL#3
LDR             R0, [SP,#0x80+var_70]
ADD             R2, R0, #0x30 ; '0'
ADD             R0, R0, #0x60 ; '`'
LDR             R2, [R2]
CMP             R1, R2
BGE             def_12AC68; jumptable 0012AC68 default case, case 0
LDR             R1, [R0,R1,LSL#2]
CMP             R1, #0
BLT             def_12AC68; jumptable 0012AC68 default case, case 0
ADD             R0, R0, R2,LSL#2
ADD             R9, R1, R0
LDRSB           R2, [R9,#1]
LDRB            R0, [R9]
LDRH            R1, [R9,#6]
ADD             R11, R2, #0x7D0
AND             R0, R0, #0x7F
STR             R1, [SP,#0x80+var_80]
STR             R0, [SP,#0x80+var_7C]; int
MOV             R3, R11
MOV             R2, #0x64 ; 'd'
MOV             R1, #0
MOV             R0, R4
BL              sub_13386C
MOVS            R5, R0
NOP
BEQ             def_12AC68; jumptable 0012AC68 default case, case 0
LDRB            R0, [R9]
ADD             R6, R9, #8
MOV             R10, #0
AND             R0, R0, #0x7F
CMP             R0, #0
ADD             R7, R6, R0,LSL#1
MOV             R8, R10
BLS             def_12AC68; jumptable 0012AC68 default case, case 0
MOV             R0, #0
STR             R0, [SP,#0x80+var_74]; float
ADD             R0, SP, #0x80+var_7C
STR             R9, [SP,#0x80+var_80]; char
STM             R0, {R7,R11}
MOV             R2, R10; int
LDR             R0, [R5]; int
LDR             R1, [SP,#0x80+var_68]; int
LDR             R3, [SP,#0x80+var_70]; int
BL              sub_13556C
VMOV.F32        S0, S17
LDR             R0, [R5]
MOV             R1, #0
BL              sub_13596C
VMOV.F32        S0, S18
LDR             R0, [R5]
MOV             R1, #0
BL              sub_135234
LDRB            R1, [R9]
LDRSH           R0, [R6],#2
ADD             R8, R8, #1
AND             R1, R1, #0x7F
CMP             R1, R8
ADD             R5, R5, #4
ADD             R10, R10, #1
ADD             R7, R7, R0
BHI             loc_12AE70
B               def_12AC68; jumptable 0012AC68 default case, case 0
MOV             R1, R5
MOV             R0, #0
BL              sub_136810
CMP             R0, #0
STR             R0, [SP,#0x80+var_70]
BEQ             def_12AC68; jumptable 0012AC68 default case, case 0
LDRSB           R2, [R0,#0x31]
LDRB            R1, [R0,#0x30]
ADD             R9, R0, #0x30 ; '0'
LDRH            R0, [R0,#0x36]
AND             R1, R1, #0x7F
ADD             R11, R2, #0x7D0
STRD            R0, R1, [SP,#0x80+var_80]
MOV             R3, R11
MOV             R2, #0x64 ; 'd'
MOV             R1, #0
MOV             R0, R4
BL              sub_13386C
MOVS            R5, R0
NOP
BEQ             def_12AC68; jumptable 0012AC68 default case, case 0
LDRB            R0, [R9]
ADD             R6, R9, #8
MOV             R10, #0
AND             R0, R0, #0x7F
CMP             R0, #0
ADD             R8, R6, R0,LSL#1
MOV             R7, R10
BLS             def_12AC68; jumptable 0012AC68 default case, case 0
MOV             R0, #0
STR             R0, [SP,#0x80+var_74]; float
ADD             R0, SP, #0x80+var_7C
STR             R9, [SP,#0x80+var_80]; char
STM             R0, {R8,R11}
MOV             R2, R10; int
LDR             R0, [R5]; int
LDR             R1, [SP,#0x80+var_68]; int
LDR             R3, [SP,#0x80+var_70]; int
BL              sub_13556C
VMOV.F32        S0, S17
LDR             R0, [R5]
MOV             R1, #0
BL              sub_13596C
VMOV.F32        S0, S18
LDR             R0, [R5]
MOV             R1, #0
BL              sub_135234
LDRB            R1, [R9]
LDRSH           R0, [R6],#2
ADD             R7, R7, #1
AND             R1, R1, #0x7F
CMP             R1, R7
ADD             R5, R5, #4
ADD             R10, R10, #1
ADD             R8, R8, R0
BHI             loc_12AF54
B               def_12AC68; jumptable 0012AC68 default case, case 0
DCD dword_6D4598
DCFS 2.0
DCD unk_70C1D0
DCD 0x10624DD3
LDR             R1, [SP,#0x80+var_60]; jumptable 0012AC68 case 3
LDR             R0, [SP,#0x80+var_60]
LDR             R1, [R1,#4]
LDR             R0, [R0,#8]
STR             R1, [SP,#0x80+var_64]
LDR             R1, [SP,#0x80+var_60]
VLDR            S17, [R1,#0xC]
BL              sub_136330
CMP             R0, #0
STR             R0, [SP,#0x80+var_68]
BEQ             def_12AC68; jumptable 0012AC68 default case, case 0
ADD             R10, R0, #0x30 ; '0'
LDRB            R0, [R0,#0x30]
MOV             R1, #0
MOV             R6, #0x3E8
AND             R0, R0, #0x7F
STR             R0, [SP,#0x80+var_7C]
MOV             R3, R6
MOV             R2, #0xC8
MOV             R0, R4
STR             R1, [SP,#0x80+var_80]
BL              sub_13386C
MOVS            R5, R0
NOP
BEQ             def_12AC68; jumptable 0012AC68 default case, case 0
LDRB            R0, [R10]
ADD             R7, R10, #8
MOV             R11, #0
AND             R0, R0, #0x7F
CMP             R0, #0
ADD             R8, R7, R0,LSL#2
MOV             R9, R11
BLS             def_12AC68; jumptable 0012AC68 default case, case 0
MOV             R0, #0
STR             R6, [SP,#0x80+var_78]; int
STR             R8, [SP,#0x80+var_7C]; int
STR             R0, [SP,#0x80+var_74]; float
STR             R10, [SP,#0x80+var_80]; char
LDR             R0, [R5]; int
LDR             R1, [SP,#0x80+var_64]; int
LDR             R3, [SP,#0x80+var_68]; int
MOV             R2, R11; int
BL              sub_13556C
VMOV.F32        S0, S17
LDR             R0, [R5]
MOV             R1, #0
BL              sub_135234
LDRB            R2, [R10]
LDR             R0, [R7],#4
ADD             R9, R9, #1
AND             R2, R2, #0x7F
CMP             R2, R9
SUB             R6, R6, #1
ADD             R5, R5, #4
ADD             R11, R11, #1
ADD             R8, R8, R0
BHI             loc_12B058
B               def_12AC68; jumptable 0012AC68 default case, case 0
LDR             R0, [SP,#0x80+var_60]; jumptable 0012AC68 case 4
LDR             R7, [R0,#8]
LDR             R8, [R0,#4]
VLDR            S18, [R0,#0xC]
VLDR            S17, [R0,#0x10]
VLDR            S19, [R0,#0x14]
MOV             R0, R7
BL              sub_12C9B4
CMP             R0, #0
CMPNE           R7, #0
BEQ             def_12AC68; jumptable 0012AC68 default case, case 0
LDR             R1, =aRedspark_1; "RedSpark"
MOV             R5, R7
MOV             R2, #8
MOV             R0, R7
BLX             sub_1004FC
CMP             R0, #0
NOP
BNE             def_12AC68; jumptable 0012AC68 default case, case 0
LDR             R0, [R5,#8]
CMP             R0, #0
BLE             def_12AC68; jumptable 0012AC68 default case, case 0
LDR             R0, [R7,#0x10]
SUB             R1, R0, #0x12C
CMP             R1, #2
BHI             def_12AC68; jumptable 0012AC68 default case, case 0
LDR             R9, =0x12E
CMP             R0, R9
LDREQ           R5, [R4,#0xC]
MOVEQ           R6, #0
BNE             loc_12B17C
MOV             R0, R5
BL              sub_12CD2C
CMP             R0, #0
NOP
BEQ             loc_12B160
MOV             R1, R9
MOV             R0, R5
BL              sub_1348CC
CMP             R0, #0
ADDNE           R6, R6, #1
LDR             R0, [R4,#0xC]
ADD             R5, R5, #0x480
ADD             R0, R0, #0x6C00
CMP             R0, R5
BNE             loc_12B138
CMP             R6, #4
BGE             loc_12B264
MOV             R2, #0xFFFFFFFF
MOV             R1, #0
MOV             R0, R7
BL              sub_136420
MOV             R0, #1
MOV             R10, #0
RSB             R11, R0, R0,LSL#15
STR             R0, [SP,#0x80+var_7C]; int
ADD             R5, R7, #0x30 ; '0'
MOV             R3, R11
MOV             R2, #0x12C
MOV             R1, R10
MOV             R0, R4
STR             R10, [SP,#0x80+var_80]
BL              sub_13386C
MOVS            R6, R0
NOP
BEQ             loc_12B250
MOV             R9, R7
MOV             R1, #0x1000
MOV             R0, R7
BL              sub_1361B4
LDRSB           R1, [R5,#0x1F]
MOV             R0, #0x7000
ADD             R9, R9, #0x1000
CMP             R1, #1
BGE             loc_12B214
LDR             R2, [R5,#0x10]
LDR             R3, =0x92492493
MOV             R1, R10
LDRSB           R12, [R5,#0x1E]
SMLAL           R1, R2, R3, R2
MOV             R1, R2,ASR#3
SUB             R1, R1, R2,ASR#31
MUL             R1, R1, R12
MOV             R1, R1,LSL#3
CMP             R1, #0x7000
MOVLT           R0, R1
ADD             R1, SP, #0x80+var_7C
VMOV.F32        S1, S17
STM             R1, {R0,R11}
VMOV.F32        S0, S18
VSTR            S19, [SP,#0x80+var_74]
STR             R9, [SP,#0x80+var_80]; char
STR             R10, [SP,#0x80+var_70]; float
LDR             R0, [R6]; int
MOV             R3, R5; int
MOV             R2, R7; int
MOV             R1, R8; int
BL              sub_134DDC
NOP
NOP
B               def_12AC68; jumptable 0012AC68 default case, case 0
MOV             R0, R7
BL              sub_1361A4
NOP
NOP
B               def_12AC68; jumptable 0012AC68 default case, case 0
MOV             R2, #0xFFFFFFFF
MOV             R1, R2
MOV             R0, R7
BL              sub_1250C8
NOP
NOP
B               def_12AC68; jumptable 0012AC68 default case, case 0
LDR             R0, [SP,#0x80+var_60]; jumptable 0012AC68 case 5
LDR             R5, [R4,#0xC]
VLDR            S0, [R0,#0xC]
LDR             R6, [R0,#4]
VLDR            S17, [R0,#8]
VCVT.F32.S32    S0, S0
CMN             R6, #1
VMUL.F32        S0, S0, S16
VCVT.S32.F32    S0, S0
VMOV            R7, S0
BNE             loc_12B2EC
MOV             R0, R5
BL              sub_12CD2C
CMP             R0, #0
NOP
BEQ             loc_12B2D0
VMOV.F32        S0, S17
MOV             R1, R7
MOV             R0, R5
BL              sub_135234
LDRD            R0, R1, [R4,#8]
ADD             R5, R5, #0x480
ADD             R0, R0, R0,LSL#3
ADD             R0, R1, R0,LSL#7
CMP             R0, R5
BNE             loc_12B2AC
B               def_12AC68; jumptable 0012AC68 default case, case 0
MOV             R1, R6
MOV             R0, R5
BL              sub_12B880
CMP             R0, #0
NOP
BEQ             loc_12B314
VMOV.F32        S0, S17
MOV             R1, R7
MOV             R0, R5
BL              sub_135234
LDRD            R0, R1, [R4,#8]
ADD             R5, R5, #0x480
ADD             R0, R0, R0,LSL#3
ADD             R0, R1, R0,LSL#7
CMP             R0, R5
BNE             loc_12B2EC
B               def_12AC68; jumptable 0012AC68 default case, case 0
LDR             R0, [SP,#0x80+var_60]; jumptable 0012AC68 case 6
LDR             R5, [R4,#0xC]
VLDR            S0, [R0,#0xC]
LDR             R7, [R0,#4]
VLDR            S17, [R0,#8]
VCVT.F32.S32    S0, S0
VMUL.F32        S0, S0, S16
VCVT.S32.F32    S0, S0
VMOV            R6, S0
MOV             R1, R7
MOV             R0, R5
BL              sub_12B880
CMP             R0, #0
NOP
BEQ             loc_12B37C
VMOV.F32        S0, S17
MOV             R1, R6
MOV             R0, R5
BL              sub_13596C
LDRD            R0, R1, [R4,#8]
ADD             R5, R5, #0x480
ADD             R0, R0, R0,LSL#3
ADD             R0, R1, R0,LSL#7
CMP             R0, R5
BNE             loc_12B354
B               def_12AC68; jumptable 0012AC68 default case, case 0
LDR             R0, [SP,#0x80+var_60]; jumptable 0012AC68 case 7
LDR             R5, [R4,#0xC]
ADD             R6, R0, #4
VLDR            S0, [R0,#0xC]
LDM             R6, {R6,R8}
VCVT.F32.S32    S0, S0
CMN             R6, #1
VMUL.F32        S0, S0, S16
VCVT.S32.F32    S0, S0
VMOV            R7, S0
BNE             loc_12B404
MOV             R0, R5
BL              sub_12CD2C
CMP             R0, #0
NOP
BEQ             loc_12B3E8
MOV             R2, R7
MOV             R1, R8
MOV             R0, R5
BL              sub_1348F0
LDRD            R0, R1, [R4,#8]
ADD             R5, R5, #0x480
ADD             R0, R0, R0,LSL#3
ADD             R0, R1, R0,LSL#7
CMP             R0, R5
BNE             loc_12B3C4
B               def_12AC68; jumptable 0012AC68 default case, case 0
MOV             R1, R6
MOV             R0, R5
BL              sub_12B880
CMP             R0, #0
NOP
BEQ             loc_12B42C
MOV             R2, R7
MOV             R1, R8
MOV             R0, R5
BL              sub_1348F0
LDRD            R0, R1, [R4,#8]
ADD             R5, R5, #0x480
ADD             R0, R0, R0,LSL#3
ADD             R0, R1, R0,LSL#7
CMP             R0, R5
BNE             loc_12B404
B               def_12AC68; jumptable 0012AC68 default case, case 0
LDR             R0, [SP,#0x80+var_60]; jumptable 0012AC68 case 8
LDR             R5, [R4,#0xC]
LDR             R0, [R0,#8]
CMP             R0, #0
LDR             R0, [SP,#0x80+var_60]
MOVNE           R8, #1
MOVEQ           R8, #0
VLDR            S0, [R0,#0xC]
LDR             R6, [R0,#4]
VCVT.F32.S32    S0, S0
CMN             R6, #1
VMUL.F32        S0, S0, S16
VCVT.S32.F32    S0, S0
VMOV            R7, S0
BNE             loc_12B4C4
MOV             R0, R5
BL              sub_12CD2C
CMP             R0, #0
NOP
BEQ             loc_12B4A8
MOV             R2, R7
MOV             R1, R8
MOV             R0, R5
BL              sub_12B91C
LDRD            R0, R1, [R4,#8]
ADD             R5, R5, #0x480
ADD             R0, R0, R0,LSL#3
ADD             R0, R1, R0,LSL#7
CMP             R0, R5
BNE             loc_12B484
B               def_12AC68; jumptable 0012AC68 default case, case 0
MOV             R1, R6
MOV             R0, R5
BL              sub_12B880
CMP             R0, #0
NOP
BEQ             loc_12B4EC
MOV             R2, R7
MOV             R1, R8
MOV             R0, R5
BL              sub_12B91C
LDRD            R0, R1, [R4,#8]
ADD             R5, R5, #0x480
ADD             R0, R0, R0,LSL#3
ADD             R0, R1, R0,LSL#7
CMP             R0, R5
BNE             loc_12B4C4
LDR             R0, [SP,#0x80+var_60]; jumptable 0012AC68 default case, case 0
MOV             R2, #0x20 ; ' '
MOV             R1, #0
BL              sub_12B588
LDR             R0, [SP,#0x80+var_60]
LDR             R1, [SP,#0x80+var_50]
ADD             R0, R0, #0x20 ; ' '
CMP             R0, R1
STR             R0, [SP,#0x80+var_60]
LDREQ           R0, =unk_70A1D0
STREQ           R0, [SP,#0x80+var_60]
LDR             R0, [R0]
CMP             R0, #0
BEQ             loc_12B54C
LDR             R1, [SP,#0x80+var_60]
LDR             R1, [R1,#0x1C]
CMP             R0, R1
BEQ             loc_12AC50
LDR             R1, =dword_6D4598
LDR             R0, [SP,#0x80+var_60]
STR             R0, [R1,#(dword_6D45A0 - 0x6D4598)]
ADD             SP, SP, #0x4C ; 'L'
VPOP            {D8-D9}
POP             {R4-R11,PC}
