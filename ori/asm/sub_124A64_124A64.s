MOV             R3, #0
PUSH            {R4,R5}
MOV             R2, #1
STR             R3, [R0]
STR             R2, [R0,#0x10]
STR             R3, [R0,#4]
STR             R2, [R0,#0x14]
LDR             R5, =0x270F
MOV             R4, #0xFFFFFFF8
STR             R4, [R0,#0x18]
STR             R3, [R0,#0x1C]
STR             R5, [R0,#0x20]
ADD             R2, R0, #8
STR             R3, [R0,#0x24]
MOV             R12, R3
STR             R3, [R0,#0x28]
MOV             R1, R3
STM             R2, {R3,R12}
ADD             R3, R0, #0x2C ; ','
VLDR            S0, =0.0
VLDR            S1, =1.0
VSTM            R3, {S0-S1}
STR             R1, [R0,#0x34]
STR             R1, [R0,#0x38]
VSTR            S0, [R0,#0x3C]
STR             R1, [R0,#0x40]
STR             R1, [R0,#0x44]
STRH            R1, [R0,#0x48]
POP             {R4,R5}
BX              LR
