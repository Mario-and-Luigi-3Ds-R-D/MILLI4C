LDR             R1, [R0,#0xF4]
ADD             R2, R0, #0xB0
CMP             R1, R2
BNE             loc_2A1CC4
ADD             R0, R0, #0xB0
B               sub_47C15C
ADD             R2, R0, #0x24 ; '$'
CMP             R1, R2
BNE             locret_2A1CF4
MOV             R2, #2
STRB            R2, [R0,#0x50]
LDR             R2, =off_6CDFD8
MOV             R1, #0
LDR             R2, [R2]
LDR             R2, [R2,#0xB8]
STR             R2, [R0,#0x54]
LDR             R0, [R0,#0x28]
STRB            R1, [R0,#0x1A]
BX              LR
