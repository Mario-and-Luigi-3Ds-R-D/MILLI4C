LDR             R2, =off_6B38E8
STR             R2, [R0]
ADD             R2, R1, #4
LDM             R2, {R2,R3,R12}
STR             R12, [R0,#0xC]
STRD            R2, R3, [R0,#4]
ADD             R2, R1, #0x10
LDM             R2, {R2,R3,R12}
STR             R12, [R0,#0x18]
STRD            R2, R3, [R0,#0x10]
ADD             R2, R1, #0x1C
LDM             R2, {R2,R3,R12}
STR             R12, [R0,#0x24]
STRD            R2, R3, [R0,#0x1C]
ADD             R2, R1, #0x28 ; '('
LDM             R2, {R2,R3,R12}
STR             R12, [R0,#0x30]
STRD            R2, R3, [R0,#0x28]
LDRB            R1, [R1,#0x34]
STRB            R1, [R0,#0x34]
BX              LR
