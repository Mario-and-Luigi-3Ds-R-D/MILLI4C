CMP             R0, #0x10000
MOV             R2, R0
MOV             R0, #0xFFFFFFFF
MOVEQ           R0, R1
BEQ             locret_106BC8
CMP             R2, #0x20000
MOVEQ           R0, #0
BEQ             locret_106BC8
CMP             R2, #0x30000
MOVEQ           R0, #1
BX              LR
