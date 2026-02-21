PUSH            {R4-R11,LR}
MOV             R4, #0
SUB             SP, SP, #0x3C
MOV             R6, R0
MOV             R9, R4
LDR             R10, =0xC00E
LDR             R8, =off_6CE970
ADD             R0, R4, R4,LSL#1
RSB             R0, R0, R4,LSL#8
MOV             R1, R10
ADD             R7, R6, R0,LSL#2
ADD             R5, R7, #0x12400
LDR             R0, [R8]
ADD             R5, R5, #0x398
BL              sub_52FACC
MOV             R11, R0
MOV             R1, #1
MOV             R0, R5
BL              sub_14C450
LDR             R0, [R5]
MOV             R2, #0
MOV             R1, R11
LDR             R3, [R0,#0x58]
MOV             R0, R5
BLX             R3
MOV             R2, #1
MOV             R1, R2
MOV             R0, R5
BL              sub_14B798
MOV             R1, #0
MOV             R0, R5
STRB            R9, [R5,#0xF1]
BL              sub_14C3E8
ADD             R7, R7, #0x12800
ADD             R7, R7, #0x8A
ADD             R4, R4, #1
CMP             R4, #2
STRB            R9, [R7]
BCC             loc_1FA764
ADD             R0, R6, #0x12400
MOV             R3, #0x100
MOV             R2, #0
MOV             R1, #4
ADD             R0, R0, #0x398
BL              sub_14C548
ADD             R0, R6, #0x12800
MOV             R3, #0x100
MOV             R2, #0
MOV             R1, #0xA
ADD             R0, R0, #0x38C
BL              sub_14C548
ADD             R4, R6, #0x10000
ADD             R4, R4, #0x2700
MOV             R3, #0
LDR             R1, [R4]
ADD             R7, SP, #0x60+var_44
MOV             R9, #5
MOV             R0, R1
ADD             R0, R0, #0x64 ; 'd'
ADD             R1, R1, #0x4C ; 'L'
VLDM            R0, {S3-S5}
MOV             R5, SP
VLDR            S2, [R1]
VLDR            S1, [R1,#4]
VLDR            S0, [R1,#8]
VADD.F32        S2, S2, S3
VADD.F32        S1, S1, S4
VADD.F32        S0, S0, S5
MOV             R2, R3
VSTR            S2, [SP,#0x60+var_44]
VSTR            S1, [SP,#0x60+var_40]
VSTR            S0, [SP,#0x60+var_3C]
LDR             R0, [R8]
ADD             R1, R0, #0x68 ; 'h'
LDR             R0, =0x42C
BL              sub_10A358
CMP             R0, #0
NOP
BEQ             loc_1FA890
MOV             R2, R9
MOV             R1, R7
BL              sub_1FCF10
STR             R0, [SP,#0x60+var_60]
ADD             R0, R5, #4
ADD             R1, R6, #0x12000
ADD             R1, R1, #0x6E0
STR             R0, [SP,#0x60+var_58]
STR             R0, [SP,#0x60+var_5C]
LDR             R0, [R1,#0x1C]
LDR             R3, [R1,#0x18]
LDR             R9, =0x2AAAAAAB
MOV             R2, SP
SUB             R3, R0, R3
SMULL           R12, R3, R9, R3
MOV             R12, R3,ASR#1
SUB             R3, R12, R3,ASR#31
ADD             R3, R3, #1
CMP             R3, #2
BHI             loc_1FA908
CMP             R0, #0
BEQ             loc_1FA8FC
LDR             R3, [SP,#0x60+var_60]
ADD             R2, R2, #4
STR             R3, [R0],#4
STR             R2, [R0]
LDR             R2, [SP,#0x60+var_58]
STR             R2, [R0,#4]
STR             R0, [R2]
STR             R0, [SP,#0x60+var_58]
LDR             R0, [R1,#0x1C]
ADD             R0, R0, #0xC
STR             R0, [R1,#0x1C]
LDR             R1, [SP,#0x60+var_58]
ADD             R0, SP, #0x60+var_5C
CMP             R1, R0
BNE             loc_1FA934
LDR             R0, [SP,#0x60+var_60]
CMP             R0, #0
BEQ             loc_1FA934
BL              sub_1FD044
NOP
NOP
BL              sub_300FD4
LDRD            R0, R1, [SP,#0x60+var_5C]
LDR             R5, =0x418
MOV             R3, #0
MOV             R2, R3
STR             R1, [R0,#4]
STR             R0, [R1]
LDR             R0, [R8]
ADD             R1, R0, #0x68 ; 'h'
MOV             R0, R5
BL              sub_10A358
CMP             R0, #0
MOVNE           R1, #0
BLNE            sub_1FF324
LDR             R1, =0x126D8
MOV             R3, #0
MOV             R2, R3
STR             R0, [R1,R6]
LDR             R0, [R8]
ADD             R1, R0, #0x68 ; 'h'
MOV             R0, R5
BL              sub_10A358
CMP             R0, #0
MOVNE           R1, #1
BLNE            sub_1FF324
LDR             R1, =0x126DC
MOV             R3, #0
MOV             R2, R3
STR             R0, [R1,R6]
LDR             R0, [R8]
ADD             R1, R0, #0x68 ; 'h'
LDR             R0, =0x21E4C
BL              sub_10A358
MOVS            R5, R0
NOP
BEQ             loc_1FA9D8
ADD             R0, R6, #0x10
LDR             R0, [R0,#0x24]
MOV             R1, R0
LDR             R2, [R4]
MOV             R0, R5
BL              sub_1FD1F4
LDR             R1, =0x12704
ADD             R2, R6, #0x12400
VLDR            S0, =0.0
STR             R0, [R1,R6]
LDR             R0, [R4]
ADD             R1, R6, #0x12400
ADD             R1, R1, #0x378
LDR             R0, [R0,#0x70]
STR             R0, [SP,#0x60+var_5C]
STR             R0, [R2,#0x320]
LDR             R0, [R1,#4]
CMP             R0, #0
LDR             R3, [R0]
STR             R3, [R1,#4]
LDR             R3, [R1,#8]
SUB             R3, R3, #1
STR             R3, [R1,#8]
LDR             R1, [R4]
ADD             R4, SP, #0x60+var_58
LDR             R1, [R1,#0x180]
STR             R1, [SP,#0x60+var_5C]
STR             R1, [SP,#0x60+var_34]
VSTR            S0, [SP,#0x60+var_30]
LDR             R1, [R2,#0x320]
STR             R1, [SP,#0x60+var_2C]
BEQ             loc_1FAA50
VLDR            S0, [R2,#0x38C]
ADD             R2, SP, #0x60+var_34
MOV             R1, #1
BL              sub_1F95B0
STR             R0, [SP,#0x60+var_58]
ADD             R0, R4, #4
STR             R0, [SP,#0x60+var_50]
STR             R0, [SP,#0x60+var_54]
ADD             R0, R6, #0x12400
ADD             R0, R0, #0x308
ADD             R1, SP, #0x60+var_58
MOV             R4, R0
BL              sub_624A04
ADD             R0, R6, #0x12400
ADD             R0, R0, #0x324
LDR             R1, [R0]
ADD             R1, R1, #1
STR             R1, [R0]
LDR             R1, [SP,#0x60+var_50]
ADD             R0, SP, #0x60+var_54
CMP             R1, R0
BNE             loc_1FAAE0
LDR             R0, [SP,#0x60+var_58]
CMP             R0, #0
BEQ             loc_1FAAE0
MOV             R7, R0
LDR             R0, =off_6CDC90
LDR             R0, [R0]
ADD             R5, R0, #0x12400
LDR             R0, [R7]
ADD             R5, R5, #0x378
LDR             R1, [R0]
MOV             R0, R7
BLX             R1
LDR             R0, [R5,#4]
STR             R0, [R7]
STR             R7, [R5,#4]
LDR             R0, [R5,#8]
ADD             R0, R0, #1
STR             R0, [R5,#8]
LDRD            R0, R1, [SP,#0x60+var_54]
STR             R1, [R0,#4]
STR             R0, [R1]
LDR             R0, [R4,#0x10]
LDR             R1, [R4,#0xC]
SUB             R0, R0, R1
SMULL           R1, R0, R9, R0
MOV             R1, R0,ASR#1
SUB             R1, R1, R0,ASR#31
LDR             R0, [R4,#0x14]
CMP             R1, R0
BEQ             loc_1FAB24
MOV             R0, R6
BL              sub_1F9E90
NOP
NOP
B               loc_1FAAEC
ADD             SP, SP, #0x3C ; '<'
POP             {R4-R11,PC}
