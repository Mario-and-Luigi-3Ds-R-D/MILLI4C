LDR             R1, =off_67E4F0
LDR             R2, [R1,#(off_67E500 - 0x67E4F0)]; sub_195DB8
LDR             R1, [R1,#(dword_67E504 - 0x67E4F0)]
STR             R1, [R0,#0x3C]
STR             R2, [R0,#0x38]
MOV             R2, R0
TST             R1, #1
ADD             R0, R2, R1,ASR#1
LDREQ           R1, [R2,#0x38]
BEQ             loc_195BB0
LDR             R1, [R0]
LDR             R2, [R2,#0x38]
LDR             R1, [R1,R2]
NOP
BX              R1
