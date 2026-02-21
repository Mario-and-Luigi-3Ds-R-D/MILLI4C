NOP
ADD             R1, R0, #0xEC000000
CMP             R1, #0x8000000
MOV             R1, #0
ADDCC           R1, R0, #0xC000000
BCC             loc_122B98
ADD             R2, R0, #0xE1000000
CMP             R2, #0x600000
BCC             loc_122B94
ADD             R2, R0, #0xF0000000
SUBS            R2, R2, #0xF600000
BNE             loc_122B98
ADD             R1, R0, #0xF9000000
MOV             R0, R1
BX              LR
