PUSH            {R4-R10,LR}
MOV             R5, R0
MOV             R6, #0
MOV             R3, #0x10000
LDR             R7, =off_6CE970
LDR             R1, =byte_19CF33
MOV             R2, R6
LDR             R0, [R7]
LDRB            R1, [R1,R0]; byte_19CF33
CMP             R1, #0
ADD             R1, R0, #0x68 ; 'h'
BEQ             loc_144D90
LDR             R0, =0xBF8
BL              sub_10A358
CMP             R0, #0
BEQ             locret_144D8C
MOV             R1, #1
STRB            R1, [R0,#4]
LDR             R1, =off_6ACEC4
LDR             R2, =unk_63FE90
STRB            R6, [R0,#5]
STRH            R6, [R0,#6]
STR             R1, [R0]
STR             R5, [R0,#8]
LDM             R2, {R1,R2}
MOV             R4, R0
VLDR            S0, =0.0
STR             R1, [R0,#0xC]
STR             R2, [R0,#0x10]
VSTR            S0, [R0,#0x18]
VSTR            S0, [R0,#0x1C]
BL              sub_4635D8
LDM             R0, {R1-R3}
ADD             R0, R4, #0x20 ; ' '
STM             R0, {R1,R2}
STR             R3, [R4,#0x28]
BL              sub_4635D8
LDM             R0, {R1-R3}
ADD             R0, R4, #0x2C ; ','
STM             R0, {R1,R2}
ADD             R0, R4, #0x4B0
STR             R3, [R4,#0x34]
STRB            R6, [R4,#0x38]
STRB            R6, [R4,#0x39]
STRB            R6, [R4,#0x3A]
STRB            R6, [R4,#0x3B]
STRB            R6, [R4,#0x3C]
STRB            R6, [R4,#0x3D]
BL              sub_14F198
MOV             R4, R0
LDR             R0, =off_6B74BC
STR             R0, [R4]
STR             R6, [R4,#0x3F4]
BL              sub_4635D8
LDM             R0, {R1,R2}
ADD             R3, R4, #0x3F8
LDR             R0, [R0,#8]
STR             R0, [R4,#0x400]
STM             R3, {R1,R2}
MOV             R3, #0x40 ; '@'
LDR             R1, =sub_497604
MOV             R2, #8
ADD             R0, R4, #0x540
STRB            R6, [R4,#0x53C]
BLX             sub_1002F4
LDR             R1, =off_6B71B4
SUB             R4, R0, #0x9F0
MOV             R2, #0x80
STR             R1, [R0,#0x200]!
MOV             R1, #0
STRB            R6, [R0,#4]
ADD             R0, R4, #0x40 ; '@'
BL              sub_110BE4
ADD             R0, R4, #0xC0
MOV             R2, #0x3F0
MOV             R1, #0
BL              sub_110BE4
LDR             R6, [R7]
BL              sub_47FFCC
CMP             R0, #0
BNE             loc_144C98
LDR             R0, =byte_19CF30
LDRB            R0, [R0,R6]; byte_19CF30
CMP             R0, #0
LDREQ           R5, [R7]
BEQ             loc_144CB4
LDR             R0, =unk_6E1FD0
LDRB            R2, [R5,#0x495]
ADD             R1, R0, #0x74 ; 't'
CMP             R2, #0
MOVNE           R0, R1
STR             R0, [R4,#0x14]
B               loc_144D74
NOP
BL              sub_47FFCC
CMP             R0, #0
NOP
BNE             loc_144D74
LDR             R0, =byte_19CF30
LDRB            R0, [R0,R5]; byte_19CF30
CMP             R0, #0
BNE             loc_144D74
LDR             R1, =unk_6E20B8
ADD             LR, R4, #0x800
ADD             LR, LR, #0xB4
STR             R1, [R4,#0x14]
LDR             R1, [R7]
ADD             R0, R4, #0x800
ADD             R1, R1, #0x100000
ADD             R1, R1, #0xC400
ADD             R2, R1, #0x180
LDM             R2, {R2,R3,R5,R6,R8-R10,R12}
STM             LR, {R2,R3,R5,R6,R8-R10,R12}
ADD             R2, R1, #0x1A0
ADD             R6, R4, #0x800
ADD             R6, R6, #0xD4
ADD             LR, R4, #0x800
LDM             R2, {R2,R3,R5,R12}
ADD             LR, LR, #0xE4
STM             R6, {R2,R3,R5,R12}
ADD             R2, R1, #0x1E0
LDM             R2, {R2,R3,R5,R6,R8-R10,R12}
STM             LR, {R2,R3,R5,R6,R8-R10,R12}
ADD             R2, R1, #0x200
ADD             LR, R0, #0x104
LDM             R2, {R2,R3,R5,R6,R8-R10,R12}
STM             LR, {R2,R3,R5,R6,R8-R10,R12}
ADD             R2, R1, #0x220
ADD             LR, R0, #0x124
LDM             R2, {R2,R3,R5,R6,R8-R10,R12}
STM             LR, {R2,R3,R5,R6,R8-R10,R12}
ADD             R5, R1, #0x24C
ADD             R2, R1, #0x240
LDR             R1, [R1,#(dword_10C65C - 0x10C400)]
LDM             R5, {R5,R6,R8,R9}
LDM             R2, {R2,R3,R12}
STR             R1, [R0,#0x160]
ADD             R1, R0, #0x144
ADD             R0, R0, #0x150
STM             R1, {R2,R3,R12}
STM             R0, {R5,R6,R8,R9}
LDR             R0, [R7]
BL              sub_52D294
MOV             R0, R4
NOP
BL              sub_154654
MOV             R0, R4
POP             {R4-R10,PC}
MOV             R0, #8
BL              sub_10A358
CMP             R0, #0
NOP
BEQ             locret_144D8C
MOV             R1, #1
STRB            R1, [R0,#4]
LDR             R1, =off_63FF30
STRB            R6, [R0,#5]
STRH            R6, [R0,#6]
STR             R1, [R0]
POP             {R4-R10,PC}
