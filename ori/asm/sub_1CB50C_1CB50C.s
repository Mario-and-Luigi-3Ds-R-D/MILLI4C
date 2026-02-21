PUSH            {R4-R11,LR}
MOV             R4, R0
MOV             R7, #0
LDR             R8, =off_6CE970
VLDR            S1, =0.0039062
VPUSH           {D8}
SUB             SP, SP, #0x3C
LDR             R0, [R8]
LDR             R6, [R4,#0xC]
ADD             R0, R0, #0x190000
ADD             R0, R0, #0xDE00
LDR             R5, [R6,#8]
LDRSH           R0, [R0,#(loc_19DEE0+2 - 0x19DE00)]
CMP             R5, R6
VMOV            S0, R0
VCVT.F32.S32    S0, S0
VMUL.F32        S16, S0, S1
BEQ             loc_1CB5CC
LDRB            R1, [R5,#0xC]
MOV             R0, R5
CMP             R1, #0
BNE             loc_1CB590
LDRB            R1, [R0,#0xD]
CMP             R1, #0
BEQ             loc_1CB5C0
LDR             R1, [R0]
VMOV.F32        S0, S16
LDR             R1, [R1,#0x14]
BLX             R1
LDRB            R1, [R5,#0xC]
MOV             R0, R5
CMP             R1, #0
BEQ             loc_1CB5C0
LDR             R1, [R0,#8]
LDR             R2, [R0,#4]
STR             R2, [R1,#4]
ADD             R1, R0, #4
MOV             R5, R2
LDM             R1, {R1,R2}
STR             R2, [R1,#8]
STR             R7, [R0,#8]
STR             R7, [R0,#4]
LDR             R1, [R0]
LDR             R1, [R1,#0xC]
BLX             R1
LDR             R5, [R5,#8]
CMP             R5, R6
BNE             loc_1CB554
LDRB            R0, [R4,#0xA]
LDR             R11, =off_6CE118
CMP             R0, #0
BNE             loc_1CB76C
LDR             R0, [R11]
ADD             R0, R0, #0x1400
ADD             R0, R0, #0xC8
BL              sub_1C6FF8
LDR             R0, [R11]
ADD             R5, R0, #0x1400
ADD             R5, R5, #0xC8
LDRB            R0, [R5,#0xC]
CMP             R0, #0
BNE             loc_1CB618
MOV             R0, R5
BL              sub_1C6FF8
LDRB            R0, [R5,#0xC]
CMP             R0, #0
BEQ             loc_1CB76C
LDR             R0, [R4,#4]
MOV             R1, #0
ADD             R0, R0, #0x10
BL              sub_14C3E8
LDR             R0, [R4,#4]
MOV             R1, #0
ADD             R0, R0, #0x400
ADD             R0, R0, #4
BL              sub_14C3E8
LDR             R0, [R4,#4]
MOV             R1, #2
ADD             R0, R0, #0x10
BL              sub_14C450
LDR             R0, [R4,#4]
MOV             R1, #2
ADD             R0, R0, #0x400
ADD             R0, R0, #4
BL              sub_14C450
LDR             R5, =0xC00E
LDR             R0, [R8]
MOV             R1, R5
BL              sub_52FACC
LDR             R1, [R4,#4]
MOV             R2, #0
ADD             R3, R1, #0x10
MOV             R1, R0
MOV             R0, R3
BL              sub_14E6E0
LDR             R0, [R8]
MOV             R1, R5
BL              sub_52FACC
LDR             R2, [R4,#4]
MOV             R1, R0
ADD             R3, R2, #0x400
ADD             R3, R3, #4
MOV             R2, #0
MOV             R0, R3
BL              sub_14E6E0
LDR             R0, [R4,#4]
MOV             R3, #0x100
MOV             R2, #0
MOV             R1, #4
STRB            R7, [R0,#0x102]
LDR             R0, [R4,#4]
STRB            R7, [R0,#0x4F6]
LDR             R0, [R4,#4]
ADD             R0, R0, #0x10
BL              sub_14C548
LDR             R0, [R4,#4]
MOV             R3, #0x100
MOV             R2, #0
ADD             R0, R0, #0x400
ADD             R0, R0, #4
MOV             R1, #0xA
BL              sub_14C548
LDR             R0, [R4,#4]
MOV             R1, #0
ADD             R0, R0, #0x400
ADD             R0, R0, #0x3F8
BL              sub_14C3E8
LDR             R0, [R4,#4]
MOV             R1, #1
ADD             R0, R0, #0x400
ADD             R0, R0, #0x3F8
BL              sub_14C450
LDR             R0, [R11]
MOV             R2, #0
ADD             R0, R0, #0x1400
ADD             R0, R0, #0xC8
LDR             R1, [R0]
LDR             R0, [R4,#4]
ADD             R0, R0, #0x400
ADD             R0, R0, #0x3F8
BL              sub_14E6E0
LDR             R0, [R4,#4]
MOV             R2, #0
MOV             R1, #1
STRB            R7, [R0,#0x8EA]
LDR             R0, [R11]
LDRB            R0, [R0,#0x8EE]
STRB            R0, [R4,#0xF0]
LDR             R0, [R4,#4]
BL              sub_3D7544
MOV             R0, #1
STRB            R0, [R4,#0xA]
LDRB            R0, [R4,#8]
CMP             R0, #1
BNE             loc_1CB7FC
LDRB            R0, [R4,#9]
LDR             R9, =sub_10D4F0
MOV             R10, #0xFFFFFFFF
CMP             R0, #6; switch 6 cases
ADD             R6, R4, #0xEC
LDRCC           PC, [PC,R0,LSL#2]; switch jump
B               def_1CB78C; jumptable 001CB78C default case
DCD loc_1CB7AC; jump table for switch statement
LDR             R0, [R8]; jumptable 001CB78C case 0
LDR             R0, [R0,R9]
ADD             R0, R0, #0x1DC
BL              sub_5F19B8
CMP             R0, #0
NOP
BNE             def_1CB78C; jumptable 001CB78C default case
LDR             R0, [R4,#0xF8]
CMP             R0, #0
MOVNE           R1, #0
BLNE            sub_1586A8
LDR             R0, [R8]
MOV             R3, #0x100
MOV             R2, #0
MOV             R1, #9
LDR             R0, [R0,R9]
STRB            R7, [R0,#0xF3]
BL              sub_14C430
MOV             R0, #1
STRB            R0, [R4,#9]
ADD             SP, SP, #0x3C ; '<'
VPOP            {D8}
POP             {R4-R11,PC}
DCD off_6CE970
DCFS 0.0039062
DCD off_6CE118
DCD 0xC00E
DCD sub_10D4F0
LDR             R0, [R11]; jumptable 001CB78C case 1
ADD             R5, R0, #0x1400
ADD             R5, R5, #0xC8
LDRB            R0, [R5,#0xC]
CMP             R0, #0
BNE             loc_1CB848
MOV             R0, R5
BL              sub_1C6FF8
LDRB            R0, [R5,#0xC]
CMP             R0, #0
BEQ             def_1CB78C; jumptable 001CB78C default case
STR             R10, [SP,#0x68+var_34]
STR             R10, [SP,#0x68+var_30]
LDR             R0, [R11]
MOV             R2, #0x26 ; '&'
MOV             R3, #0x27 ; '''
ADD             R1, R0, #0x400
ADD             R1, R1, #0x3F8
ADD             R0, R0, #0x10
STRB            R7, [R1,#0xF6]
STRB            R2, [SP,#0x68+var_68]
STR             R0, [SP,#0x68+var_5C]
STR             R1, [SP,#0x68+var_64]
STRB            R3, [SP,#0x68+var_67]
LDR             R0, [R8]
MOV             R2, #0
LDR             R0, [R0,R9]
LDR             R1, [R0]
LDR             R3, [R1,#0x2C]
ADD             R1, SP, #0x68+var_58
BLX             R3
LDR             R1, [R11]
VLDR            S0, [SP,#0x68+var_58]
ADD             R5, SP, #0x68+var_4C
LDR             R0, [R1,#8]
ADD             R0, R0, #0x400
ADD             R0, R0, #0x1EC
VLDR            S1, [R0]
VADD.F32        S0, S0, S1
VSTR            S0, [SP,#0x68+var_58]
VLDR            S1, [R0,#4]
VLDR            S0, [SP,#0x68+var_54]
VADD.F32        S0, S0, S1
VSTR            S0, [SP,#0x68+var_54]
VLDR            S1, [R0,#8]
VLDR            S0, [SP,#0x68+var_50]
VADD.F32        S0, S0, S1
VSTR            S0, [SP,#0x68+var_50]
LDR             R0, [R1,#8]
VSTR            S0, [R0,#0x250]
LDR             R3, [R1,#8]
ADD             R3, R3, #0x3B0
LDM             R3, {R0,R2,R3}
STR             R6, [SP,#0x68+var_3C]
STM             R5, {R0,R2,R3}
LDR             R0, =0x14D0
LDR             R0, [R0,R1]
LDR             R1, =0x301B3
STR             R0, [SP,#0x68+var_40]
ADD             R2, R1, #2
STR             R1, [SP,#0x68+var_30]
STR             R2, [SP,#0x68+var_34]
LDR             R0, [R8]
LDR             R1, =0x10E090
ADD             R2, R0, R9; sub_10D4F0
ADD             R0, R0, R1; loc_10E090
LDR             R1, [R2]
STR             R0, [SP,#0x68+var_38]
ADD             R0, R4, #0x4C ; 'L'
STR             R1, [SP,#0x68+var_60]
MOV             R1, SP
BL              sub_45ABEC
LDR             R0, [R4,#0xC]
LDR             R1, [R0,#4]
ADD             R0, R4, #0x4C ; 'L'
STR             R1, [R4,#0x50]
LDR             R1, [R4,#0xC]
STR             R1, [R4,#0x54]
LDR             R1, [R1,#4]
STR             R0, [R1,#8]
LDR             R1, [R4,#0xC]
STR             R0, [R1,#4]
LDR             R1, [R4,#0x4C]
LDR             R1, [R1,#8]
BLX             R1
MOV             R0, #2
B               loc_1CBA3C
LDRB            R0, [R4,#0x58]; jumptable 001CB78C case 2
CMP             R0, #0
BEQ             loc_1CBBE4
STR             R10, [SP,#0x68+var_44]
STR             R10, [SP,#0x68+var_40]
LDR             R0, [R11]
STRB            R7, [SP,#0x68+var_5C]
ADD             LR, SP, #0x68+var_58
ADD             R10, R0, #0x400
ADD             R10, R10, #0x3F8
STR             R10, [SP,#0x68+var_64]
LDR             R7, [R0,#8]
LDR             R1, =0x301B4
MOV             R3, #0x28 ; '('
MOV             R12, #0x29 ; ')'
LDR             R7, [R7,#0x3BC]
MOV             R5, #0x2A ; '*'
SUB             R2, R1, #2
STR             R7, [SP,#0x68+var_4C]
LDR             R10, [R0,#0xC]
ADD             R10, R10, #0x14
LDM             R10, {R0,R7,R10}
STM             LR, {R0,R7,R10}
STRB            R3, [SP,#0x68+var_68]
STRB            R12, [SP,#0x68+var_67]
STRB            R5, [SP,#0x68+var_66]
STR             R1, [SP,#0x68+var_40]
STR             R2, [SP,#0x68+var_44]
STR             R6, [SP,#0x68+var_48]
LDR             R0, [R8]
MOV             R1, SP
LDR             R0, [R0,R9]
STR             R0, [SP,#0x68+var_60]
ADD             R0, R4, #0xA4
BL              sub_45B14C
LDR             R1, [R4,#0xC]
ADD             R0, R4, #0xA4
LDR             R1, [R1,#4]
STR             R1, [R4,#0xA8]
LDR             R1, [R4,#0xC]
STR             R1, [R4,#0xAC]
LDR             R1, [R1,#4]
STR             R0, [R1,#8]
LDR             R1, [R4,#0xC]
STR             R0, [R1,#4]
LDR             R1, [R4,#0xA4]
LDR             R1, [R1,#8]
BLX             R1
MOV             R0, #3
STRB            R0, [R4,#9]
B               loc_1CBBE4
LDRB            R0, [R4,#0xE8]; jumptable 001CB78C case 3
CMP             R0, #2
BNE             loc_1CBA68; jumptable 001CB78C case 4
LDR             R0, [R11]
ADD             R0, R0, #0xC00
ADD             R0, R0, #0xF4
BL              sub_58810C
MOV             R0, #4
STRB            R0, [R4,#9]
LDRB            R0, [R4,#0xB0]; jumptable 001CB78C case 4
CMP             R0, #0
BEQ             def_1CB78C; jumptable 001CB78C default case
LDR             R0, [R11]
ADD             R0, R0, #0xC00
ADD             R0, R0, #0x29C
BL              sub_35FE4C
LDR             R0, [R11]
ADD             R0, R0, #0xC00
ADD             R0, R0, #0x138
BL              sub_1C5C24
LDR             R0, [R11]
ADD             R0, R0, #0xC00
ADD             R0, R0, #8
BL              sub_35E8F0
LDR             R0, [R8]
LDR             R3, =0xFFE683CC
LDR             R1, =0x301AD
MOV             R2, #0
VLDR            S0, =0.0
SUB             R0, R0, R3
BL              sub_503414
MOV             R0, #5
STRB            R0, [R4,#9]
B               loc_1CBBE4
LDR             R9, [R11]; jumptable 001CB78C case 5
LDR             R10, =off_63F14C
ADD             R9, R9, #0xC00
ADD             R9, R9, #0x29C
LDR             R6, [R10,#(dword_63F158 - 0x63F14C)]
LDM             R9, {R5,R7}
LDR             R8, [R10,#(off_63F154 - 0x63F14C)]; sub_5C6894
CMP             R5, R7
BEQ             loc_1CBB20
ADD             R1, R5, R6,ASR#1
TST             R6, #1
LDRNE           R0, [R1]
MOVEQ           R0, R8
LDRNE           R0, [R0,R8]
MOV             R2, R0
MOV             R0, R1
BLX             R2
CMP             R0, #0
ADDNE           R5, R5, #0x800
ADDNE           R5, R5, #0xA8
BNE             loc_1CBAE8
LDR             R0, [R9,#4]
CMP             R5, R0
BNE             def_1CB78C; jumptable 001CB78C default case
LDR             R9, [R11]
LDR             R6, [R10,#(dword_63F150 - 0x63F14C)]
LDR             R8, [R10]; sub_5CF084
ADD             R9, R9, #0xC00
ADD             R9, R9, #8
LDM             R9, {R5,R7}
CMP             R5, R7
BEQ             loc_1CBB7C
ADD             R1, R5, R6,ASR#1
TST             R6, #1
LDRNE           R0, [R1]
MOVEQ           R0, R8
LDRNE           R0, [R0,R8]
MOV             R2, R0
MOV             R0, R1
BLX             R2
CMP             R0, #0
ADDNE           R5, R5, #0x400
ADDNE           R5, R5, #0x74 ; 't'
BNE             loc_1CBB44
LDR             R0, [R9,#4]
CMP             R5, R0
BNE             def_1CB78C; jumptable 001CB78C default case
LDR             R6, [R11]
LDRB            R0, [R6,#0xD38]
CMP             R0, #0xF
LDRBEQ          R0, [R6,#0xD14]
CMPEQ           R0, #3
BNE             def_1CB78C; jumptable 001CB78C default case
LDR             R0, [R6,#0xC04]
LDR             R5, [R6,#0xBF0]
MOV             R7, #0
CMP             R0, #0
BEQ             loc_1CBBC0
LDR             R1, [R0]
LDR             R1, [R1,#0x10]
BLX             R1
STR             R5, [R6,#0xC04]
LDR             R0, [R5]
MOV             R1, R7
LDR             R2, [R0,#8]
MOV             R0, R5
BLX             R2
LDRB            R0, [R4,#9]; jumptable 001CB78C default case
CMP             R0, #2
BCC             loc_1CB7FC
LDR             R0, [R4,#4]
ADD             R0, R0, #0xC00
ADD             R0, R0, #0xF4
BL              sub_588204
LDR             R0, [R4,#4]
ADD             R0, R0, #0xC00
ADD             R0, R0, #0x29C
BL              sub_3610CC
LDR             R0, [R4,#4]
ADD             R0, R0, #0xC00
ADD             R0, R0, #8
BL              sub_35EC48
LDR             R0, [R4,#4]
ADD             SP, SP, #0x3C ; '<'
VPOP            {D8}
ADD             R0, R0, #0xC00
POP             {R4-R11,LR}
ADD             R0, R0, #0x138
B               sub_1C5E40
