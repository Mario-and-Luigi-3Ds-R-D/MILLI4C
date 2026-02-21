PUSH            {R4-R6,LR}
SUB             SP, SP, #0x38
MOV             R6, R1
MOV             R5, R2
BL              sub_14CB8C
LDR             R1, =off_6ACDB8
VLDR            S0, =0.0
STR             R1, [R0]
LDRB            R1, [R6,#0x20]
STRB            R1, [R0,#0xFD]
LDR             R1, [R6,#0x1C]
STR             R1, [R0,#0x100]
LDR             R2, [R6,#0x14]
STR             R2, [R0,#0x104]
LDR             R2, [R6,#0x14]
STR             R2, [R0,#0x108]
LDR             R2, [R6,#0x14]
STR             R2, [R0,#0x10C]
ADD             R0, R0, #0x110
VSTR            S0, [R0]
VSTR            S0, [R0,#4]
VSTR            S0, [R0,#8]
VSTR            S0, [R0,#0xC]
ADD             R0, R0, #0x10
BL              sub_5A2F28
LDR             R2, =off_6B8168
SUB             R4, R0, #0x120
MOV             R0, #0
STR             R0, [R4,#0x140]
STR             R2, [R4,#0x13C]
STR             R0, [R4,#0x144]
STR             R0, [R4,#0x148]
LDR             R1, [R5,#0x3B4]
MOV             R0, #0x14C
LDRH            R1, [R1,#0x10]
STRH            R1, [R0,R4]
LDRH            R0, [R6,#2]
ADD             R1, R6, #0x18
VMOV            S0, R0
ADD             R0, R4, #0x104
VCVT.F32.U32    S0, S0
BL              sub_4E665C
LDR             R0, [R5]
LDR             R1, [R0,#0x4C]
MOV             R0, R5
BLX             R1
LDR             R2, [R0,#0x10]
LDRB            R1, [R0,#0x6C]
MOV             R6, R0
LDR             R0, [R0,#4]
BL              sub_136824
MOV             R2, R0
LDRB            R1, [R6,#0x6C]
MOV             R0, R6
BL              sub_5F1648
STR             R0, [R4,#0x150]
LDRB            R1, [R5,#0xF0]
MOV             R0, R4
BL              sub_14C450
LDRSB           R2, [R5,#0xF9]
LDRSB           R1, [R5,#0xF8]
MOV             R0, R4
BL              sub_14B798
LDRB            R0, [R4,#0xFD]
CMP             R0, #0
BEQ             loc_14D354
CMP             R0, #1
BNE             loc_14D448
B               loc_14D40C
MOV             R2, #0
MOV             R1, SP
MOV             R0, R5
BL              sub_5C4198
LDM             R0, {R1,R2}
ADD             R3, R4, #0x30 ; '0'
LDR             R0, [R0,#8]
STR             R0, [R4,#0x2C]
ADD             R0, R4, #0x24 ; '$'
STM             R0, {R1,R2}
ADD             R0, R5, #0x30 ; '0'
LDM             R0, {R0-R2}
STM             R3, {R0-R2}
ADD             R0, R5, #0x44 ; 'D'
ADD             R3, R4, #0x44 ; 'D'
LDM             R0, {R0-R2}
STM             R3, {R0-R2}
ADD             R0, R5, #0x50 ; 'P'
ADD             R3, R4, #0x50 ; 'P'
LDM             R0, {R0-R2}
STM             R3, {R0-R2}
ADD             R0, R5, #0x5C ; '\'
ADD             R3, R4, #0x5C ; '\'
LDM             R0, {R0-R2}
STM             R3, {R0-R2}
LDRB            R0, [R5,#0xF1]
STRB            R0, [R4,#0xF1]
LDR             R0, [R5,#0x40]
STR             R0, [R4,#0x40]
LDRB            R0, [R5,#0xF3]
LDRB            R1, [R5,#0xF4]
CMP             R0, #0
MOVNE           R0, #1
CMP             R1, #0
MOVNE           R1, #2
ORR             R0, R0, R1
AND             R2, R0, #2
AND             R1, R0, #1
MOV             R2, R2,LSR#1
STRB            R1, [R4,#0xF3]
STRB            R2, [R4,#0xF4]
LDRB            R0, [R5,#0xF5]
STRB            R0, [R4,#0xF5]
LDRB            R0, [R5,#0xFA]
STRB            R0, [R4,#0xFA]
B               loc_14D448
MOV             R0, #0x300
STR             R0, [SP,#0x48+var_48]
MOV             R3, #0
MOV             R2, #1
ADD             R1, SP, #0x48+var_40
MOV             R0, R5
BL              sub_5C4A88
ADD             R1, SP, #0x48+var_40
ADD             R6, SP, #0x48+var_20
VLDM            R1, {S0-S7}
ADD             R1, R4, #0x68 ; 'h'
VSTM            R1, {S0-S7}
LDM             R6, {R0-R3}
ADD             R6, R4, #0x88
STM             R6, {R0-R3}
MOV             R1, #0
MOV             R0, R4
BL              sub_14C3E8
LDR             R1, =off_6CE970
LDR             R0, =0x10644C
LDR             R1, [R1]
ADD             R0, R0, R1; loc_10644C
ADD             R1, R4, #0x13C
BL              sub_1CF9FC
ADD             SP, SP, #0x38 ; '8'
MOV             R0, R4
POP             {R4-R6,PC}
