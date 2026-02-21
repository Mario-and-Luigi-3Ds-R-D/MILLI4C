PUSH            {R4-R10,LR}
MOV             R5, R0
LDR             R0, =off_6CE970
VLDR            S1, =0.0039062
VPUSH           {D8}
SUB             SP, SP, #0x40
LDR             R0, [R0]
ADD             R0, R0, #0x190000
ADD             R0, R0, #0xDE00
LDRSH           R0, [R0,#(loc_19DEE0+2 - 0x19DE00)]
VMOV            S0, R0
LDR             R0, [R5,#0x5C]
CMP             R0, #0
VCVT.F32.S32    S0, S0
VMUL.F32        S16, S0, S1
VMOVNE.F32      S0, S16
NOP
VMOV.F32        S0, S16
LDR             R0, [R5,#0x68]
CMP             R0, #0
BLNE            sub_259D88
LDR             R0, [R5,#0x80]
CMP             R0, #0
VMOVNE.F32      S0, S16
BLNE            sub_257014
VMOV.F32        S0, S16
LDR             R0, [R5,#0x74]
CMP             R0, #0
BLNE            sub_25B11C
ADD             R8, R5, #0x13000
ADD             R8, R8, #0x24C
VMOV.F32        S0, S16
LDR             R0, [R8]
CMP             R0, #0
BEQ             loc_2553D8
LDR             R1, [R0]
LDR             R1, [R1,#0xC]
BLX             R1
ADD             R10, R5, #0x12C00
ADD             R7, R5, #0x12000
ADD             R10, R10, #0x4C ; 'L'
ADD             R7, R7, #0xC50
LDR             R4, [R10]
LDR             R0, [R7]
CMP             R0, R4
BEQ             loc_25541C
LDR             R0, [R4]
VMOV.F32        S0, S16
LDR             R1, [R0]
LDR             R1, [R1,#0xC]
BLX             R1
LDR             R0, [R7]
ADD             R4, R4, #0xC
CMP             R0, R4
BNE             loc_2553F8
ADD             R9, R5, #0x12800
ADD             R6, R5, #0x12000
ADD             R9, R9, #0x1EC
ADD             R6, R6, #0x9F0
LDR             R4, [R9]
LDR             R0, [R6]
CMP             R0, R4
BEQ             loc_255458
VMOV.F32        S0, S16
LDR             R0, [R4]
BL              sub_24A92C
LDR             R0, [R6]
ADD             R4, R4, #0xC
CMP             R0, R4
BNE             loc_25543C
LDR             R0, [R5,#0x68]
CMP             R0, #0
BEQ             loc_255644
BL              sub_5CBBF8
CMP             R0, #0
NOP
BEQ             loc_255644
LDR             R0, [R5,#0x68]
BL              sub_5CBC04
LDM             R0, {R1,R2}
LDR             R0, [R0,#8]
STR             R0, [SP,#0x68+var_40]
ADD             R0, SP, #0x68+var_48
STM             R0, {R1,R2}
LDR             R0, [R5,#0x68]
BL              sub_5CBC10
VMOV.F32        S16, S0
LDR             R0, [R6]
LDR             R4, [R9]
CMP             R0, R4
BEQ             loc_2554CC
VMOV.F32        S0, S16
LDR             R0, [R4]
ADD             R1, SP, #0x68+var_48
BL              sub_24A728
LDR             R0, [R6]
ADD             R4, R4, #0xC
CMP             R0, R4
BNE             loc_2554AC
LDR             R0, [R7]
LDR             R4, [R10]
CMP             R0, R4
ADDNE           R6, SP, #0x68+var_64
BEQ             loc_255594
VMOV.F32        S0, S16
LDR             R0, [R4]
ADD             R1, SP, #0x68+var_48
BL              sub_5CBA40
CMP             R0, #0
NOP
BEQ             loc_255584
LDR             R0, [R4]
ADD             R2, SP, #0x68+var_48
ADD             R1, R0, #4
ADD             R0, SP, #0x68+var_34
BL              sub_251540
LDR             R0, [R4]
LDR             R1, [R0]
LDR             R2, [R1,#8]
ADD             R1, SP, #0x68+var_34
BLX             R2
LDR             R0, [R4]
ADD             R2, SP, #0x68+var_64
MOV             R1, SP
STR             R0, [SP,#0x68+var_68]
ADD             R0, R4, #4
STR             R0, [SP,#0x68+var_64]
LDR             R3, [R4,#8]
STR             R3, [SP,#0x68+var_60]
STR             R2, [R3]
STR             R2, [R4,#8]
LDR             R0, [R5,#0x68]
BL              sub_25A288
LDR             R0, [SP,#0x68+var_60]
CMP             R0, R6
BNE             loc_255578
LDR             R0, [SP,#0x68+var_68]
CMP             R0, #0
BEQ             loc_255578
MOV             R1, R0
ADD             R0, SP, #0x68+var_54
BL              sub_5CBAC4
LDRD            R0, R1, [SP,#0x68+var_64]
STR             R1, [R0,#4]
STR             R0, [R1]
LDR             R0, [R7]
ADD             R4, R4, #0xC
CMP             R0, R4
BNE             loc_2554E0
LDR             R0, =0x1324C
LDR             R0, [R0,R5]
CMP             R0, #0
BEQ             loc_255644
VMOV.F32        S0, S16
ADD             R1, SP, #0x68+var_48
BL              sub_5CBA40
CMP             R0, #0
NOP
BEQ             loc_255644
LDR             R0, [R8]
ADD             R2, SP, #0x68+var_48
ADD             R1, R0, #4
ADD             R0, SP, #0x68+var_3C
BL              sub_251540
LDR             R0, [R8]
LDR             R1, [R0]
LDR             R2, [R1,#8]
ADD             R1, SP, #0x68+var_3C
BLX             R2
LDR             R0, [R8],#4
STR             R8, [SP,#0x68+var_54]
ADD             R1, SP, #0x68+var_58
STR             R0, [SP,#0x68+var_58]
LDR             R2, [R8,#4]
ADD             R0, SP, #0x68+var_54
STR             R2, [SP,#0x68+var_50]
STR             R0, [R2]
STR             R0, [R8,#4]
LDR             R0, [R5,#0x68]
BL              sub_25A288
LDR             R1, [SP,#0x68+var_50]
ADD             R0, SP, #0x68+var_54
CMP             R1, R0
BNE             loc_255638
LDR             R0, [SP,#0x68+var_58]
CMP             R0, #0
BEQ             loc_255638
MOV             R1, R0
MOV             R0, SP
BL              sub_5CBAC4
LDRD            R0, R1, [SP,#0x68+var_54]
STR             R1, [R0,#4]
STR             R0, [R1]
ADD             R7, R5, #0x12800
ADD             R7, R7, #0x1F4
LDR             R5, [R7,#0x25C]
LDR             R6, [R7,#0x258]
MOV             R0, R5
CMP             R6, R0
BEQ             loc_255674
LDR             R1, [R6]
LDRB            R1, [R1,#0x1D]
CMP             R1, #0
ADDEQ           R6, R6, #0xC
BEQ             loc_255658
CMP             R6, R5
ADDNE           R4, R6, #0xC
CMPNE           R4, R5
BEQ             loc_255708
LDR             R0, [R4]
LDRB            R1, [R0,#0x1D]
CMP             R1, #0
BNE             loc_2556FC
LDR             R1, [R6]
CMP             R1, R0
BEQ             loc_2556F8
LDR             R2, [R6,#8]
ADD             R3, R6, #4
CMP             R2, R3
BNE             loc_255798
CMP             R1, #0
ADDNE           R0, SP, #0x68+var_44
BLNE            sub_5CBAC4
LDR             R3, [R4]
ADD             R2, R4, #4
ADD             R0, R6, #4
CMP             R2, R0
STR             R3, [R6]
LDRNE           R3, [R2,#4]
CMPNE           R3, R0
BEQ             loc_2556F8
LDM             R0, {R1,R12}
STR             R12, [R1,#4]
STR             R1, [R12]
STR             R3, [R0,#4]
STR             R0, [R3]
STR             R0, [R2,#4]
STR             R2, [R0]
ADD             R6, R6, #0xC
ADD             R4, R4, #0xC
CMP             R4, R5
BNE             loc_255684
NOP
B               loc_25571C
DCD off_6CE970
DCFS 0.0039062
DCD 0x1324C
LDR             R5, [R7,#0x25C]
CMP             R6, R5
BEQ             loc_25578C
LDR             R1, =0x2AAAAAAB
SUB             R0, R5, R6
SMULL           R1, R0, R1, R0
MOV             R1, R0,ASR#1
SUB             R0, R1, R0,ASR#31
SUB             R0, R0, R0,LSL#2
ADD             R6, R5, R0,LSL#2
CMP             R6, R5
BEQ             loc_255788
SUB             R5, R5, #0xC
ADD             R1, R5, #4
LDR             R0, [R5,#8]
MOV             R4, R5
CMP             R0, R1
BNE             loc_255774
LDR             R1, [R4]
CMP             R1, #0
ADDNE           R0, SP, #0x68+var_54
BLNE            sub_5CBAC4
LDRD            R0, R1, [R4,#4]
CMP             R6, R5
STR             R1, [R0,#4]
STR             R0, [R1]
BNE             loc_25574C
STR             R6, [R7,#0x25C]
ADD             SP, SP, #0x40 ; '@'
VPOP            {D8}
POP             {R4-R10,PC}
LDR             R1, [R6,#4]
ADD             R0, R6, #4
STR             R2, [R1,#4]
STR             R1, [R2]
STR             R0, [R6,#4]
STR             R0, [R6,#8]
B               loc_2556BC
