MOV             R2, R0
MOV             R0, R1
LDRB            R2, [R2,#0x1C]
LDR             R1, =unk_6731D8
AND             R2, R2, #7
LDRB            R2, [R1,R2]
CMP             R2, #0x10
BEQ             locret_194828
CMP             R2, #8
LDREQ           R1, =unk_67DE00
LDRBEQ          R0, [R1,R0]
BEQ             locret_194828
CMP             R2, #4
LDREQ           R1, =unk_67DDF0
BEQ             loc_194824
CMP             R2, #2
LDREQ           R1, =unk_67DDE0
MOVNE           R0, #0
BNE             locret_194828
LDRB            R0, [R1,R0]
BX              LR
