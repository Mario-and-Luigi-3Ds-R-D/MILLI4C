LDR             R2, [R0,#0x14]
CMP             R2, #0
BEQ             locret_158788
VLDR            S1, [R0,#0x48]
ADD             R1, R1, R1,LSR#31
VMUL.F32        S0, S1, S0
MOV             R2, R1,ASR#1
CMP             R2, #2
ADD             R1, R0, #0x10
LDR             R0, =unk_6EB568
MOVLT           R2, #2
B               sub_20175C
BX              LR
