LDR             R1, =off_6BB7F8
PUSH            {R4,LR}
ADD             R4, R0, #0x10
STR             R1, [R0]
LDR             R1, =off_6C357C
MOV             R3, #3
MOV             R2, #0x3F4
STR             R1, [R0,#0x10]!
LDR             R1, =sub_14F3EC
ADD             R0, R0, #0x13C
BLX             sub_1009D8
MOV             R0, R4
BL              sub_14CD84
SUB             R0, R0, #0x10
POP             {R4,PC}
