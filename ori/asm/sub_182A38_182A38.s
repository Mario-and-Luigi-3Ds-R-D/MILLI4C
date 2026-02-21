PUSH            {R4-R8,LR}
MOV             R4, R0
LDR             R0, [R0,#4]
LDR             R1, [R0]
LDR             R1, [R1,#0x3C]
BLX             R1
CMP             R0, #0
BEQ             locret_182BD4
LDR             R0, =off_6D1648
LDR             R1, [R0]
LDR             R0, [R4,#4]
LDR             R1, [R1,#0xC4]
ADD             R0, R0, #0x10000
ADD             R0, R0, #0x3D00
LDR             R5, [R1,#4]
LDRH            R0, [R0,#4]
LDRSH           R1, [R5,#0x4C]
CMP             R1, R0
BNE             loc_182BC0
LDR             R0, [R5,#0x14]
TST             R0, #0x400000
LDREQ           R6, [R5,#4]
LDRNE           R6, [R5,#8]
LDR             R0, [R6]
LDR             R1, [R0,#8]
MOV             R0, R6
BLX             R1
CMP             R0, #0
BNE             loc_182ABC
LDR             R0, [R5,#0x14]
TST             R0, #0x10000
LDRNE           R5, [R5,#8]
BNE             loc_182AC0
MOV             R5, #0
LDR             R0, [R4,#0x270]
TST             R0, #1
BEQ             loc_182AD8
TST             R0, #2
MOVEQ           R1, #1
BEQ             loc_182ADC
MOV             R1, #0
LDR             R0, [R4,#0x338]
TST             R0, #1
BEQ             loc_182AF4
TST             R0, #2
MOVEQ           R0, #1
BEQ             loc_182AF8
MOV             R0, #0
ORRS            R7, R1, R0
BEQ             loc_182B44
LDR             R0, [R4]
MOV             R1, R6
LDR             R2, [R0,#0x60]
MOV             R0, R4
BLX             R2
CMP             R0, #0
BEQ             loc_182BC0
CMP             R5, #0
BEQ             loc_182B5C
LDR             R0, [R4]
MOV             R1, R5
LDR             R2, [R0,#0x60]
MOV             R0, R4
BLX             R2
CMP             R0, #0
BEQ             loc_182BC0
B               loc_182B5C
LDR             R0, [R4,#4]
ADD             R0, R0, #0x13C00
ADD             R0, R0, #0x74 ; 't'
LDR             R0, [R0]
CMP             R0, #0
BEQ             loc_182BC0
LDR             R0, [R4]
MOV             R2, R7
MOV             R1, R6
LDR             R3, [R0,#0x64]
MOV             R0, R4
BLX             R3
CMP             R0, #0
BEQ             loc_182BC0
CMP             R0, #1
BEQ             loc_182B8C
CMP             R0, #2
BEQ             locret_182BD4
CMP             R5, #0
BEQ             loc_182BC0
LDR             R0, [R4]
MOV             R2, R7
MOV             R1, R5
LDR             R3, [R0,#0x64]
MOV             R0, R4
BLX             R3
CMP             R0, #0
CMPNE           R0, #1
BEQ             loc_182BC0
CMP             R0, #2
BEQ             locret_182BD4
LDR             R0, [R4]
LDR             R1, [R0,#0x1C]
MOV             R0, R4
POP             {R4-R8,LR}
BX              R1
POP             {R4-R8,PC}
