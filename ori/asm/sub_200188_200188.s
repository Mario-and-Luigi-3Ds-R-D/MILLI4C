LDR             R1, =0x11A
LDRH            R1, [R1,R0]
TST             R1, #1
BEQ             loc_2001A8
LDR             R0, [R0,#0x110]
CMP             R0, #0x3100
MOVLT           R0, #0
BLT             locret_2001AC
MOV             R0, #1
BX              LR
