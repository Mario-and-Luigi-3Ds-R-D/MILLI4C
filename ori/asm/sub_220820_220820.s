PUSH            {R4,LR}
VPUSH           {D8}
BL              sub_2CF53C
LDR             R1, =off_6B2DF0
VLDR            S16, =0.0
MOV             R4, #0
STR             R1, [R0]
VSTR            S16, [R0,#0x20]
VSTR            S16, [R0,#0x24]
VSTR            S16, [R0,#0x28]
VSTR            S16, [R0,#0x2C]
VSTR            S16, [R0,#0x30]
VSTR            S16, [R0,#0x34]
VSTR            S16, [R0,#0x38]
STRH            R4, [R0,#0x3C]
VSTR            S16, [R0,#0x40]
VSTR            S16, [R0,#0x44]
VSTR            S16, [R0,#0x48]
VSTR            S16, [R0,#0x4C]
STRH            R4, [R0,#0x50]
LDR             R1, =sub_194BD0
MOV             R3, #2
MOV             R2, #0xB8
ADD             R0, R0, #0x54 ; 'T'
BLX             sub_1002F4
SUB             R0, R0, #0x54 ; 'T'
VLDR            S0, =-140.0
STR             R4, [R0,#0x1C4]
VSTR            S16, [R0,#0x14]
VSTR            S0, [R0,#0x18]
VPOP            {D8}
POP             {R4,PC}
