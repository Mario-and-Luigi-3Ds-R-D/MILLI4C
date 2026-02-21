PUSH            {R4-R6,LR}
BL              sub_2CF53C
MOV             R4, R0
LDR             R0, =off_6B4164
MOV             R5, #0
VLDR            S0, =0.0
STR             R0, [R4]
STR             R5, [R4,#0x14]
VSTR            S0, [R4,#0x18]
VSTR            S0, [R4,#0x1C]
VSTR            S0, [R4,#0x20]
VSTR            S0, [R4,#0x24]
VSTR            S0, [R4,#0x28]
VSTR            S0, [R4,#0x2C]
VSTR            S0, [R4,#0x30]
VSTR            S0, [R4,#0x34]
VSTR            S0, [R4,#0x38]
VSTR            S0, [R4,#0x3C]
VSTR            S0, [R4,#0x40]
VSTR            S0, [R4,#0x44]
STRH            R5, [R4,#0x60]
STRH            R5, [R4,#0x62]
VSTR            S0, [R4,#0x64]
VSTR            S0, [R4,#0x68]
VSTR            S0, [R4,#0x6C]
VSTR            S0, [R4,#0x70]
VSTR            S0, [R4,#0x74]
VSTR            S0, [R4,#0x78]
STRH            R5, [R4,#0x7C]
STRH            R5, [R4,#0x7E]
STRH            R5, [R4,#0x80]
MOV             R2, #0x18
MOV             R1, #0
ADD             R0, R4, #0x48 ; 'H'
STR             R5, [R4,#0x84]
BL              sub_110BE4
MOV             R0, R4
STRH            R5, [R4,#0x60]
POP             {R4-R6,PC}
