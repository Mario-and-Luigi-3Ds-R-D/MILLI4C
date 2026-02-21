PUSH            {R4,LR}
BL              sub_21D698
LDR             R1, =off_6B0970
MOV             R4, #0
STR             R1, [R0]
STR             R4, [R0,#0x1A0]
STR             R4, [R0,#0x1A4]
STRB            R4, [R0,#0x1A8]
STRB            R4, [R0,#0x1A9]
STRB            R4, [R0,#0x1AA]
STR             R4, [R0,#0x1B4]
STR             R4, [R0,#0x1B8]!
ADD             R0, R0, #4
BL              sub_1F6E5C
SUB             R0, R0, #0x1BC
LDR             R1, =sub_5A1158
STR             R4, [R0,#0x214]!
MOV             R3, #4
MOV             R2, #8
ADD             R0, R0, #0x20 ; ' '
BLX             sub_1002F4
SUB             R0, R0, #0x234
LDR             R1, =sub_546CD0
STR             R4, [R0,#0x258]!
MOV             R3, #2
MOV             R2, #0x7C ; '|'
ADD             R0, R0, #4
BLX             sub_1002F4
LDR             R2, =0x3CE
SUB             R0, R0, #0x25C
MOV             R1, #0xFFFFFFFF
STR             R4, [R0,#0x36C]
STRB            R4, [R0,#0x3B4]
STRH            R1, [R2,R0]
STR             R4, [R0,#0x3D0]
STR             R4, [R0,#0x21C]
STR             R4, [R0,#0x218]
STR             R4, [R0,#0x230]
STR             R4, [R0,#0x22C]
STR             R4, [R0,#0x228]
STR             R4, [R0,#0x224]
STR             R4, [R0,#0x360]
STR             R4, [R0,#0x35C]
STR             R4, [R0,#0x358]
STR             R4, [R0,#0x354]
STR             R4, [R0,#0x368]
STR             R4, [R0,#0x364]
POP             {R4,PC}
