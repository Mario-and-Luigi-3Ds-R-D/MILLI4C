PUSH            {R4-R6,LR}
MOV             R6, #0
LDR             R1, =off_6B8168
MOV             R4, R0
VPUSH           {D8}
ADD             R3, R4, #0x24 ; '$'
STR             R6, [R0,#4]
STR             R6, [R0,#8]
STR             R6, [R0,#0xC]
STRH            R6, [R0,#0x10]
ADD             R0, R0, #0x14
LDR             R5, =unk_6E32D0
STM             R0, {R1,R6}
STR             R6, [R0,#8]
STR             R6, [R0,#0xC]
LDR             R0, =off_6ACD58
STR             R0, [R4]
ADD             R0, R5, #0xC
LDM             R0, {R0-R2}
STM             R3, {R0-R2}
BL              sub_4635D8
LDM             R0, {R1,R2}
ADD             R3, R4, #0x44 ; 'D'
LDR             R0, [R0,#8]
VLDR            S16, =1.0
STR             R0, [R4,#0x38]
ADD             R0, R4, #0x30 ; '0'
STM             R0, {R1,R2}
ADD             R0, R5, #0x18
VSTR            S16, [R4,#0x3C]
STR             R6, [R4,#0x40]
LDM             R0, {R0-R2}
STM             R3, {R0-R2}
BL              sub_4635D8
LDM             R0, {R1,R2}
ADD             R5, R5, #0x24 ; '$'
LDR             R0, [R0,#8]
ADD             R3, R4, #0x5C ; '\'
STR             R0, [R4,#0x58]
ADD             R0, R4, #0x50 ; 'P'
STM             R0, {R1,R2}
LDM             R5, {R0-R2}
ADD             R5, R4, #0x68 ; 'h'
STM             R3, {R0-R2}
LDR             R0, =dword_6E1340
LDR             R0, [R0]
TST             R0, #1
BNE             loc_14CC9C
LDR             R0, =dword_6E1340
BLX             sub_3022F4
CMP             R0, #0
BEQ             loc_14CC9C
LDR             R0, =flt_71203C
VLDR            S0, =0.0
VSTR            S16, [R0]
VSTR            S0, [R0,#(flt_712040 - 0x71203C)]
VSTR            S0, [R0,#(flt_712044 - 0x71203C)]
VSTR            S0, [R0,#(flt_712048 - 0x71203C)]
VSTR            S0, [R0,#(flt_71204C - 0x71203C)]
VSTR            S16, [R0,#(flt_712050 - 0x71203C)]
VSTR            S0, [R0,#(flt_712054 - 0x71203C)]
VSTR            S0, [R0,#(flt_712058 - 0x71203C)]
VSTR            S0, [R0,#(flt_71205C - 0x71203C)]
VSTR            S0, [R0,#(flt_712060 - 0x71203C)]
VSTR            S16, [R0,#(flt_712064 - 0x71203C)]
VSTR            S0, [R0,#(flt_712068 - 0x71203C)]
LDR             R0, =dword_6E1340
NOP
LDR             R1, =flt_71203C
MOV             R0, R5
BL              sub_1169CC
LDR             R0, =dword_6CEA78
VSTR            S16, [R4,#0x98]
LDR             R1, [R0,#(dword_6CEA7C - 0x6CEA78)]
STR             R1, [R4,#0x9C]
LDR             R0, [R0,#(dword_6CEA80 - 0x6CEA78)]
STRD            R0, R1, [R4,#0xA0]
ADD             R0, R5, #0x40 ; '@'
BL              sub_1CFAF0
LDR             R1, =off_6B503C
STR             R1, [R0],#0x10
BL              sub_1CFAF0
LDR             R1, =off_6B16BC
STR             R1, [R0],#0x10
BL              sub_1CFAF0
LDR             R1, =off_6B505C
STR             R1, [R0],#0x10
BL              sub_1CFAF0
LDR             R1, =off_6B7130
STR             R6, [R0,#0x10]
MOV             R2, #0xFF
STR             R1, [R0],#-0xD8
MOV             R1, #1
STR             R6, [R0,#0xEC]
STRB            R6, [R0,#0xF0]
STRB            R6, [R0,#0xF1]
STRB            R1, [R0,#0xF2]
STRB            R6, [R0,#0xF3]
STRB            R6, [R0,#0xF4]
STRB            R6, [R0,#0xF5]
STRB            R2, [R0,#0xF6]
STRB            R6, [R0,#0xF7]
STRB            R6, [R0,#0xF8]
STRB            R6, [R0,#0xF9]
STRB            R1, [R0,#0xFA]
STRB            R2, [R0,#0xFB]
STRB            R6, [R0,#0xFC]
VPOP            {D8}
POP             {R4-R6,PC}
