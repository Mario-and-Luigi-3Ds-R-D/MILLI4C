PUSH            {R4,LR}
MOV             R4, R2
LDR             R2, [R0]
LDR             R12, [R2,#0x298]
MOV             R2, R3
BLX             R12
VLDM            R4, {S0-S2}
MOV             R1, #0
MOV             R2, #0x3F800000
STR             R1, [R0,#0x80]
STR             R2, [R0,#0x7C]
ADD             R12, R0, #0x8C
STR             R1, [R0,#0x84]
VSTR            S0, [R0,#0x88]
STM             R12, {R1,R2}
ADD             R12, R0, #0xA0
STR             R1, [R0,#0x94]
VSTR            S1, [R0,#0x98]
STR             R1, [R0,#0x9C]
STM             R12, {R1,R2}
VSTR            S2, [R0,#0xA8]
POP             {R4,PC}
