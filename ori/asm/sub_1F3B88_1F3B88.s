PUSH            {R4,LR}
MOV             R4, R0
LDR             R0, [R0,#0x10C]
CMP             R0, #0
BEQ             loc_1F3BAC
LDR             R0, [R4]
LDR             R1, [R0,#0x50]
MOV             R0, R4
BLX             R1
MOV             R0, R4
POP             {R4,LR}
NOP
MOV             R1, #0
STRB            R1, [R0,#0xB6]
BX              LR
