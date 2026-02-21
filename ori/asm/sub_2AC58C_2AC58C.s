PUSH            {R4,LR}
LDR             R1, =off_6B4B04
LDR             R2, =off_67DB84
MOV             R4, R0
MOV             R0, #0
STR             R1, [R4]
LDM             R2, {R1,R2}
ADD             R3, R4, #4
STR             R0, [R4,#0xC]
STM             R3, {R1,R2}
STRB            R0, [R4,#0x10]
BL              sub_4635D8
LDM             R0, {R1,R2}
LDR             R0, [R0,#8]
STR             R0, [R4,#0x1C]
ADD             R0, R4, #0x14
STM             R0, {R1,R2}
BL              sub_4635D8
LDM             R0, {R1,R2}
LDR             R0, [R0,#8]
STR             R0, [R4,#0x28]
ADD             R0, R4, #0x20 ; ' '
STM             R0, {R1,R2}
BL              sub_4635D8
LDM             R0, {R1-R3}
ADD             R12, R4, #0x2C ; ','
MOV             R0, #0xFFFFFFFF
STM             R12, {R1-R3}
MOV             R3, #1
STRH            R0, [R4,#0x3A]
LDR             R1, =sub_62C6DC
MOV             R2, #0x58 ; 'X'
ADD             R0, R4, #0x3C ; '<'
BLX             sub_1002F4
SUB             R0, R0, #0x3C ; '<'
POP             {R4,PC}
