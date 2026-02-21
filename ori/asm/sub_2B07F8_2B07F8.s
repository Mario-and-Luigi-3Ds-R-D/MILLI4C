PUSH            {R4,LR}
MOV             R4, R0
LDR             R0, [R0,#4]
LDR             R0, [R0,#0x40]
BL              sub_1DFF00
CMP             R0, #0
BNE             loc_2B0874
LDR             R0, [R4,#4]
LDR             R0, [R0,#0x40]
ADD             R0, R0, #0x3C ; '<'
BL              sub_1DFF00
CMP             R0, #0
BNE             loc_2B0874
LDR             R0, [R4,#4]
LDR             R0, [R0,#0x40]
ADD             R0, R0, #0x78 ; 'x'
BL              sub_1DFF00
CMP             R0, #0
BNE             loc_2B0874
LDR             R0, [R4,#4]
LDR             R0, [R0,#0x40]
ADD             R0, R0, #0xB4
BL              sub_1DFF00
CMP             R0, #0
BNE             loc_2B0874
LDR             R0, [R4,#4]
LDR             R0, [R0,#0x40]
ADD             R0, R0, #0xF0
BL              sub_1DFF00
CMP             R0, #0
BEQ             loc_2B087C
MOV             R0, #1
POP             {R4,PC}
LDR             R0, [R4,#4]
LDR             R0, [R0,#0x40]
BL              sub_10D33C
LDR             R0, [R4,#4]
LDR             R0, [R0,#0x40]
ADD             R0, R0, #0x3C ; '<'
BL              sub_10D33C
LDR             R0, [R4,#4]
LDR             R0, [R0,#0x40]
ADD             R0, R0, #0x78 ; 'x'
BL              sub_10D33C
LDR             R0, [R4,#4]
LDR             R0, [R0,#0x40]
ADD             R0, R0, #0xB4
BL              sub_10D33C
LDR             R0, [R4,#4]
LDR             R0, [R0,#0x40]
ADD             R0, R0, #0xF0
BL              sub_10D33C
MOV             R0, #0
POP             {R4,PC}
