PUSH            {R4,LR}
MOV             R4, R0
LDR             R0, [R0,#0x154]
CMP             R0, #0
BLE             loc_1F09D4
SUB             R0, R0, #1
STR             R0, [R4,#0x154]
LDR             R1, [R4]
MOV             R0, R4
LDR             R1, [R1,#0xD4]
POP             {R4,LR}
BX              R1
LDR             R0, [R4,#0xA0]
LDR             R1, =0x1462C
LDR             R1, [R1,R0]
LDRB            R1, [R1,#0x38]
CMP             R1, #3
BEQ             loc_1F09FC
BL              sub_221A40
LDR             R0, [R4,#0xA0]
POP             {R4,LR}
B               sub_2D4074
LDR             R0, [R4,#0xBC]
LDR             R1, [R4,#0x158]
MOV             R3, #1
ADD             R0, R0, #0x13C00
ADD             R0, R0, #0x38 ; '8'
STR             R1, [R0]
LDR             R0, [R4,#0xC0]
LDR             R1, [R4,#0x15C]
ADD             R0, R0, #0x13C00
ADD             R0, R0, #0x38 ; '8'
STR             R1, [R0]
LDR             R0, [R4]
LDR             R12, [R0,#0x28]
LDR             R0, =off_67E394
LDM             R0, {R1,R2}
MOV             R0, R4
POP             {R4,LR}
BX              R12
