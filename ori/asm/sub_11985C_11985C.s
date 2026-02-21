PUSH            {R4,LR}
LDR             R4, =byte_6D4B6C
LDRB            R0, [R4]
CMP             R0, #0
LDRNE           R0, =0x820ABF9
BNE             locret_1198EC
BL              sub_119B9C
MOVS            R1, R0,LSR#31
BNE             locret_1198EC
LDR             R0, =dword_70EE68
MOV             R1, #0
BL              sub_1222E8
MOVS            R1, R0,LSR#31
BNE             locret_1198EC
LDR             R0, =0x1FF81000
LDRSB           R1, [R0,#0xC0]
LDR             R0, =byte_70EE18
STRB            R1, [R4,#(byte_6D4B70 - 0x6D4B6C)]
BL              sub_121CF4
LDR             R0, =dword_710418
BL              sub_118AC8
LDR             R0, =byte_70EE18
BL              sub_119948
BL              sub_129050
BL              sub_121D14
LDR             R2, =sub_119AA0
LDR             R1, =sub_119B34
LDR             R0, =sub_119AEC
BL              sub_119490
MOV             R0, #0
STRB            R0, [R4,#(byte_6D4B6D - 0x6D4B6C)]
STRB            R0, [R4,#(byte_6D4B6E - 0x6D4B6C)]
MOV             R1, #1
STRB            R0, [R4,#(byte_6D4B6F - 0x6D4B6C)]
STRB            R1, [R4,#(byte_6D4B71 - 0x6D4B6C)]
STRB            R1, [R4]
POP             {R4,PC}
