PUSH            {R4,LR}
VPUSH           {D8-D10}
LDR             R0, [R2,#0xC]
LDR             R1, [R2,#8]
VLDR            S17, [R2,#0x70]
VLDR            S20, [R2,#0x74]
SXTB            R4, R0
LDR             R0, =off_6CE970
UXTH            R1, R1
VLDR            S19, [R2,#0x78]
VLDR            S21, [R2,#0x7C]
LDR             R0, [R0]
VLDR            S16, [R2,#0x80]
VLDR            S18, [R2,#0x84]
BL              sub_52F538
CMP             R4, #0
BGE             loc_20EB38
ADD             R0, R0, #0x400
ADD             R0, R0, #0x1D8
BL              sub_501F40
B               loc_20EB58
ADD             R1, R0, #0x400
STRB            R4, [R0,#0x5D8]
VSTR            S17, [R1,#0x1E0]
VSTR            S20, [R1,#0x1E4]
VSTR            S19, [R1,#0x1E8]
VSTR            S21, [R1,#0x1EC]
VSTR            S16, [R1,#0x1F0]
VSTR            S18, [R1,#0x1F4]
MOV             R0, #0
VPOP            {D8-D10}
POP             {R4,PC}
