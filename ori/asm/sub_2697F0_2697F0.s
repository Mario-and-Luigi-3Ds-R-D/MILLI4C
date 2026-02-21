PUSH            {R4,LR}
MOV             R4, R0
LDR             R0, =off_6C3360
LDR             R1, =off_6C3624
STR             R0, [R4]
LDR             R0, =0x21D28
STR             R1, [R0,R4]
ADD             R4, R4, #0x21C00
ADD             R4, R4, #0x1B4
ADD             R0, R4, #0x84
MOV             R1, #0
BL              sub_62DB08
ADD             R0, R4, #0x84
MOV             R1, #0
BL              sub_62DB08
SUB             R4, R4, #0x21C00
SUB             R4, R4, #0x1B4
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
POP             {R4,LR}
SUB             R0, R0, #0x194
B               sub_14CD84
