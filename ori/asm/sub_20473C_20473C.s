MOV             R1, #0
ADD             R2, R0, R1,LSL#3
LDR             R2, [R2,#0x2B4]
CMP             R2, #0
BEQ             loc_20475C
LDRH            R3, [R2,#0xE]
BIC             R3, R3, #2
STRH            R3, [R2,#0xE]
ADD             R1, R1, #1
CMP             R1, #0x100
BLT             loc_204740
MOV             R0, #0
BX              LR
