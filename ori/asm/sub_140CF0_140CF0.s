PUSH            {R4-R6,LR}
MOV             R4, R0
MOV             R0, #2
VPUSH           {D8}
LDR             R1, =0x7FD8
STRB            R0, [R4,#4]
VLDR            S16, =1.0
STR             R1, [R4,#0x18]
MOV             R0, #0
VSTR            S16, [R4,#0x1C]
STRB            R0, [R4,#5]
STRB            R0, [R4,#7]
MOV             R5, R0
ADD             R1, R4, #0xC
STR             R0, [R4,#8]
MOV             R0, R1
BL              sub_141ED4
VSTR            S16, [R4,#0x64]
STR             R5, [R4,#0x20]
VMOV            R0, S16
STR             R5, [R4,#0x24]
STR             R5, [R4,#0x28]
STR             R5, [R4,#0x2C]
STR             R0, [R4,#0x34]
VMOV            R0, S16
VLDR            S0, =0.0
STR             R0, [R4,#0x38]
VMOV            R0, S0
STR             R0, [R4,#0x3C]
VMOV            R0, S0
STR             R0, [R4,#0x40]
VMOV            R0, S0
STR             R0, [R4,#0x44]
VMOV            R0, S0
STR             R0, [R4,#0x48]
VMOV            R0, S0
STR             R0, [R4,#0x4C]
VMOV            R0, S0
STR             R0, [R4,#0x50]
VMOV            R0, S0
STR             R0, [R4,#0x54]
VMOV            R0, S0
STR             R0, [R4,#0x58]
VMOV            R0, S0
STR             R0, [R4,#0x5C]
VMOV            R0, S0
STR             R0, [R4,#0x60]
STR             R5, [R4,#0x30]
LDR             R0, [R4,#0x68]
VPOP            {D8}
POP             {R4-R6,LR}
B               sub_141D60
