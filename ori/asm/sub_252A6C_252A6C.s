PUSH            {R4,R5}
MOV             R2, R1
VLDM            R1, {S0-S7}
ADD             R1, R0, #0x10
ADD             R4, R0, #0x30 ; '0'
VSTM            R1, {S0-S7}
ADD             R1, R2, #0x20 ; ' '
LDM             R1, {R1,R3}
STM             R4, {R1,R3}
LDRB            R1, [R2,#0x18]
CMP             R1, #3
BCS             loc_252AE0
LDRB            R4, [R0,#0x29]
ADD             R3, R1, #3
STRB            R1, [R0,#0x39]
STRB            R3, [R0,#0x3A]
ADD             R12, R1, #6
CMP             R4, #0
STRB            R12, [R0,#0x3B]
MOVEQ           R12, #9
MOVNE           R12, #0xA
MOV             R3, #1
STRB            R12, [R0,#0x3C]
STRB            R3, [R0,#0x38]
LDR             R0, [R2,#0x1C]
POP             {R4,R5}
MOV             R3, #0x100
MOV             R2, #1
B               sub_14C548
MOVEQ           R2, #0x1C
MOVNE           R2, #0x1E
MOVEQ           R1, #0x1D
MOVNE           R1, #0x1F
STRB            R2, [R0,#0x3A]
STRB            R1, [R0,#0x3B]
POP             {R4,R5}
NOP
