PUSH            {R4-R9,LR}
MOV             R6, R0
LDR             R0, =off_6CE970
VLDR            S1, =0.0039062
VPUSH           {D8}
SUB             SP, SP, #0x1C
LDR             R0, [R0]
VLDR            S17, =1.0
ADD             R0, R0, #0x190000
ADD             R0, R0, #0xDE00
LDRSH           R0, [R0,#(loc_19DEE0+2 - 0x19DE00)]
VMOV            S0, R0
LDR             R0, [R6,#0xC4]
CMP             R0, #0
VCVT.F32.S32    S0, S0
VMUL.F32        S16, S0, S1
VMOVNE.F32      S0, S16
BLNE            sub_271A88
VMOV.F32        S0, S16
LDR             R0, [R6,#0x100]
CMP             R0, #0
NOP
VMOV.F32        S0, S16
LDR             R0, [R6,#0xD0]
CMP             R0, #0
BLNE            sub_27F370
VMOV.F32        S0, S16
LDR             R0, [R6,#0x10C]
CMP             R0, #0
BLNE            sub_281454
LDR             R0, [R6,#0x118]
CMP             R0, #0
VMOVNE.F32      S0, S16
BLNE            sub_273FB4
LDR             R0, [R6,#0xC4]
MOV             R1, #0
CMP             R0, #0
BEQ             loc_27B2B4
LDR             R2, [R0,#0x1C]!
ADD             R0, R0, #4
STR             R0, [SP,#0x40+var_3C]
STR             R2, [SP,#0x40+var_40]
LDR             R2, [R0,#4]
ADD             R1, SP, #0x40+var_3C
STR             R2, [SP,#0x40+var_38]
STR             R1, [R2]
STR             R1, [R0,#4]
LDR             R0, [SP,#0x40+var_40]
MOV             R1, #1
CMP             R0, #0
MOVNE           R4, #1
BNE             loc_27B2B8
MOV             R4, #0
CMP             R1, #0
BEQ             loc_27B2F8
LDR             R1, [SP,#0x40+var_38]
ADD             R0, SP, #0x40+var_3C
CMP             R1, R0
BNE             loc_27B2EC
LDR             R0, [SP,#0x40+var_40]
CMP             R0, #0
BEQ             loc_27B2EC
BL              sub_273C74
NOP
NOP
BL              sub_300FD4
LDRD            R0, R1, [SP,#0x40+var_3C]
STR             R1, [R0,#4]
STR             R0, [R1]
CMP             R4, #0
BEQ             loc_27B368
LDR             R0, [R6,#0xC4]
ADD             R1, SP, #0x40+var_30
LDR             R2, [R0,#0x1C]!
ADD             R0, R0, #4
STR             R0, [SP,#0x40+var_30]
STR             R2, [SP,#0x40+var_34]
LDR             R2, [R0,#4]
STR             R2, [SP,#0x40+var_2C]
STR             R1, [R2]
STR             R1, [R0,#4]
LDR             R0, [SP,#0x40+var_34]
LDR             R1, [SP,#0x40+var_2C]
VLDR            S17, [R0,#0x70]
ADD             R0, SP, #0x40+var_30
CMP             R1, R0
BNE             loc_27B35C
LDR             R0, [SP,#0x40+var_34]
CMP             R0, #0
BEQ             loc_27B35C
BL              sub_273C74
NOP
NOP
BL              sub_300FD4
LDRD            R0, R1, [SP,#0x40+var_30]
STR             R1, [R0,#4]
STR             R0, [R1]
LDR             R0, [R6,#0xC0]
LDR             R4, [R6,#0xBC]
CMP             R0, R4
BEQ             loc_27B398
VMOV.F32        S1, S17
VMOV.F32        S0, S16
LDR             R0, [R4]
BL              sub_26B418
LDR             R0, [R6,#0xC0]
ADD             R4, R4, #0xC
CMP             R0, R4
BNE             loc_27B378
ADD             R0, R6, #0xBC
LDM             R0, {R0,R5}
CMP             R0, R5
BEQ             loc_27B3BC
LDR             R1, [R0]
LDRB            R1, [R1,#0x108]
CMP             R1, #3
ADDNE           R0, R0, #0xC
BNE             loc_27B3A0
CMP             R0, R5
BEQ             loc_27B464
ADD             R4, R0, #0xC
CMP             R4, R5
MOV             R7, R0
BEQ             loc_27B460
LDR             R1, [R4]
LDRB            R0, [R1,#0x108]
CMP             R0, #3
BEQ             loc_27B454
LDR             R0, [R7]
CMP             R0, R1
BEQ             loc_27B450
LDR             R2, [R7,#8]
ADD             R3, R7, #4
CMP             R2, R3
BNE             loc_27B58C
CMP             R0, #0
BEQ             loc_27B414
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
LDR             R3, [R4]
ADD             R1, R4, #4
ADD             R0, R7, #4
CMP             R1, R0
STR             R3, [R7]
LDRNE           R3, [R1,#4]
CMPNE           R3, R0
BEQ             loc_27B450
LDM             R0, {R2,R12}
STR             R12, [R2,#4]
STR             R2, [R12]
STR             R3, [R0,#4]
STR             R0, [R3]
STR             R0, [R1,#4]
STR             R1, [R0]
ADD             R7, R7, #0xC
ADD             R4, R4, #0xC
CMP             R4, R5
BNE             loc_27B3D4
MOV             R0, R7
LDR             R5, [R6,#0xC0]
LDR             R9, =0x2AAAAAAB
CMP             R0, R5
BEQ             loc_27B4DC
SUB             R0, R5, R0
SMULL           R1, R0, R9, R0
MOV             R1, R0,ASR#1
SUB             R0, R1, R0,ASR#31
SUB             R0, R0, R0,LSL#2
ADD             R7, R5, R0,LSL#2
CMP             R7, R5
BEQ             loc_27B4D8
SUB             R5, R5, #0xC
ADD             R1, R5, #4
LDR             R0, [R5,#8]
MOV             R4, R5
CMP             R0, R1
BNE             loc_27B4C4
LDR             R0, [R4]
CMP             R0, #0
BEQ             loc_27B4C4
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
LDRD            R0, R1, [R4,#4]
CMP             R7, R5
STR             R1, [R0,#4]
STR             R0, [R1]
BNE             loc_27B494
STR             R7, [R6,#0xC0]
LDR             R0, =0x1297C
ADD             R5, R6, #0x10000
ADD             R5, R5, #0x2980
LDR             R1, [R5]
LDR             R4, [R0,R6]
CMP             R1, R4
BEQ             loc_27B51C
LDR             R0, [R4]
VMOV.F32        S0, S16
LDR             R1, [R0]
LDR             R1, [R1,#0xC]
BLX             R1
LDR             R0, [R5]
ADD             R4, R4, #0xC
CMP             R0, R4
BNE             loc_27B4F8
ADD             R0, R6, #0x12800
ADD             R0, R0, #0x17C
ADD             R8, R6, #0x12800
LDM             R0, {R0,R5}
ADD             R8, R8, #0x14
CMP             R0, R5
BEQ             loc_27B54C
LDR             R1, [R0]
LDRB            R1, [R1,#0x1D]
CMP             R1, #0
ADDEQ           R0, R0, #0xC
BEQ             loc_27B530
CMP             R0, R5
BEQ             loc_27B628
ADD             R4, R0, #0xC
CMP             R4, R5
MOV             R7, R0
BEQ             loc_27B624
LDR             R0, [R4]
LDRB            R1, [R0,#0x1D]
CMP             R1, #0
BEQ             loc_27B5A4
B               loc_27B618
DCD off_6CE970
DCFS 0.0039062
DCFS 1.0
DCD 0x2AAAAAAB
DCD 0x1297C
LDR             R1, [R3]
STR             R2, [R1,#4]
STR             R1, [R2]
STR             R3, [R3]
STR             R3, [R3,#4]
B               loc_27B414
LDR             R2, [R7]
CMP             R2, R0
BEQ             loc_27B614
LDR             R1, [R7,#8]
ADD             R3, R7, #4
CMP             R1, R3
BNE             loc_27B6B8
CMP             R2, #0
MOVNE           R0, R2
BEQ             loc_27B5D8
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
LDR             R3, [R4]
ADD             R1, R4, #4
ADD             R0, R7, #4
CMP             R1, R0
STR             R3, [R7]
LDRNE           R2, [R1,#4]
CMPNE           R2, R0
BEQ             loc_27B614
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
BNE             loc_27B564
MOV             R0, R7
LDR             R5, [R8,#0x16C]
CMP             R0, R5
BEQ             loc_27B69C
SUB             R0, R5, R0
SMULL           R1, R0, R9, R0
MOV             R1, R0,ASR#1
SUB             R0, R1, R0,ASR#31
SUB             R0, R0, R0,LSL#2
ADD             R7, R5, R0,LSL#2
CMP             R7, R5
BEQ             loc_27B698
SUB             R5, R5, #0xC
ADD             R1, R5, #4
LDR             R0, [R5,#8]
MOV             R4, R5
CMP             R0, R1
BNE             loc_27B684
LDR             R0, [R4]
CMP             R0, #0
BEQ             loc_27B684
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
LDRD            R0, R1, [R4,#4]
CMP             R7, R5
STR             R1, [R0,#4]
STR             R0, [R1]
BNE             loc_27B654
STR             R7, [R8,#0x16C]
LDR             R0, [R6,#0xD0]
CMP             R0, #0
BEQ             loc_27B6FC
LDRB            R1, [R0,#4]
CMP             R1, #0xC
BEQ             loc_27B6D4
B               loc_27B6FC
LDR             R2, [R7,#4]
ADD             R0, R7, #4
STR             R1, [R2,#4]
STR             R2, [R1]
STR             R0, [R7,#4]
STR             R0, [R7,#8]
B               loc_27B5D8
LDR             R1, [R6,#0xD8]
ADD             R2, R6, #0xD4
MOV             R5, #0
CMP             R1, R2
ADD             R4, R6, #0xD0
BNE             loc_27B74C
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
STR             R5, [R4]
LDR             R0, [R6,#0xC4]
CMP             R0, #0
BEQ             loc_27B740
LDRB            R1, [R0,#0x18]
CMP             R1, #8
BNE             loc_27B740
LDR             R1, [R6,#0xCC]
ADD             R2, R6, #0xC8
MOV             R5, #0
CMP             R1, R2
ADD             R4, R6, #0xC4
BNE             loc_27B768
BL              sub_26CCDC
NOP
NOP
BL              sub_300FD4
STR             R5, [R4]
ADD             SP, SP, #0x1C
VPOP            {D8}
POP             {R4-R9,PC}
LDR             R2, [R4,#4]
ADD             R0, R4, #4
STR             R1, [R2,#4]
STR             R2, [R1]
STR             R0, [R4,#4]
STR             R0, [R4,#8]
B               loc_27B6F8
LDR             R2, [R4,#4]
ADD             R0, R4, #4
STR             R1, [R2,#4]
STR             R2, [R1]
STR             R0, [R4,#4]
STR             R0, [R4,#8]
B               loc_27B73C
