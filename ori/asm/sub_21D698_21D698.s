PUSH            {R4,LR}
BL              sub_200708
LDR             R1, =off_6B2CB0
VLDR            S0, =0.0
MOV             R2, #0
STR             R1, [R0]
VSTR            S0, [R0,#0x124]
VSTR            S0, [R0,#0x128]
VSTR            S0, [R0,#0x12C]
VSTR            S0, [R0,#0x130]
VSTR            S0, [R0,#0x134]
VSTR            S0, [R0,#0x138]
VSTR            S0, [R0,#0x13C]
VSTR            S0, [R0,#0x140]
ADD             R0, R0, #0x144
VSTR            S0, [R0]
VSTR            S0, [R0,#4]
SUB             R0, R0, #0x144
VSTR            S0, [R0,#0x14C]
VSTR            S0, [R0,#0x150]
VSTR            S0, [R0,#0x154]
VSTR            S0, [R0,#0x158]
VSTR            S0, [R0,#0x15C]
VSTR            S0, [R0,#0x160]
VSTR            S0, [R0,#0x164]
VSTR            S0, [R0,#0x168]
VSTR            S0, [R0,#0x16C]
VSTR            S0, [R0,#0x170]
VSTR            S0, [R0,#0x174]
VSTR            S0, [R0,#0x178]
VSTR            S0, [R0,#0x17C]
VSTR            S0, [R0,#0x180]
VSTR            S0, [R0,#0x184]
VSTR            S0, [R0,#0x188]
VSTR            S0, [R0,#0x18C]
VSTR            S0, [R0,#0x190]
VSTR            S0, [R0,#0x194]
VSTR            S0, [R0,#0x198]
STR             R2, [R0,#0x19C]
POP             {R4,PC}
