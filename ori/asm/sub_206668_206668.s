PUSH            {R4-R8,LR}
MOV             R6, R2
MOV             R8, R0
LDR             R0, [R2,#8]
LDR             R2, =off_6CE970
MOV             R5, R1
AND             R1, R0, #0xFF
LDR             R0, =0xFFE683CC
LDR             R2, [R2]
SUB             R0, R2, R0
BL              sub_503508
MOVS            R4, R0
BEQ             locret_206718
LDR             R0, [R4,#0x14]
CMP             R0, #0
BEQ             loc_206740
LDR             R0, [R4,#0x18]
CMP             R0, #0x64 ; 'd'
BEQ             loc_2066DC
CMP             R0, #0xC8
SUBNE           R0, R0, #0x12C
CMPNE           R0, #2
BHI             loc_206714
BL              sub_112D3C
LDR             R1, [R4,#0x14]
BL              sub_113630
CMP             R0, #0
BEQ             loc_206740
B               loc_206714
LDR             R0, [R4,#0x1C]
LDR             R1, =0x10624DD3
SMULL           R1, R0, R1, R0
MOV             R1, R0,ASR#6
SUB             R0, R1, R0,ASR#31
ORR             R7, R0, #0x1000000
BL              sub_112D3C
MOV             R2, #1
MOV             R1, R7
MOV             R0, #0x64 ; 'd'
BL              sub_11DAF4
CMP             R0, #0
NOP
BEQ             loc_20671C
MOV             R0, #0
POP             {R4-R8,PC}
NOP
BL              sub_112D3C
LDR             R1, [R4,#0x1C]
MOV             R2, #0
MOV             R0, #0x64 ; 'd'
BL              sub_11DAF4
NOP
NOP
B               loc_2066D0
CMP             R5, #0
ADDNE           R1, R5, #4
MOVEQ           R1, #0
MOV             R2, R6
MOV             R0, R8
BL              sub_29D1B0
MOV             R0, #3
POP             {R4-R8,PC}
