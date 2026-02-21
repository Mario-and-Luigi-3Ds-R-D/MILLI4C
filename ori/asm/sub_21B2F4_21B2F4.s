PUSH            {R3-R7,LR}
MOV             R4, R0
LDRB            R0, [R0,#0x18]
CMP             R0, #0
BEQ             locret_21B490
LDRB            R0, [R1]
MOV             R6, #0
CMP             R0, #0xFF
BEQ             loc_21B384
LDRB            R2, [R4,#0x1A]
CMP             R0, R2
BNE             loc_21B330
LDRB            R3, [R1,#1]
CMP             R3, #1
BEQ             loc_21B384
CMP             R0, R2
LDRBEQ          R0, [R1,#1]
CMPEQ           R0, #2
MOVNE           R0, #0
BNE             locret_21B490
LDR             R0, [R1,#8]
CMP             R2, #5
MOV             R5, R6
LDR             R0, [R0,#8]
BEQ             loc_21B3CC
CMP             R0, #0
BEQ             loc_21B47C
LDR             R2, [R4,#8]
LDRH            R3, [R0,#0x12]
LDRH            R2, [R2,#0x10]
CMP             R3, R2
BNE             loc_21B454
LDRB            R3, [R0,#0x44]
CMP             R3, #4
BNE             loc_21B46C
B               loc_21B454
LDR             R1, =off_64E794
LDRD            R0, R1, [R1,#(dword_64E79C - 0x64E794)]
STRD            R0, R1, [R4,#0xC]
LDR             R0, [R4,#8]
LDR             R0, [R0,#0x18]
BL              sub_501804
LDR             R0, [R4,#8]
NOP
BL              sub_4E2F30
MOV             R2, #0
STR             R6, [SP,#0x18+var_18]
LDR             R0, [R4,#8]
MOV             R3, #0x100
MOV             R1, R2
BL              sub_4E3CA0
NOP
NOP
B               loc_21B48C
CMP             R0, #0
MOVNE           R2, #3
BEQ             loc_21B47C
LDR             R12, [R1,#8]
LDRH            R3, [R0,#0x12]
LDRH            R12, [R12,#0x14]
CMP             R3, R12
BNE             loc_21B40C
LDR             R7, [R4,#8]
LDRH            R12, [R0,#0x14]
LDRH            R7, [R7,#0x10]
CMP             R12, R7
LDRBEQ          R12, [R0,#0x44]
CMPEQ           R12, #5
STRBEQ          R2, [R0,#0x44]
BEQ             loc_21B444
LDR             R12, [R4,#8]
LDRH            R12, [R12,#0x10]
CMP             R3, R12
BNE             loc_21B428
LDRB            R3, [R0,#0x44]
CMP             R3, #4
BNE             loc_21B440
LDRH            R3, [R0,#0x14]
CMP             R3, R12
BNE             loc_21B444
LDRB            R3, [R0,#0x44]
CMP             R3, #3
BEQ             loc_21B444
STRB            R6, [R0,#0x44]
LDR             R0, [R0,#8]
CMP             R0, R5
BNE             loc_21B3D8
B               loc_21B47C
LDRH            R3, [R0,#0x14]
CMP             R3, R2
BNE             loc_21B470
LDRB            R2, [R0,#0x44]
CMP             R2, #3
BEQ             loc_21B470
STRB            R6, [R0,#0x44]
LDR             R0, [R0,#8]
CMP             R0, R5
BNE             loc_21B360
ADD             R1, R1, #4
MOV             R0, R4
LDM             R1, {R1,R2}
BL              sub_21A4F0
MOV             R0, #1
POP             {R3-R7,PC}
