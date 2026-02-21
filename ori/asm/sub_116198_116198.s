LDR             R0, =off_6D2428
PUSH            {R4,LR}
LDR             R12, [R0]
CMP             R12, #0
MOVEQ           R0, #0
BEQ             locret_1161F8
MOV             R3, #0x28 ; '('
MOV             R2, #0
MOV             R1, #0x100
MOV             R0, #0x10000
BLX             R12
CMP             R0, #0
BEQ             locret_1161F8
MOV             R1, #0
STR             R1, [R0]
STR             R1, [R0,#4]
STR             R1, [R0,#8]
STR             R1, [R0,#0xC]
STR             R1, [R0,#0x10]
STR             R1, [R0,#0x14]
STR             R1, [R0,#0x18]
STR             R1, [R0,#0x1C]
STR             R1, [R0,#0x20]
STR             R1, [R0,#0x24]
POP             {R4,PC}
