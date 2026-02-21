ADD             R1, R0, #0x14C00
PUSH            {R4-R8,LR}
ADD             R1, R1, #0x3FC
MOV             R4, R0
LDR             R2, [R1]
CMP             R2, #0
BEQ             loc_1659C0
ADD             R5, R4, #0x15000
VLDR            S0, =16.0
LDRB            R0, [R5]
CMP             R0, #0
BEQ             loc_165974
AND             R0, R0, #1
CMP             R0, #1
ADDEQ           R2, R2, #0x400
VSTREQ          S0, [R2,#0x230]
LDRB            R2, [R5]
CMP             R2, R0
MOVGT           R3, #0x630
MOVGT           R12, #0xE60
BLE             loc_1659C0
ADD             R2, R0, R0,LSL#1
LDR             R6, [R1]
ADD             R2, R2, R0,LSL#7
ADD             R0, R0, #2
ADD             R7, R3, R2,LSL#4
ADD             R6, R6, R7
ADD             R2, R12, R2,LSL#4
VSTR            S0, [R6]
LDR             R6, [R1]
ADD             R2, R2, R6
VSTR            S0, [R2]
LDRB            R2, [R5]
CMP             R2, R0
BGT             loc_165988
LDR             R0, =off_6D1648
LDR             R0, [R0]
LDR             R1, [R0,#0xC8]
TST             R1, #7
BNE             loc_1659E4
BL              sub_5C8540
CMP             R0, #0
NOP
BEQ             loc_165A00
LDR             R0, =0x16CFC
LDRSB           R1, [R0,R4]
CMP             R1, #0
BEQ             loc_165A00
MOV             R2, #1
MOV             R0, R4
BL              sub_165134
LDR             R0, [R4]
MOV             R3, #1
LDR             R12, [R0,#0x50]
LDR             R0, =off_68E81C
LDM             R0, {R1,R2}
MOV             R0, R4
POP             {R4-R8,LR}
BX              R12
