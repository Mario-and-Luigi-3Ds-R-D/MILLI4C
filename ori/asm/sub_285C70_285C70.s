PUSH            {R4-R11,LR}
MOV             R8, R0
VPUSH           {D8}
SUB             SP, SP, #0x14
LDR             R0, [R0,#0x11C]
LDR             R4, [R8,#0x118]
CMP             R0, R4
BEQ             loc_285CA8
LDR             R0, [R4]
BL              sub_285124
LDR             R0, [R8,#0x11C]
ADD             R4, R4, #0xC
CMP             R0, R4
BNE             loc_285C90
LDR             R0, [R8,#0x94]
BL              sub_284350
LDR             R0, [R8,#0x8C]
LDR             R4, [R8,#0x88]
CMP             R0, R4
BEQ             loc_285CE0
LDR             R0, [R4]
LDR             R1, [R0]
LDR             R1, [R1,#8]
BLX             R1
LDR             R0, [R8,#0x8C]
ADD             R4, R4, #0xC
CMP             R0, R4
BNE             loc_285CC0
LDR             R6, [R8,#0x88]
MOV             R5, R0
CMP             R6, R5
BEQ             loc_285D0C
LDR             R0, [R6]
LDR             R1, [R0]
LDR             R1, [R1,#0xC]
BLX             R1
CMP             R0, #0
ADDEQ           R6, R6, #0xC
BEQ             loc_285CE8
CMP             R6, R5
ADDNE           R4, R6, #0xC
CMPNE           R4, R5
BEQ             loc_285DB4
LDR             R0, [R4]
LDR             R1, [R0]
LDR             R1, [R1,#0xC]
BLX             R1
CMP             R0, #0
BNE             loc_285DA8
LDR             R0, [R6]
LDR             R1, [R4]
CMP             R0, R1
BEQ             loc_285DA4
LDR             R2, [R6,#8]
ADD             R3, R6, #4
CMP             R2, R3
BNE             loc_285FFC
CMP             R0, #0
BEQ             loc_285D68
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
LDR             R3, [R4]
ADD             R1, R4, #4
ADD             R0, R6, #4
CMP             R1, R0
STR             R3, [R6]
LDRNE           R3, [R1,#4]
CMPNE           R3, R0
BEQ             loc_285DA4
LDM             R0, {R2,R12}
STR             R12, [R2,#4]
STR             R2, [R12]
STR             R3, [R0,#4]
STR             R0, [R3]
STR             R0, [R1,#4]
STR             R1, [R0]
ADD             R6, R6, #0xC
ADD             R4, R4, #0xC
CMP             R4, R5
BNE             loc_285D1C
LDR             R5, [R8,#0x8C]
LDR             R7, =0x2AAAAAAB
CMP             R6, R5
BEQ             loc_285E2C
SUB             R0, R5, R6
SMULL           R1, R0, R7, R0
MOV             R1, R0,ASR#1
SUB             R0, R1, R0,ASR#31
SUB             R0, R0, R0,LSL#2
ADD             R6, R5, R0,LSL#2
CMP             R6, R5
BEQ             loc_285E28
SUB             R5, R5, #0xC
ADD             R1, R5, #4
LDR             R0, [R5,#8]
MOV             R4, R5
CMP             R0, R1
BNE             loc_285E14
LDR             R0, [R4]
CMP             R0, #0
BEQ             loc_285E14
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
LDRD            R0, R1, [R4,#4]
CMP             R6, R5
STR             R1, [R0,#4]
STR             R0, [R1]
BNE             loc_285DE4
STR             R6, [R8,#0x8C]
ADD             R0, R8, #0x118
LDM             R0, {R0,R5}
CMP             R0, R5
BEQ             loc_285E50
LDR             R1, [R0]
LDRB            R1, [R1]
CMP             R1, #6
ADDNE           R0, R0, #0xC
BNE             loc_285E34
LDR             R9, =off_6B7BEC
CMP             R0, R5
BEQ             loc_285F38
ADD             R4, R0, #0xC
CMP             R4, R5
MOV             R6, R0
BEQ             loc_285F34
LDR             R0, [R4]
LDRB            R1, [R0]
CMP             R1, #6
BEQ             loc_285F28
LDR             R10, [R6]
CMP             R10, R0
BEQ             loc_285F24
LDR             R1, [R6,#8]
ADD             R2, R6, #4
CMP             R1, R2
BNE             loc_286014
CMP             R10, #0
BEQ             loc_285EE8
STR             R9, [R10,#0x4C0]!
LDR             R1, =nullsub_300
MOV             R3, #1
MOV             R2, #0x1C
ADD             R0, R10, #0x18
BLX             sub_1009D8
MOV             R0, R10
NOP
NOP
SUB             R0, R0, #0x400
SUB             R0, R0, #0x28 ; '('
BL              sub_14F3EC
SUB             R0, R0, #0x90
NOP
NOP
SUB             R0, R0, #8
NOP
BL              sub_300FD4
LDR             R3, [R4]
ADD             R1, R4, #4
ADD             R0, R6, #4
CMP             R1, R0
STR             R3, [R6]
LDRNE           R2, [R1,#4]
CMPNE           R2, R0
BEQ             loc_285F24
LDM             R0, {R3,R12}
STR             R12, [R3,#4]
STR             R3, [R12]
STR             R2, [R0,#4]
STR             R0, [R2]
STR             R0, [R1,#4]
STR             R1, [R0]
ADD             R6, R6, #0xC
ADD             R4, R4, #0xC
CMP             R4, R5
BNE             loc_285E6C
MOV             R0, R6
LDR             R5, [R8,#0x11C]
CMP             R0, R5
BEQ             loc_285FE8
SUB             R0, R5, R0
SMULL           R1, R0, R7, R0
MOV             R1, R0,ASR#1
SUB             R0, R1, R0,ASR#31
SUB             R0, R0, R0,LSL#2
ADD             R6, R5, R0,LSL#2
CMP             R6, R5
BEQ             loc_285FE4
SUB             R5, R5, #0xC
ADD             R0, R5, #4
LDR             R1, [R5,#8]
MOV             R4, R5
CMP             R1, R0
BNE             loc_285FD0
LDR             R7, [R4]
CMP             R7, #0
BEQ             loc_285FD0
STR             R9, [R7,#0x4C0]!
LDR             R1, =nullsub_300
MOV             R3, #1
MOV             R2, #0x1C
ADD             R0, R7, #0x18
BLX             sub_1009D8
MOV             R0, R7
NOP
NOP
SUB             R0, R0, #0x400
SUB             R0, R0, #0x28 ; '('
BL              sub_14F3EC
SUB             R0, R0, #0x90
NOP
NOP
SUB             R0, R0, #8
NOP
BL              sub_300FD4
LDRD            R0, R1, [R4,#4]
CMP             R6, R5
STR             R1, [R0,#4]
STR             R0, [R1]
BNE             loc_285F64
STR             R6, [R8,#0x11C]
MOV             R0, #0
MOV             R9, R0
MOV             R11, R0
STR             R0, [SP,#0x40+var_40]
B               loc_286038
LDR             R1, [R3]
STR             R2, [R1,#4]
STR             R1, [R2]
STR             R3, [R3]
STR             R3, [R3,#4]
B               loc_285D68
LDR             R2, [R6,#4]
ADD             R0, R6, #4
STR             R1, [R2,#4]
STR             R2, [R1]
STR             R0, [R6,#4]
STR             R0, [R6,#8]
B               loc_285EE8
NOP
BCS             loc_286078
LDR             R0, =unk_6CDD38
LDRB            R5, [R0,R9]
ADD             R0, R8, #0x88
LDM             R0, {R0,R2}
CMP             R2, R0
BEQ             loc_28606C
LDR             R1, [R0]
LDRB            R3, [R1,#4]
CMP             R3, R5
BEQ             loc_2861A8
ADD             R0, R0, #0xC
CMP             R2, R0
BNE             loc_286050
LDR             R6, [R8,#0x94]
CMP             R9, #4
BCC             loc_286080
NOP
BL              sub_2FE484
LDR             R0, [R6,#0x44]
LDR             R4, [R6,#0x40]
MOV             R10, #0
CMP             R0, R4
MOVNE           R7, #2
BEQ             loc_2861A8
LDR             R0, [R4]
LDRB            R1, [R0,#0x3FC]
CMP             R1, #0
CMPNE           R1, #1
LDRBEQ          R2, [R0]
CMPEQ           R2, R5
BNE             loc_2860EC
CMP             R1, #0
CMPNE           R1, #1
BNE             loc_2860E8
STRB            R7, [R0,#0x3FC]
LDR             R1, [R0,#4]
MOV             R2, #0xFFFFFF00
ADD             R0, R0, #0x334
REV             R2, R2
LDR             R1, [R1,#0x3C]
VLDR            S0, [R1,#0x3DC]
ADD             R1, SP, #0x40+var_3C
STR             R2, [SP,#0x40+var_3C]
BL              sub_4E665C
MOV             R10, #1
LDR             R0, [R6,#0x44]
ADD             R4, R4, #0xC
CMP             R0, R4
BNE             loc_286098
CMP             R10, #0
BEQ             loc_2861A8
LDR             R0, [R6]
LDR             R7, [R0,#0x3C]
LDR             R0, =off_6CE970
VLDR            S0, [R7,#0x3C]
LDR             R0, [R0]
VLDR            S16, [R7,#0x150]
ADD             R2, R0, #0x100000
ADD             R2, R2, #0xC400
ADD             R0, R7, #0x144
VLDR            S1, [R2,#(loc_10C4EC - 0x10C400)]
LDM             R0, {R0,R1}
VMUL.F32        S0, S1, S0
STRD            R0, R1, [SP,#0x40+var_3C]
VSTR            S0, [SP,#0x40+var_34]
LDR             R0, [R6,#0x44]
LDR             R4, [R6,#0x40]
CMP             R0, R4
BEQ             loc_2861A0
LDR             R5, [R4]
LDRB            R0, [R5,#0x3FC]
CMP             R0, #0
CMPNE           R0, #1
BNE             loc_286188
VMOV.F32        S0, S16
ADD             R2, SP, #0x40+var_3C
MOV             R1, #0
ADD             R0, R5, #0x1E4
BL              sub_5A2298
STRB            R11, [R5,#0x3FC]
VLDR            S0, [R7,#0x14C]
VLDR            S1, [SP,#0x40+var_3C]
VADD.F32        S0, S1, S0
VSTR            S0, [SP,#0x40+var_3C]
LDR             R0, [R6,#0x44]
ADD             R4, R4, #0xC
CMP             R0, R4
BNE             loc_28614C
CMP             R10, #0
BEQ             loc_2861A8
MOV             R0, #1
STR             R0, [SP,#0x40+var_40]
ADD             R9, R9, #1
CMP             R9, #4
BCC             loc_286030
LDR             R0, [SP,#0x40+var_40]
CMP             R0, #0
BEQ             loc_2861EC
LDR             R0, =off_6CE970
LDR             R3, =0xFFE683CC
LDR             R1, =0x30226
MOV             R2, #0
LDR             R0, [R0]
ADD             SP, SP, #0x14
VLDR            S0, =0.0
SUB             R0, R0, R3
VPOP            {D8}
POP             {R4-R11,LR}
B               sub_503414
ADD             SP, SP, #0x14
VPOP            {D8}
POP             {R4-R11,PC}
