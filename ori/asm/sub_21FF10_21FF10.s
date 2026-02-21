PUSH            {R4-R11,LR}
MOV             R6, R0
MOV             R9, #0
VPUSH           {D8}
SUB             SP, SP, #0x34
LDR             R0, [R0,#0xF8]
VLDR            S16, =0.0
CMP             R0, #0
BNE             loc_2200E8
LDR             R8, =off_6D1648
LDR             R0, [R8]
LDR             R0, [R0,#0xC0]
LDR             R1, =0x2203F
MOV             R4, R0
BL              sub_19B880
ADD             R4, R4, #0x13C00
ADD             R4, R4, #0x94
LDR             R10, =dword_6E1340
LDR             R1, [R4]
ADD             R0, R0, R0,LSL#1
VLDR            S17, =1.0
ADD             R11, R1, R0,LSL#5
MOV             R5, #0
LDR             R1, =dword_6ED9B8
RSB             R0, R5, R5,LSL#3
ADD             R0, R0, R5,LSL#4
ADD             R4, R6, R0,LSL#3
LDR             R0, [R4,#0x54]!
LDR             R2, [R0,#0x28]
MOV             R0, R4
BLX             R2
LDR             R0, [R8]
LDR             R0, [R0,#0xC0]
ADD             R1, R0, #0x15000
LDR             R0, [R4]
ADD             R1, R1, #0xAC
LDR             R2, [R0,#0x2C]
MOV             R0, R4
BLX             R2
LDR             R0, [R8]
LDR             R0, [R0,#0xC0]
LDR             R1, [R4,#0xA4]
ADD             R0, R0, #0x13000
ADD             R0, R0, #0xB70
CMP             R1, #0
ADDNE           R1, R1, #0x104
BL              sub_2018EC
LDR             R0, [R4]
MOV             R1, R11
LDR             R2, [R0,#0x34]
MOV             R0, R4
BLX             R2
LDR             R0, [R4]
CMP             R5, #1
MOV             R1, #0
MOVEQ           R1, #1
LDR             R3, [R0,#0x38]
MOV             R2, #0
MOV             R0, R4
BLX             R3
STRB            R9, [R4,#7]
LDR             R0, [R10]
MOV             R7, SP
TST             R0, #1
BNE             loc_220068
LDR             R0, =dword_6E1340
BLX             sub_3022F4
CMP             R0, #0
NOP
BEQ             loc_220068
LDR             R0, =flt_71203C
VMOV.F32        S0, S16
VSTR            S17, [R0]
VSTR            S0, [R0,#(flt_712040 - 0x71203C)]
VSTR            S0, [R0,#(flt_712044 - 0x71203C)]
VSTR            S0, [R0,#(flt_712048 - 0x71203C)]
VSTR            S0, [R0,#(flt_71204C - 0x71203C)]
VSTR            S17, [R0,#(flt_712050 - 0x71203C)]
VSTR            S0, [R0,#(flt_712054 - 0x71203C)]
VSTR            S0, [R0,#(flt_712058 - 0x71203C)]
VSTR            S0, [R0,#(flt_71205C - 0x71203C)]
VSTR            S0, [R0,#(flt_712060 - 0x71203C)]
VSTR            S17, [R0,#(flt_712064 - 0x71203C)]
VSTR            S0, [R0,#(flt_712068 - 0x71203C)]
LDR             R0, =dword_6E1340
NOP
LDR             R1, =flt_71203C
MOV             R0, R7
BL              sub_1169CC
LDR             R0, [R4,#0xA4]
ADD             R1, SP, #0x60+var_4C
VLDR            S4, [SP,#0x60+var_60]
VLDR            S0, [SP,#0x60+var_5C]
VLDR            S5, [SP,#0x60+var_58]
VLDR            S1, [SP,#0x60+var_54]
VLDR            S6, [SP,#0x60+var_50]
VLDR            S7, [SP,#0x60+var_44]
ADD             LR, SP, #0x60+var_40
VLDM            R1, {S2-S3}
ADD             R1, R0, #0x34 ; '4'
VSTR            S4, [R0,#0x20]
VSTR            S0, [R0,#0x24]
VSTR            S5, [R0,#0x28]
VSTR            S1, [R0,#0x2C]
VSTR            S6, [R0,#0x30]
VSTR            S7, [R0,#0x3C]
ADD             R0, R0, #0x40 ; '@'
VSTM            R1, {S2-S3}
LDM             LR, {R1-R3,R12}
STM             R0, {R1-R3,R12}
MOV             R1, #0
LDR             R0, [R4]
LDR             R2, [R0,#0x44]
MOV             R0, R4
BLX             R2
ADD             R5, R5, #1
CMP             R5, #2
BLT             loc_21FF6C
LDR             R0, [R6,#0x1C4]
STRH            R9, [R6,#0x50]
VSTR            S16, [R6,#0x4C]
BIC             R0, R0, #2
STR             R0, [R6,#0x1C4]
ADD             SP, SP, #0x34 ; '4'
VPOP            {D8}
POP             {R4-R11,PC}
