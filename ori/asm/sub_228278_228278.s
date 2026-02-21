PUSH            {R4,LR}
MOV             R4, R0
VPUSH           {D8}
MOV             R0, #8
STRB            R0, [R4]
ADD             R0, R4, #0x78 ; 'x'
BL              sub_5A18EC
VLDR            S16, =0.0
ADD             R0, R4, #0xE4
VSTR            S16, [R4,#0x84]
VSTR            S16, [R4,#0x7C]
BL              sub_5A18EC
VSTR            S16, [R4,#0xF0]
VSTR            S16, [R4,#0xE8]
VPOP            {D8}
POP             {R4,PC}
