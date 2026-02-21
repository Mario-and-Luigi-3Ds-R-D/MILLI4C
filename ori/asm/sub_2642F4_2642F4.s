PUSH            {R4-R7,LR}
MOV             R7, R0
LDR             R0, =off_6CE970
VLDR            S1, =0.0039062
VPUSH           {D8}
SUB             SP, SP, #0xC
LDR             R0, [R0]
ADD             R0, R0, #0x190000
ADD             R0, R0, #0xDE00
LDRSH           R0, [R0,#(loc_19DEE0+2 - 0x19DE00)]
LDRD            R4, R5, [R7,#0x90]
VMOV            S0, R0
CMP             R4, R5
VCVT.F32.S32    S0, S0
VMUL.F32        S16, S0, S1
BEQ             loc_264370
LDR             R0, [R4]
LDR             R1, [R0]
VMOV.F32        S0, S16
LDR             R1, [R1,#0x14]
BLX             R1
LDR             R0, [R4]
LDRB            R1, [R0,#0xC]
CMP             R1, #0
BEQ             loc_264364
LDR             R1, [R0]
LDR             R1, [R1,#0xC]
BLX             R1
ADD             R4, R4, #0xC
CMP             R4, R5
BNE             loc_264334
ADD             R0, R7, #0x90
LDM             R0, {R0,R5}
CMP             R0, R5
BEQ             loc_264394
LDR             R1, [R0]
LDRB            R1, [R1,#0xC]
CMP             R1, #0
ADDEQ           R0, R0, #0xC
BEQ             loc_264378
CMP             R0, R5
MOV             R6, R0
ADDNE           R4, R6, #0xC
CMPNE           R4, R5
BEQ             loc_264434
LDR             R1, [R4]
LDRB            R0, [R1,#0xC]
CMP             R0, #0
BNE             loc_264428
LDR             R0, [R6]
CMP             R0, R1
BEQ             loc_264424
LDR             R1, [R6,#8]
ADD             R3, R6, #4
CMP             R1, R3
BNE             loc_264570
CMP             R0, #0
BEQ             loc_2643E8
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
LDR             R3, [R4]
ADD             R0, R4, #4
ADD             R1, R6, #4
CMP             R0, R1
STR             R3, [R6]
LDRNE           R2, [R0,#4]
CMPNE           R2, R1
BEQ             loc_264424
LDM             R1, {R3,R12}
STR             R12, [R3,#4]
STR             R3, [R12]
STR             R2, [R1,#4]
STR             R1, [R2]
STR             R1, [R0,#4]
STR             R0, [R1]
ADD             R6, R6, #0xC
ADD             R4, R4, #0xC
CMP             R4, R5
BNE             loc_2643A8
LDR             R5, [R7,#0x94]
CMP             R6, R5
BEQ             loc_2644AC
LDR             R1, =0x2AAAAAAB
SUB             R0, R5, R6
SMULL           R1, R0, R1, R0
MOV             R1, R0,ASR#1
SUB             R0, R1, R0,ASR#31
SUB             R0, R0, R0,LSL#2
ADD             R6, R5, R0,LSL#2
CMP             R6, R5
BEQ             loc_2644A8
SUB             R5, R5, #0xC
ADD             R1, R5, #4
LDR             R0, [R5,#8]
MOV             R4, R5
CMP             R0, R1
BNE             loc_264494
LDR             R0, [R4]
CMP             R0, #0
BEQ             loc_264494
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
LDRD            R0, R1, [R4,#4]
CMP             R6, R5
STR             R1, [R0,#4]
STR             R0, [R1]
BNE             loc_264464
STR             R6, [R7,#0x94]
ADD             R0, R7, #0x98
BL              sub_269F5C
LDR             R0, =0x12758
LDR             R0, [R0,R7]
CMP             R0, #0
VMOVNE.F32      S0, S16
NOP
LDR             R0, =0x12768
LDR             R0, [R0,R7]
CMP             R0, #0
VMOVNE.F32      S0, S16
BLNE            sub_25F20C
LDR             R2, [R7,#0xC]
ADD             R0, R7, #0xC
CMP             R2, #0
BEQ             loc_264560
ADD             R0, R0, #4
STR             R0, [SP,#0x28+var_24]
STR             R2, [SP,#0x28+var_28]
LDR             R2, [R0,#4]
ADD             R1, SP, #0x28+var_24
STR             R2, [SP,#0x28+var_20]
STR             R1, [R2]
STR             R1, [R0,#4]
LDR             R0, [SP,#0x28+var_28]
LDR             R1, [R0]
LDR             R1, [R1,#0xC]
BLX             R1
LDR             R1, [SP,#0x28+var_20]
ADD             R0, SP, #0x28+var_24
CMP             R1, R0
BNE             loc_264544
LDR             R0, [SP,#0x28+var_28]
CMP             R0, #0
BEQ             loc_264544
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
LDRD            R0, R1, [SP,#0x28+var_24]
STR             R1, [R0,#4]
STR             R0, [R1]
LDR             R0, [R7,#0xC]
CMP             R0, #0
MOVNE           R0, #1
BNE             loc_264564
MOV             R0, #0
ADD             SP, SP, #0xC
VPOP            {D8}
POP             {R4-R7,PC}
LDR             R2, [R3]
STR             R1, [R2,#4]
STR             R2, [R1]
STR             R3, [R3]
STR             R3, [R3,#4]
B               loc_2643E8
