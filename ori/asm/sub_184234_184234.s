PUSH            {R0-R12,LR}
MOV             R5, R0
MOV             R8, R3
MOV             R9, R2
LDR             R7, [R3,#8]
CMN             R7, #1
BNE             loc_18425C
LDR             R0, [R9,#0x70]
MOV             R0, R0,LSL#25
MOV             R7, R0,LSR#29
CMP             R7, #4
LDREQ           R0, [R9,#0x80]
MOVNE           R1, #0xFFFFFFFF
MOV             R4, #0
LDRBEQ          R1, [R0,#0xDC]
LDR             R0, [R5,#4]
ADD             R0, R0, #0x14000
SXTB            R10, R1
LDRB            R6, [R0,#0x28D]
CMP             R6, #0
MOVGT           R11, #0
BLE             loc_184370
LDR             R0, [R5,#4]
ADD             R0, R0, R4,LSL#2
ADD             R0, R0, #0x14000
LDR             R1, [R0,#0x184]
ADD             R0, R1, #0x14
LDR             R2, [R1,#0x84]
TST             R2, #2
BEQ             loc_184364
MOV             R3, R2,LSL#19
CMP             R7, R3,LSR#29
BEQ             loc_1842CC
CMP             R7, #4
BNE             loc_184364
LDRSB           R3, [R0,#0x79]
CMP             R3, R10
BNE             loc_184364
LDRH            R3, [R8]
CMP             R3, #0x45 ; 'E'
BEQ             loc_1842F4
CMP             R3, #0x47 ; 'G'
BEQ             loc_184310
CMP             R3, #0x49 ; 'I'
BEQ             loc_184330
CMP             R3, #0x4B ; 'K'
BNE             loc_184364
B               loc_18434C
LDR             R0, [SP,#0x38+var_34]
MOV             R2, R8
MOV             R1, R9
BL              sub_29D1B0
ADD             SP, SP, #0x10
MOV             R0, #3
POP             {R4-R12,PC}
BIC             R2, R2, #2
STR             R2, [R0,#0x70]!
STR             R11, [R0,#0xC]
LDR             R0, [R1]
LDR             R2, [R0,#0x24]
MOV             R0, R1
BLX             R2
B               loc_184364
ORR             R2, R2, #4
STR             R2, [R0,#0x70]
LDR             R0, [R1]
LDR             R2, [R0,#0x28]
MOV             R0, R1
BLX             R2
B               loc_184364
BIC             R2, R2, #4
STR             R2, [R0,#0x70]
LDR             R0, [R1]
LDR             R2, [R0,#0x2C]
MOV             R0, R1
BLX             R2
ADD             R4, R4, #1
CMP             R4, R6
BLT             loc_18428C
ADD             SP, SP, #0x10
MOV             R0, #0
POP             {R4-R12,PC}
