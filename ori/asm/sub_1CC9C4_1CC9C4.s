MOV             R1, R0
CMP             R1, #1
LDREQ           R1, =unk_63D02C
LDRNE           R1, =word_63D01C
LDR             R2, =0xFFFF
MOV             R0, #0
LDRH            R3, [R1]
CMP             R3, R2
BEQ             locret_1CC9F8
LDRH            R3, [R1,#2]!
ADD             R0, R0, #1
CMP             R3, R2
BNE             loc_1CC9E8
BX              LR
