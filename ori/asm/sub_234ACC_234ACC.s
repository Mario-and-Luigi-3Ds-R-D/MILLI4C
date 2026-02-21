LDR             R2, =0x270F
MOV             R1, #0
ADD             R3, R0, #4
STRB            R1, [R0]
STM             R3, {R1,R2}
ADD             R3, R0, #0x48 ; 'H'
VLDR            S0, =1.0
STR             R1, [R0,#0xC]
VSTR            S0, [R0,#0x10]
VLDR            S0, =0.0
STR             R1, [R0,#0x14]
VSTR            S0, [R0,#0x18]
LDR             R2, =off_67E184
STR             R1, [R0,#0x1C]
STR             R1, [R0,#0x20]
STR             R1, [R0,#0x24]
STR             R1, [R0,#0x38]
LDM             R2, {R1,R2}
STM             R3, {R1,R2}
BX              LR
