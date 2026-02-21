LDR             R2, =off_67E244
MOV             R1, #0
STR             R1, [R0,#0x154]
ADD             R3, R0, #0x4C ; 'L'
LDM             R2, {R1,R2}
STM             R3, {R1,R2}
TST             R2, #1
ADD             R0, R0, R2,ASR#1
BEQ             loc_1EE4B4
LDR             R2, [R0]
LDR             R1, [R2,R1]
NOP
BX              R1
