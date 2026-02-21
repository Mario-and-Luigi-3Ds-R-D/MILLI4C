CMP             R1, R0
BNE             loc_1CF9E4
LDR             R1, [R0,#0x20]
CMP             R1, #0
LDREQ           R1, [R0,#0xE4]
CMPEQ           R1, #0
STRNE           R2, [R0,#0xEC]
BX              LR
ADD             R3, R0, #0xE8
STM             R3, {R1,R2}
MOV             R2, R0
ADD             R0, R1, #0xD8
ADD             R1, R2, #0x14
NOP
