PUSH            {R4-R11,LR}
MOV             R6, R0
ADD             R0, R0, #0x13800
SUB             SP, SP, #0x84; int
ADD             R0, R0, #0x314
BL              sub_127FD4
MOV             R0, #0
STR             R0, [R6,#0x16C]
LDR             R0, =off_6D1648
LDR             R0, [R0]
LDR             R0, [R0,#0xBC]
ADD             R8, R6, #0x15000
STR             R0, [SP,#0xA8+var_9C]
LDRB            R0, [R8,#0xA1]
CMP             R0, #2
BEQ             loc_1611E0
CMP             R0, #0
BEQ             loc_161390
CMP             R0, #1
BEQ             loc_16123C
B               loc_1612EC
LDR             R1, =0x401
LDR             R0, =dword_6E9820
MOV             R2, #0x4500
BL              sub_1102FC
LDR             R0, [SP,#0xA8+var_9C]
LDR             R0, [R0]
LDR             R1, [R0,#0x3C]
LDR             R0, [SP,#0xA8+var_9C]
BLX             R1
CMP             R0, #0
BEQ             loc_161718
LDR             R0, [SP,#0xA8+var_9C]
BL              sub_167B24
LDR             R1, =0x13D04
LDRH            R1, [R1,R6]
SUB             R0, R1, #0x100
SUBS            R0, R0, #0xA1
ADDNE           R0, R6, #0x28800
ADDNE           R0, R0, #0x128
BLNE            sub_599454
NOP
NOP
B               loc_161718
ADD             R5, R6, #0x10000
ADD             R5, R5, #0x4500
MOV             R2, #0
LDR             R0, [R5]
LDR             R1, [R6,#0x210]
MOV             R3, R2
ADD             R4, R6, #0x154
BL              sub_59C660
LDR             R0, [R4,#0xBC]
ADD             R2, R4, #0x6C ; 'l'
LDR             R1, [R0,#0xA4]
ADD             R0, R4, #4
ADD             LR, R0, #0x88
ADD             R3, R1, #0x168
LDM             R3, {R3,R4,R7,R12}
STM             R2, {R3,R4,R7,R12}
LDR             R3, [R1,#0x1D0]
STR             R3, [R2,#0x10]
LDR             R3, [R1,#0x1D4]
STR             R3, [R2,#0x14]
LDR             R3, [R1,#0x1E0]
STR             R3, [R2,#0x18]
LDR             R3, [R1,#0x1E4]
STR             R3, [R2,#0x1C]
ADD             R2, R1, #0x148
LDM             R2, {R2-R4,R7,R9-R12}
STM             LR, {R2-R4,R7,R9-R12}
ADD             R2, R1, #0x168
ADD             R4, SP, #0xA8+var_88
LDR             R1, [R1,#0x174]
LDM             R2, {R2,R3,R12}
STR             R1, [R0,#0xB4]
ADD             R0, R0, #0xA8
STM             R0, {R2,R3,R12}
MOV             R12, #0
LDR             R1, [R5]
LDR             R3, [R6,#0x210]
ADD             R0, R6, #0x158
ADD             R1, R1, #0x2C ; ','
LDM             R1, {R1,R2}; int
LDR             R3, [R3,#0xA4]; int
STMEA           SP, {R0,R4,R12}
ADD             R0, SP, #0xA8+var_38; int
BL              sub_63A9DC
LDR             R0, =off_6D1648
LDR             R1, [R0]
LDR             R2, [R1,#0xA0]
ADD             R2, R2, #0x180
STR             R2, [R6,#0x17C]
LDR             R0, [R1,#0xA0]
MOV             R2, #1
ADD             R1, R6, #0x154
BL              sub_32F6BC
LDR             R0, =0x1416C
LDR             R7, [R0,R6]
CMP             R7, #0
ADDNE           R9, R6, #0x3C000
BEQ             loc_1614AC
ADD             R0, R9, #0x178
LDRB            R2, [R7,#0xDC]
LDM             R0, {R0,R1}
BL              sub_14351C
LDRB            R1, [R8,#0xA1]
AND             R0, R0, #1
CMP             R0, R1
BNE             loc_1614A0
LDR             R0, [R6]
MOV             R2, #0
MOV             R1, R7
LDR             R3, [R0,#0x130]
MOV             R0, R6
BLX             R3
LDR             R0, [R7]
LDR             R1, [R0,#8]
MOV             R0, R7
BLX             R1
CMP             R0, #0
BEQ             loc_161438
LDR             R0, [R7]
LDR             R1, [R0,#8]
MOV             R0, R7
BLX             R1
CMP             R0, #1
BNE             loc_1614A0
B               loc_161438
MOV             R2, #0
LDR             R0, [R6,#0xE0]
LDR             R1, [R6,#0x210]
MOV             R3, R2
ADD             R4, R6, #0x154
BL              sub_59C660
LDR             R0, [R4,#0xBC]
ADD             R2, R4, #4
ADD             R1, R4, #0x6C ; 'l'
ADD             R11, R2, #0x88
LDR             R0, [R0,#0xA4]
ADD             R3, R0, #0x168
LDM             R3, {R3-R5,R12}
STM             R1, {R3-R5,R12}
LDR             R3, [R0,#0x1D0]
STR             R3, [R1,#0x10]
LDR             R3, [R0,#0x1D4]
STR             R3, [R1,#0x14]
LDR             R3, [R0,#0x1E0]
STR             R3, [R1,#0x18]
LDR             R3, [R0,#0x1E4]
STR             R3, [R1,#0x1C]
ADD             R1, R0, #0x148
LDM             R1, {R1,R3-R5,R7,R9,R10,R12}
STM             R11, {R1,R3-R5,R7,R9,R10,R12}
ADD             R1, R0, #0x168
ADD             R5, SP, #0xA8+var_88
ADD             R4, R6, #0x158
LDR             R0, [R0,#0x174]
LDM             R1, {R1,R3,R12}
STR             R0, [R2,#0xB4]
ADD             R2, R2, #0xA8
STM             R2, {R1,R3,R12}
MOV             R12, #0
LDR             R0, [R6,#0xE0]
LDR             R2, [R6,#0x210]
ADD             R0, R0, #0x2C ; ','
LDR             R3, [R2,#0xA4]
LDM             R0, {R1,R2}
ADD             R0, SP, #0xA8+var_38
STMEA           SP, {R4,R5,R12}
B               loc_1612E8
LDR             R0, [R7]
LDR             R1, [R0,#0x3C4]
MOV             R0, R7
BLX             R1
MOV             R5, R0
LDR             R0, [R7]
MOV             R4, #0
LDR             R1, [R0,#0x3CC]
MOV             R0, R7
BLX             R1
CMP             R0, #0
BLS             loc_1614A0
LDR             R0, [R6]
LDR             R1, [R5]
MOV             R2, #0
LDR             R3, [R0,#0x130]
MOV             R0, R6
BLX             R3
LDR             R0, [R7]
ADD             R5, R5, #4
ADD             R4, R4, #1
LDR             R1, [R0,#0x3CC]
MOV             R0, R7
BLX             R1
CMP             R0, R4
BHI             loc_161468
LDR             R7, [R7,#8]
CMP             R7, #0
BNE             loc_161324
LDR             R0, =0x13B68
LDR             R0, [R0,R6]
CMP             R0, #0
SUBSNE          R4, R0, #0x104
BEQ             loc_1614FC
LDRB            R0, [R4,#0x110]
CMP             R0, #0
BEQ             loc_1614EC
LDR             R0, [R4,#0x118]
MOV             R3, #0xFF
MOV             R2, #2
STR             R0, [SP,#0xA8+var_A8]
LDR             R12, [R4,#0x114]
MOV             R1, R4
ADD             R0, R6, #0x158
BLX             R12
LDR             R0, [R4,#0x10C]
CMP             R0, #0
SUBSNE          R4, R0, #0x104
BNE             loc_1614C0
LDR             R1, [R6,#0x16C]
LDR             R4, [R6,#0x168]
ADD             R5, R4, R1,LSL#2
CMP             R4, R5
BEQ             loc_1616B0
SUB             R7, R5, R4
MOV             R1, R5
MOV             R2, R7,ASR#2
MOV             R0, R4
BL              sub_639B80
MOV             R0, #0x10
CMP             R0, R7,ASR#2
BGE             loc_161618
ADD             R11, R4, #0x40 ; '@'
ADD             R3, R4, #4
CMP             R3, R11
BEQ             loc_1615D0
LDR             R7, [R3]
LDR             R1, [R4]
MOV             R0, R3
MOV             R9, R4
LDR             R2, [R7,#4]
LDR             R1, [R1,#4]
CMP             R2, R1
MOVCS           R1, R3
BCS             loc_1615A4
SUB             R2, R0, R9
ADD             R12, R0, #4
MOV             R1, R2,ASR#2
CMP             R1, #0
MOVGT           R1, #0
MOVGT           R2, R2,ASR#2
BLE             loc_16159C
ADD             R10, R0, R1,LSL#2
ADD             LR, R12, R1,LSL#2
LDR             R10, [R10,#-4]
SUBS            R2, R2, #1
SUB             R1, R1, #1
STR             R10, [LR,#-4]
BNE             loc_161580
STR             R7, [R4]
B               loc_1615C4
LDR             R2, [R1,#-4]!
LDR             R12, [R7,#4]
LDR             R9, [R2,#4]
CMP             R12, R9
STRCC           R2, [R0]
MOVCC           R0, R1
BCC             loc_1615A4
STR             R7, [R0]
ADD             R3, R3, #4
CMP             R3, R11
BNE             loc_161540
CMP             R11, R5
MOV             R12, R11
BEQ             loc_1616B0
LDR             R3, [R12]
MOV             R0, R12
MOV             R1, R12
LDR             R2, [R1,#-4]!
LDR             R4, [R3,#4]
LDR             R7, [R2,#4]
CMP             R4, R7
STRCC           R2, [R0]
MOVCC           R0, R1
BCC             loc_1615E8
ADD             R12, R12, #4
CMP             R12, R5
STR             R3, [R0]
BNE             loc_1615DC
B               loc_1616B0
ADD             R12, R4, #4
CMP             R12, R5
BEQ             loc_1616B0
LDR             R1, [R12]
LDR             R2, [R4]
MOV             R0, R12
LDR             R3, [R1,#4]
LDR             R2, [R2,#4]
CMP             R3, R2
MOVCS           R2, R12
BCS             loc_161684
SUB             R3, R0, R4
ADD             R7, R0, #4
MOV             R2, R3,ASR#2
CMP             R2, #0
MOVGT           R2, #0
MOVGT           R3, R3,ASR#2
BLE             loc_16167C
ADD             R9, R0, R2,LSL#2
ADD             R10, R7, R2,LSL#2
LDR             R9, [R9,#-4]
SUBS            R3, R3, #1
SUB             R2, R2, #1
STR             R9, [R10,#-4]
BNE             loc_161660
STR             R1, [R4]
B               loc_1616A4
LDR             R3, [R2,#-4]!
LDR             R7, [R1,#4]
LDR             R9, [R3,#4]
CMP             R7, R9
STRCC           R3, [R0]
MOVCC           R0, R2
BCC             loc_161684
STR             R1, [R0]
ADD             R12, R12, #4
CMP             R12, R5
BNE             loc_161624
LDR             R4, =0x401
MOV             R3, #0
MOV             R2, R3
MOV             R1, R4
ADD             R0, R6, #0x154
BL              sub_5B1340
LDRB            R0, [R8,#0xA1]
CMP             R0, #0
BEQ             loc_161754
CMP             R0, #1
BNE             loc_1616F8
LDR             R0, =0x1445C
MOV             R2, #1
LDR             R1, [R0,R6]
CMP             R1, #0
BEQ             loc_161764
LDR             R0, [R6,#0x210]
BL              sub_4AC814
LDR             R0, =dword_6E9820
MOV             R2, #0x4500
MOV             R1, R4
BL              sub_1102FC
LDR             R0, [R6]
LDR             R1, [R0,#0x5C]
MOV             R0, R6
BLX             R1
LDR             R0, =flt_658018
MOV             R3, #1
MOV             R2, #0
ORR             R4, R3, R3,LSL#10
VLDR            S1, [R0]
LDR             R0, =flt_658014
MOV             R1, R4
VLDR            S0, [R0]
ADD             R0, SP, #0xA8+var_80
BL              sub_12AB38
LDR             R0, =dword_6E1340
LDR             R0, [R0]
TST             R0, #1
BNE             loc_1617C8
B               loc_161770
LDR             R1, [R6,#0xC0]
MOV             R2, #1
CMP             R1, #0
BNE             loc_1616F0
LDR             R0, [R6,#0x210]
LDR             R1, [R0,#0xA4]
B               loc_1616F0
LDR             R0, =dword_6E1340
BLX             sub_3022F4
CMP             R0, #0
NOP
BEQ             loc_1617C8
LDR             R0, =flt_71203C
VLDR            S1, =1.0
VLDR            S0, =0.0
ADD             R1, R0, #0x10
VSTR            S1, [R0]
VSTR            S0, [R0,#(flt_712040 - 0x71203C)]
VSTR            S0, [R0,#(flt_712044 - 0x71203C)]
VSTR            S0, [R0,#(flt_712048 - 0x71203C)]
VSTM            R1, {S0-S1}
ADD             R1, R0, #0x24 ; '$'
VSTR            S0, [R0,#(flt_712054 - 0x71203C)]
VSTR            S0, [R0,#(flt_712058 - 0x71203C)]
VSTR            S0, [R0,#(flt_71205C - 0x71203C)]
VSTM            R1, {S0-S1}
VSTR            S0, [R0,#(flt_712068 - 0x71203C)]
LDR             R0, =dword_6E1340
NOP
LDR             R1, =flt_71203C
ADD             R0, SP, #0xA8+var_80
BL              sub_1280B0
LDR             R0, [R6]
MOV             R1, #1
LDR             R2, [R0,#0x6C]
MOV             R0, R6
BLX             R2
LDR             R0, =off_6D1648
MOV             R1, R4
LDR             R0, [R0]
LDR             R0, [R0,#0xA4]
BL              sub_1C726C
LDR             R0, =0x13B10
LDR             R0, [R0,R6]
BL              sub_3A14F4
LDRB            R0, [R8,#0xA1]
CMP             R0, #2
BNE             loc_161820
LDR             R0, [SP,#0xA8+var_9C]
ADD             R0, R0, #0x2C4
BL              sub_599454
ADD             R0, R6, #0x15000
ADD             R0, R0, #0xDC
BL              sub_599454
ADD             R0, R6, #0x2C4
NOP
BL              sub_599454
LDR             R0, =dword_6E9820
MOV             R1, #0
BL              sub_110290
ADD             SP, SP, #0x84
POP             {R4-R11,PC}
