LDR             R1, =off_6B3E34
PUSH            {R4,LR}
MOV             R4, #0
STR             R1, [R0]
STRB            R4, [R0,#4]
STR             R4, [R0,#8]
STR             R4, [R0,#0xC]
LDR             R2, =off_6B7890
STR             R4, [R0,#0x10]
STRB            R4, [R0,#0x18]
STR             R0, [R0,#0x20]
STR             R2, [R0,#0x1C]
LDR             R2, =off_6B7A08
STR             R0, [R0,#0x28]
ADD             R1, R0, #0x30 ; '0'
STR             R2, [R0,#0x24]
LDR             R2, =off_6C1760
STM             R1, {R2,R4}
ADD             R1, R0, #0x78 ; 'x'
LDR             R2, =off_6B78AC
STR             R0, [R0,#0x68]
STR             R2, [R0,#0x64]
LDR             R2, =off_6B7958
STR             R0, [R0,#0x70]
STR             R2, [R0,#0x6C]
STR             R0, [R0,#0x7C]
LDR             R0, =off_6B7A6C
STR             R0, [R1]
ADD             R0, R1, #8
BL              sub_4D11E0
SUB             R1, R0, #0x80
ADD             R0, R0, #0x14
STR             R1, [R0,#4]
LDR             R1, =off_6B7A50
STR             R1, [R0],#8
BL              sub_4D11E0
SUB             R1, R0, #0x9C
ADD             R0, R0, #0x14
STR             R1, [R0,#4]
LDR             R1, =off_6B7ADC
STR             R1, [R0],#8
BL              sub_4D11E0
SUB             R1, R0, #0xB8
LDR             R2, =off_6B7974
ADD             R0, R0, #0x14
STR             R1, [R0,#4]
STR             R2, [R0]
ADD             R0, R1, #0xD8
STR             R1, [R1,#0xDC]
LDR             R1, =off_6B7990
STR             R1, [R0],#8
BL              sub_4D11E0
SUB             R0, R0, #0xE0
STR             R4, [R0,#0xF4]
STRB            R4, [R0,#0x19]
STRB            R4, [R0,#0x1A]
POP             {R4,PC}
