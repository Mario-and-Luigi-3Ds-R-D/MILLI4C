MOV             R1, #0
PUSH            {R4,LR}
STR             R1, [R0]
STRB            R1, [R0,#5]
STRB            R1, [R0,#6]
STRB            R1, [R0,#7]
MOV             R2, #1
STRB            R2, [R0,#0xD]
LDR             R1, =sub_587140
MOV             R3, #2
MOV             R2, #0x18
ADD             R0, R0, #0x1C
BLX             sub_1002F4
SUB             R0, R0, #0x1C
POP             {R4,PC}
