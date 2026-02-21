ADD             R1, R0, #0x10
ADD             R2, R0, #0x20 ; ' '
ADD             R3, R0, #0x30 ; '0'
ADD             R0, R0, #0x800
ADD             R1, R1, #0x800
ADD             R2, R2, #0x800
VSTR            S0, [R0,#0xBC]
ADD             R3, R3, #0x800
VSTR            S0, [R1,#0xBC]
VSTR            S0, [R2,#0xBC]
VSTR            S0, [R3,#0xBC]
BX              LR
