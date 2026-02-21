PUSH            {R4-R8,LR}
MOV             R2, #1
MOV             R4, #0
STRB            R2, [R0,#4]
LDR             R3, =off_6ACEAC
STRB            R4, [R0,#5]
STRH            R4, [R0,#6]
STR             R3, [R0]
LDR             R3, =unk_63FCF8
STR             R1, [R0,#8]
ADD             R5, R0, #0xC
MOV             R2, #0xFE
LDM             R3, {R1,R3}
VLDR            S0, =0.0
STM             R5, {R1,R3}
ADD             R1, R0, #0x1C
STRB            R2, [R0,#0x14]
STRB            R4, [R0,#0x15]
STRB            R4, [R0,#0x16]
STRB            R4, [R0,#0x17]
LDR             R2, =off_6B2A84
STRB            R4, [R0,#0x18]
STRB            R4, [R0,#0x19]
STRB            R4, [R0,#0x1A]
STM             R1, {R2,R4}
ADD             R1, R0, #0x24 ; '$'
ADD             R3, R0, #0x3C ; '<'
STM             R1, {R2,R4}
ADD             R1, R0, #0x100
STR             R4, [R0,#0x2C]
LDR             R2, =off_6BB36C
STR             R4, [R0,#0x30]
STR             R4, [R0,#0x34]
STR             R4, [R0,#0x38]
STM             R3, {R2,R4}
MOV             R3, #0x40 ; '@'
STR             R4, [R0,#0x44]
STR             R4, [R0,#0x48]
STR             R4, [R0,#0x4C]
STR             R4, [R0,#0x50]
VSTR            S0, [R0,#0x54]
STRB            R4, [R0,#0x58]
STRB            R4, [R0,#0x59]
STRB            R4, [R0,#0x5A]
STRH            R4, [R1,#0x5C]
STRH            R4, [R1,#0x5E]
STRB            R4, [R0,#0x1E0]
LDR             R1, =sub_33A858
MOV             R2, #0x50 ; 'P'
ADD             R0, R0, #0x1E4
BLX             sub_1002F4
ADD             R0, R0, #0x1400
BL              sub_14F198
MOV             R5, R0
LDR             R0, =off_6B7458
STR             R0, [R5]
STR             R4, [R5,#0x3F4]
BL              sub_4635D8
LDM             R0, {R1,R2}
ADD             R3, R5, #0x3F8
LDR             R0, [R0,#8]
SUB             R4, R5, #0x1400
SUB             R4, R4, #0x1E4
STR             R0, [R5,#0x400]
STM             R3, {R1,R2}
SUB             R0, R5, #0x1400
SUB             R0, R0, #0x84
MOV             R2, #0x80
MOV             R1, #0
BL              sub_110BE4
SUB             R0, R5, #0x1400
SUB             R0, R0, #0x188
MOV             R2, #0x100
MOV             R1, #0
BL              sub_110BE4
LDR             R7, =off_6CE970
MOV             R0, #1
STRB            R0, [R4,#0x5A]
LDR             R0, [R7]
BL              sub_5EE4D4
LDR             R6, =unk_6E1DF4
CMP             R0, #0
BEQ             loc_153D38
LDR             R1, [R4,#8]
ADD             R0, R6, #0x20 ; ' '
ADD             R2, R6, #0x30 ; '0'
LDRB            R1, [R1,#0x495]
CMP             R1, #0
MOVNE           R0, R2
B               loc_153D50
LDR             R2, [R4,#8]
LDR             R0, =unk_6E1DF4
ADD             R1, R6, #0x10
LDRB            R2, [R2,#0x495]
CMP             R2, #0
MOVNE           R0, R1
STR             R0, [R4,#0x2C]
LDR             R5, [R7]
BL              sub_47FFCC
CMP             R0, #0
NOP
BNE             loc_153D7C
LDR             R0, =byte_19CF30
LDRB            R0, [R0,R5]; byte_19CF30
CMP             R0, #0
LDREQ           R5, [R7]
BEQ             loc_153D9C
LDR             R1, [R4,#8]
ADD             R0, R6, #0x40 ; '@'
ADD             R2, R6, #0x54 ; 'T'
LDRB            R1, [R1,#0x495]
CMP             R1, #0
MOVNE           R0, R2
STR             R0, [R4,#0x30]
B               loc_153DC8
NOP
BL              sub_47FFCC
CMP             R0, #0
NOP
BNE             loc_153DC8
LDR             R0, =byte_19CF30
LDRB            R0, [R0,R5]; byte_19CF30
CMP             R0, #0
BNE             loc_153DC8
LDR             R0, =dword_6E1E5C
STR             R0, [R4,#0x30]
LDR             R0, [R7]
BL              sub_52D294
MOV             R0, R4
NOP
BL              sub_151210
MOV             R0, R4
POP             {R4-R8,PC}
