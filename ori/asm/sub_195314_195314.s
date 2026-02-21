PUSH            {R4-R11,LR}
MOV             R4, R0
MOV             R6, R1
SUB             SP, SP, #0xC
MOV             R11, R2
LDR             R0, [R0,#0x7FC]
MOV             R7, R3
CMP             R0, #0
LDRNE           R1, [R0,#4]
CMPNE           R1, #0
BEQ             loc_195598
MOV             R1, #0x850
LDRH            R1, [R1,R4]
TST             R1, #8
BEQ             loc_195598
ADD             R5, R4, #0x800
TST             R1, #4
ADD             R5, R5, #0x28 ; '('
BEQ             loc_1953AC
LDR             R1, [R4,#0x828]
VLDR            S1, =0.0039062
ADD             R0, R0, #0x10
LDR             R1, [R1,#0x7FC]
LDRSH           R1, [R1,#0x14]
VMOV            S0, R1
VCVT.F32.S32    S0, S0
VMUL.F32        S0, S0, S1
VLDR            S1, =256.0
VMUL.F32        S0, S0, S1
VCVT.S32.F32    S0, S0
VMOV            R1, S0
SXTH            R1, R1
BL              sub_123CE8
LDR             R0, [R5]
LDR             R0, [R0,#0x4EC]
MOV             R0, R0,LSL#7
MOV             R0, R0,ASR#27
B               loc_1953BC
LDR             R0, [R4,#0x4EC]
MOV             R6, #0
MOV             R0, R0,LSL#7
MOV             R0, R0,ASR#27
ADD             R8, R4, #0x400
LDRH            R1, [R8,#0x68]
CMP             R1, #5
BCS             loc_1953E8
ADD             SP, SP, #0xC
MOV             R3, R7
MOV             R2, R11
MOV             R1, R6
MOV             R0, R4
POP             {R4-R11,LR}
B               sub_1757A4
LDR             R1, [R4,#0x800]
LDR             R2, =unk_6731D8
LDR             R1, [R1,#0x38]
LDRB            R1, [R1,#0x1C]
AND             R1, R1, #7
LDRB            R6, [R2,R1]
LDR             R1, [R4,#0x7FC]
CMP             R6, #0
LDRB            R9, [R1,#0x6C]
MOVEQ           R2, R9
BEQ             loc_19544C
LDR             R2, [R4,#0x464]
CMP             R6, #0x10
AND             R2, R2, #0xF
BEQ             loc_19544C
CMP             R6, #8
LDREQ           R3, =unk_67DE00
BEQ             loc_1954B4
CMP             R6, #4
LDREQ           R3, =unk_67DDF0
BEQ             loc_1954B4
CMP             R6, #2
LDREQ           R3, =unk_67DDE0
LDRBEQ          R2, [R3,R2]
MOVNE           R2, #0
LDRSH           R10, [R1,#0x16]
MOV             R1, #0xFFFFFFFF
STR             R1, [SP,#0x30+var_2C]
STR             R6, [SP,#0x30+var_30]
LDR             R1, [R4]
MOV             R5, #0
SXTB            R3, R0
MOV             R7, R5
LDR             R12, [R1,#0x334]
MOV             R1, R5
MOV             R0, R4
BLX             R12
LDRH            R1, [R8,#0x68]
SUB             R2, R1, #8
CMP             R2, #8; switch 8 cases
MOV             R1, R0
LDRCC           PC, [PC,R2,LSL#2]; switch jump
B               def_19548C; jumptable 0019548C default case
DCD loc_1954BC; jump table for switch statement
LDRB            R2, [R3,R2]
B               loc_19544C
LDR             R0, [R4,#0x828]; jumptable 0019548C case 0
ADD             R0, R0, #0x400
LDRH            R2, [R0,#0x6A]
LDRH            R0, [R0,#0x68]
CMP             R0, R2
LDR             R0, [R4,#0x7FC]
MOVNE           R7, #1
LDRH            R0, [R0,#0x1A]
AND             R0, R0, #2
MOV             R5, R0,LSR#1
CMP             R7, #0; jumptable 0019548C default case
BNE             loc_19554C
B               loc_195544
LDR             R0, [R4,#0x7FC]; jumptable 0019548C case 1
ADD             R1, R1, R6
LDRH            R0, [R0,#0x1A]
AND             R0, R0, #2
MOV             R5, R0,LSR#1
B               loc_195544
LDR             R0, [R4,#0x7FC]; jumptable 0019548C cases 2-4
ADD             R1, R1, R6,LSL#1
LDRH            R0, [R0,#0x1A]
AND             R0, R0, #2
MOV             R5, R0,LSR#1
B               loc_195544
LDR             R0, [R4,#0x7FC]; jumptable 0019548C cases 5,6
ADD             R2, R6, R6,LSL#1
ADD             R1, R1, R2
LDRH            R0, [R0,#0x1A]
AND             R0, R0, #2
MOV             R5, R0,LSR#1
B               loc_195544
MOV             R5, #1; jumptable 0019548C case 7
ADD             R1, R0, R6,LSL#1
CMP             R9, R1
BEQ             loc_195578
STR             R11, [SP,#0x30+var_30]
LDR             R0, [R4]
SXTH            R3, R10
LDR             R2, [SP,#0x30+var_2C]
VLDR            S0, [R8,#0x70]
LDR             R12, [R0,#0x350]
MOV             R0, R4
BLX             R12
LDR             R0, [R4,#0x7FC]
ADD             R0, R0, #0x10
BL              sub_4857C8
LDR             R1, [R4,#0x7FC]
CMP             R5, #0
MOVNE           R0, #1
MOVEQ           R0, #0
LDRH            R2, [R1,#0x1A]
BIC             R2, R2, #2
ORR             R0, R2, R0,LSL#1
STRH            R0, [R1,#0x1A]
ADD             SP, SP, #0xC
POP             {R4-R11,PC}
