PUSH            {R3-R7,LR}
ADD             R1, R0, #0x100
MOV             R4, R0
LDRH            R0, [R1,#0x24]
SUB             R0, R0, #1
MOV             R0, R0,LSL#16
MOVS            R0, R0,LSR#16
STRH            R0, [R1,#0x24]
BNE             locret_232680
LDR             R0, [R4,#0x11C]
LDR             R6, =off_675FB4
MOV             R5, #0
CMN             R0, #1
LDR             R0, [R4,#0x40]
BEQ             loc_232684
ADD             R1, R4, #0x28 ; '('
STRB            R5, [R0,#0x110]
LDR             R0, =off_6D1648
STR             R1, [SP,#0x18+var_18]
LDR             R1, [R4,#0x11C]
MOV             R3, #0
LDR             R0, [R0]
UXTH            R2, R1
MOV             R1, R3
LDR             R0, [R0,#0xA0]
BL              sub_2D3F94
ADD             R6, R6, #0x30 ; '0'
STR             R0, [R4,#0x120]
LDM             R6, {R1,R2}
MOV             R3, #0
MOV             R0, R4
BL              sub_232B34
POP             {R3-R7,PC}
CMP             R0, #0
BEQ             loc_23269C
LDR             R1, [R0]
LDR             R1, [R1,#8]
BLX             R1
STR             R5, [R4,#0x40]
LDR             R0, [R4,#0x120]
CMP             R0, #0
BEQ             loc_2326B0
BL              sub_533330
STR             R5, [R4,#0x120]
ADD             R6, R6, #8
MOV             R3, #0
LDM             R6, {R1,R2}
MOV             R0, R4
BL              sub_232B34
POP             {R3-R7,PC}
