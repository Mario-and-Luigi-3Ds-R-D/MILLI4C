PUSH            {R4,LR}
STR             R1, [R0,#4]
LDR             R1, =off_6BC024
STR             R1, [R0],#8
BL              sub_14F198
ADD             R0, R0, #0x400
ADD             R0, R0, #4
BL              sub_5A2BD0
LDR             R1, =off_6B7C1C
MOV             R3, #3
MOV             R2, #0x28 ; '('
STR             R1, [R0],#0x30
LDR             R1, =sub_5A39D0
BLX             sub_1002F4
SUB             R0, R0, #0x30 ; '0'
ADD             R2, R0, #0x30 ; '0'
MOV             R1, #3
STR             R2, [R0,#0x28]
STRB            R1, [R0,#0x2C]
SUB             R0, R0, #0x400
SUB             R0, R0, #0xC
POP             {R4,PC}
