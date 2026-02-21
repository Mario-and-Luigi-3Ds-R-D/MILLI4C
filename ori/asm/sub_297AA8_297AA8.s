PUSH            {R4-R6,LR}
ADD             R4, R0, #4
LDR             R1, =off_6C3360
ADD             R5, R4, #0x21C00
ADD             R5, R5, #0x128
STR             R1, [R0,#4]
LDR             R0, =off_6C3624
MOV             R1, #0
STR             R0, [R5],#0x8C
ADD             R0, R5, #0x84
BL              sub_62DB08
ADD             R0, R5, #0x84
MOV             R1, #0
BL              sub_62DB08
ADD             R0, R4, #0x800
MOV             R3, #0x20 ; ' '
LDR             R1, =sub_5B94F0
ADD             R0, R0, #0x128
ADD             R2, R3, #0x1080
BLX             sub_1009D8
ADD             R0, R4, #0x328
BL              sub_14F3EC
SUB             R0, R0, #0x194
BL              sub_5B8C24
SUB             R0, R0, #0x194
BL              sub_14CD84
SUB             R0, R0, #4
POP             {R4-R6,PC}
