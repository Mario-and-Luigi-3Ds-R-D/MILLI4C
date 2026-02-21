PUSH            {R4-R6,LR}
MOV             R5, #0
VPUSH           {D8}
VLDR            S16, =0.0
STR             R5, [R0]
VSTR            S16, [R0,#4]
VSTR            S16, [R0,#8]
ADD             R0, R0, #0x10
BL              sub_1C8B10
ADD             R0, R0, #0x48 ; 'H'
BL              sub_1C8B10
SUB             R0, R0, #0x58 ; 'X'
STR             R5, [R0,#0xA0]
STR             R5, [R0,#0xA4]
STR             R5, [R0,#0xA8]
VSTR            S16, [R0,#0xAC]
VSTR            S16, [R0,#0xB0]
ADD             R0, R0, #0xDC
BL              sub_5A1E2C
LDR             R1, =off_6B7BEC
MOV             R3, #1
MOV             R2, #0x1C
STR             R1, [R0],#0x18
LDR             R1, =sub_5A2F28
BLX             sub_1002F4
SUB             R0, R0, #0x18
ADD             R2, R0, #0x18
STR             R2, [R0,#0x10]
LDR             R2, =unk_68A55C
MOV             R1, #1
STRB            R1, [R0,#0x14]
SUB             R4, R0, #0xDC
LDM             R2, {R1,R2}
ADD             R3, R4, #0x178
ADD             R0, R0, #0x24 ; '$'
STM             R3, {R1,R2}
VSTR            S16, [R4,#0x180]
VSTR            S16, [R4,#0x184]
VSTR            S16, [R4,#0x188]
VSTR            S16, [R4,#0x18C]
VSTR            S16, [R4,#0x190]
VSTR            S16, [R4,#0x194]
VSTR            S16, [R4,#0x198]
STRH            R5, [R0,#0x9C]
STRH            R5, [R0,#0x9E]
MOV             R0, R4
STR             R5, [R4,#0x1A0]
BL              sub_1E1C74
VPOP            {D8}
MOV             R0, R4
POP             {R4-R6,PC}
