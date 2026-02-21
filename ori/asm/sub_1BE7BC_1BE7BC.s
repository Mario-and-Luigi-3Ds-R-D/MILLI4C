LDR             R0, [R0,#8]
LDRSH           R0, [R0]
CMP             R0, #0x13
BEQ             loc_1BE80C
BGT             loc_1BE800
CMP             R0, #3
BEQ             loc_1BE80C
BGT             loc_1BE7F0
CMP             R0, #0
CMPNE           R0, #1
CMPNE           R0, #2
BEQ             loc_1BE80C
B               loc_1BE814
CMP             R0, #0x11
CMPNE           R0, #0x12
BEQ             loc_1BE80C
B               loc_1BE814
SUB             R0, R0, #0x17
CMP             R0, #4
BHI             loc_1BE814
MOV             R0, #1
BX              LR
MOV             R0, #0
BX              LR
