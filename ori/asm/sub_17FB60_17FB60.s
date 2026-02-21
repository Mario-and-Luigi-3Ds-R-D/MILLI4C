PUSH            {R4-R8,LR}
SUB             SP, SP, #0x10
MOV             R8, R2
LDR             R4, [SP,#0x28+arg_4]
LDR             R5, [SP,#0x28+arg_0]
MOV             R7, #0
MOV             R2, #1
STR             R4, [SP,#0x28+var_20]
STMEA           SP, {R2,R7}
MOV             R6, R3
LDRB            R2, [R5,#0xDE]
LDR             R3, [R0]
MOV             R2, R2,LSL#30
LDR             R12, [R3,#0x58]
MOV             R2, R2,LSR#31
MOV             R3, R8
BLX             R12
CMP             R0, #0
BEQ             loc_17FCC4
LDRB            R0, [R6,#0xDC]
STRB            R0, [R4,#0x74]
LDRB            R0, [R5,#0xDC]
STRB            R0, [R4,#0x75]
LDR             R0, [R6,#0x658]
TST             R0, #0x100
BNE             loc_17FC10
TST             R0, #0x40
MOVNE           R0, #8
STRBNE          R0, [R4,#0x76]
BNE             loc_17FC14
TST             R0, #0x80
MOVNE           R0, #0xC
BEQ             loc_17FBEC
STRB            R0, [R4,#0x76]
B               loc_17FC14
TST             R0, #0x200
MOVNE           R0, #4
BNE             loc_17FBE4
TST             R0, #0x400
MOVNE           R0, #0x11
BNE             loc_17FBE4
TST             R0, #0x800
MOVNE           R0, #0x10
BNE             loc_17FBE4
STRB            R7, [R4,#0x76]
LDR             R2, =0x46C
LDR             R1, [R4,#0x70]
MOV             R0, #0x7FFFFFF
LDRH            R2, [R2,R6]
BIC             R1, R1, #0x4000000
BIC             R1, R1, #0x3F80000
AND             R0, R0, R2,LSL#19
ORR             R0, R0, R1
STR             R0, [R4,#0x70]
LDR             R0, [R5,#0x84]
TST             R0, #2
BEQ             loc_17FC60
LDR             R0, [R5]
LDR             R1, [R0,#0x28]
MOV             R0, R5
BLX             R1
LDR             R0, [R5,#0x84]
ORR             R0, R0, #8
STR             R0, [R5,#0x84]
LDR             R0, =0x6A8
LDRH            R0, [R0,R5]
TST             R0, #2
BEQ             loc_17FC80
LDR             R0, [R5]
LDR             R1, [R0,#0x250]
MOV             R0, R5
BLX             R1
LDR             R1, [R5,#0x4EC]
ADD             R0, R5, #0x400
ADD             R0, R0, #0xEC
TST             R1, #0x100
BEQ             loc_17FCC0
LDR             R2, [R5,#0x464]
MOV             R3, #0xF0000
BIC             R1, R1, #0xF0000
AND             R2, R3, R2,LSL#16
ORR             R1, R1, R2
STR             R1, [R0]
LDR             R0, [R5]
MOV             R1, R6
LDR             R2, [R0,#0x1DC]
MOV             R0, R5
BLX             R2
MOV             R0, #1
ADD             SP, SP, #0x10
POP             {R4-R8,PC}
