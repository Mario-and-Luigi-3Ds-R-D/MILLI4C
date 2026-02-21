LDR             R2, =0x13D04
LDRH            R2, [R2,R0]
SUB             R1, R2, #0xFF00
SUBS            R1, R1, #0xFF
BNE             loc_18A128
LDR             R1, [R0]
LDR             R1, [R1,#0x290]
BX              R1
ADD             R1, R0, #0x14400
ADD             R1, R1, #8
MOV             R2, #1
LDR             R3, [R1]
STRB            R2, [R3,#0x38]
LDR             R2, =off_6D1648
LDR             R2, [R2]
LDR             R2, [R2,#0xC8]
TST             R2, #7
BEQ             loc_18A160
LDR             R2, =0x1440C
LDR             R1, [R1]
LDRH            R2, [R2,R0]
STRH            R2, [R1,#0x3A]
LDR             R1, [R0]
MOV             R3, #0
LDR             R12, [R1,#0x50]
LDR             R1, =off_67DA94
LDM             R1, {R1,R2}
BX              R12
