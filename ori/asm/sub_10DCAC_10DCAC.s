LDREX           R1, [R0]
CMP             R1, #0
BLE             loc_10DCD0
RSB             R1, R1, #0
STREX           R2, R1, [R0]
CMP             R2, #0
BNE             sub_10DCAC
MOV             R0, #1
BX              LR
CLREX
MOV             R0, #0
BX              LR
