LDR             R3, [R0,#0x14]
CMP             R3, #0
BEQ             locret_158724
ADD             R2, R2, R2,LSR#31
MOV             R2, R2,ASR#1
CMP             R2, #2
MOVLT           R2, #2
CMP             R1, #0
ADD             R1, R0, #0x10
LDR             R0, =unk_6EB568
BEQ             loc_15871C
B               sub_51C7F8
NOP
B               sub_51CC4C
BX              LR
