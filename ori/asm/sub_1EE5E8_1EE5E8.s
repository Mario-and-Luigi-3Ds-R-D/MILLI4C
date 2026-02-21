PUSH            {R4,LR}
MOV             R4, R0
LDR             R0, [R0,#0x10]
LDR             R0, [R0,#0x40]
BL              sub_1DFF00
CMP             R0, #0
BNE             locret_1EE6E0
LDR             R0, [R4,#0x10]
LDR             R0, [R0,#0x40]
ADD             R0, R0, #0x3C ; '<'
BL              sub_1DFF00
CMP             R0, #0
BNE             locret_1EE6E0
LDR             R0, [R4,#0x10]
LDR             R0, [R0,#0x40]
ADD             R0, R0, #0x78 ; 'x'
BL              sub_1DFF00
CMP             R0, #0
BNE             locret_1EE6E0
LDR             R0, [R4,#0x10]
LDR             R0, [R0,#0x40]
ADD             R0, R0, #0xB4
BL              sub_1DFF00
CMP             R0, #0
BNE             locret_1EE6E0
LDR             R0, [R4,#0x10]
LDR             R0, [R0,#0x40]
ADD             R0, R0, #0xF0
BL              sub_1DFF00
CMP             R0, #0
BNE             locret_1EE6E0
LDR             R0, [R4,#0x10]
LDR             R0, [R0,#0x40]
BL              sub_10D33C
LDR             R0, [R4,#0x10]
LDR             R0, [R0,#0x40]
ADD             R0, R0, #0x3C ; '<'
BL              sub_10D33C
LDR             R0, [R4,#0x10]
LDR             R0, [R0,#0x40]
ADD             R0, R0, #0x78 ; 'x'
BL              sub_10D33C
LDR             R0, [R4,#0x10]
LDR             R0, [R0,#0x40]
ADD             R0, R0, #0xB4
BL              sub_10D33C
LDR             R0, [R4,#0x10]
LDR             R0, [R0,#0x40]
ADD             R0, R0, #0xF0
BL              sub_10D33C
LDR             R0, =off_67E18C
LDR             R1, [R0,#(off_67E264 - 0x67E18C)]; sub_1EEED0
LDR             R0, [R0,#(dword_67E268 - 0x67E18C)]
STR             R0, [R4,#0x50]
TST             R0, #1
ADD             R0, R4, R0,ASR#1
STR             R1, [R4,#0x4C]
BEQ             loc_1EE6D8
LDR             R2, [R0]
LDR             R1, [R2,R1]
POP             {R4,LR}
BX              R1
POP             {R4,PC}
