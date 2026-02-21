MOV             R12, R0
MOV             R0, R1
PUSH            {R4}
RSB             R4, R2, #0
SUB             R1, R12, R0
CMP             R1, R4
BGE             loc_11979C
ADD             R1, R1, R2
MUL             R1, R1, R3
ADD             R0, R0, R1,ASR#7
SXTH            R0, R0
POP             {R4}
BX              LR
CMP             R1, R2
BLE             loc_119794
SUB             R1, R1, R2
POP             {R4}
MUL             R1, R1, R3
ADD             R0, R0, R1,ASR#7
SXTH            R0, R0
BX              LR
