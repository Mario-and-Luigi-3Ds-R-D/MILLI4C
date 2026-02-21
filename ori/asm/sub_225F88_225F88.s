PUSH            {R4-R11,LR}
MOV             R7, R0
LDR             R0, =off_6CE970
VLDR            S1, =0.0039062
VPUSH           {D8}
SUB             SP, SP, #0xC
LDR             R0, [R0]
ADD             R0, R0, #0x190000
ADD             R0, R0, #0xDE00
LDRSH           R0, [R0,#(loc_19DEE0+2 - 0x19DE00)]
VMOV            S0, R0
LDR             R0, =0x126F8
LDR             R0, [R0,R7]
VCVT.F32.S32    S0, S0
CMP             R0, #0
VMUL.F32        S16, S0, S1
VMOV.F32        S0, S16
BLNE            sub_22A298
ADD             R9, R7, #0x12400
ADD             R9, R9, #0x2FC
VMOV.F32        S0, S16
LDR             R0, [R9]
CMP             R0, #0
BLNE            sub_22C4FC
LDR             R0, =0x126E8
VMOV.F32        S0, S16
LDR             R0, [R0,R7]
CMP             R0, #0
BLNE            sub_2282BC
LDR             R0, =0x126EC
VMOV.F32        S0, S16
LDR             R0, [R0,R7]
CMP             R0, #0
BLNE            sub_225834
LDR             R0, =0x126F0
VMOV.F32        S0, S16
LDR             R0, [R0,R7]
CMP             R0, #0
BLNE            sub_225834
LDR             R0, =0x12700
VMOV.F32        S0, S16
LDR             R0, [R0,R7]
CMP             R0, #0
NOP
LDR             R0, =0x12704
VMOV.F32        S0, S16
LDR             R0, [R0,R7]
CMP             R0, #0
BLNE            sub_222D90
ADD             R0, R7, #0x12400
ADD             R11, R7, #0x12400
ADD             R0, R0, #0x3FC
ADD             R11, R11, #0x3F8
STR             R0, [SP,#0x38+var_38]
LDR             R4, [R11]
LDR             R5, [R0]
CMP             R4, R5
BEQ             loc_226090
LDR             R0, [R4]
VMOV.F32        S0, S16
LDR             R1, [R0]
LDR             R1, [R1,#0x10]
BLX             R1
ADD             R4, R4, #0xC
CMP             R4, R5
BNE             loc_226070
ADD             R10, R7, #0x12400
ADD             R10, R10, #0x308
LDR             R5, [R10,#0xF4]
LDR             R6, [R10,#0xF0]
CMP             R6, R5
BEQ             loc_2260C4
LDR             R0, [R6]
LDR             R1, [R0]
LDR             R1, [R1,#0xC]
BLX             R1
CMP             R0, #0
ADDEQ           R6, R6, #0xC
BEQ             loc_2260A0
CMP             R6, R5
BEQ             loc_226170
ADD             R4, R6, #0xC
CMP             R4, R5
MOV             R8, R6
BEQ             loc_22616C
LDR             R0, [R4]
LDR             R1, [R0]
LDR             R1, [R1,#0xC]
BLX             R1
CMP             R0, #0
BNE             loc_226160
LDR             R1, [R8]
LDR             R0, [R4]
CMP             R1, R0
BEQ             loc_22615C
LDR             R2, [R8,#8]
ADD             R3, R8, #4
CMP             R2, R3
BNE             loc_22629C
CMP             R1, #0
ADDNE           R0, SP, #0x38+var_34
BLNE            sub_5C960C
LDR             R3, [R4]
ADD             R1, R4, #4
ADD             R0, R8, #4
CMP             R1, R0
STR             R3, [R8]
LDRNE           R2, [R1,#4]
CMPNE           R2, R0
BEQ             loc_22615C
LDM             R0, {R3,R12}
STR             R12, [R3,#4]
STR             R3, [R12]
STR             R2, [R0,#4]
STR             R0, [R2]
STR             R0, [R1,#4]
STR             R1, [R0]
ADD             R8, R8, #0xC
ADD             R4, R4, #0xC
CMP             R4, R5
BNE             loc_2260DC
MOV             R6, R8
LDR             R5, [R10,#0xF4]
CMP             R6, R5
BEQ             loc_2261E0
LDR             R0, =0x2AAAAAAB
SUB             R1, R5, R6
SMULL           R1, R0, R0, R1
MOV             R1, R0,ASR#1
SUB             R0, R1, R0,ASR#31
SUB             R0, R0, R0,LSL#2
ADD             R6, R5, R0,LSL#2
CMP             R6, R5
BEQ             loc_2261DC
SUB             R5, R5, #0xC
ADD             R1, R5, #4
LDR             R0, [R5,#8]
MOV             R4, R5
CMP             R0, R1
BNE             loc_2261C8
LDR             R1, [R4]
CMP             R1, #0
ADDNE           R0, SP, #0x38+var_34
BLNE            sub_5C960C
LDRD            R0, R1, [R4,#4]
CMP             R6, R5
STR             R1, [R0,#4]
STR             R0, [R1]
BNE             loc_2261A0
STR             R6, [R10,#0xF4]
LDR             R1, =0x128F0
ORR             R0, R1, R1,ASR#9
LDR             R4, [R1,R7]
LDR             R5, [R0,R7]
CMP             R4, R5
BEQ             loc_226218
LDR             R0, [R4]
VMOV.F32        S0, S16
LDR             R1, [R0]
LDR             R1, [R1,#0x14]
BLX             R1
ADD             R4, R4, #0xC
CMP             R4, R5
BNE             loc_2261F8
ADD             R0, R7, #0x12800
LDR             R6, [R0,#0xF0]!
LDR             R5, [R0,#4]
CMP             R6, R5
BEQ             loc_226248
LDR             R0, [R6]
LDR             R1, [R0]
LDR             R1, [R1,#0x10]
BLX             R1
CMP             R0, #0
ADDEQ           R6, R6, #0xC
BEQ             loc_226224
CMP             R6, R5
ADDNE           R4, R6, #0xC
CMPNE           R4, R5
BEQ             loc_22632C
LDR             R0, [R4]
LDR             R1, [R0]
LDR             R1, [R1,#0x10]
BLX             R1
CMP             R0, #0
BEQ             loc_2262B4
B               loc_226320
DCFS 0.0039062
DCD off_6CE970
DCD 0x126F8
DCD 0x126E8
DCD 0x126EC
DCD 0x126F0
DCD 0x12700
DCD 0x12704
DCD 0x2AAAAAAB
DCD 0x128F0
LDR             R0, [R3]
STR             R2, [R0,#4]
STR             R0, [R2]
STR             R3, [R3]
STR             R3, [R3,#4]
B               loc_226120
LDR             R1, [R6]
LDR             R0, [R4]
CMP             R1, R0
BEQ             loc_22631C
LDR             R2, [R6,#8]
ADD             R3, R6, #4
CMP             R2, R3
BNE             loc_2263E4
CMP             R1, #0
ADDNE           R0, SP, #0x38+var_34
BLNE            sub_5C9440
LDR             R2, [R4]
ADD             R1, R4, #4
ADD             R0, R6, #4
CMP             R1, R0
STR             R2, [R6]
LDRNE           R2, [R1,#4]
CMPNE           R2, R0
BEQ             loc_22631C
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
BNE             loc_226258
ADD             R8, R7, #0x12800
LDR             R5, [R8,#0xF4]
CMP             R6, R5
BEQ             loc_2263A0
LDR             R0, =0x2AAAAAAB
SUB             R1, R5, R6
SMULL           R1, R0, R0, R1
MOV             R1, R0,ASR#1
SUB             R0, R1, R0,ASR#31
SUB             R0, R0, R0,LSL#2
ADD             R6, R5, R0,LSL#2
CMP             R6, R5
BEQ             loc_22639C
SUB             R5, R5, #0xC
ADD             R1, R5, #4
LDR             R0, [R5,#8]
MOV             R4, R5
CMP             R0, R1
BNE             loc_226388
LDR             R1, [R4]
CMP             R1, #0
ADDNE           R0, SP, #0x38+var_34
BLNE            sub_5C9440
LDRD            R0, R1, [R4,#4]
CMP             R6, R5
STR             R1, [R0,#4]
STR             R0, [R1]
BNE             loc_226360
STR             R6, [R8,#0xF4]
LDR             R6, [SP,#0x38+var_38]
LDR             R4, [R11]
LDR             R8, [R9]
LDR             R5, [R6]
CMP             R4, R5
BEQ             loc_22640C
LDR             R0, [R4]
LDR             R1, [R0]
LDR             R2, [R1,#0x14]
MOV             R1, R8
BLX             R2
CMP             R0, #0
BEQ             loc_226400
LDR             R0, [R4]
CMP             R0, #0
BNE             loc_22647C
B               loc_22640C
LDR             R1, [R6,#4]
ADD             R0, R6, #4
STR             R2, [R1,#4]
STR             R1, [R2]
STR             R0, [R6,#4]
STR             R0, [R6,#8]
B               loc_2262E0
ADD             R4, R4, #0xC
CMP             R4, R5
BNE             loc_2263B8
LDR             R4, [R11]
LDR             R5, [R6]
CMP             R4, R5
BEQ             loc_226470
LDR             R0, [R4]
LDRB            R1, [R0,#0x1C]
CMP             R1, #0
BNE             loc_226464
LDR             R1, [R0]
LDR             R1, [R1,#0x18]
BLX             R1
MOV             R1, R0
LDR             R0, [R9]
VLDR            S0, [R1,#8]
VLDR            S1, [R0,#0x2C]
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BLE             loc_226464
LDR             R0, [R4]
LDRB            R0, [R0,#0x1D]
CMP             R0, #0
BEQ             loc_22647C
ADD             R4, R4, #0xC
CMP             R4, R5
BNE             loc_22641C
ADD             SP, SP, #0xC
VPOP            {D8}
POP             {R4-R11,PC}
ADD             SP, SP, #0xC
MOV             R0, R7
VPOP            {D8}
POP             {R4-R11,LR}
NOP
