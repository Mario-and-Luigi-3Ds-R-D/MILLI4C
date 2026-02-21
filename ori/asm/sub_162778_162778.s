LDR             R1, =off_6ADAF4
PUSH            {R4,LR}
STR             R1, [R0]
ADD             R0, R0, #0x28800
ADD             R0, R0, #0x128
BL              sub_599818
SUB             R0, R0, #0x13800
SUB             R0, R0, #0x4C ; 'L'
BL              sub_599818
SUB             R0, R0, #0x800
SUB             R0, R0, #0x368
BL              sub_50E33C
SUB             R0, R0, #0x88
BL              sub_59CE8C
SUB             R4, R0, #0x14400
SUB             R4, R4, #0xEC
LDR             R0, =off_6B96F0
ADD             R4, R4, #0x14400
ADD             R4, R4, #0x58 ; 'X'
LDR             R1, =sub_5A2F60
STR             R0, [R4]
LDR             R0, =off_6B7BFC
MOV             R3, #1
MOV             R2, #0x28 ; '('
STR             R0, [R4,#0x3C]!
ADD             R0, R4, #0x30 ; '0'
BLX             sub_1009D8
MOV             R0, R4
NOP
SUB             R4, R0, #0x3C ; '<'
LDR             R0, =off_6B7BEC
LDR             R1, =nullsub_300
MOV             R3, #1
STR             R0, [R4,#8]!
MOV             R2, #0x1C
ADD             R0, R4, #0x18
BLX             sub_1009D8
MOV             R0, R4
NOP
SUB             R0, R0, #0x14000
POP             {R4,LR}
SUB             R0, R0, #0x460
B               sub_18A3C0
