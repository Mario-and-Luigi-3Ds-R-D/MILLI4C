LDR             R0, [R0,#0xA8]
NOP
LDR             R2, =off_6D1648
LDR             R2, [R2]
LDR             R2, [R2,#0xC4]
LDR             R2, [R2,#4]
LDR             R2, [R2,#4]
CMP             R2, R1
BNE             loc_1F63B0
LDR             R1, [R0,#0x34]
BIC             R1, R1, #4
STR             R1, [R0,#0x34]
BX              LR
LDRSB           R2, [R0,#0x32]
CMP             R2, #0xA
BGE             locret_1F63AC
STR             R1, [R0,R2,LSL#2]
LDRSB           R2, [R0,#0x32]
ADD             R3, R0, #0x28 ; '('
MOV             R1, #0
STRB            R1, [R2,R3]
LDRB            R1, [R0,#0x32]
ADD             R1, R1, #1
STRB            R1, [R0,#0x32]
BX              LR
