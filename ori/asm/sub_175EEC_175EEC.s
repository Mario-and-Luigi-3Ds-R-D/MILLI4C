PUSH            {R4,LR}
MOV             R4, R0
BL              sub_580798
ADD             R0, R4, #0x700
LDRH            R1, [R0,#0x5A]
CMP             R1, #0
BEQ             locret_175F30
SUB             R1, R1, #1
MOV             R1, R1,LSL#16
MOVS            R1, R1,LSR#16
STRH            R1, [R0,#0x5A]
BNE             locret_175F30
LDR             R0, [R4]
LDR             R1, [R0,#0x34C]
MOV             R0, R4
POP             {R4,LR}
BX              R1
POP             {R4,PC}
