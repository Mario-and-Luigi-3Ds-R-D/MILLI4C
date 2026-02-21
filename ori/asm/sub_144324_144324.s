PUSH            {R4-R8,LR}
MOV             R5, R0
MOV             R6, #0
LDR             R0, =dword_6E2378
LDR             R7, =off_6CE970
LDR             R4, =off_6C3078
MOV             R3, #0x10000
LDRB            R1, [R0,#(byte_6E238B - 0x6E2378)]
LDR             R0, [R7]
MOV             R2, R6
CMP             R1, #1
ADD             R1, R0, #0x68 ; 'h'
BEQ             loc_144400
LDR             R0, =0x3E24
BL              sub_10A358
CMP             R0, #0
BEQ             locret_1444B0
MOV             R1, #0
STRB            R1, [R0,#4]
LDR             R1, =off_6BD7B4
STRB            R6, [R0,#5]
STRH            R6, [R0,#6]
STR             R1, [R0],#8
BL              sub_14CB8C
STR             R4, [R0]
STR             R6, [R0,#0x100]
STRB            R6, [R0,#0xF2]
ADD             R0, R0, #0x104
BL              sub_3688B8
SUB             R4, R0, #0x10C
STR             R6, [R0,#-4]!
SUB             R0, R0, #0x100
LDR             R1, [R0,#0xC]
CMP             R1, #0
MOVEQ           R1, #0
BLEQ            sub_14C3E8
LDR             R2, [R7]
ADD             R6, R4, #0x168
ADD             R0, R4, #0x10C
ADD             R2, R2, #0x68 ; 'h'
STM             R6, {R2,R5}
ADD             R1, R4, #0x170
STR             R1, [R4,#0xF4C]
ADD             R2, R4, #0xEF0
STR             R1, [R0,#0xF90]
STR             R2, [R0,#0xF8C]
STR             R2, [R0,#0xFD8]!
LDR             R2, =0x1114
STR             R1, [R0,#4]
LDR             R0, =0x3D44
STR             R1, [R2,R4]
STR             R1, [R0,R4]
ADD             R0, R4, #0x10C
BL              sub_368804
B               loc_1444AC
LDR             R0, =0x399C8
BL              sub_10A358
CMP             R0, #0
NOP
BEQ             locret_1444B0
MOV             R1, #0
STRB            R1, [R0,#4]
LDR             R1, =off_6BEB80
STRB            R6, [R0,#5]
STRH            R6, [R0,#6]
STR             R1, [R0],#8
BL              sub_14CB8C
STR             R4, [R0]
STR             R6, [R0,#0x100]
STRB            R6, [R0,#0xF2]
ADD             R0, R0, #0x104
BL              sub_3F7E28
SUB             R4, R0, #0x10C
STR             R6, [R0,#-4]!
SUB             R0, R0, #0x100
LDR             R1, [R0,#0xC]
CMP             R1, #0
MOVEQ           R1, #0
BLEQ            sub_14C3E8
LDR             R2, [R7]
ADD             R1, R4, #0x168
LDR             R3, =0x13C08
ADD             R2, R2, #0x68 ; 'h'
STM             R1, {R2,R5}
ADD             R1, R4, #0x13C00
ADD             R0, R4, #0x170
ADD             R1, R1, #0xB8
ADD             R2, R4, #0x13800
ADD             R2, R2, #0x3AC
STR             R0, [R3,R4]
STR             R2, [R1,#4]!
ADD             R2, R3, #0xC0
STR             R0, [R1,#4]
LDR             R1, =0x398E8
STR             R0, [R2,R4]
STR             R0, [R1,R4]
ADD             R0, R4, #0x10C
BL              sub_3F7D74
MOV             R0, R4
POP             {R4-R8,PC}
