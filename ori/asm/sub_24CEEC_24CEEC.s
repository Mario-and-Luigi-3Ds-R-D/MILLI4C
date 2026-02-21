ADD             R0, R0, #0x168
PUSH            {R4,LR}
NOP
SUB             R4, R0, #0x168
LDR             R0, =off_6B7C1C
LDR             R1, =sub_5A2F60
MOV             R3, #3
STR             R0, [R4,#0xA4]!
MOV             R2, #0x28 ; '('
ADD             R0, R4, #0x30 ; '0'
BLX             sub_1009D8
MOV             R0, R4
NOP
SUB             R0, R0, #0xA4
MOV             R2, #0
STRH            R2, [R0,#0x34]
STRH            R2, [R0,#0x28]
POP             {R4,PC}
