PUSH            {R4-R8,LR}
MOV             R5, #0
VPUSH           {D8}
STR             R5, [R0],#4
BL              sub_10DB08
ADD             R0, R0, #0x12800
ADD             R0, R0, #0xE8
MOV             R2, #0x140
STR             R5, [R0]
MOV             R3, #0xF0
STR             R2, [R0,#0xC]
STR             R3, [R0,#8]
SUB             R1, R0, #0x12800
MOV             R6, #1
STR             R5, [R0,#4]
STRB            R6, [R0,#0x10]!
ADD             R4, R0, #0x10
STR             R5, [R0,#4]
STR             R3, [R0,#0xC]
MOV             R12, #0x100
STR             R5, [R0,#8]
STM             R4, {R2,R12}
SUB             R1, R1, #0xEC
STR             R2, [R0,#0x18]
ADD             R0, R1, #0x12800
ADD             R0, R0, #0x118
BL              sub_1176A0
ADD             R0, R0, #0x80
BL              sub_1177F8
ADD             R0, R0, #0x1B0
BL              sub_118760
SUB             R4, R0, #0x12800
STRB            R5, [R0,#0x94]!
SUB             R4, R4, #0x348
STRB            R5, [R0,#1]
STRB            R5, [R0,#2]
STRB            R5, [R0,#3]
STRB            R5, [R0,#4]
MOV             R1, #0x210
ADD             R0, R0, #8
BL              sub_2FFE8C
ADD             R0, R4, #0x12C00
ADD             R0, R0, #0x1F4
BL              sub_118690
LDR             R1, =sub_10DCA0
MOV             R3, #0xC
MOV             R2, #0x70 ; 'p'
ADD             R0, R0, #0x208
BLX             sub_1002F4
LDR             R1, =sub_10DC94
MOV             R3, #0xC
MOV             R2, #0x14
ADD             R0, R0, #0x540
BLX             sub_1002F4
SUB             R4, R0, #0x6A0
MOV             R0, R4
BL              sub_1185E0
ADD             R0, R4, #0x790
BL              sub_117628
SUB             R0, R0, #0x13400
SUB             R0, R0, #0x22C
ADD             R1, R0, #0x13400
ADD             R1, R1, #0x274
MOV             R2, #3
STRB            R5, [R1]
STRB            R2, [R1,#1]
MOV             R3, R2
ADD             R0, R0, #0x13400
LDR             R1, =sub_117940
MOV             R2, #8
ADD             R0, R0, #0x278
BLX             sub_1002F4
LDR             R1, =sub_11791C
MOV             R3, #7
MOV             R2, #8
ADD             R0, R0, #0x18
BLX             sub_1002F4
LDR             R1, =sub_1178F8
MOV             R3, #1
MOV             R2, #8
ADD             R0, R0, #0x38 ; '8'
BLX             sub_1002F4
LDR             R1, =0xFFFEC92B
SUB             R0, R0, #0x13400
SUB             R0, R0, #0x2C8
SUB             R2, R0, R1
MVN             R1, R1
VLDR            S17, =1.0
STRB            R5, [R1,R0]
LDR             R1, =dword_6E1344
STRB            R5, [R2]
VLDR            S16, =0.0
ADD             R4, R0, #0x13400
LDR             R1, [R1]
ADD             R4, R4, #0x2D8
TST             R1, #1
BNE             loc_11C624
LDR             R0, =dword_6E1344
BLX             sub_3022F4
CMP             R0, #0
BEQ             loc_11C624
LDR             R0, =flt_71206C
ADD             R1, R0, #0x10
VSTR            S17, [R0]
VSTR            S16, [R0,#(flt_712070 - 0x71206C)]
VSTR            S16, [R0,#(flt_712074 - 0x71206C)]
VSTR            S16, [R0,#(flt_712078 - 0x71206C)]
VSTM            R1, {S16-S17}
ADD             R1, R0, #0x24 ; '$'
VSTR            S16, [R0,#(flt_712084 - 0x71206C)]
VSTR            S16, [R0,#(flt_712088 - 0x71206C)]
VSTR            S16, [R0,#(flt_71208C - 0x71206C)]
VSTM            R1, {S16-S17}
VSTR            S16, [R0,#(flt_712098 - 0x71206C)]
VSTR            S16, [R0,#(flt_71209C - 0x71206C)]
VSTR            S16, [R0,#(flt_7120A0 - 0x71206C)]
ADD             R0, R0, #0x38 ; '8'
VSTM            R0, {S16-S17}
LDR             R0, =dword_6E1344
NOP
LDR             R1, =flt_71206C
MOV             R0, R4
BL              sub_116A40
LDR             R7, =dword_6E1340
ADD             R4, R4, #0x40 ; '@'
LDR             R0, [R7]
TST             R0, #1
BNE             loc_11C694
MOV             R0, R7
BLX             sub_3022F4
CMP             R0, #0
NOP
BEQ             loc_11C694
LDR             R0, =flt_71203C
ADD             R1, R0, #0x10
VSTR            S17, [R0]
VSTR            S16, [R0,#(flt_712040 - 0x71203C)]
VSTR            S16, [R0,#(flt_712044 - 0x71203C)]
VSTR            S16, [R0,#(flt_712048 - 0x71203C)]
VSTM            R1, {S16-S17}
ADD             R1, R0, #0x24 ; '$'
VSTR            S16, [R0,#(flt_712054 - 0x71203C)]
VSTR            S16, [R0,#(flt_712058 - 0x71203C)]
VSTR            S16, [R0,#(flt_71205C - 0x71203C)]
VSTM            R1, {S16-S17}
VSTR            S16, [R0,#(flt_712068 - 0x71203C)]
MOV             R0, R7
NOP
LDR             R1, =flt_71203C
MOV             R0, R4
BL              sub_1169CC
LDR             R0, [R7]
ADD             R4, R4, #0x30 ; '0'
TST             R0, #1
BNE             loc_11C700
LDR             R0, =dword_6E1340
BLX             sub_3022F4
CMP             R0, #0
NOP
BEQ             loc_11C700
LDR             R0, =flt_71203C
ADD             R1, R0, #0x10
VSTR            S17, [R0]
VSTR            S16, [R0,#(flt_712040 - 0x71203C)]
VSTR            S16, [R0,#(flt_712044 - 0x71203C)]
VSTR            S16, [R0,#(flt_712048 - 0x71203C)]
VSTM            R1, {S16-S17}
ADD             R1, R0, #0x24 ; '$'
VSTR            S16, [R0,#(flt_712054 - 0x71203C)]
VSTR            S16, [R0,#(flt_712058 - 0x71203C)]
VSTR            S16, [R0,#(flt_71205C - 0x71203C)]
VSTM            R1, {S16-S17}
VSTR            S16, [R0,#(flt_712068 - 0x71203C)]
LDR             R0, =dword_6E1340
NOP
LDR             R1, =flt_71203C
MOV             R0, R4
BL              sub_1169CC
ADD             R0, R4, #0x70 ; 'p'
ADD             R1, R4, #0x74 ; 't'
MOV             R7, R4
STRB            R6, [R0]
SUB             R4, R4, #0x13400
SUB             R4, R4, #0x348
MOV             R0, #0x400
STR             R5, [R1]
BL              sub_11C418
VMOV            S0, R0
ADD             R1, R7, #0x80
MOV             R3, #0xFF
ADD             R0, R4, #0x13400
MOV             R2, #0x20 ; ' '
ADD             R0, R0, #0x378
VCVT.F32.U32    S0, S0
VSTR            S0, [R7,#0x78]
STR             R5, [R7,#0x7C]
STRB            R3, [R1]
LDR             R1, =unk_65804C
BL              sub_1103A4
ADD             R0, R4, #0x13400
LDR             R1, =unk_65804C
MOV             R2, #0x20 ; ' '
ADD             R0, R0, #0x398
BL              sub_1103A4
MOV             R0, #0xFE1FFFFF
STR             R0, [R7,#-0x78]
MOV             R0, R4
VPOP            {D8}
POP             {R4-R8,PC}
