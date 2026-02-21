MOV             R2, #0
PUSH            {R4}
STR             R2, [R0,#4]
STR             R2, [R0,#8]
STR             R2, [R0,#0x20]
STR             R2, [R0,#0x24]
STR             R2, [R0,#0x28]
STR             R2, [R0,#0x2C]
STR             R2, [R0,#0x30]
STR             R2, [R0,#0x34]
STR             R2, [R0,#0x38]
STR             R2, [R0,#0x3C]
STR             R2, [R0,#0x40]
STR             R2, [R0,#0x44]
STR             R2, [R0,#0x48]
STR             R2, [R0,#0x4C]
STR             R2, [R0,#0x50]
STR             R2, [R0,#0x54]
STR             R2, [R0,#0x58]
STR             R2, [R0,#0x5C]
STR             R2, [R0,#0x60]
STR             R2, [R0,#0x64]
STR             R2, [R0,#0x68]
STR             R2, [R0,#0x6C]
STR             R2, [R0,#0xBC]
STR             R2, [R0,#0xC0]
STR             R2, [R0,#0xC4]
STR             R2, [R0,#0xC8]
STR             R2, [R0,#0xCC]
STR             R2, [R0,#0xDC]
STR             R2, [R0,#0xE8]
ADD             R3, R0, #0xEC
MOV             R12, #0xFFFFFFFF
LDR             R4, =off_6C00C0
STM             R3, {R2,R12}
STR             R2, [R0,#0xF8]
STR             R4, [R0,#0xB8]
STR             R2, [R0,#0xFC]
STR             R2, [R0,#0x100]
STR             R2, [R0,#0x104]
STR             R2, [R0,#0x108]
STR             R2, [R0,#0x118]
STR             R2, [R0,#0x124]
ADD             R3, R0, #0x128
LDR             R1, =off_6BFFC8
STM             R3, {R2,R12}
STR             R2, [R0,#0xC]
STR             R4, [R0,#0xF4]
STR             R2, [R0,#0x10]
STR             R2, [R0,#0x14]
STR             R2, [R0,#0x18]
STR             R1, [R0]
STR             R2, [R0,#0x1C]
POP             {R4}
BX              LR
