PUSH            {R4-R9}
LDM             R1, {R2-R8,R12}
ADD             R9, R0, #0x34 ; '4'
STM             R9, {R2-R8,R12}
ADD             R2, R1, #0x20 ; ' '
ADD             R5, R0, #0x54 ; 'T'
LDM             R2, {R2-R4,R12}
STM             R5, {R2-R4,R12}
LDR             R0, [R0,#0x68]
POP             {R4-R9}
NOP
PUSH            {R4-R8}
LDM             R1, {R2-R8,R12}
STRD            R2, R3, [R0,#0x38]
ADD             R2, R0, #0x40 ; '@'
STM             R2, {R4-R8,R12}
ADD             R2, R1, #0x20 ; ' '
ADD             R4, R0, #0x58 ; 'X'
LDM             R2, {R2,R3,R12}
LDR             R1, [R1,#0x2C]
STR             R1, [R0,#0x64]
STM             R4, {R2,R3,R12}
LDRH            R1, [R0,#0x6C]
ORR             R1, R1, #1
STRH            R1, [R0,#0x6C]
POP             {R4-R8}
BX              LR
