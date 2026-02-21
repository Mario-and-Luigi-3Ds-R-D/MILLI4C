LDR             R0, =unk_70C1D0
LDR             R0, [R0,#(dword_70C1E8 - 0x70C1D0)]
CMP             R0, #0
MOVNE           R0, #1
BX              LR
