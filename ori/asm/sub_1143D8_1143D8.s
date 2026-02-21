PUSH            {R4-R12,LR}
LDR             R10, =off_6D2420
LDR             R0, [R10]
CMP             R0, #0
BEQ             locret_11450C
LDR             R5, [R0,#4]
LDR             R8, =off_6D242C
MOV             R4, #0
CMP             R5, #0
LDRNE           R7, =off_6D48F8
LDRNE           R11, =0x103
BEQ             loc_1144CC
LDR             R6, [R5,#0x44]
CMP             R5, #0
BEQ             loc_1144C4
LDR             R3, [R10]
LDR             R0, [R3]
CMP             R0, #0
BEQ             loc_11447C
MOV             R1, #0
ADD             R2, R0, R1,LSL#4
LDR             R12, [R2,#0xC]
CMP             R12, R5
BNE             loc_114464
LDR             R12, [R3,#8]
CMP             R12, R0
BNE             loc_114454
LDR             R12, [R7]
LDR             R9, [R12]
ORR             R9, R9, #1
STR             R9, [R12]
STR             R4, [R2,#0xC]
STR             R4, [R2]
STR             R4, [R2,#4]
STR             R4, [R2,#8]
ADD             R1, R1, #1
CMP             R1, #2
BLT             loc_114428
LDR             R0, [R0,#0x24]
CMP             R0, #0
BNE             loc_114424
LDR             R3, [R5]
CMP             R3, #0
BEQ             loc_1144A4
LDR             R12, [R8]
CMP             R12, #0
BEQ             loc_1144C4
ADD             R0, R5, #0x3C ; '<'
MOV             R1, R11
LDM             R0, {R0,R2}
BLX             R12
LDR             R12, [R8]
CMP             R12, #0
BEQ             loc_1144C4
MOV             R3, R5
MOV             R2, #0
MOV             R1, #0x100
MOV             R0, #0x10000
BLX             R12
MOVS            R5, R6
BNE             loc_114408
LDR             R0, [R10]
LDR             R3, [R0]
CMP             R3, #0
BEQ             loc_114508
CMP             R3, #0
LDRNE           R12, [R8]
LDR             R5, [R3,#0x24]
CMPNE           R12, #0
BEQ             loc_114500
MOV             R2, #0
MOV             R1, #0x100
MOV             R0, #0x10000
BLX             R12
MOVS            R3, R5
BNE             loc_1144DC
STR             R4, [R10]
POP             {R4-R12,PC}
