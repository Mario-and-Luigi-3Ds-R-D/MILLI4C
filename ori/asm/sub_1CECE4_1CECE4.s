PUSH            {R4,LR}
BL              sub_14CB8C
LDR             R2, =off_6BB6F8
MOV             R1, #0
STR             R2, [R0]
STRB            R1, [R0,#0xFD]
STRB            R1, [R0,#0xFE]
STR             R1, [R0,#0x108]
STR             R1, [R0,#0x10C]!
ADD             R0, R0, #4
BL              sub_47F968
ADD             R0, R0, #0x88
BL              sub_5A1E2C
LDR             R1, =off_6B7BEC
MOV             R3, #1
MOV             R2, #0x1C
STR             R1, [R0],#0x18
LDR             R1, =sub_5A2F28
BLX             sub_1002F4
SUB             R0, R0, #0x18
ADD             R2, R0, #0x18
MOV             R1, #1
STR             R2, [R0,#0x10]
STRB            R1, [R0,#0x14]
SUB             R0, R0, #0x198
POP             {R4,PC}
