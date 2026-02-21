PUSH            {R4,LR}
BL              sub_233650
MOV             R12, R0
LDR             R0, =off_6B24B8
MOV             R4, #0
LDR             R1, =sub_37CBAC
STR             R0, [R12]
STR             R4, [R12,#0xA4]
MOV             R3, #4
MOV             R2, #0x10
ADD             R0, R12, #0xAC
STR             R4, [R12,#0xA8]
BLX             sub_1002F4
LDR             R1, =sub_37CBAC
MOV             R3, #4
MOV             R2, #0x10
ADD             R0, R0, #0x40 ; '@'
BLX             sub_1002F4
LDR             R1, =sub_37CBAC
MOV             R3, #4
MOV             R2, #0x10
ADD             R0, R0, #0x40 ; '@'
BLX             sub_1002F4
SUB             R0, R0, #0x12C
ADD             R1, R0, #0x100
STR             R4, [R0,#0x16C]
MOV             R2, #0xFFFFFFFF
STR             R4, [R0,#0x170]
STRH            R2, [R1,#0x74]
STRH            R2, [R1,#0x76]
STRH            R2, [R1,#0x78]
STRH            R2, [R1,#0x7A]
POP             {R4,PC}
