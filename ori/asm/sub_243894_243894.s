PUSH            {R0-R2,R4-R11,LR}
VPUSH           {D8-D9}
SUB             SP, SP, #0x2880
ADD             R0, SP, #0x28C0+var_8C0
LDR             R0, [R0,#0x890]
LDR             R0, [R0,#4]
LDR             R1, [R0,#0x608]
CMP             R1, #0
BEQ             loc_246200
LDR             R0, [R0,#0x4EC]
TST             R0, #1
BNE             loc_246200
ADD             R1, SP, #0x28C0+var_8C0
ADD             R1, R1, #0x770
LDR             R4, =off_6B3250
STR             R1, [SP,#0x28C0+var_2878]
LDR             R2, =_ZTV12FieldChrPrim; `vtable for'FieldChrPrim ...
MOV             R0, #0
ADD             R1, SP, #0x28C0+var_8C0
STR             R0, [SP,#0x28C0+var_287C]
STR             R4, [R1,#0x870]
LDR             LR, =_ZTV8FieldChr; `vtable for'FieldChr ...
ADD             R4, R2, #8
ADD             R2, R2, #0x1D8
STR             R2, [R1,#0x7FC]
ADD             R2, LR, #8
STR             R2, [R1,#0x800]
STR             R4, [R1,#0x7F4]!
ADD             R2, LR, #0x348
STR             R2, [R1,#0x10]
LDR             R1, =off_6B38AC
LDR             R2, =off_6B0504
LDR             R12, =_ZTV7FieldPC; `vtable for'FieldPC ...
STR             R1, [SP,#0x28C0+var_28A4]
ADD             R1, SP, #0x28C0+var_8C0
LDR             R3, =_ZTV10FieldMario; `vtable for'FieldMario ...
STR             R2, [R1,#0x7D0]
LDR             R2, =off_6B57BC
LDR             R0, =_ZTV10DreamMario; `vtable for'DreamMario ...
VLDR            S18, =15.0
STR             R2, [R1,#0x808]
ADD             R2, R12, #8
STR             R2, [R1,#0x80C]
ADD             R2, R12, #0x400
STR             R2, [R1,#0x810]
ADD             R2, R12, #0x400
ADD             R2, R2, #0x18
STR             R2, [R1,#0x814]
ADD             R2, R3, #8
STR             R2, [R1,#0x818]
ADD             R2, R3, #0x400
ADD             R2, R2, #8
STR             R2, [R1,#0x81C]
ADD             R2, R3, #0x420
STR             R2, [R1,#0x820]
LDR             R2, =off_6B9EBC
ADD             R1, SP, #0x28C0+var_8C0
STR             R2, [R1,#0x824]
LDR             R2, =off_6B9ECC
STR             R2, [R1,#0x828]
ADD             R1, R0, #8
STR             R1, [SP,#0x28C0+var_289C]
ADD             R1, R0, #0x480
ADD             R0, R0, #0x400
ADD             R0, R0, #0x98
STR             R0, [SP,#0x28C0+var_2894]
LDR             R0, =off_6B7BEC
STR             R1, [SP,#0x28C0+var_2898]
STR             R0, [SP,#0x28C0+var_28B4]
LDR             R0, =off_6B7BFC
STR             R0, [SP,#0x28C0+var_2890]
ADD             R0, SP, #0x28C0+var_8C0
ADD             R4, SP, #0x28C0+var_2860
LDR             R0, [R0,#0x890]
MOV             R2, #0xC8
LDR             R9, [R0,#4]
ADD             R0, SP, #0x28C0+var_8C0
LDR             R0, [R0,#0x870]
STR             R0, [SP,#0x28C0+var_2860]
LDR             R1, [R9,#4]
ADD             R0, SP, #0x28C0+var_8C0
STR             R9, [SP,#0x28C0+var_288C]
STR             R9, [R0,#0x7F0]
STR             R9, [SP,#0x28C0+var_2874]
STR             R9, [R0,#0x86C]
STR             R1, [SP,#0x28C0+var_285C]
LDR             R0, [R9,#8]
ADD             R1, R9, #0x14
STR             R0, [SP,#0x28C0+var_2858]
LDR             R0, [R9,#0xC]
STR             R0, [SP,#0x28C0+var_2854]
LDR             R0, [R9,#0x10]
STR             R0, [SP,#0x28C0+var_2850]
ADD             R0, SP, #0x28C0+var_284C
BL              sub_127EB8
LDRB            R0, [R9,#0xDC]
STRB            R0, [SP,#0x28C0+var_2784]
LDRB            R0, [R9,#0xDD]
STRB            R0, [SP,#0x28C0+var_2783]
LDRB            R0, [SP,#0x28C0+var_2782]
LDRB            R1, [R9,#0xDE]
BIC             R0, R0, #1
AND             R1, R1, #1
ORR             R0, R0, R1
STRB            R0, [SP,#0x28C0+var_2782]
LDRB            R1, [R9,#0xDE]
BIC             R0, R0, #2
AND             R1, R1, #2
ORR             R0, R0, R1
STRB            R0, [SP,#0x28C0+var_2782]
LDRB            R1, [R9,#0xDE]
BIC             R0, R0, #4
AND             R1, R1, #4
ORR             R0, R0, R1
STRB            R0, [SP,#0x28C0+var_2782]
LDRB            R1, [R9,#0xDE]
BIC             R0, R0, #8
AND             R1, R1, #8
ORR             R0, R0, R1
STRB            R0, [SP,#0x28C0+var_2782]
ADD             R1, R9, #0xE0
ADD             R0, R4, #0xE0
BL              sub_234B94
SUB             R7, R0, #0xE0
ADD             R0, SP, #0x28C0+var_8C0
ADD             R1, R9, #0x118
LDR             R0, [R0,#0x7F4]
ADD             R4, R7, #0x118
STR             R0, [R7]
ADD             R0, SP, #0x28C0+var_8C0
LDR             R0, [R0,#0x7FC]
STR             R0, [R7,#0xE0]
LDM             R1, {R1-R3}
MOV             R0, R7
STM             R4, {R1-R3}
ADD             R1, R9, #0x124
ADD             R4, R7, #0x124
LDM             R1, {R1-R3}
STM             R4, {R1-R3}
ADD             R1, R9, #0x130
ADD             R3, R7, #0x130
LDM             R1, {R1,R2}
STM             R3, {R1,R2}
ADD             R1, R9, #0x138
ADD             R3, R7, #0x138
LDM             R1, {R1,R2}
STM             R3, {R1,R2}
ADD             R1, R9, #0x140
ADD             R3, R0, #0x140
LDM             R1, {R1,R2}
STM             R3, {R1,R2}
ADD             R1, R9, #0x148
LDM             R1, {R1,R2}
STR             R1, [R0,#0x148]
STR             R2, [R7,#0x14C]
LDR             R0, [R9,#0x150]
MOV             R2, #0x48 ; 'H'
ADD             R1, R9, #0x164
STR             R0, [R7,#0x150]
LDR             R0, [R9,#0x154]
STR             R0, [R7,#0x154]
LDR             R0, [R9,#0x158]
STR             R0, [R7,#0x158]
LDR             R0, [R9,#0x15C]
STR             R0, [R7,#0x15C]
LDR             R0, [R9,#0x160]
STR             R0, [R7,#0x160]
ADD             R0, R7, #0x164
BL              sub_127EB8
MOV             R2, #0x48 ; 'H'
ADD             R1, R9, #0x1AC
ADD             R0, R7, #0x1AC
BL              sub_127EB8
MOV             R0, #0
VLDR            S17, =0.0
STRB            R0, [R7,#0x205]
MOV             R2, #0x10
VSTR            S17, [R7,#0x208]
STRB            R2, [R7,#0x204]
ADD             R1, R7, #0x228
ADD             LR, R7, #0x268
STR             R1, [R7,#0x20C]
STR             LR, [R7,#0x21C]
ADD             R3, R7, #0x204
ADD             LR, R7, #0x2A8
ADD             R2, R7, #0x2E8
STR             LR, [R7,#0x210]
STR             R2, [R3,#0x1C]
ADD             R2, R7, #0x328
STR             R2, [R3,#0x10]
ADD             R2, R7, #0x368
STR             R2, [R3,#0x20]
ADD             R2, R7, #0x3A8
STR             R2, [R3,#0x14]
ADD             R2, R9, #0x3F8
MOV             R0, R7
LDM             R2, {R2-R6,R8,R10,LR}
MOV             R1, R9
ADD             R11, R9, #0x400
ADD             R12, R7, #0x400
STR             R2, [R7,#0x3F8]
ADD             R2, R7, #0x3FC
STM             R2, {R3-R6,R8,R10,LR}
ADD             R2, R9, #0x400
ADD             R2, R2, #0x18
ADD             R5, R0, #0x400
LDM             R2, {R2-R4,LR}
ADD             R5, R5, #0x18
STM             R5, {R2-R4,LR}
ADD             R2, R1, #0x400
ADD             R2, R2, #0x28 ; '('
ADD             R1, R1, #0x400
LDM             R2, {R2-R6,R8,R10,LR}
ADD             R1, R1, #0x48 ; 'H'
STR             R2, [R0,#0x428]
ADD             R2, R0, #0x400
ADD             R2, R2, #0x2C ; ','
ADD             R0, R0, #0x400
STM             R2, {R3-R6,R8,R10,LR}
ADD             R0, R0, #0x48 ; 'H'
LDM             R1, {R2-R6,LR}
LDR             R1, [R9,#0x460]
STM             R0, {R2-R6,LR}
STR             R1, [R7,#0x460]
LDR             R0, [R7,#0x464]
LDR             R1, [R9,#0x464]
BIC             R0, R0, #0xF
AND             R1, R1, #0xF
ORR             R1, R1, R0
BIC             R0, R1, #0xF0
STR             R1, [R7,#0x464]
LDR             R1, [R9,#0x464]
AND             R1, R1, #0xF0
ORR             R1, R1, R0
BIC             R0, R1, #0x700
STR             R1, [R7,#0x464]
LDR             R1, [R9,#0x464]
AND             R1, R1, #0x700
ORR             R1, R1, R0
BIC             R0, R1, #0x3800
STR             R1, [R7,#0x464]
LDR             R1, [R9,#0x464]
AND             R1, R1, #0x3800
ORR             R1, R1, R0
B               loc_243CA4
DCD _ZTV12FieldChrPrim
DCD _ZTV8FieldChr
DCD _ZTV7FieldPC
DCD _ZTV10FieldMario
DCD _ZTV10DreamMario
DCFS 15.0
DCD off_6B3250
DCD off_6B38AC
DCD off_6B0504
DCD off_6B57BC
DCD off_6B9EBC
DCD off_6B9ECC
DCD off_6B7BEC
DCD off_6B7BFC
DCFS 0.0
BIC             R0, R1, #0x4000
STR             R1, [R7,#0x464]
LDR             R1, [R9,#0x464]
ADD             R10, R12, #0x9C
MOV             R3, R9
AND             R1, R1, #0x4000
ORR             R1, R1, R0
BIC             R0, R1, #0x10000
STR             R1, [R7,#0x464]
LDR             R1, [R9,#0x464]
MOV             R2, R7
ADD             R6, R7, #0x400
AND             R1, R1, #0x10000
ORR             R1, R1, R0
BIC             R0, R1, #0x20000
STR             R1, [R7,#0x464]
LDR             R1, [R9,#0x464]
ADD             R5, R9, #0x400
ADD             R6, R6, #0xB5
AND             R1, R1, #0x20000
ORR             R1, R1, R0
BIC             R0, R1, #0x40000
STR             R1, [R7,#0x464]
LDR             R1, [R9,#0x464]
ADD             R5, R5, #0xB5
MOV             R4, R12
AND             R1, R1, #0x40000
ORR             R1, R1, R0
STR             R1, [R7,#0x464]
LDRH            R0, [R11,#0x68]
MOV             R1, #0x1F00000
STRH            R0, [R12,#0x68]
LDRH            R0, [R11,#0x6A]
STRH            R0, [R12,#0x6A]
LDRH            R0, [R11,#0x6C]
STRH            R0, [R12,#0x6C]
LDRH            R0, [R11,#0x6E]
STRH            R0, [R12,#0x6E]
LDR             R0, [R11,#0x70]
STR             R0, [R12,#0x70]
LDR             R0, [R11,#0x74]
STR             R0, [R12,#0x74]
LDR             R0, [R11,#0x78]
STR             R0, [R12,#0x78]
LDR             R0, [R11,#0x7C]
STR             R0, [R12,#0x7C]
LDR             R0, [R11,#0x80]
STR             R0, [R12,#0x80]
VLDR            S0, [R11,#0x84]
MOV             R0, #0x3E000000
VSTR            S0, [R12,#0x84]
LDR             LR, [R11,#0x88]
STR             LR, [R12,#0x88]
LDR             LR, [R11,#0x8C]
STR             LR, [R12,#0x8C]
LDR             LR, [R11,#0x90]
STR             LR, [R12,#0x90]
LDR             LR, [R11,#0x94]
STR             LR, [R12,#0x94]
LDR             LR, [R11,#0x98]
STR             LR, [R12,#0x98]
LDR             R8, [R11,#0x9C]
LDR             LR, [R11,#0xA0]
STM             R10, {R8,LR}
ADD             R8, R11, #0xA4
ADD             R10, R12, #0xA4
LDM             R8, {R8,LR}
STM             R10, {R8,LR}
LDR             LR, [R9,#0x4AC]
STR             LR, [R7,#0x4AC]
LDR             LR, [R3,#0x4B0]
STR             LR, [R7,#0x4B0]
LDRB            LR, [R11,#0xB4]
STRB            LR, [R2,#0x4B4]
LDRB            R2, [R7,#0x4B5]
LDRB            R3, [R9,#0x4B5]
ADD             R10, R7, #0x400
BIC             R2, R2, #3
AND             R3, R3, #3
ORR             R2, R2, R3
STRB            R2, [R6]
LDRB            R3, [R5]
BIC             R2, R2, #4
ADD             R10, R10, #0xEC
AND             R3, R3, #4
ORR             R2, R2, R3
STRB            R2, [R6]
LDRB            R3, [R5]
BIC             R2, R2, #8
ADD             LR, R9, #0x400
AND             R3, R3, #8
ORR             R2, R2, R3
STRB            R2, [R6]
LDRB            R3, [R5]
BIC             R2, R2, #0xF0
MOV             R5, LR
BIC             R3, R3, #0xF
ORR             R2, R2, R3
STRB            R2, [R6]
STR             R10, [SP,#0x28C0+var_28C0]
LDRH            R3, [R12,#0xB6]
LDRH            R6, [R11,#0xB6]
MOV             R2, R7
BIC             R3, R3, #1
AND             R6, R6, #1
ORR             R3, R3, R6
STRH            R3, [R12,#0xB6]
LDRH            R6, [R11,#0xB6]
BIC             R3, R3, #2
AND             R6, R6, #2
ORR             R3, R3, R6
STRH            R3, [R12,#0xB6]
LDRH            R6, [R11,#0xB6]
BIC             R3, R3, #4
AND             R6, R6, #4
ORR             R3, R3, R6
STRH            R3, [R12,#0xB6]
LDRH            R6, [R11,#0xB6]
BIC             R3, R3, #8
AND             R6, R6, #8
ORR             R3, R3, R6
STRH            R3, [R12,#0xB6]
LDRH            R6, [R11,#0xB6]
BIC             R3, R3, #0x10
AND             R6, R6, #0x10
ORR             R3, R3, R6
STRH            R3, [R12,#0xB6]
LDRH            R6, [R11,#0xB6]
BIC             R3, R3, #0x20 ; ' '
AND             R6, R6, #0x20 ; ' '
ORR             R3, R3, R6
STRH            R3, [R12,#0xB6]
LDRH            R6, [R11,#0xB6]
BIC             R3, R3, #0x40 ; '@'
AND             R6, R6, #0x40 ; '@'
ORR             R3, R3, R6
STRH            R3, [R12,#0xB6]
LDRH            R3, [R11,#0xB6]
ADD             R11, R9, #0x400
ADD             R11, R11, #0xEC
AND             R3, R3, #3
STRH            R3, [R12,#0xB6]
ADD             R3, SP, #0x28C0+var_8C0
LDR             R3, [R3,#0x800]
STR             R3, [R7]
ADD             R3, SP, #0x28C0+var_8C0
LDR             R3, [R3,#0x804]
STR             R3, [R7,#0xE0]
LDR             LR, [LR,#0xB8]
MOV             R3, R9
ADD             R8, R9, #0x4F0
STR             LR, [R12,#0xB8]
STR             R8, [SP,#0x28C0+var_28B0]
LDR             LR, [R5,#0xBC]
ADD             R6, R2, #0x4F0
MOV             R10, R6
STR             LR, [R12,#0xBC]
LDR             LR, [R5,#0xC0]
STR             LR, [R12,#0xC0]
LDR             LR, [R5,#0xC4]
STR             LR, [R12,#0xC4]
LDR             LR, [R5,#0xC8]
STR             LR, [R12,#0xC8]
LDR             LR, [R5,#0xCC]
STR             LR, [R12,#0xCC]
LDRH            LR, [R5,#0xD0]
STRH            LR, [R12,#0xD0]
LDRH            LR, [R5,#0xD2]
STRH            LR, [R12,#0xD2]
LDR             LR, [R5,#0xD4]
STR             LR, [R12,#0xD4]
LDR             LR, [R5,#0xD8]
STR             LR, [R12,#0xD8]
LDR             LR, [R5,#0xDC]
STR             LR, [R12,#0xDC]
LDR             LR, [R5,#0xE0]
STR             LR, [R12,#0xE0]
LDR             LR, [R5,#0xE4]
STR             LR, [R12,#0xE4]
LDR             LR, [R5,#0xE8]
STR             LR, [R4,#0xE8]
LDR             R12, [R2,#0x4EC]
LDR             LR, [R3,#0x4EC]
BIC             R12, R12, #1
AND             LR, LR, #1
ORR             R12, R12, LR
LDR             LR, [SP,#0x28C0+var_28C0]
STR             R12, [LR]
LDR             LR, [R11]
BIC             R12, R12, #2
AND             LR, LR, #2
ORR             R12, R12, LR
LDR             LR, [SP,#0x28C0+var_28C0]
STR             R12, [LR]
LDR             LR, [R11]
BIC             R12, R12, #4
AND             LR, LR, #4
ORR             R12, R12, LR
LDR             LR, [SP,#0x28C0+var_28C0]
STR             R12, [LR]
LDR             LR, [R11]
BIC             R12, R12, #8
AND             LR, LR, #8
ORR             R12, R12, LR
LDR             LR, [SP,#0x28C0+var_28C0]
STR             R12, [LR]
LDR             LR, [R11]
BIC             R12, R12, #0x10
AND             LR, LR, #0x10
ORR             R12, R12, LR
LDR             LR, [SP,#0x28C0+var_28C0]
STR             R12, [LR]
LDR             LR, [R11]
BIC             R12, R12, #0xE0
AND             LR, LR, #0xE0
ORR             R12, R12, LR
LDR             LR, [SP,#0x28C0+var_28C0]
STR             R12, [LR]
LDR             LR, [R11]
BIC             R12, R12, #0x100
AND             LR, LR, #0x100
ORR             R12, R12, LR
LDR             LR, [SP,#0x28C0+var_28C0]
STR             R12, [LR]
BIC             R12, R12, #0x200
LDR             LR, [R11]
AND             LR, LR, #0x200
ORR             R12, R12, LR
LDR             LR, [SP,#0x28C0+var_28C0]
STR             R12, [LR]
LDR             LR, [R11]
BIC             R12, R12, #0x400
AND             LR, LR, #0x400
ORR             R12, R12, LR
LDR             LR, [SP,#0x28C0+var_28C0]
STR             R12, [LR]
LDR             LR, [R11]
BIC             R12, R12, #0x800
AND             LR, LR, #0x800
ORR             R12, R12, LR
LDR             LR, [SP,#0x28C0+var_28C0]
STR             R12, [LR]
LDR             LR, [R11]
BIC             R12, R12, #0xF000
AND             LR, LR, #0xF000
ORR             R12, R12, LR
LDR             LR, [SP,#0x28C0+var_28C0]
STR             R12, [LR]
LDR             LR, [R11]
BIC             R12, R12, #0xF0000
AND             LR, LR, #0xF0000
ORR             R12, R12, LR
LDR             LR, [SP,#0x28C0+var_28C0]
STR             R12, [LR]
LDR             LR, [R11]
BIC             R12, R12, #0x1F00000
MOV             LR, LR,LSL#7
AND             R1, R1, LR,ASR#7
ORR             R1, R1, R12
LDR             R12, [SP,#0x28C0+var_28C0]
STR             R1, [R12]
LDR             R12, [R11]
BIC             R1, R1, #0x3E000000
MOV             R12, R12,LSL#2
AND             R0, R0, R12,ASR#2
ORR             R0, R0, R1
LDR             R1, [SP,#0x28C0+var_28C0]
STR             R0, [R1]
LDR             R0, [R7,#0x4F0]
LDR             R1, [R9,#0x4F0]
BIC             R0, R0, #1
AND             R1, R1, #1
ORR             R0, R0, R1
STR             R0, [R6]
LDR             R1, [R8]
BIC             R0, R0, #6
ADD             R8, R9, #0x400
AND             R1, R1, #6
ORR             R0, R0, R1
STR             R0, [R6]
LDR             R1, [R9,#0x4F0]
BIC             R2, R0, #8
ADD             R6, R7, #0x400
AND             R0, R1, #8
ORR             R1, R2, R0
STR             R1, [R10]
LDR             R2, [SP,#0x28C0+var_28B0]
BIC             R1, R1, #0x10
ADD             R6, R6, #0xF4
ADD             R8, R8, #0xF4
LDR             R2, [R2]
MOV             R0, R6
AND             R2, R2, #0x10
ORR             R1, R1, R2
STR             R1, [R10]
LDR             R2, [SP,#0x28C0+var_28B0]
BIC             R1, R1, #0x20 ; ' '
LDR             R2, [R2]
AND             R2, R2, #0x20 ; ' '
ORR             R1, R1, R2
STR             R1, [R10]
LDR             R2, [SP,#0x28C0+var_28B0]
BIC             R1, R1, #0x40 ; '@'
LDR             R2, [R2]
AND             R2, R2, #0x40 ; '@'
ORR             R1, R1, R2
STR             R1, [R10]
LDR             R2, [SP,#0x28C0+var_28B0]
BIC             R1, R1, #0x80
LDR             R2, [R2]
AND             R2, R2, #0x80
ORR             R1, R1, R2
STR             R1, [R10]
LDR             R2, [SP,#0x28C0+var_28B0]
BIC             R1, R1, #0x100
LDR             R2, [R2]
AND             R2, R2, #0x100
ORR             R1, R1, R2
STR             R1, [R10]
VLDR            S0, [SP,#0x28C0+var_28A4]
MOV             R2, #0x4C ; 'L'
VSTR            S0, [R6]
LDR             R1, [R8,#4]
STR             R1, [R0,#4]
LDR             R1, [R8,#8]
ADD             R0, R6, #0xC
STR             R1, [R6,#8]
ADD             R1, R8, #0xC
BL              sub_127EB8
MOV             R2, #0x4C ; 'L'
ADD             R1, R8, #0x58 ; 'X'
ADD             R0, R6, #0x58 ; 'X'
BL              sub_127EB8
ADD             R0, SP, #0x28C0+var_4C0
ADD             R12, R9, #0x5E0
VLDR            S0, [R0,#0x3D0]
MOV             R0, R4
VSTR            S0, [R6]
STR             R12, [SP,#0x28C0+var_28B0]
LDR             LR, [R8,#0xA4]
ADD             R1, R0, #0x1BC
ADD             R0, R0, #0x1D0
STR             LR, [R6,#0xA4]
LDR             LR, [R8,#0xA8]
ADD             R3, R7, #0x5E0
MOV             R11, R3
STR             LR, [R6,#0xA8]
LDR             LR, [R8,#0xAC]
STR             LR, [R6,#0xAC]
LDRH            LR, [R8,#0xB0]
STRH            LR, [R6,#0xB0]
LDRH            LR, [R8,#0xB2]
STRH            LR, [R6,#0xB2]
LDRH            LR, [R8,#0xB4]
STRH            LR, [R6,#0xB4]
LDRH            LR, [R8,#0xB6]
STRH            LR, [R6,#0xB6]
LDR             LR, [R5,#0x1AC]
ADD             R6, R5, #0x1BC
STR             LR, [R4,#0x1AC]
LDR             LR, [R5,#0x1B0]
STR             LR, [R4,#0x1B0]
LDR             LR, [R5,#0x1B4]
STR             LR, [R4,#0x1B4]
LDR             LR, [R5,#0x1B8]
STR             LR, [R4,#0x1B8]
LDR             LR, [R5,#0x1BC]
STR             LR, [R4,#0x1BC]
LDR             LR, [R5,#0x1C0]
STR             LR, [R4,#0x1C0]
LDR             LR, [R5,#0x1C4]
STR             LR, [R4,#0x1C4]
LDR             LR, [R5,#0x1C8]
STR             LR, [R4,#0x1C8]
LDM             R6, {R6,R8,R10,LR}
STM             R1, {R6,R8,R10,LR}
ADD             R6, R5, #0x1D0
LDR             LR, [R5,#0x1CC]
STR             LR, [R4,#0x1CC]
LDR             LR, [R5,#0x1D0]
STR             LR, [R4,#0x1D0]
LDR             LR, [R5,#0x1D4]
STR             LR, [R4,#0x1D4]
LDR             LR, [R5,#0x1D8]
STR             LR, [R4,#0x1D8]
LDR             LR, [R5,#0x1DC]
STR             LR, [R4,#0x1DC]
LDM             R6, {R6,R8,R10,LR}
STM             R0, {R6,R8,R10}
STR             LR, [R4,#0x1DC]
LDR             R0, [R7,#0x5E0]
LDR             R1, [R9,#0x5E0]
BIC             R0, R0, #1
AND             R1, R1, #1
ORR             R0, R0, R1
STR             R0, [R3]
LDR             R1, [R12]
BIC             R0, R0, #2
AND             R1, R1, #2
ORR             R0, R0, R1
STR             R0, [R3]
LDR             R1, [R12]
BIC             R0, R0, #4
AND             R1, R1, #4
ORR             R0, R0, R1
STR             R0, [R3]
LDR             R1, [R12]
BIC             R0, R0, #8
AND             R1, R1, #8
ORR             R0, R0, R1
STR             R0, [R3]
LDR             R1, [R12]
BIC             R0, R0, #0x10
AND             R1, R1, #0x10
ORR             R0, R0, R1
STR             R0, [R3]
LDR             R1, [R12]
BIC             R0, R0, #0x20 ; ' '
AND             R1, R1, #0x20 ; ' '
ORR             R0, R0, R1
STR             R0, [R3]
LDR             R1, [R12]
BIC             R0, R0, #0x40 ; '@'
AND             R1, R1, #0x40 ; '@'
ORR             R0, R0, R1
STR             R0, [R3]
LDR             R1, [R12]
BIC             R0, R0, #0x80
AND             R1, R1, #0x80
ORR             R0, R0, R1
STR             R0, [R3]
LDR             R1, [R12]
BIC             R0, R0, #0x100
AND             R1, R1, #0x100
ORR             R0, R0, R1
STR             R0, [R3]
LDR             R1, [R12]
BIC             R0, R0, #0x200
AND             R1, R1, #0x200
ORR             R0, R0, R1
STR             R0, [R3]
LDR             R1, [R12]
BIC             R0, R0, #0x400
AND             R1, R1, #0x400
ORR             R0, R0, R1
STR             R0, [R3]
LDR             R1, [R12]
BIC             R0, R0, #0x800
AND             R1, R1, #0x800
ORR             R0, R0, R1
STR             R0, [R3]
LDR             R1, [R12]
BIC             R0, R0, #0x1000
AND             R1, R1, #0x1000
ORR             R0, R0, R1
STR             R0, [R3]
LDR             R1, [R12]
BIC             R0, R0, #0x2000
AND             R1, R1, #0x2000
ORR             R0, R0, R1
STR             R0, [R3]
LDR             R1, [R12]
BIC             R0, R0, #0x4000
AND             R1, R1, #0x4000
ORR             R0, R0, R1
STR             R0, [R3]
LDR             R1, [R12]
BIC             R0, R0, #0x8000
AND             R1, R1, #0x8000
ORR             R0, R0, R1
STR             R0, [R3]
LDR             R1, [R12]
BIC             R0, R0, #0x10000
AND             R1, R1, #0x10000
ORR             R0, R0, R1
STR             R0, [R3]
LDR             R1, [R12]
BIC             R0, R0, #0x20000
AND             R1, R1, #0x20000
ORR             R0, R0, R1
STR             R0, [R3]
LDR             R1, [R12]
BIC             R0, R0, #0x40000
ADD             LR, SP, #0x28C0+var_8C0
AND             R1, R1, #0x40000
ORR             R0, R0, R1
STR             R0, [R3]
LDR             R1, [R12]
BIC             R0, R0, #0x80000
AND             R1, R1, #0x80000
ORR             R0, R0, R1
STR             R0, [R3]
LDR             R1, [R12]
BIC             R0, R0, #0x100000
AND             R1, R1, #0x100000
ORR             R0, R0, R1
STR             R0, [R3]
LDR             R1, [R12]
BIC             R0, R0, #0x200000
AND             R1, R1, #0x200000
ORR             R0, R0, R1
STR             R0, [R3]
LDR             R2, [R9,#0x5E0]
BIC             R12, R0, #0x400000
MOV             R1, R7
AND             R2, R2, #0x400000
ORR             R6, R12, R2
MOV             R2, #0
STR             R6, [R11]
STR             R2, [LR,#0x834]
STR             R2, [LR,#0x838]
STR             R2, [LR,#0x83C]
STR             R2, [LR,#0x840]
STR             R2, [LR,#0x844]
STR             R2, [LR,#0x848]
STR             R2, [LR,#0x84C]
STR             R2, [LR,#0x850]
STR             R2, [LR,#0x854]
STR             R2, [LR,#0x858]
MOV             R12, #0
STR             R2, [LR,#0x85C]
STR             R12, [LR,#0x860]
STR             R12, [LR,#0x868]
STR             R12, [LR,#0x864]
LDR             LR, [SP,#0x28C0+var_28B0]
BIC             R12, R6, #7
ADD             R0, R7, #0x640
MOV             R10, R2
LDR             LR, [LR]
MOV             R8, R2
AND             LR, LR, #7
ORR             R12, R12, LR
STR             R12, [R11]
LDR             LR, [SP,#0x28C0+var_28B0]
BIC             R12, R12, #0x7E00
LDR             LR, [LR]
AND             LR, LR, #0x7E00
ORR             R12, R12, LR
STR             R12, [R11]
LDR             LR, [SP,#0x28C0+var_28B0]
BIC             R12, R12, #0x1F8000
LDR             LR, [LR]
AND             LR, LR, #0x1F8000
ORR             R12, R12, LR
STR             R12, [R11]
LDR             LR, [SP,#0x28C0+var_28B0]
MOV             R12, R12,LSL#9
MOV             R12, R12,LSR#9
LDR             LR, [LR]
MOV             LR, LR,LSR#23
MOV             LR, LR,LSL#23
ORR             R12, R12, LR
STR             R12, [R11]
LDR             R12, [SP,#0x28C0+var_28B0]
VLDR            S0, [R12]
VSTR            S0, [R11]
LDR             R12, [R9,#0x5E4]
STR             R12, [R1,#0x5E4]
VLDR            S0, [R5,#0x1E8]
ADD             R6, R5, #0x214
VSTR            S0, [R4,#0x1E8]
VLDR            S0, [R5,#0x1EC]
MOV             R3, R4
VSTR            S0, [R4,#0x1EC]
VLDR            S0, [R5,#0x1F0]
ADD             LR, R9, #0x640
VSTR            S0, [R4,#0x1F0]
VLDR            S0, [R5,#0x1F4]
VSTR            S0, [R4,#0x1F4]
VLDR            S0, [R5,#0x1F8]
VSTR            S0, [R4,#0x1F8]
VLDR            S0, [R5,#0x1FC]
VSTR            S0, [R4,#0x1FC]
VLDR            S0, [R5,#0x200]
VSTR            S0, [R4,#0x200]
LDR             R12, [R9,#0x604]
STR             R12, [R7,#0x604]
LDR             R12, [R9,#0x608]
STR             R12, [R7,#0x608]
LDR             R12, [R9,#0x60C]
STR             R12, [R7,#0x60C]
LDR             R12, [R9,#0x610]
STR             R12, [R7,#0x610]
VLDM            R6, {S0-S3}
ADD             R6, R3, #0x214
ADD             R3, R3, #0x224
VSTM            R6, {S0-S3}
ADD             R6, R5, #0x224
VLDR            S0, [R5,#0x224]
VSTR            S0, [R4,#0x224]
VLDR            S0, [R5,#0x228]
VSTR            S0, [R4,#0x228]
VLDR            S0, [R5,#0x22C]
VSTR            S0, [R4,#0x22C]
VLDR            S0, [R5,#0x230]
VSTR            S0, [R4,#0x230]
VLDM            R6, {S0-S3}
VSTM            R3, {S0-S2}
VSTR            S3, [R4,#0x230]
VLDR            S0, [R5,#0x234]
VSTR            S0, [R4,#0x234]
VLDR            S0, [R5,#0x238]
VSTR            S0, [R4,#0x238]
LDR             R3, [R9,#0x640]
LDR             R12, [R1,#0x640]
LDR             R1, [R7,#0x644]
AND             R3, R3, #1
BIC             R12, R12, #1
ORR             R3, R3, R12
ORR             R12, R1, R2
STM             R0, {R3,R12}
BIC             R2, R3, #2
LDR             R1, [LR]
ORR             R3, R12, R10
MOV             R1, R1,LSL#30
MOV             R1, R1,LSR#31
ADDS            R1, R1, R1
AND             R1, R1, #2
ORR             R2, R2, R1
STRD            R2, R3, [R0]
LDR             R1, [LR]
BIC             R2, R2, #4
ORR             R3, R3, R8
MOV             R1, R1,LSL#29
MOV             R1, R1,LSR#31
MOV             R1, R1,LSL#2
AND             R1, R1, #4
ORR             R2, R2, R1
STRD            R2, R3, [R0]
LDR             R1, [LR]
MOV             R1, R1,LSL#28
MOV             R1, R1,LSR#31
MOV             R1, R1,LSL#3
ADD             R6, SP, #0x28C0+var_8C0
AND             R1, R1, #8
LDR             R12, [R6,#0x834]
BIC             R2, R2, #8
ORR             R2, R2, R1
ORR             R3, R3, R12
STRD            R2, R3, [R0]
LDR             R1, [LR]
LDR             R12, [R6,#0x838]
BIC             R2, R2, #0x10
MOV             R1, R1,LSL#27
ORR             R3, R3, R12
MOV             R1, R1,LSR#31
MOV             R1, R1,LSL#4
AND             R1, R1, #0x10
ORR             R2, R2, R1
STRD            R2, R3, [R0]
LDR             R1, [LR]
LDR             R12, [R6,#0x83C]
BIC             R2, R2, #0x20 ; ' '
MOV             R1, R1,LSL#26
ORR             R3, R3, R12
MOV             R1, R1,LSR#31
MOV             R1, R1,LSL#5
AND             R1, R1, #0x20 ; ' '
ORR             R2, R2, R1
STRD            R2, R3, [R0]
LDR             R1, [LR]
LDR             R12, [R6,#0x840]
BIC             R2, R2, #0x40 ; '@'
MOV             R1, R1,LSL#25
ORR             R3, R3, R12
MOV             R1, R1,LSR#31
MOV             R1, R1,LSL#6
AND             R1, R1, #0x40 ; '@'
ORR             R2, R2, R1
STRD            R2, R3, [R0]
LDR             R1, [LR]
LDR             R12, [R6,#0x844]
BIC             R2, R2, #0x80
MOV             R1, R1,LSL#24
ORR             R3, R3, R12
MOV             R1, R1,LSR#31
MOV             R1, R1,LSL#7
AND             R1, R1, #0x80
ORR             R2, R2, R1
STRD            R2, R3, [R0]
LDR             R1, [LR]
LDR             R12, [R6,#0x848]
BIC             R2, R2, #0x100
MOV             R1, R1,LSL#23
ORR             R3, R3, R12
MOV             R1, R1,LSR#31
MOV             R1, R1,LSL#8
AND             R1, R1, #0x100
ORR             R2, R2, R1
STRD            R2, R3, [R0]
LDR             R1, [LR]
LDR             R12, [R6,#0x84C]
BIC             R2, R2, #0x8000
MOV             R1, R1,LSL#16
ORR             R3, R3, R12
MOV             R1, R1,LSR#31
MOV             R1, R1,LSL#15
AND             R1, R1, #0x8000
ORR             R2, R2, R1
STRD            R2, R3, [R0]
LDR             R1, [LR]
LDR             R12, [R6,#0x850]
BIC             R2, R2, #0x10000
MOV             R1, R1,LSL#15
MOV             R1, R1,LSR#31
MOV             R1, R1,LSL#16
AND             R1, R1, #0x10000
ORR             R2, R2, R1
ORR             R3, R3, R12
STRD            R2, R3, [R0]
LDR             R1, [LR]
LDR             R12, [R6,#0x854]
BIC             R2, R2, #0x20000
MOV             R1, R1,LSL#14
ORR             R6, R3, R12
MOV             R1, R1,LSR#31
ADD             R3, SP, #0x28C0+var_8C0
MOV             R1, R1,LSL#17
AND             R1, R1, #0x20000
ORR             R2, R2, R1
STM             R0, {R2,R6}
BIC             R2, R2, #0x40000
LDR             R1, [LR]
LDR             R12, [R3,#0x858]
MOV             R1, R1,LSL#13
MOV             R1, R1,LSR#31
MOV             R1, R1,LSL#18
AND             R1, R1, #0x40000
ORR             R3, R2, R1
ORR             R2, R6, R12
STR             R2, [R0,#4]
STR             R3, [R0]
LDR             R1, [LR]
ADD             R12, SP, #0x28C0+var_8C0
BIC             R3, R3, #0x80000
LDR             R12, [R12,#0x85C]
MOV             R1, R1,LSL#12
MOV             R1, R1,LSR#31
ORR             R2, R2, R12
MOV             R1, R1,LSL#19
AND             R1, R1, #0x80000
ORR             R3, R3, R1
STR             R2, [R0,#4]
STR             R3, [R0]
LDR             R1, [LR]
ADD             R12, SP, #0x28C0+var_8C0
BIC             R3, R3, #0x100000
LDR             R12, [R12,#0x860]
MOV             R1, R1,LSL#11
MOV             R1, R1,LSR#31
ORR             R2, R2, R12
MOV             R1, R1,LSL#20
AND             R1, R1, #0x100000
ORR             R3, R3, R1
STR             R2, [R0,#4]
STR             R3, [R0]
LDR             R1, [LR]
ADD             R12, SP, #0x28C0+var_8C0
BIC             R3, R3, #0x200000
LDR             R12, [R12,#0x868]
MOV             R1, R1,LSL#10
MOV             R1, R1,LSR#31
ORR             R2, R2, R12
MOV             R1, R1,LSL#21
AND             R1, R1, #0x200000
ORR             R3, R3, R1
STR             R2, [R0,#4]
STR             R3, [R0]
LDR             R1, [LR]
ADD             R12, SP, #0x28C0+var_8C0
BIC             R3, R3, #0x400000
LDR             R12, [R12,#0x864]
MOV             R1, R1,LSL#9
MOV             R1, R1,LSR#31
MOV             R1, R1,LSL#22
AND             R1, R1, #0x400000
ORR             R3, R3, R1
ORR             R1, R2, R12
STR             R3, [R0]
STR             R1, [R0,#4]
LDR             R2, [R9,#0x640]
BIC             R12, R3, #0x800000
MOV             R2, R2,LSL#8
MOV             R2, R2,LSR#31
MOV             R2, R2,LSL#23
AND             R2, R2, #0x800000
ORR             R2, R2, R12
STR             R2, [R0]
BIC             R12, R2, #0x1000000
STR             R1, [R0,#4]
LDR             R2, [LR]
MOV             R2, R2,LSL#7
MOV             R2, R2,LSR#31
MOV             R2, R2,LSL#24
AND             R2, R2, #0x1000000
ORR             R2, R2, R12
STR             R2, [R0]
BIC             R12, R2, #0x2000000
STR             R1, [R0,#4]
LDR             R2, [LR]
MOV             R2, R2,LSL#6
MOV             R2, R2,LSR#31
MOV             R2, R2,LSL#25
AND             R2, R2, #0x2000000
ORR             R2, R2, R12
STR             R2, [R0]
BIC             R12, R2, #0x4000000
STR             R1, [R0,#4]
LDR             R2, [LR]
MOV             R2, R2,LSL#5
MOV             R2, R2,LSR#31
MOV             R2, R2,LSL#26
AND             R2, R2, #0x4000000
ORR             R2, R2, R12
STR             R2, [R0]
BIC             R12, R2, #0x8000000
STR             R1, [R0,#4]
LDR             R2, [LR]
MOV             R2, R2,LSL#4
MOV             R2, R2,LSR#31
MOV             R2, R2,LSL#27
AND             R2, R2, #0x8000000
ORR             R2, R2, R12
STR             R2, [R0]
BIC             R12, R2, #0x10000000
STR             R1, [R0,#4]
LDR             R2, [LR]
MOV             R2, R2,LSL#3
MOV             R2, R2,LSR#31
MOV             R2, R2,LSL#28
AND             R2, R2, #0x10000000
ORR             R2, R2, R12
STR             R2, [R0]
BIC             R12, R2, #0x20000000
STR             R1, [R0,#4]
LDR             R2, [LR]
MOV             R2, R2,LSL#2
MOV             R2, R2,LSR#31
MOV             R2, R2,LSL#29
AND             R2, R2, #0x20000000
ORR             R2, R2, R12
STR             R2, [R0]
BIC             R12, R2, #7
STR             R1, [R0,#4]
LDR             R2, [LR]
AND             R2, R2, #7
ORR             R2, R2, R12
STR             R2, [R0]
BIC             R12, R2, #0x38 ; '8'
STR             R1, [R0,#4]
LDR             R2, [LR]
MOV             R2, R2,LSL#26
MOV             R2, R2,LSR#29
MOV             R2, R2,LSL#3
AND             R2, R2, #0x38 ; '8'
ORR             R2, R2, R12
BIC             R12, R2, #0x1C0
STR             R2, [R0]
STR             R1, [R0,#4]
LDR             R2, [LR]
MOV             R2, R2,LSL#23
MOV             R2, R2,LSR#29
MOV             R2, R2,LSL#6
AND             R2, R2, #0x1C0
ORR             R2, R2, R12
STR             R2, [R0]
BIC             R12, R2, #0x38000
STR             R1, [R0,#4]
LDR             R2, [LR]
MOV             R2, R2,LSL#14
MOV             R2, R2,LSR#29
MOV             R2, R2,LSL#15
AND             R2, R2, #0x38000
ORR             R2, R2, R12
STR             R2, [R0]
BIC             R12, R2, #0x1C0000
STR             R1, [R0,#4]
LDR             R2, [LR]
MOV             R2, R2,LSL#11
MOV             R2, R2,LSR#29
MOV             R2, R2,LSL#18
AND             R2, R2, #0x1C0000
ORR             R2, R2, R12
STR             R2, [R0]
BIC             R12, R2, #0xE00000
STR             R1, [R0,#4]
LDR             R2, [LR]
MOV             R2, R2,LSL#8
MOV             R2, R2,LSR#29
MOV             R2, R2,LSL#21
AND             R2, R2, #0xE00000
ORR             R2, R2, R12
STR             R2, [R0]
BIC             R12, R2, #0x7000000
STR             R1, [R0,#4]
LDR             R2, [LR]
MOV             R2, R2,LSL#5
MOV             R2, R2,LSR#29
MOV             R2, R2,LSL#24
AND             R2, R2, #0x7000000
ORR             R2, R2, R12
STR             R2, [R0]
BIC             R12, R2, #0x38000000
STR             R1, [R0,#4]
LDR             R2, [LR]
STR             R1, [R0,#4]
MOV             R2, R2,LSL#2
MOV             R2, R2,LSR#29
MOV             R2, R2,LSL#27
AND             R3, R2, #0x38000000
ORR             R3, R3, R12
STR             R3, [R0]
LDM             LR, {R1,R2}
STM             R0, {R1,R2}
ADD             R1, R9, #0x400
LDR             R2, [R7,#0x648]
ADD             R1, R1, #0x248
STR             R1, [SP,#0x28C0+var_2868]
LDR             R3, [R9,#0x648]
BIC             R2, R2, #1
ADD             R0, R7, #0x400
AND             R3, R3, #1
ORR             R2, R2, R3
STR             R2, [R7,#0x648]
LDR             R3, [R9,#0x648]
BIC             R2, R2, #2
ADD             R0, R0, #0x248
AND             R3, R3, #2
ORR             R2, R2, R3
STR             R2, [R7,#0x648]
LDR             R3, [R9,#0x648]
MOV             R11, R0
BIC             R2, R2, #4
AND             R3, R3, #4
ORR             R2, R2, R3
STR             R2, [R0]
LDR             R3, [R1]
BIC             R2, R2, #8
AND             R3, R3, #8
ORR             R2, R2, R3
STR             R2, [R0]
LDR             R3, [R1]
BIC             R2, R2, #0x10
AND             R3, R3, #0x10
ORR             R2, R2, R3
STR             R2, [R0]
LDR             R3, [R1]
BIC             R2, R2, #0x20 ; ' '
AND             R3, R3, #0x20 ; ' '
ORR             R2, R2, R3
STR             R2, [R0]
LDR             R3, [R1]
BIC             R2, R2, #0x40 ; '@'
AND             R3, R3, #0x40 ; '@'
ORR             R2, R2, R3
STR             R2, [R0]
LDR             R3, [R1]
BIC             R2, R2, #0x80
AND             R3, R3, #0x80
ORR             R2, R2, R3
STR             R2, [R0]
LDR             R3, [R1]
BIC             R2, R2, #0x100
AND             R3, R3, #0x100
ORR             R2, R2, R3
STR             R2, [R0]
LDR             R3, [R1]
BIC             R2, R2, #0x200
AND             R3, R3, #0x200
ORR             R2, R2, R3
STR             R2, [R0]
LDR             R3, [R1]
BIC             R2, R2, #0x400
AND             R3, R3, #0x400
ORR             R2, R2, R3
STR             R2, [R0]
LDR             R3, [R1]
BIC             R2, R2, #0x800
AND             R3, R3, #0x800
ORR             R2, R2, R3
STR             R2, [R0]
LDR             R3, [R1]
BIC             R2, R2, #0x1000
AND             R3, R3, #0x1000
ORR             R2, R2, R3
STR             R2, [R0]
LDR             R3, [R1]
BIC             R2, R2, #0x2000
AND             R3, R3, #0x2000
ORR             R2, R2, R3
STR             R2, [R0]
LDR             R3, [R1]
BIC             R2, R2, #0x4000
AND             R3, R3, #0x4000
ORR             R2, R2, R3
STR             R2, [R0]
LDR             R3, [R1]
BIC             R2, R2, #0x8000
AND             R3, R3, #0x8000
ORR             R2, R2, R3
STR             R2, [R0]
LDR             R3, [R1]
BIC             R2, R2, #0x10000
AND             R3, R3, #0x10000
ORR             R2, R2, R3
STR             R2, [R0]
LDR             R3, [R1]
BIC             R2, R2, #0x20000
ADD             R6, R7, #0x400
AND             R3, R3, #0x20000
ORR             R2, R2, R3
STR             R2, [R0]
LDR             R1, [R1]
BIC             R2, R2, #0x40000
ADD             R6, R6, #0x258
AND             R1, R1, #0x40000
ORR             R2, R2, R1
STR             R2, [R0]
LDR             R1, [R9,#0x648]
BIC             R12, R2, #0x180000
MOV             R2, R7
AND             R1, R1, #0x180000
ORR             R12, R12, R1
STR             R12, [R11]
LDR             R8, [SP,#0x28C0+var_2868]
BIC             R12, R12, #0x600000
ADD             LR, R9, #0x400
ADD             LR, LR, #0x258
LDR             R8, [R8]
ADD             R0, R7, #0x600
MOV             R10, R0
AND             R8, R8, #0x600000
ORR             R12, R12, R8
STR             R12, [R11]
LDR             R8, [SP,#0x28C0+var_2868]
BIC             R12, R12, #0x800000
ADD             R1, R9, #0x600
LDR             R8, [R8]
AND             R8, R8, #0x800000
ORR             R12, R12, R8
STR             R12, [R11]
LDR             R8, [SP,#0x28C0+var_2868]
BIC             R12, R12, #0x1000000
LDR             R8, [R8]
AND             R8, R8, #0x1000000
ORR             R12, R12, R8
STR             R12, [R11]
LDR             R8, [SP,#0x28C0+var_2868]
BIC             R12, R12, #0x2000000
LDR             R8, [R8]
AND             R8, R8, #0x2000000
ORR             R12, R12, R8
STR             R12, [R11]
LDR             R8, [SP,#0x28C0+var_2868]
BIC             R12, R12, #0x4000000
LDR             R8, [R8]
AND             R8, R8, #0x4000000
ORR             R12, R12, R8
STR             R12, [R11]
LDR             R12, [SP,#0x28C0+var_2868]
LDRB            R12, [R12]
STRB            R12, [R11]
LDRB            R12, [R9,#0x649]
STRB            R12, [R2,#0x649]
LDR             R12, [SP,#0x28C0+var_2868]
ADD             R2, R2, #0x650
LDR             R8, [R12]
STR             R8, [R11]
ADD             R8, R9, #0x650
LDM             R8, {R8,R12}
STM             R2, {R8,R12}
LDR             R2, [R7,#0x658]
LDR             R3, [R9,#0x658]
BIC             R2, R2, #1
AND             R3, R3, #1
ORR             R2, R2, R3
STR             R2, [R6]
LDR             R3, [LR]
BIC             R2, R2, #2
AND             R3, R3, #2
ORR             R2, R2, R3
STR             R2, [R6]
BIC             R2, R2, #4
LDR             R3, [LR]
AND             R3, R3, #4
ORR             R2, R2, R3
STR             R2, [R6]
LDR             R3, [LR]
BIC             R2, R2, #8
AND             R3, R3, #8
ORR             R2, R2, R3
STR             R2, [R6]
LDR             R3, [LR]
BIC             R2, R2, #0x10
AND             R3, R3, #0x10
ORR             R2, R2, R3
STR             R2, [R6]
LDR             R3, [LR]
BIC             R2, R2, #0x20 ; ' '
AND             R3, R3, #0x20 ; ' '
ORR             R2, R2, R3
STR             R2, [R6]
LDR             R3, [LR]
BIC             R2, R2, #0x40 ; '@'
AND             R3, R3, #0x40 ; '@'
ORR             R2, R2, R3
STR             R2, [R6]
LDR             R3, [LR]
BIC             R2, R2, #0x80
AND             R3, R3, #0x80
ORR             R2, R2, R3
STR             R2, [R6]
LDR             R3, [LR]
BIC             R2, R2, #0x100
AND             R3, R3, #0x100
ORR             R2, R2, R3
STR             R2, [R6]
LDR             R3, [LR]
BIC             R2, R2, #0x200
AND             R3, R3, #0x200
ORR             R2, R2, R3
STR             R2, [R6]
LDR             R3, [LR]
BIC             R2, R2, #0x400
AND             R3, R3, #0x400
ORR             R2, R2, R3
STR             R2, [R6]
LDR             R3, [LR]
BIC             R2, R2, #0x800
AND             R3, R3, #0x800
ORR             R2, R2, R3
STR             R2, [R6]
LDR             R3, [LR]
BIC             R2, R2, #0x1000
AND             R3, R3, #0x1000
ORR             R2, R2, R3
STR             R2, [R6]
LDR             R3, [LR]
BIC             R2, R2, #0x2000
AND             R3, R3, #0x2000
ORR             R2, R2, R3
STR             R2, [R6]
LDR             R3, [LR]
BIC             R2, R2, #0x4000
AND             R3, R3, #0x4000
ORR             R2, R2, R3
STR             R2, [R6]
LDR             R3, [LR]
BIC             R2, R2, #0x8000
AND             R3, R3, #0x8000
ORR             R2, R2, R3
STR             R2, [R6]
LDR             R3, [LR]
BIC             R2, R2, #0x10000
AND             R3, R3, #0x10000
ORR             R2, R2, R3
STR             R2, [R6]
BIC             R2, R2, #0x20000
LDR             R3, [LR]
AND             R3, R3, #0x20000
ORR             R2, R2, R3
STR             R2, [R6]
LDR             R3, [LR]
BIC             R2, R2, #0x40000
AND             R3, R3, #0x40000
ORR             R2, R2, R3
STR             R2, [R6]
LDR             R3, [LR]
BIC             R2, R2, #0x80000
AND             R3, R3, #0x80000
ORR             R2, R2, R3
STR             R2, [R6]
LDR             R3, [LR]
BIC             R2, R2, #0x100000
AND             R3, R3, #0x100000
ORR             R2, R2, R3
STR             R2, [R6]
LDR             R3, [LR]
BIC             R2, R2, #0x200000
AND             R3, R3, #0x200000
ORR             R2, R2, R3
STR             R2, [R6]
LDR             R3, [LR]
BIC             R2, R2, #0x400000
AND             R3, R3, #0x400000
ORR             R2, R2, R3
STR             R2, [R6]
LDR             R3, [LR]
BIC             R2, R2, #0x800000
AND             R3, R3, #0x800000
ORR             R2, R2, R3
STR             R2, [R6]
LDR             R3, [LR]
BIC             R2, R2, #0x1000000
AND             R3, R3, #0x1000000
ORR             R2, R2, R3
STR             R2, [R6]
LDR             R3, [LR]
BIC             R2, R2, #0x2000000
AND             R3, R3, #0x2000000
ORR             R2, R2, R3
STR             R2, [R6]
LDR             R3, [LR]
BIC             R2, R2, #0x4000000
AND             R3, R3, #0x4000000
ORR             R2, R2, R3
STR             R2, [R6]
LDR             R3, [LR]
BIC             R2, R2, #0x8000000
AND             R3, R3, #0x8000000
ORR             R2, R2, R3
STR             R2, [R6]
LDR             R3, [LR]
BIC             R2, R2, #0x10000000
AND             R3, R3, #0x10000000
ORR             R2, R2, R3
STR             R2, [R6]
LDR             R3, [LR]
BIC             R2, R2, #0x20000000
AND             R3, R3, #0x20000000
ORR             R2, R2, R3
STR             R2, [R6]
LDR             R3, [LR]
BIC             R2, R2, #0xC0000000
AND             R3, R3, #0xC0000000
ORR             R2, R2, R3
STR             R2, [R6]
LDRH            R2, [R0,#0x5C]
LDRH            R3, [R1,#0x5C]
BIC             R2, R2, #1
AND             R3, R3, #1
ORR             R2, R2, R3
STRH            R2, [R0,#0x5C]
LDRH            R3, [R1,#0x5C]
BIC             R2, R2, #2
AND             R3, R3, #2
ORR             R2, R2, R3
STRH            R2, [R0,#0x5C]
LDRH            R3, [R1,#0x5C]
BIC             R2, R2, #4
AND             R3, R3, #4
ORR             R2, R2, R3
STRH            R2, [R0,#0x5C]
LDRH            R3, [R1,#0x5C]
BIC             R2, R2, #8
AND             R3, R3, #8
ORR             R2, R2, R3
STRH            R2, [R0,#0x5C]
LDRH            R3, [R1,#0x5C]
BIC             R2, R2, #0x10
AND             R3, R3, #0x10
ORR             R2, R2, R3
STRH            R2, [R10,#0x5C]
LDRH            R3, [R1,#0x5C]
BIC             R2, R2, #0x20 ; ' '
AND             R3, R3, #0x20 ; ' '
ORR             R2, R2, R3
STRH            R2, [R10,#0x5C]
LDRH            R3, [R1,#0x5C]
BIC             R2, R2, #0x40 ; '@'
AND             R3, R3, #0x40 ; '@'
ORR             R2, R2, R3
STRH            R2, [R10,#0x5C]
LDRH            R3, [R1,#0x5C]
BIC             R2, R2, #0x80
AND             R3, R3, #0x80
ORR             R2, R2, R3
STRH            R2, [R10,#0x5C]
LDRH            R3, [R1,#0x5C]
BIC             R2, R2, #0x100
AND             R3, R3, #0x100
ORR             R2, R2, R3
STRH            R2, [R10,#0x5C]
LDRH            R3, [R1,#0x5C]
BIC             R2, R2, #0x200
AND             R3, R3, #0x200
ORR             R2, R2, R3
STRH            R2, [R10,#0x5C]
LDRH            R3, [R1,#0x5C]
BIC             R2, R2, #0x400
AND             R3, R3, #0x400
ORR             R2, R2, R3
STRH            R2, [R10,#0x5C]
LDRH            R3, [R1,#0x5C]
BIC             R2, R2, #0x800
AND             R3, R3, #0x800
ORR             R2, R2, R3
STRH            R2, [R10,#0x5C]
LDRH            R3, [R1,#0x5C]
BIC             R2, R2, #0x1000
AND             R3, R3, #0x1000
ORR             R2, R2, R3
STRH            R2, [R10,#0x5C]
LDRH            R3, [R1,#0x5C]
BIC             R2, R2, #0x2000
AND             R3, R3, #0x2000
ORR             R2, R2, R3
STRH            R2, [R10,#0x5C]
LDRH            R3, [R1,#0x5C]
BIC             R2, R2, #0x4000
AND             R3, R3, #0x4000
ORR             R2, R2, R3
STRH            R2, [R10,#0x5C]
LDRH            R3, [R1,#0x5C]
BIC             R2, R2, #0x8000
AND             R3, R3, #0x8000
ORR             R2, R2, R3
STRH            R2, [R10,#0x5C]
LDR             R2, [R7,#0x658]
LDR             R3, [R9,#0x658]
MOV             R0, R4
BIC             R2, R2, #0x3F ; '?'
AND             R3, R3, #0x3F ; '?'
ORR             R2, R2, R3
STR             R2, [R6]
LDR             R3, [LR]
BIC             R2, R2, #0xFC0
ADD             R8, R0, #0x278
AND             R3, R3, #0xFC0
ORR             R2, R2, R3
STR             R2, [R6]
LDR             R3, [LR]
BIC             R2, R2, #0x3F000
ADD             R0, R0, #0x288
AND             R3, R3, #0x3F000
ORR             R2, R2, R3
STR             R2, [R6]
LDR             R3, [LR]
BIC             R2, R2, #0xFC0000
AND             R3, R3, #0xFC0000
ORR             R2, R2, R3
STR             R2, [R6]
LDR             R3, [LR]
BIC             R2, R2, #0x3F000000
AND             R3, R3, #0x3F000000
ORR             R2, R2, R3
STR             R2, [R6]
LDRH            R2, [R10,#0x5C]
LDRH            R3, [R1,#0x5C]
BIC             R2, R2, #0x3F ; '?'
AND             R3, R3, #0x3F ; '?'
ORR             R2, R2, R3
STRH            R2, [R10,#0x5C]
LDRH            R3, [R1,#0x5C]
BIC             R2, R2, #0xFC0
AND             R3, R3, #0xFC0
ORR             R2, R2, R3
STRH            R2, [R10,#0x5C]
LDR             R2, [LR]
ADD             R3, R5, #0x278
STR             R2, [R6]
LDRH            R2, [R1,#0x5C]
STRH            R2, [R10,#0x5C]
LDRB            R2, [R1,#0x5E]
STRB            R2, [R7,#0x65E]
LDRB            R2, [R1,#0x5F]
STRB            R2, [R7,#0x65F]
LDR             R2, [R5,#0x260]
STR             R2, [R4,#0x260]
LDR             R2, [R5,#0x264]
STR             R2, [R4,#0x264]
LDR             R2, [R9,#0x668]
STR             R2, [R7,#0x668]
LDR             R2, [R9,#0x668]
STR             R2, [R7,#0x668]
LDR             R2, [R9,#0x66C]
STR             R2, [R7,#0x66C]
LDR             R2, [R9,#0x670]
STR             R2, [R7,#0x670]
LDRH            R2, [R1,#0x74]
STRH            R2, [R10,#0x74]
LDRH            R2, [R1,#0x76]
STRH            R2, [R10,#0x76]
LDM             R3, {R2,R3,R12,LR}
STM             R8, {R2,R3,R12,LR}
ADD             R3, R5, #0x288
LDM             R3, {R2,R3,R12,LR}
STM             R0, {R2,R3,R12}
STR             LR, [R4,#0x294]
LDRB            R0, [R1,#0x98]
STRB            R0, [R7,#0x698]
LDR             R0, [R5,#0x29C]
STR             R0, [R4,#0x29C]
LDR             R0, [R9,#0x6A0]
ADD             R1, R9, #0x400
MOV             R2, #0x9C
STR             R0, [R7,#0x6A0]
ADD             R0, R7, #0x400
ADD             R1, R1, #0x2A4
ADD             R0, R0, #0x2A4
BL              sub_127EB8
LDR             R1, [R9,#0x740]
ADD             R0, SP, #0x28C0+var_8C0
ADD             R5, R7, #0x400
LDR             R0, [R0,#0x86C]
STR             R1, [R7,#0x740]
LDR             R1, [R9,#0x744]
ADD             R5, R5, #0x358
ADD             R4, R0, #0x400
STR             R1, [R7,#0x744]
LDR             R1, [R9,#0x748]
ADD             R4, R4, #0x358
MOV             R6, R7
STR             R1, [R7,#0x748]
LDR             R1, [R9,#0x74C]
MOV             R2, #0x4C ; 'L'
ADD             R0, R5, #0xC
STR             R1, [R7,#0x74C]
LDR             R1, [R9,#0x750]
STR             R1, [R7,#0x750]
LDR             R1, [R9,#0x754]
STR             R1, [R7,#0x754]
VLDR            S0, [SP,#0x28C0+var_28A4]
VSTR            S0, [R5]
LDR             R1, [R4,#4]
STR             R1, [R5,#4]
LDR             R1, [R4,#8]
STR             R1, [R5,#8]
ADD             R1, R4, #0xC
BL              sub_127EB8
MOV             R2, #0x4C ; 'L'
ADD             R1, R4, #0x58 ; 'X'
ADD             R0, R5, #0x58 ; 'X'
BL              sub_127EB8
ADD             R0, SP, #0x28C0+var_4C0
ADD             R3, R4, #0xB8
VLDR            S0, [R0,#0x3D0]
MOV             R0, R5
VSTR            S0, [R5]
LDR             R1, [R4,#0xA4]
ADD             R0, R0, #0xB8
STR             R1, [R5,#0xA4]
LDR             R1, [R4,#0xA8]
STR             R1, [R5,#0xA8]
LDR             R1, [R4,#0xAC]
STR             R1, [R5,#0xAC]
LDRH            R1, [R4,#0xB0]
STRH            R1, [R5,#0xB0]
LDRH            R1, [R4,#0xB2]
STRH            R1, [R5,#0xB2]
LDRH            R1, [R4,#0xB4]
STRH            R1, [R5,#0xB4]
LDRH            R1, [R4,#0xB6]
STRH            R1, [R5,#0xB6]
ADD             R1, SP, #0x28C0+var_8C0
LDR             R1, [R1,#0x808]
STR             R1, [R5]
LDM             R3, {R1-R3,R12,LR}
STM             R0, {R1-R3,R12}
STR             LR, [R5,#0xC8]
LDRB            R0, [R4,#0xCC]
STRB            R0, [R5,#0xCC]
LDRB            R0, [R4,#0xCD]
STRB            R0, [R5,#0xCD]
ADD             R0, SP, #0x28C0+var_8C0
LDR             R0, [R0,#0x80C]
STR             R0, [R6]
ADD             R0, SP, #0x28C0+var_8C0
LDR             R0, [R0,#0x810]
STR             R0, [R6,#0xE0]
ADD             R0, SP, #0x28C0+var_8C0
LDR             R0, [R0,#0x814]
STR             R0, [R6,#0x758]
LDR             R0, [SP,#0x28C0+var_2874]
ADD             R4, R0, #0x800
LDR             R1, [R0,#0x828]
ADD             R0, R6, #0x800
MOV             R5, R0
STR             R1, [R6,#0x828]
LDR             R1, [R4,#0x2C]
ADD             R0, R5, #0x3C ; '<'
STR             R1, [R6,#0x82C]
LDR             R1, [R4,#0x30]
STR             R1, [R6,#0x830]
LDR             R1, [R4,#0x34]
STR             R1, [R6,#0x834]
LDR             R1, [R4,#0x38]
STR             R1, [R6,#0x838]
LDR             R1, [R4,#0x3C]
STR             R1, [R6,#0x83C]
LDR             R1, [R4,#0x40]
STR             R1, [R6,#0x840]
LDR             R1, [R4,#0x44]
STR             R1, [R6,#0x844]
LDR             R1, [R4,#0x48]
STR             R1, [R5,#0x48]
ADD             R1, R4, #0x3C ; '<'
LDM             R1, {R1-R3,R12}
STM             R0, {R1-R3,R12}
LDR             R1, [R4,#0x4C]
STR             R1, [R5,#0x4C]
LDR             R1, [R4,#0x50]
STR             R1, [R5,#0x50]
LDR             R1, [R4,#0x54]
STR             R1, [R5,#0x54]
LDR             R1, [R4,#0x58]
STR             R1, [R5,#0x58]
ADD             R1, R4, #0x4C ; 'L'
LDM             R1, {R1-R3,R12}
ADD             R0, R5, #0x4C ; 'L'
STM             R0, {R1-R3,R12}
ADD             R0, R5, #0x5C ; '\'
LDR             R1, [R4,#0x5C]
STR             R1, [R5,#0x5C]
LDR             R1, [R4,#0x60]
STR             R1, [R5,#0x60]
LDR             R1, [R4,#0x64]
STR             R1, [R5,#0x64]
LDR             R1, [R4,#0x68]
STR             R1, [R5,#0x68]
ADD             R1, R4, #0x5C ; '\'
LDM             R1, {R1-R3,R12}
STM             R0, {R1-R3,R12}
ADD             R0, R6, #0x800
ADD             R0, R0, #0x6C ; 'l'
LDR             R1, [R6,#0x86C]
LDR             R3, [SP,#0x28C0+var_2874]
BIC             R2, R1, #0xF
ADD             R1, R3, #0x800
LDR             R3, [R3,#0x86C]
ADD             R1, R1, #0x6C ; 'l'
AND             R3, R3, #0xF
ORR             R2, R2, R3
STR             R2, [R6,#0x86C]
LDR             R3, [R1]
BIC             R2, R2, #0x10
AND             R3, R3, #0x10
ORR             R2, R2, R3
STR             R2, [R6,#0x86C]
LDR             R3, [R1]
BIC             R2, R2, #0x20 ; ' '
AND             R3, R3, #0x20 ; ' '
ORR             R2, R2, R3
STR             R2, [R0]
LDR             R1, [R1]
BIC             R2, R2, #0x40 ; '@'
AND             R1, R1, #0x40 ; '@'
ORR             R1, R1, R2
STR             R1, [R0]
LDR             R0, [SP,#0x28C0+var_2874]
MOV             R2, #0x48 ; 'H'
ADD             R1, R0, #0x870
ADD             R0, R6, #0x870
BL              sub_127EB8
LDRH            R1, [R4,#0xB8]
ADD             R0, R6, #0x8C0
STRH            R1, [R5,#0xB8]
LDRB            R1, [R4,#0xBA]
STRB            R1, [R6,#0x8BA]
LDRB            R1, [R4,#0xBB]
STRB            R1, [R6,#0x8BB]
LDRB            R1, [R4,#0xBC]
STRB            R1, [R6,#0x8BC]
LDRB            R1, [R4,#0xBD]
STRB            R1, [R6,#0x8BD]
LDR             R1, [SP,#0x28C0+var_2874]
ADD             R1, R1, #0x8C0
BL              sub_1169CC
LDR             R0, [SP,#0x28C0+var_2874]
LDR             R1, =sub_53E5C4
LDR             R2, =0x758
MOV             R3, #4
LDR             R0, [R0,#0x8F0]
STR             R0, [R6,#0x8F0]
LDR             R0, [SP,#0x28C0+var_2874]
STR             R1, [SP,#0x28C0+var_28C0]
ADD             R1, R0, #0x800
ADD             R0, R6, #0x800
ADD             R1, R1, #0xF8
ADD             R0, R0, #0xF8
BLX             sub_1036B4
LDR             R1, [SP,#0x28C0+var_2874]
MOV             R9, R0
SUB             R9, R9, #0x800
ADD             R10, R1, #0x2400
SUB             R9, R9, #0xF8
STR             R10, [SP,#0x28C0+var_2884]
VLDR            S0, [R10,#0x258]
ADD             R6, R1, #0x2400
ADD             R1, SP, #0x28C0+var_8C0
STR             R9, [SP,#0x28C0+var_28C0]
STR             R9, [SP,#0x28C0+var_28B8]
LDR             R1, [R1,#0x7F0]
LDR             R7, [SP,#0x28C0+var_288C]
ADD             R8, SP, #0x28C0+var_8C0
ADD             R4, R1, #0x2400
ADD             R1, SP, #0x28C0+var_8C0
ADD             R7, R7, #0x2400
LDR             R5, [R1,#0x7F0]
LDR             R0, [SP,#0x28C0+var_2874]
LDR             R1, [SP,#0x28C0+var_288C]
ADD             R7, R7, #0x28C
ADD             R12, R9, #0x2400
ADD             LR, R9, #0x2400
ADD             R3, R9, #0x2680
ADD             R2, R9, #0x2600
STR             R7, [R8,#0x82C]
LDR             R9, [SP,#0x28C0+var_28C0]
ADD             R1, R1, #0x2600
ADD             R0, R0, #0x2600
ADD             R10, R9, #0x2400
ADD             R10, R10, #0x28C
STR             R10, [R8,#0x7F8]
LDR             R8, [SP,#0x28C0+var_288C]
ADD             R6, R6, #0x26C
ADD             R12, R12, #0x268
ADD             R7, R8, #0x2000
ADD             R8, SP, #0x28C0+var_8C0
ADD             R7, R7, #0x690
STR             R7, [R8,#0x7F0]
LDR             R9, [SP,#0x28C0+var_28C0]
ADD             LR, LR, #0x26C
ADD             R5, R5, #0x2680
ADD             R10, R9, #0x2000
ADD             R10, R10, #0x690
STR             R10, [R8,#0x7E4]
LDR             R8, [SP,#0x28C0+var_288C]
ADD             R1, R1, #0x86
ADD             R2, R2, #0x86
ADD             R7, R8, #0x2400
ADD             R8, SP, #0x28C0+var_8C0
ADD             R7, R7, #0x294
STR             R7, [R8,#0x7E0]
LDR             R9, [SP,#0x28C0+var_28C0]
ADD             R10, R9, #0x2400
ADD             R10, R10, #0x294
STR             R10, [R8,#0x7DC]
LDR             R8, [SP,#0x28C0+var_288C]
LDR             R9, [SP,#0x28C0+var_28C0]
LDR             R11, [SP,#0x28C0+var_288C]
ADD             R7, R8, #0x2600
ADD             R8, R9, #0x2600
ADD             R11, R11, #0x2400
ADD             R11, R11, #0x298
ADD             R9, SP, #0x28C0+var_8C0
STR             R11, [SP,#0x28C0+var_2870]
STR             R11, [R9,#0x7E8]
LDR             R9, [SP,#0x28C0+var_288C]
ADD             R11, R9, #0x2400
LDR             R9, [SP,#0x28C0+var_28C0]
ADD             R10, R9, #0x2400
ADD             R10, R10, #0x298
ADD             R9, SP, #0x28C0+var_8C0
STR             R10, [SP,#0x28C0+var_286C]
STR             R10, [R9,#0x7EC]
LDR             R9, [SP,#0x28C0+var_28C0]
ADD             R4, R4, #0x270
ADD             R9, R9, #0x2400
VSTR            S0, [R9,#0x258]
LDR             R10, [SP,#0x28C0+var_2884]
VLDR            S0, [R10,#0x25C]
VSTR            S0, [R9,#0x25C]
LDR             R10, [SP,#0x28C0+var_2884]
VLDR            S0, [R10,#0x260]
VSTR            S0, [R9,#0x260]
LDR             R10, [SP,#0x28C0+var_2884]
VLDR            S0, [R10,#0x264]
VSTR            S0, [R9,#0x264]
LDRB            R0, [R0,#0x68]
STRB            R0, [R12]
LDR             R0, [R6]
STR             R0, [LR]
ADD             R0, SP, #0x28C0+var_8C0
LDR             R12, [SP,#0x28C0+var_28C0]
LDR             R0, [R0,#0x818]
STR             R0, [R12]
ADD             R0, SP, #0x28C0+var_8C0
LDR             R12, [SP,#0x28C0+var_28C0]
LDR             R0, [R0,#0x81C]
STR             R0, [R12,#0xE0]
ADD             R0, SP, #0x28C0+var_8C0
LDR             R12, [SP,#0x28C0+var_28C0]
LDR             R0, [R0,#0x820]
STR             R0, [R12,#0x758]
ADD             R0, R9, #0x270
VLDM            R4, {S0-S3}
VSTM            R0, {S0-S3}
LDR             R0, [R5]
AND             R0, R0, #1
STR             R0, [R3]
LDR             R12, [SP,#0x28C0+var_28C0]
VLDR            S0, [SP,#0x28C0+var_289C]
VSTR            S0, [R12]
LDR             R12, [SP,#0x28C0+var_28C0]
VLDR            S0, [SP,#0x28C0+var_2898]
VSTR            S0, [R12,#0xE0]
LDR             R12, [SP,#0x28C0+var_28C0]
LDR             R0, [SP,#0x28C0+var_2894]
STR             R0, [R12,#0x758]
LDRH            R0, [R7,#0x84]
STRH            R0, [R8,#0x84]
LDRB            R0, [R1]
ADD             R1, SP, #0x28C0+var_8C0
STRB            R0, [R2]
LDRH            R0, [R7,#0x88]
STRH            R0, [R8,#0x88]
LDR             R0, [R1,#0x82C]
LDR             R10, [R1,#0x7F8]
LDR             R0, [R0]
STR             R0, [R10]
LDR             R0, [R1,#0x7F0]
LDR             R10, [R1,#0x7E4]
LDR             R0, [R0]
STR             R0, [R10]
LDR             R0, [R1,#0x7E0]
LDRB            R1, [R0]
ADD             R0, SP, #0x28C0+var_8C0
LDR             R10, [R0,#0x7DC]
STRB            R1, [R10]
LDR             R0, [SP,#0x28C0+var_2870]
LDR             R10, [SP,#0x28C0+var_286C]
LDRB            R0, [R0]
STRB            R0, [R10]
LDR             R0, [R11,#0x29C]
STR             R0, [R9,#0x29C]
LDR             R0, [R11,#0x2A0]
STR             R0, [R9,#0x2A0]
LDR             R0, [R11,#0x2A4]
STR             R0, [R9,#0x2A4]
LDR             R0, [R11,#0x2A8]
STR             R0, [R9,#0x2A8]
LDR             R0, [R11,#0x2AC]
ADD             R4, R9, #0x2A4
STR             R0, [R9,#0x2AC]
LDR             R0, [R11,#0x2B0]
STR             R0, [R9,#0x2B0]
ADD             R0, R11, #0x2A4
LDM             R0, {R0-R3}
STM             R4, {R0-R3}
ADD             R4, R9, #0x2B4
LDR             R0, [R11,#0x2B4]
STR             R0, [R9,#0x2B4]
LDR             R0, [R11,#0x2B8]
STR             R0, [R9,#0x2B8]
LDR             R0, [R11,#0x2BC]
STR             R0, [R9,#0x2BC]
LDR             R0, [R11,#0x2C0]
STR             R0, [R9,#0x2C0]
ADD             R0, R11, #0x2B4
LDM             R0, {R0-R3}
STM             R4, {R0-R3}
MOV             R1, R9
LDR             R0, [R11,#0x2C4]
STR             R0, [R9,#0x2C4]
LDR             R0, [R11,#0x2C8]
STR             R0, [R9,#0x2C8]
LDR             R0, [R11,#0x2CC]
STR             R0, [R9,#0x2CC]
LDR             R0, [R11,#0x2D0]
STR             R0, [R9,#0x2D0]
LDR             R0, [R11,#0x298]
STR             R0, [R9,#0x298]
LDR             R2, [R11,#0x29C]
LDR             R0, [SP,#0x28C0+var_288C]
STR             R2, [R9,#0x29C]
ADD             R0, R0, #0x2000
LDR             R2, [SP,#0x28C0+var_28B8]
ADD             R0, R0, #0x6A0
LDRB            R3, [R0]
ADD             R2, R2, #0x2000
LDR             R0, [SP,#0x28C0+var_288C]
ADD             R2, R2, #0x6A0
STRB            R3, [R2]
LDR             R2, [SP,#0x28C0+var_28B8]
ADD             R0, R0, #0x2600
ADD             R0, R0, #0xA1
ADD             R2, R2, #0x2600
LDRB            R0, [R0]
ADD             R2, R2, #0xA1
STRB            R0, [R2]
LDR             R0, [SP,#0x28C0+var_288C]
LDR             R2, [R11,#0x2A4]
ADD             R0, R0, #0x2400
STR             R2, [R1,#0x2A4]
LDR             R4, [SP,#0x28C0+var_28B8]
LDR             R2, [SP,#0x28C0+var_288C]
ADD             R0, R0, #0x2A8
ADD             R4, R4, #0x2400
LDRB            R0, [R0]
ADD             R4, R4, #0x2A8
ADD             R2, R2, #0x2600
STRB            R0, [R4]
ADD             R2, R2, #0xA9
LDR             R0, [SP,#0x28C0+var_28B8]
LDRB            R3, [R2]
LDR             R2, [SP,#0x28C0+var_288C]
ADD             R0, R0, #0x2600
ADD             R0, R0, #0xA9
ADD             R2, R2, #0x2600
ADD             R2, R2, #0xAA
STRB            R3, [R0]
LDR             R0, [SP,#0x28C0+var_28B8]
LDRB            R3, [R2]
LDR             R2, [SP,#0x28C0+var_288C]
ADD             R0, R0, #0x2600
ADD             R0, R0, #0xAA
ADD             R2, R2, #0x2600
STRB            R3, [R0]
LDR             R0, [SP,#0x28C0+var_28B8]
ADD             R2, R2, #0xAB
LDRB            R3, [R2]
ADD             R0, R0, #0x2600
LDR             R2, [SP,#0x28C0+var_288C]
ADD             R0, R0, #0xAB
STRB            R3, [R0]
LDR             R0, [SP,#0x28C0+var_28B8]
ADD             R2, R2, #0x2400
ADD             R2, R2, #0x2AC
ADD             R0, R0, #0x2400
LDRB            R2, [R2]
ADD             R0, R0, #0x2AC
STRB            R2, [R0]
LDR             R2, [R11,#0x2B0]
LDR             R0, [SP,#0x28C0+var_288C]
STR             R2, [R1,#0x2B0]
LDR             R2, [SP,#0x28C0+var_28B8]
ADD             R0, R0, #0x2400
ADD             R0, R0, #0x2B4
ADD             R2, R2, #0x2400
LDRB            R0, [R0]
ADD             R2, R2, #0x2B4
STRB            R0, [R2]
LDR             R2, [SP,#0x28C0+var_288C]
LDR             R12, [SP,#0x28C0+var_28B8]
LDRH            R3, [R7,#0xB6]
ADD             R2, R2, #0x2400
ADD             R2, R2, #0x2B8
STRH            R3, [R8,#0xB6]
LDR             R3, [SP,#0x28C0+var_288C]
LDRB            R2, [R2]
ADD             R12, R12, #0x2400
LDR             LR, [SP,#0x28C0+var_28B8]
ADD             R12, R12, #0x2B8
ADD             R3, R3, #0x2400
STRB            R2, [R12]
ADD             R3, R3, #0x2BC
LDR             R2, [SP,#0x28C0+var_288C]
LDR             R12, [SP,#0x28C0+var_28B8]
LDR             R3, [R3]
ADD             LR, LR, #0x2400
ADD             LR, LR, #0x2BC
ADD             R2, R2, #0x26C0
STR             R3, [LR]
LDRB            R2, [R2]
LDR             R3, [SP,#0x28C0+var_288C]
ADD             R12, R12, #0x26C0
STRB            R2, [R12]
LDR             R2, [SP,#0x28C0+var_28B8]
ADD             R3, R3, #0x2600
ADD             R3, R3, #0xC1
ADD             R2, R2, #0x2600
LDRB            R3, [R3]
ADD             R2, R2, #0xC1
STRB            R3, [R2]
ADD             R2, SP, #0x28C0+var_8C0
LDR             R2, [R2,#0x7E8]
LDRB            R3, [R2]
ADD             R2, SP, #0x28C0+var_8C0
LDR             R2, [R2,#0x7EC]
STRB            R3, [R2]
LDR             R2, [SP,#0x28C0+var_28B8]
LDRB            R3, [R7,#0x99]
ADD             R2, R2, #0x2600
ADD             R2, R2, #0x99
STRB            R3, [R2]
LDR             R2, [SP,#0x28C0+var_28B8]
LDRB            R3, [R7,#0x9A]
ADD             R2, R2, #0x2600
ADD             R2, R2, #0x9A
STRB            R3, [R2]
LDR             R2, [SP,#0x28C0+var_288C]
LDR             R3, [SP,#0x28C0+var_28B8]
ADD             R2, R2, #0x2400
ADD             R2, R2, #0x29C
ADD             R3, R3, #0x2400
LDR             R2, [R2]
ADD             R3, R3, #0x29C
STR             R2, [R3]
LDRH            R2, [R7,#0xA0]
MOV             R3, #1
STRH            R2, [R8,#0xA0]
LDR             R0, [SP,#0x28C0+var_288C]
LDR             R2, [SP,#0x28C0+var_28B8]
ADD             R0, R0, #0x2400
ADD             R0, R0, #0x2A4
ADD             R2, R2, #0x2400
LDR             R0, [R0]
ADD             R2, R2, #0x2A4
STR             R0, [R2]
LDRB            R0, [R7,#0xA8]
STRB            R0, [R4]
LDR             R0, [R11,#0x2D4]
STR             R0, [R1,#0x2D4]
LDR             R2, [SP,#0x28C0+var_288C]
LDR             R0, [SP,#0x28C0+var_28B8]
ADD             R1, SP, #0x28C0+var_8C0
ADD             R12, R2, #0x2400
LDR             R2, [R11,#0x2D8]
ADD             R0, R0, #0x2400
ADD             R0, R0, #0x2DC
STR             R2, [R9,#0x2D8]
LDR             R1, [R1,#0x824]
ADD             R12, R12, #0x2DC
MOV             R2, #0x1C
STR             R1, [R0]
LDR             R1, [R12,#4]
STR             R1, [R0,#4]
LDR             R1, [R12,#8]
STR             R1, [R0,#8]
LDR             R1, [R12,#0xC]
STR             R1, [R0,#0xC]
LDR             R1, [R12,#0x10]
STR             R1, [R0,#0x10]
LDRB            R1, [R12,#0x14]
STRB            R1, [R0,#0x14]
LDR             R1, [SP,#0x28C0+var_28B4]
STR             R1, [R0],#0x18
LDR             R1, =sub_5A2EE8
STR             R1, [SP,#0x28C0+var_28C0]
ADD             R1, R12, #0x18
BLX             sub_1036B4
ADD             R2, SP, #0x28C0+var_8C0
LDR             R1, [SP,#0x28C0+var_288C]
LDR             R2, [R2,#0x828]
ADD             R1, R1, #0x2000
ADD             R1, R1, #0x710
STR             R2, [R0,#0x1C]!
ADD             R2, R1, #4
ADD             R4, R0, #4
LDM             R2, {R2,R3,R12}
STM             R4, {R2,R3,R12}
ADD             R2, R1, #0x10
ADD             R4, R0, #0x10
LDM             R2, {R2,R3,R12}
STM             R4, {R2,R3,R12}
ADD             R2, R1, #0x1C
ADD             R4, R0, #0x1C
LDM             R2, {R2,R3,R12}
STM             R4, {R2,R3,R12}
MOV             R3, #1
LDR             R2, [R1,#0x28]
STR             R2, [R0,#0x28]
LDRB            R2, [R1,#0x2C]
ADD             R1, R1, #0x30 ; '0'
STRB            R2, [R0,#0x2C]
LDR             R2, [SP,#0x28C0+var_2890]
STR             R2, [R0],#0x30
LDR             R2, =sub_5A3974
STR             R2, [SP,#0x28C0+var_28C0]
MOV             R2, #0x28 ; '('
BLX             sub_1036B4
LDR             R1, [SP,#0x28C0+var_288C]
LDR             R2, =0x2768
SUB             R0, R0, #0x2740
ADD             R1, R1, #0x2400
ADD             R1, R1, #0x368
MOV             R6, #0
LDR             R1, [R1]
STR             R1, [R2,R0]
LDR             R1, [SP,#0x28C0+var_288C]
ORR             R2, R2, R2,ASR#11
ADD             R1, R1, #0x2400
ADD             R1, R1, #0x36C
LDRB            R1, [R1]
STRB            R1, [R2,R0]
LDR             R1, [SP,#0x28C0+var_288C]
ORR             R2, R2, R2,ASR#10
ADD             R1, R1, #0x2700
ADD             R1, R1, #0x6D ; 'm'
LDRB            R1, [R1]
STRB            R1, [R2,R0]
LDR             R1, [SP,#0x28C0+var_288C]
ADD             R2, R2, #1
ADD             R1, R1, #0x2700
ADD             R1, R1, #0x6E ; 'n'
LDRB            R1, [R1]
STRB            R1, [R2,R0]
LDR             R1, [SP,#0x28C0+var_288C]
ADD             R0, R0, #0x2700
ADD             R0, R0, #0x6F ; 'o'
ADD             R1, R1, #0x2700
ADD             R1, R1, #0x6F ; 'o'
LDRB            R1, [R1]
STRB            R1, [R0]
VLDR            S0, =-16.0
ADD             R0, SP, #0x28C0+var_20C0
STR             R6, [SP,#0x28C0+var_2120]
VSTR            S0, [R0,#0xAC]
VSTR            S0, [R0,#0xBC]
VSTR            S0, [R0,#0x9C]
ADD             R0, SP, #0x28C0+var_24C0
VSTR            S0, [R0,#0x284]
VSTR            S0, [R0,#0x21C]
VLDR            S0, =16.0
ADD             R0, SP, #0x28C0+var_20C0
VSTR            S0, [R0,#0xB0]
VSTR            S0, [R0,#0xC0]
VSTR            S0, [R0,#0xA0]
ADD             R0, SP, #0x28C0+var_24C0
VSTR            S0, [R0,#0x288]
VSTR            S0, [R0,#0x220]
LDR             R0, [SP,#0x28C0+var_2218]
VLDR            S0, =42.667
BIC             R0, R0, #0x20000
ORR             R0, R0, #0x18
STR             R0, [SP,#0x28C0+var_2218]
LDR             R0, [SP,#0x28C0+var_2280]
BIC             R0, R0, #0x40 ; '@'
STR             R0, [SP,#0x28C0+var_2280]
BL              sub_464380
LDR             R0, [SP,#0x28C0+var_287C]
VMOV.F32        S16, S0
CMP             R0, #0
ADD             R0, SP, #0x28C0+var_8C0
LDR             R0, [R0,#0x890]
LDR             R0, [R0,#4]
BEQ             loc_245D24
VMOV.F32        S0, S18
ADD             R0, R0, #0x400
VLDR            S1, [SP,#0x28C0+var_2758]
VLDR            S2, [R0,#0x1C0]
ADD             R0, SP, #0x28C0+var_8C0
VSUB.F32        S2, S2, S0
VADD.F32        S1, S1, S2
VSTR            S1, [SP,#0x28C0+var_2758]
LDR             R0, [R0,#0x890]
VLDR            S1, [SP,#0x28C0+var_2748]
LDR             R0, [R0,#4]
ADD             R0, R0, #0x400
VLDR            S2, [R0,#0x1C0]
VSUB.F32        S0, S2, S0
VADD.F32        S0, S1, S0
VSTR            S0, [SP,#0x28C0+var_2748]
LDR             R4, =off_6D1648
LDR             R0, [R4]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x14000
LDR             R5, [R0,#0x174]
LDR             R0, [R4]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x14000
ADD             R4, SP, #0x28C0+var_2860
LDR             R1, [R0,#0x170]
MOV             R2, R5
MOV             R0, R4
BL              sub_169CE8
ADD             R0, SP, #0x28C0+var_8C0
VLDR            S0, [SP,#0x28C0+var_2758]
LDR             R0, [R0,#0x890]
LDR             R0, [R0,#4]
VLDR            S1, [R0,#0x108]
VSUB.F32        S0, S0, S1
VCMPE.F32       S0, S17
VMRS            APSR_nzcv, FPSCR
VNEGLT.F32      S0, S0
VMUL.F32        S16, S0, S16
VLDR            S0, [SP,#0x28C0+var_2754]
VADD.F32        S0, S0, S16
VSTR            S0, [SP,#0x28C0+var_2754]
VLDR            S0, [SP,#0x28C0+var_2744]
VADD.F32        S0, S0, S16
VSTR            S0, [SP,#0x28C0+var_2744]
LDR             R0, [SP,#0x28C0+var_2280]
ORR             R0, R0, #0x20 ; ' '
STR             R0, [SP,#0x28C0+var_2280]
MOV             R0, R4
BL              sub_171C88
MOV             R0, R4
NOP
BL              sub_169ED8
ADD             R0, SP, #0x28C0+var_8C0
LDR             R2, [SP,#0x28C0+var_2120]
LDR             R0, [R0,#0x890]
LDR             R1, [R0,#4]
LDR             R0, [R1,#0x740]
CMP             R0, #0
BEQ             loc_245E3C
CMP             R2, #0
BNE             loc_246038
B               loc_245D68
ADD             R0, R0, #0x400
VLDR            S1, [SP,#0x28C0+var_2758]
VLDR            S2, [R0,#0x1BC]
VMOV.F32        S0, S18
ADD             R0, SP, #0x28C0+var_8C0
VADD.F32        S1, S1, S2
VADD.F32        S1, S1, S0
VSTR            S1, [SP,#0x28C0+var_2758]
LDR             R0, [R0,#0x890]
VLDR            S1, [SP,#0x28C0+var_2748]
LDR             R0, [R0,#4]
ADD             R0, R0, #0x400
VLDR            S2, [R0,#0x1BC]
VADD.F32        S1, S1, S2
VADD.F32        S0, S1, S0
VSTR            S0, [SP,#0x28C0+var_2748]
B               loc_245C68
VNEG.F32        S1, S16
ADD             R1, SP, #0x28C0+var_24C0
VLDR            S0, [R1,#0x118]
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BLE             loc_245D8C
VCMPE.F32       S0, S16
VMRS            APSR_nzcv, FPSCR
BCC             loc_246038
LDR             R2, [SP,#0x28C0+var_287C]
LDR             R3, [SP,#0x28C0+var_287C]
MOV             R1, #1
CMP             R2, #0
ADD             R2, SP, #0x28C0+var_8C0
LDR             R2, [R2,#0x898]
STRB            R1, [R2,R3]
ADD             R1, SP, #0x28C0+var_8C0
ADD             R2, R0, #0x400
LDR             R1, [R1,#0x890]
LDR             R1, [R1,#4]
BEQ             loc_245E14
VLDR            S2, [R0,#0x108]
VLDR            S1, [R2,#0x228]
VLDR            S0, [R1,#0x108]
ADD             R0, SP, #0x28C0+var_8C0
VADD.F32        S1, S1, S2
LDR             R3, [SP,#0x28C0+var_287C]
LDR             R0, [R0,#0x894]
MOV             R1, #0
ADD             R0, R0, R3,LSL#2
VSUB.F32        S0, S1, S0
VSTR            S0, [R0]
ADD             R0, SP, #0x28C0+var_8C0
LDR             R0, [R0,#0x890]
BL              sub_23C268
CMP             R0, #0
NOP
BEQ             loc_246038
ADD             R0, SP, #0x28C0+var_8C0
LDR             R1, [SP,#0x28C0+var_287C]
LDR             R0, [R0,#0x898]
STRB            R6, [R0,R1]
B               loc_246038
VLDR            S0, [R0,#0x108]
VLDR            S2, [R2,#0x224]
VLDR            S1, [R1,#0x108]
ADD             R0, SP, #0x28C0+var_8C0
VADD.F32        S0, S2, S0
LDR             R0, [R0,#0x894]
MOV             R1, #1
VSUB.F32        S0, S0, S1
VSTR            S0, [R0]
B               loc_245DE8
LDR             R3, [R1,#0x608]
CMP             R3, #0
BEQ             loc_246168
LDR             R0, [SP,#0x28C0+var_2258]
CMP             R0, #0
BEQ             loc_246168
CMP             R3, R0
BEQ             loc_246038
VLDR            S1, [R3,#0x2C]
VLDR            S0, [R0,#0xC]
VCMP.F32        S1, S0
VMRS            APSR_nzcv, FPSCR
BNE             loc_245E84
VLDR            S2, [R3,#0x34]
VLDR            S3, [R0,#0x14]
VCMP.F32        S2, S3
VMRS            APSR_nzcv, FPSCR
BEQ             loc_246038
VLDR            S3, [R3,#0xC]
VLDR            S2, [R0,#0x2C]
VCMP.F32        S3, S2
VMRS            APSR_nzcv, FPSCR
BNE             loc_245EAC
VLDR            S4, [R3,#0x14]
VLDR            S5, [R0,#0x34]
VCMP.F32        S4, S5
VMRS            APSR_nzcv, FPSCR
BEQ             loc_246038
LDR             R0, [R3]
TST             R0, #0x3C
VCMPEQ.F32      S3, S0
VMRSEQ          APSR_nzcv, FPSCR
VCMPEQ.F32      S1, S2
VMRSEQ          APSR_nzcv, FPSCR
BEQ             loc_246038
ADD             R0, SP, #0x28C0+var_24C0
VLDR            S0, [R0,#0x118]
VCMPE.F32       S17, S0
VMRS            APSR_nzcv, FPSCR
VCMPELS.F32     S0, S16
VMRSLS          APSR_nzcv, FPSCR
BLS             loc_246038
CMP             R2, #0
BEQ             loc_245F20
ADD             R0, R2, #0x400
VLDR            S0, [R2,#0x10C]
VLDR            S3, [R0,#0x234]
VLDR            S1, =2.0
VLDR            S2, [R1,#0x10C]
VADD.F32        S0, S0, S3
VSUB.F32        S3, S0, S1
VCMPE.F32       S2, S3
VMRS            APSR_nzcv, FPSCR
VADDGT.F32      S0, S0, S1
VCMPEGT.F32     S0, S2
VMRSGT          APSR_nzcv, FPSCR
BGT             loc_246038
MOV             R3, #0
MOV             R12, R3
ADD             R0, SP, #0x28C0+var_8C0
B               loc_245F58
DCD sub_53E5C4
DCD 0x758
DCD sub_5A2EE8
DCD sub_5A3974
DCD 0x2768
DCFS -16.0
DCFS 16.0
DCFS 42.667
DCD off_6D1648
DCFS 2.0
LDR             R0, [R0,#0x890]
STR             R6, [R0,#0xAC8]
LDR             R0, [R1,#0x610]
LDR             R2, [R0,#8]
TST             R2, #1
BEQ             loc_2460C4
LDR             R2, [R1,#0x608]
VLDR            S1, [R0,#0xC]
VLDR            S0, [R2,#0x2C]
VCMP.F32        S0, S1
VMRS            APSR_nzcv, FPSCR
BNE             loc_245F9C
VLDR            S0, [R2,#0x34]
VLDR            S1, [R0,#0x14]
VCMP.F32        S0, S1
VMRS            APSR_nzcv, FPSCR
MOVEQ           R12, R0
VLDR            S0, [R2,#0xC]
VLDR            S1, [R0,#0x2C]
VCMP.F32        S0, S1
VMRS            APSR_nzcv, FPSCR
BNE             loc_245FC4
VLDR            S0, [R2,#0x14]
VLDR            S1, [R0,#0x34]
VCMP.F32        S0, S1
VMRS            APSR_nzcv, FPSCR
MOVEQ           R3, R0
LDR             R2, [R0]
TST             R2, #1
BEQ             loc_2460C4
CMP             R12, #0
BEQ             loc_246004
LDR             R0, [SP,#0x28C0+var_2258]
VLDR            S0, [R12,#0x2C]
VLDR            S1, [R0,#0xC]
VCMP.F32        S0, S1
VMRS            APSR_nzcv, FPSCR
BNE             loc_246004
VLDR            S0, [R12,#0x34]
VLDR            S1, [R0,#0x14]
VCMP.F32        S0, S1
VMRS            APSR_nzcv, FPSCR
BEQ             loc_246038
CMP             R3, #0
BEQ             loc_2460CC
LDR             R0, [SP,#0x28C0+var_2258]
VLDR            S0, [R3,#0xC]
VLDR            S1, [R0,#0x2C]
VCMP.F32        S0, S1
VMRS            APSR_nzcv, FPSCR
BNE             loc_2460CC
VLDR            S0, [R3,#0x14]
VLDR            S1, [R0,#0x34]
VCMP.F32        S0, S1
VMRS            APSR_nzcv, FPSCR
BNE             loc_2460CC
LDR             R0, [SP,#0x28C0+var_289C]
LDR             R1, [SP,#0x28C0+var_2894]
LDR             R4, [SP,#0x28C0+var_2878]
STR             R0, [SP,#0x28C0+var_2860]
LDR             R0, [SP,#0x28C0+var_2898]
STR             R1, [SP,#0x28C0+var_2108]
LDR             R1, [SP,#0x28C0+var_2890]
STR             R0, [SP,#0x28C0+var_2780]
ADD             R0, SP, #0x28C0+var_8C0
MOV             R3, #1
STR             R1, [R0,#0x770]
LDR             R1, =sub_5A2F60
MOV             R2, #0x28 ; '('
ADD             R0, R4, #0x30 ; '0'
BLX             sub_1009D8
MOV             R0, R4
NOP
NOP
LDR             R1, [SP,#0x28C0+var_28B4]
SUB             R4, R0, #0x34 ; '4'
MOV             R3, #1
STR             R1, [R0,#-0x34]
LDR             R1, =nullsub_300
MOV             R2, #0x1C
SUB             R0, R0, #0x1C
BLX             sub_1009D8
MOV             R0, R4
NOP
NOP
SUB             R0, R0, #0x2400
SUB             R0, R0, #0x2DC
BL              sub_540C2C
NOP
NOP
B               loc_2461E8
ADD             R0, R0, #0x88
B               loc_245F64
LDR             R1, [SP,#0x28C0+var_287C]
LDR             R2, [SP,#0x28C0+var_287C]
MOV             R0, #1
CMP             R1, #0
ADD             R1, SP, #0x28C0+var_8C0
LDR             R1, [R1,#0x898]
STRB            R0, [R1,R2]
BEQ             loc_246210
ADD             R0, SP, #0x28C0+var_8C0
CMP             R12, #0
LDR             R0, [R0,#0x890]
VLDRNE          S0, [R12,#0x7C]
LDR             R0, [R0,#4]
LDREQ           R1, [R0,#0x608]
VLDR            S1, [R0,#0x108]
ADD             R0, SP, #0x28C0+var_8C0
VLDREQ          S0, [R1,#0x7C]
LDR             R1, [SP,#0x28C0+var_287C]
LDR             R0, [R0,#0x894]
VSUB.F32        S0, S0, S1
ADD             R0, R0, R1,LSL#2
VSTR            S0, [R0]
ADD             R0, SP, #0x28C0+var_8C0
LDR             R0, [R0,#0x890]
STR             R12, [R0,#0xAC8]
LDR             R0, [SP,#0x28C0+var_287C]
CMP             R0, #0
ADD             R0, SP, #0x28C0+var_8C0
MOVEQ           R1, #1
LDR             R0, [R0,#0x890]
MOVNE           R1, #0
BL              sub_23C268
CMP             R0, #0
NOP
BEQ             loc_246168
ADD             R0, SP, #0x28C0+var_8C0
LDR             R1, [SP,#0x28C0+var_287C]
LDR             R0, [R0,#0x898]
STRB            R6, [R0,R1]
LDR             R0, [SP,#0x28C0+var_289C]
LDR             R1, [SP,#0x28C0+var_2894]
LDR             R4, [SP,#0x28C0+var_2878]
STR             R0, [SP,#0x28C0+var_2860]
LDR             R0, [SP,#0x28C0+var_2898]
STR             R1, [SP,#0x28C0+var_2108]
LDR             R1, [SP,#0x28C0+var_2890]
STR             R0, [SP,#0x28C0+var_2780]
ADD             R0, SP, #0x28C0+var_8C0
MOV             R3, #1
STR             R1, [R0,#0x770]
LDR             R1, =sub_5A2F60
MOV             R2, #0x28 ; '('
ADD             R0, R4, #0x30 ; '0'
BLX             sub_1009D8
MOV             R0, R4
NOP
NOP
SUB             R4, R0, #0x34 ; '4'
LDR             R0, [SP,#0x28C0+var_28B4]
LDR             R1, =nullsub_300
MOV             R3, #1
STR             R0, [R4]
MOV             R2, #0x1C
ADD             R0, R4, #0x18
BLX             sub_1009D8
MOV             R0, R4
NOP
NOP
SUB             R0, R0, #0x2400
SUB             R0, R0, #0x2DC
BL              sub_540C2C
LDR             R0, [SP,#0x28C0+var_287C]
ADD             R0, R0, #1
AND             R0, R0, #0xFF
CMP             R0, #2
STR             R0, [SP,#0x28C0+var_287C]
BCC             loc_2439B0
ADD             SP, SP, #0x2880
VPOP            {D8-D9}
ADD             SP, SP, #0xC
POP             {R4-R11,PC}
ADD             R0, SP, #0x28C0+var_8C0
CMP             R3, #0
LDR             R0, [R0,#0x890]
VLDRNE          S0, [R3,#0x78]
LDR             R0, [R0,#4]
LDREQ           R1, [R0,#0x608]
VLDR            S1, [R0,#0x108]
ADD             R0, SP, #0x28C0+var_8C0
VLDREQ          S0, [R1,#0x78]
LDR             R0, [R0,#0x894]
VSUB.F32        S0, S0, S1
VSTR            S0, [R0]
ADD             R0, SP, #0x28C0+var_8C0
LDR             R0, [R0,#0x890]
STR             R3, [R0,#0xAC8]
B               loc_246130
