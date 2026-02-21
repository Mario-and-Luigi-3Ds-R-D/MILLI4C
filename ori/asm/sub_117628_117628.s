PUSH            {R4}
MOV             R2, #0
STR             R2, [R0]
STRB            R2, [R0,#4]
ADD             R1, R0, #8
STRB            R2, [R0,#5]
MOV             R3, #0xF0
MOV             R12, #0x190
STR             R0, [R0,#0x20]
VLDR            S0, =0.0
STM             R1, {R3,R12}
MOV             R4, #3
VSTR            S0, [R0,#0x10]
VSTR            S0, [R0,#0x14]
VSTR            S0, [R0,#0x18]
VSTR            S0, [R0,#0x1C]
STR             R2, [R0,#0x24]
STRB            R4, [R0,#0x28]
ADD             R4, R0, #0x2C ; ','
VLDR            S0, =1.0
STM             R4, {R3,R12}
ADD             R1, R0, #0x40 ; '@'
VSTR            S0, [R0,#0x34]
STRB            R2, [R0,#0x38]
STR             R0, [R0,#0x3C]
STM             R1, {R3,R12}
POP             {R4}
BX              LR
