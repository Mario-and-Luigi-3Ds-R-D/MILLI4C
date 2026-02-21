PUSH            {R4-R8,LR}
MOV             R4, R0
SUB             SP, SP, #0x38
LDRB            R0, [R0,#0x1CD]
ADD             R5, R4, #0x100
CMP             R0, #1
BEQ             loc_231268
CMP             R0, #2
BEQ             loc_2313FC
CMP             R0, #3
BNE             loc_2313E0
B               loc_231428
MOV             R0, SP
BL              sub_234BEC
LDRH            R0, [R5,#0xF8]
TST             R0, #1
BEQ             loc_23129C
LDR             R1, [R4,#0x1F4]
ADD             R3, SP, #0x50+var_4C
ADD             R0, R1, #0xE4
LDR             R1, [R1,#0xEC]
LDM             R0, {R0,R2}
STR             R1, [SP,#0x50+var_44]
STM             R3, {R0,R2}
B               loc_2312B8
NOP
BL              sub_463584
LDM             R0, {R1,R2}
LDR             R0, [R0,#8]
STR             R0, [SP,#0x50+var_44]
ADD             R0, SP, #0x50+var_4C
STM             R0, {R1,R2}
LDRH            R0, [R5,#0xF8]
TST             R0, #2
BEQ             loc_2312DC
LDR             R2, [R4,#0x1F4]
ADD             R3, SP, #0x50+var_40
ADD             R2, R2, #0xF0
LDM             R2, {R0-R2}
STM             R3, {R0-R2}
B               loc_2312F8
NOP
BL              sub_4635D8
LDM             R0, {R1,R2}
LDR             R0, [R0,#8]
STR             R0, [SP,#0x50+var_38]
ADD             R0, SP, #0x50+var_40
STM             R0, {R1,R2}
LDRH            R0, [R5,#0xF8]
TST             R0, #4
BEQ             loc_23131C
LDR             R2, [R4,#0x1F4]
ADD             R3, SP, #0x50+var_28
ADD             R2, R2, #0x108
LDM             R2, {R0-R2}
STM             R3, {R0-R2}
B               loc_231338
NOP
BL              sub_4635D8
LDM             R0, {R1,R2}
LDR             R0, [R0,#8]
STR             R0, [SP,#0x50+var_20]
ADD             R0, SP, #0x50+var_28
STM             R0, {R1,R2}
MOV             R1, SP
VLDR            S1, [R4,#0x1D0]
VLDR            S0, [SP,#0x50+var_28]
MOV             R0, R4
VADD.F32        S0, S0, S1
VSTR            S0, [SP,#0x50+var_28]
VLDR            S1, [R4,#0x1D4]
VLDR            S0, [SP,#0x50+var_24]
VADD.F32        S0, S0, S1
VSTR            S0, [SP,#0x50+var_24]
VLDR            S1, [R4,#0x1D8]
VLDR            S0, [SP,#0x50+var_20]
VADD.F32        S0, S0, S1
VSTR            S0, [SP,#0x50+var_20]
VLDR            S1, [R4,#0x1DC]
VLDR            S0, [SP,#0x50+var_4C]
VMUL.F32        S0, S0, S1
VSTR            S0, [SP,#0x50+var_4C]
VLDR            S1, [R4,#0x1E0]
VLDR            S0, [SP,#0x50+var_48]
VMUL.F32        S0, S0, S1
VSTR            S0, [SP,#0x50+var_48]
VLDR            S1, [R4,#0x1E4]
VLDR            S0, [SP,#0x50+var_44]
VMUL.F32        S0, S0, S1
VSTR            S0, [SP,#0x50+var_44]
VLDR            S1, [R4,#0x1E8]
VLDR            S0, [SP,#0x50+var_40]
VADD.F32        S0, S0, S1
VSTR            S0, [SP,#0x50+var_40]
VLDR            S1, [R4,#0x1EC]
VLDR            S0, [SP,#0x50+var_3C]
VADD.F32        S0, S0, S1
VSTR            S0, [SP,#0x50+var_3C]
VLDR            S1, [R4,#0x1F0]
VLDR            S0, [SP,#0x50+var_38]
VADD.F32        S0, S0, S1
VSTR            S0, [SP,#0x50+var_38]
BL              sub_231790
MOV             R0, SP
NOP
NOP
MOV             R0, R4
BL              sub_532C04
MOV             R7, R0
LDRB            R0, [R4,#0x1CD]
CMP             R0, #1
BNE             loc_231598
B               loc_231458
MOV             R0, SP
BL              sub_234BEC
MOV             R0, SP
NOP
BL              sub_234B48
LDR             R0, [R4,#0x1F4]
ADD             R1, SP, #0x50+var_28
LDR             R2, [R0]
LDR             R2, [R2,#0x38]
BLX             R2
B               loc_231338
MOV             R0, SP
BL              sub_234BEC
MOV             R0, SP
NOP
BL              sub_234B48
LDR             R0, [R4,#0x1F4]
LDRB            R1, [R4,#0x1F8]
ADD             R2, SP, #0x50+var_28
LDR             R3, [R0]
LDR             R3, [R3,#0x138]
BLX             R3
B               loc_231338
LDRH            R0, [R5,#0xF8]
TST             R0, #8
BEQ             loc_231598
LDRB            R0, [R5,#0x70]
CMP             R0, #0
BEQ             loc_231488
MOV             R1, SP
MOV             R0, R4
BL              sub_5C9900
NOP
NOP
B               loc_231510
LDR             R0, =dword_6E1340
LDR             R0, [R0]
TST             R0, #1
BNE             loc_2314EC
LDR             R0, =dword_6E1340
BLX             sub_3022F4
CMP             R0, #0
NOP
BEQ             loc_2314EC
LDR             R0, =flt_71203C
VLDR            S0, =1.0
VLDR            S1, =0.0
ADD             R1, R0, #0x14
VSTM            R0, {S0-S1}
VSTR            S1, [R0,#(flt_712044 - 0x71203C)]
VSTR            S1, [R0,#(flt_712048 - 0x71203C)]
VSTR            S1, [R0,#(flt_71204C - 0x71203C)]
VSTM            R1, {S0-S1}
VSTR            S1, [R0,#(flt_712058 - 0x71203C)]
VSTR            S1, [R0,#(flt_71205C - 0x71203C)]
VSTR            S1, [R0,#(flt_712060 - 0x71203C)]
ADD             R0, R0, #0x28 ; '('
VSTM            R0, {S0-S1}
LDR             R0, =dword_6E1340
NOP
LDR             R0, =flt_71203C
ADD             R1, R0, #0x20 ; ' '
VLDM            R0, {S0-S7}
VSTMEA          SP, {S0-S7}
LDR             R0, [R0,#(flt_712068 - 0x71203C)]
LDM             R1, {R1-R3}
STR             R0, [SP,#0x50+var_24]
ADD             R0, SP, #0x50+var_30
STM             R0, {R1-R3}
LDR             R0, [R4,#0x1F4]
LDR             R1, [R0]
LDR             R1, [R1,#0xC]
BLX             R1
CMP             R0, #0
LDR             R0, [R4,#0x1F4]
LDR             R1, [R0]
BEQ             loc_23155C
LDR             R1, [R1,#0x38]
BLX             R1
VLDMEA          SP, {S0-S7}
ADD             R6, SP, #0x50+var_30
LDR             R0, [R0,#0xA4]
ADD             R1, R0, #0x20 ; ' '
ADD             R0, R0, #0x40 ; '@'
VSTM            R1, {S0-S7}
LDM             R6, {R1-R3,R12}
STM             R0, {R1-R3,R12}
B               loc_231598
LDR             R1, [R1,#0x3C]
BLX             R1
VLDMEA          SP, {S0-S7}
MOV             R1, R0
ADD             R8, SP, #0x50+var_30
LDR             R0, [R0,#0xA4]
ADD             R0, R0, #0x4C ; 'L'
VSTM            R0, {S0-S7}
ADD             R0, R0, #0x20 ; ' '
LDM             R8, {R2,R3,R6,R12}
STM             R0, {R2,R3,R6,R12}
LDR             R0, [R1,#0xA4]
LDR             R1, [R0,#0x88]
ORR             R1, R1, #0x800
STR             R1, [R0,#0x88]
LDRH            R1, [R4,#0xE]
MOV             R0, R4
TST             R1, #1
BEQ             loc_2315B4
LDRB            R1, [R5,#0x6E]
CMP             R1, #0
BEQ             loc_2316F4
LDRB            R1, [R5,#0x72]
CMP             R1, #0
BEQ             loc_2315D0
BL              sub_532B54
CMP             R0, #0
NOP
BNE             loc_2316F4
LDRB            R0, [R4,#0x1CD]
MOV             R8, #0
CMP             R0, #1
BEQ             loc_2315F0
CMP             R0, #2
CMPNE           R0, #3
STRBEQ          R8, [R4,#0x1CD]
B               loc_231678
LDR             R0, [R4,#0x1F4]
CMP             R0, #0
BEQ             loc_231628
LDRB            R1, [R4,#0x1CC]
TST             R1, #1
BEQ             loc_231628
LDRB            R1, [R0,#0xDE]
BIC             R1, R1, #1
STRB            R1, [R0,#0xDE]
LDR             R0, [R4,#0x1F4]
LDR             R1, [R0]
LDR             R2, [R1,#0x84]
MOV             R1, #0
BLX             R2
LDR             R0, [R4,#0x1F4]
STRB            R8, [R4,#0x1CD]
CMP             R0, #0
BEQ             loc_231678
LDR             R1, [R0]
LDR             R1, [R1,#0xC]
BLX             R1
CMP             R0, #0
LDR             R0, [R4,#0x1F4]
LDR             R1, [R0]
BEQ             loc_231664
LDR             R1, [R1,#0x38]
BLX             R1
STRB            R8, [R0,#0xCD]
B               loc_231678
LDR             R1, [R1,#0x3C]
BLX             R1
LDRB            R1, [R0,#0x2F7]
BIC             R1, R1, #1
STRB            R1, [R0,#0x2F7]
LDR             R0, [R4,#0x180]
MOV             R5, #0
CMP             R0, #0
STRNE           R8, [R0]
STRNE           R8, [R4,#0x180]
AND             R0, R5, #0xFF
ADD             R1, R4, #0x10
MOV             R2, #0
ADD             R6, R4, R0,LSL#2
STR             R2, [R1,R0,LSL#2]
LDR             R0, [R6,#0x184]
CMP             R0, #0
BEQ             loc_2316C4
LDR             R1, [R0]
LDR             R1, [R1,#0x38]
BLX             R1
MOV             R1, R0
MOV             R0, #0
STRB            R8, [R1,#0xCC]
ADD             R5, R5, #1
CMP             R5, #8
STR             R0, [R6,#0x184]
BLT             loc_23168C
MOV             R5, #0
AND             R1, R5, #0xFF
MOV             R2, #0
MOV             R0, R4
BL              sub_230F0C
ADD             R5, R5, #1
CMP             R5, #8
BLT             loc_2316D8
ADD             SP, SP, #0x38 ; '8'
MOV             R0, R7
POP             {R4-R8,PC}
