PUSH            {R4-R12,LR}
MOV             R8, R0
ADD             R5, R8, #0x12400
ADD             R5, R5, #0x2FC
LDR             R0, =off_6CE970
VLDR            S1, =0.0039062
VPUSH           {D8}
LDR             R0, [R0]
LDR             R1, [R5]
ADD             R0, R0, #0x190000
ADD             R0, R0, #0xDE00
LDRSH           R0, [R0,#(loc_19DEE0+2 - 0x19DE00)]
VMOV            S0, R0
LDR             R0, =0x126F8
LDR             R4, [R0,R8]
VCVT.F32.S32    S0, S0
CMP             R1, R4
VMUL.F32        S16, S0, S1
BEQ             loc_1FB568
LDR             R0, [R4]
VMOV.F32        S0, S16
BL              sub_1FCB30
LDR             R0, [R5]
ADD             R4, R4, #0xC
CMP             R0, R4
BNE             loc_1FB54C
LDR             R0, =0x126D8
LDR             R0, [R0,R8]
CMP             R0, #0
VMOVNE.F32      S0, S16
BLNE            sub_1FF1B4
LDR             R0, =0x126DC
LDR             R0, [R0,R8]
CMP             R0, #0
VMOVNE.F32      S0, S16
BLNE            sub_1FF1B4
LDR             R0, =0x12704
LDR             R0, [R0,R8]
CMP             R0, #0
VMOVNE.F32      S0, S16
NOP
VMOV.F32        S0, S16
ADD             R0, R8, #0x12000
ADD             R0, R0, #0x6D0
NOP
LDR             R0, =0x12714
ADD             R5, R8, #0x12400
ADD             R5, R5, #0x318
LDR             R1, [R5]
LDR             R4, [R0,R8]
CMP             R1, R4
BEQ             loc_1FB5F4
LDR             R0, [R4]
VMOV.F32        S0, S16
LDR             R1, [R0]
LDR             R1, [R1,#8]
BLX             R1
LDR             R0, [R5]
ADD             R4, R4, #0xC
CMP             R0, R4
BNE             loc_1FB5D0
ADD             R10, R8, #0x12400
ADD             R10, R10, #0x308
LDR             R5, [R10,#0x10]
LDR             R6, [R10,#0xC]
CMP             R6, R5
BEQ             loc_1FB628
LDR             R0, [R6]
LDR             R1, [R0]
LDR             R1, [R1,#0xC]
BLX             R1
CMP             R0, #0
ADDEQ           R6, R6, #0xC
BEQ             loc_1FB604
LDR             R11, =off_6CDC90
CMP             R6, R5
BEQ             loc_1FB708
ADD             R4, R6, #0xC
CMP             R4, R5
MOV             R7, R6
BEQ             loc_1FB704
LDR             R0, [R4]
LDR             R1, [R0]
LDR             R1, [R1,#0xC]
BLX             R1
CMP             R0, #0
BNE             loc_1FB6F8
LDR             R9, [R7]
LDR             R0, [R4]
CMP             R9, R0
BEQ             loc_1FB6F4
LDR             R1, [R7,#8]
ADD             R2, R7, #4
CMP             R1, R2
BNE             loc_1FB828
CMP             R9, #0
BEQ             loc_1FB6B8
LDR             R0, [R11]
ADD             R6, R0, #0x12400
LDR             R0, [R9]
ADD             R6, R6, #0x378
LDR             R1, [R0]
MOV             R0, R9
BLX             R1
LDR             R0, [R6,#4]
STR             R0, [R9]
STR             R9, [R6,#4]
LDR             R0, [R6,#8]
ADD             R0, R0, #1
STR             R0, [R6,#8]
LDR             R3, [R4]
ADD             R1, R4, #4
ADD             R0, R7, #4
CMP             R1, R0
STR             R3, [R7]
LDRNE           R2, [R1,#4]
CMPNE           R2, R0
BEQ             loc_1FB6F4
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
BNE             loc_1FB644
MOV             R6, R7
LDR             R5, [R10,#0x10]
CMP             R6, R5
BEQ             loc_1FB7A8
LDR             R0, =0x2AAAAAAB
SUB             R1, R5, R6
SMULL           R1, R0, R0, R1
MOV             R1, R0,ASR#1
SUB             R0, R1, R0,ASR#31
SUB             R0, R0, R0,LSL#2
ADD             R7, R5, R0,LSL#2
CMP             R7, R5
BEQ             loc_1FB7A4
SUB             R5, R5, #0xC
ADD             R1, R5, #4
LDR             R0, [R5,#8]
MOV             R4, R5
CMP             R0, R1
BNE             loc_1FB790
LDR             R9, [R4]
CMP             R9, #0
BEQ             loc_1FB790
LDR             R0, [R11]
ADD             R6, R0, #0x12400
LDR             R0, [R9]
ADD             R6, R6, #0x378
LDR             R1, [R0]
MOV             R0, R9
BLX             R1
LDR             R0, [R6,#4]
STR             R0, [R9]
STR             R9, [R6,#4]
LDR             R0, [R6,#8]
ADD             R0, R0, #1
STR             R0, [R6,#8]
LDRD            R0, R1, [R4,#4]
CMP             R7, R5
STR             R1, [R0,#4]
STR             R0, [R1]
BNE             loc_1FB738
STR             R7, [R10,#0x10]
ADD             R8, R8, #0x12000
ADD             R8, R8, #0x6E0
LDR             R5, [R8,#0x1C]
LDR             R6, [R8,#0x18]
CMP             R6, R5
BEQ             loc_1FB7D4
LDR             R0, [R6]
BL              sub_5C8A1C
CMP             R0, #0
ADDEQ           R6, R6, #0xC
BEQ             loc_1FB7B8
CMP             R6, R5
BEQ             loc_1FB8CC
ADD             R4, R6, #0xC
CMP             R4, R5
MOV             R7, R6
BEQ             loc_1FB8C8
LDR             R0, [R4]
BL              sub_5C8A1C
CMP             R0, #0
NOP
BEQ             loc_1FB844
B               loc_1FB8BC
DCFS 0.0039062
DCD off_6CE970
DCD 0x126F8
DCD 0x126D8
DCD 0x126DC
DCD 0x12704
DCD 0x12714
DCD off_6CDC90
DCD 0x2AAAAAAB
LDR             R2, [R7,#4]
ADD             R0, R7, #4
STR             R1, [R2,#4]
STR             R2, [R1]
STR             R0, [R7,#4]
STR             R0, [R7,#8]
B               loc_1FB6B8
LDR             R0, [R7]
LDR             R1, [R4]
CMP             R0, R1
BEQ             loc_1FB8B8
LDR             R1, [R7,#8]
ADD             R2, R7, #4
CMP             R1, R2
BNE             loc_1FB950
CMP             R0, #0
BEQ             loc_1FB87C
BL              sub_1FD044
NOP
NOP
BL              sub_300FD4
LDR             R2, [R4]
ADD             R0, R4, #4
ADD             R1, R7, #4
CMP             R0, R1
STR             R2, [R7]
LDRNE           R12, [R0,#4]
CMPNE           R12, R1
BEQ             loc_1FB8B8
LDRD            R2, R3, [R1]
STR             R3, [R2,#4]
STR             R2, [R3]
STR             R12, [R1,#4]
STR             R1, [R12]
STR             R1, [R0,#4]
STR             R0, [R1]
ADD             R7, R7, #0xC
ADD             R4, R4, #0xC
CMP             R4, R5
BNE             loc_1FB7EC
MOV             R6, R7
LDR             R5, [R8,#0x1C]
CMP             R6, R5
BEQ             loc_1FB948
LDR             R0, =0x2AAAAAAB
SUB             R1, R5, R6
SMULL           R1, R0, R0, R1
MOV             R1, R0,ASR#1
SUB             R0, R1, R0,ASR#31
SUB             R0, R0, R0,LSL#2
ADD             R6, R5, R0,LSL#2
CMP             R6, R5
BEQ             loc_1FB944
SUB             R5, R5, #0xC
ADD             R1, R5, #4
LDR             R0, [R5,#8]
MOV             R4, R5
CMP             R0, R1
BNE             loc_1FB930
LDR             R0, [R4]
CMP             R0, #0
BEQ             loc_1FB930
BL              sub_1FD044
NOP
NOP
BL              sub_300FD4
LDRD            R0, R1, [R4,#4]
CMP             R6, R5
STR             R1, [R0,#4]
STR             R0, [R1]
BNE             loc_1FB8FC
STR             R6, [R8,#0x1C]
VPOP            {D8}
POP             {R4-R12,PC}
MOV             R0, R2
LDR             R2, [R2]
STR             R1, [R2,#4]
STR             R2, [R1]
STR             R0, [R0]
STR             R0, [R0,#4]
B               loc_1FB87C
