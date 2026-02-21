PUSH            {R4,R5,LR}
MOV             R4, R0
LDRB            R0, [R0,#0xFD]
SUB             SP, SP, #0xC
CMP             R0, #0
BEQ             loc_21831C
CMP             R0, #1
BNE             loc_218314
LDR             R5, [R2,#4]
LDR             R1, [R1,#0xC]
LDRB            R3, [R4,#0xF0]
MOV             R2, #0
MOV             R0, SP
BL              sub_14C73C
LDR             R0, [R4,#0x148]
LDR             R1, [SP,#0x18+var_18]
STR             R1, [R0,#0x2C]
LDR             R1, [SP,#0x18+var_14]
STR             R1, [R0,#0x3C]
LDR             R1, [SP,#0x18+var_10]
STR             R1, [R0,#0x4C]
LDR             R0, [R4,#0x148]
MOV             R1, R5
BL              sub_12CA08
ADD             SP, SP, #0xC
POP             {R4,R5,PC}
ADD             SP, SP, #0xC
MOV             R0, R4
POP             {R4,R5,LR}
NOP
PUSH            {R4-R9,LR}
MOV             R4, R0
MOV             R1, #1
VPUSH           {D8-D10}
SUB             SP, SP, #0x4C ; 'L'
LDR             R0, [R0,#0x13C]
BL              sub_111E70
LDR             R0, [R4,#0x13C]
MOV             R2, #6
MOV             R1, #0
BL              sub_4A1190
LDR             R0, [R4,#0x13C]
BL              sub_4A136C
LDR             R0, [R4,#0x13C]
MOV             R2, #4
MOV             R1, #0
BL              sub_111C30
LDR             R0, [R4,#0x13C]
BL              sub_111BC4
MOV             R0, #0xFFFFFFFF
MOV             R6, #0
REV             R5, R0
MOV             R0, #0xFF
STRB            R0, [SP,#0x80+var_58]
STRB            R6, [SP,#0x80+var_54]
STRB            R0, [SP,#0x80+var_50]
STRB            R6, [SP,#0x80+var_4C]
STRB            R0, [SP,#0x80+var_57]
STRB            R6, [SP,#0x80+var_53]
STRB            R0, [SP,#0x80+var_4F]
STRB            R6, [SP,#0x80+var_4B]
STRB            R0, [SP,#0x80+var_56]
STRB            R6, [SP,#0x80+var_52]
STRB            R0, [SP,#0x80+var_4E]
STRB            R6, [SP,#0x80+var_4A]
STRB            R0, [SP,#0x80+var_55]
STRB            R6, [SP,#0x80+var_51]
STRB            R0, [SP,#0x80+var_4D]
STRB            R6, [SP,#0x80+var_49]
LDR             R0, [R4]
MOV             R2, #1
ADD             R1, SP, #0x80+var_58
LDR             R3, [R0,#0x44]
MOV             R0, R4
BLX             R3
LDRB            R2, [SP,#0x80+var_4F]
MOV             R7, R5,LSL#16
MOV             R8, R5,LSL#8
LDRB            R1, [SP,#0x80+var_50]
MOV             R7, R7,LSR#24
AND             R3, R5, #0xFF
SMULBB          R2, R7, R2
LDRB            R12, [SP,#0x80+var_4E]
MOV             R7, R8,LSR#24
SMULBB          R1, R3, R1
LDRB            R3, [SP,#0x80+var_4D]
SMULBB          R7, R7, R12
BIC             R12, R0, #0xFF
ADD             R8, R1, R1,LSL#7
ADD             R1, R8, R1,LSL#15
ADD             R0, R2, R2,LSL#7
MOV             R1, R1,LSL#1
ADD             R0, R0, R2,LSL#15
MOV             R5, R5,LSR#24
MOV             R2, R1,LSR#24
SMULBB          R3, R5, R3
ORR             R2, R2, R12
MOV             R0, R0,LSR#23
ADD             R5, R7, R7,LSL#7
ADD             R1, R5, R7,LSL#15
MOV             R12, R0,LSL#8
MOV             R1, R1,LSR#23
BIC             R5, R2, #0xFF00
MOV             R2, R1,LSL#16
ADD             R0, R3, R3,LSL#7
AND             R12, R12, #0xFF00
ADD             R0, R0, R3,LSL#15
ORR             R1, R5, R12
AND             R2, R2, #0xFF0000
BIC             R1, R1, #0xFF0000
MOV             R0, R0,LSR#23
ORR             R1, R1, R2
BIC             R1, R1, #0xFF000000
ORR             R0, R1, R0,LSL#24
LDRB            R1, [SP,#0x80+var_4C]
AND             R2, R0, #0xFF
MOV             R3, #0xFF
ADD             R1, R1, R2
CMP             R1, #0xFF
MOVLE           R3, R1
LDRB            R1, [SP,#0x80+var_4B]
MOV             R5, R0,LSL#16
MOV             R2, #0xFF
ADD             R1, R1, R5,LSR#24
CMP             R1, #0xFF
MOVGT           R1, R2
LDRB            R2, [SP,#0x80+var_4A]
MOV             R7, R0,LSL#8
MOV             R5, #0xFF
ADD             R2, R2, R7,LSR#24
CMP             R2, #0xFF
MOVGT           R2, R5
LDRB            R5, [SP,#0x80+var_49]
AND             R3, R3, #0xFF
MOV             R2, R2,LSL#16
ADD             R0, R5, R0,LSR#24
CMP             R0, #0xFF
MOV             R5, #0xFF
MOVGT           R0, R5
BIC             R5, R12, #0xFF
MOV             R12, R1,LSL#8
ORR             R1, R5, R3
AND             R3, R12, #0xFF00
BIC             R1, R1, #0xFF00
ORR             R1, R1, R3
BIC             R3, R1, #0xFF0000
AND             R2, R2, #0xFF0000
MOV             R1, R0,LSL#24
ORR             R0, R3, R2
BIC             R0, R0, #0xFF000000
ORR             R0, R0, R1
LDRB            R3, [SP,#0x80+var_58]
MOV             R7, R0,LSL#16
AND             R5, R0, #0xFF
MOV             R8, R7,LSR#24
SMULBB          R7, R5, R3
LDRB            R2, [SP,#0x80+var_57]
LDRB            R12, [SP,#0x80+var_56]
MOV             R9, R0,LSL#8
LDRB            R3, [SP,#0x80+var_55]
MOV             R5, R9,LSR#24
SMULBB          R2, R8, R2
SMULBB          R5, R5, R12
ADD             R8, R7, R7,LSL#7
BIC             R12, R1, #0xFF
MOV             R0, R0,LSR#24
ADD             R1, R8, R7,LSL#15
ADD             R7, R2, R2,LSL#7
SMULBB          R3, R0, R3
ADD             R0, R7, R2,LSL#15
MOV             R1, R1,LSL#1
ADD             R7, R5, R5,LSL#7
MOV             R2, R1,LSR#24
ORR             R2, R2, R12
MOV             R0, R0,LSR#23
ADD             R1, R7, R5,LSL#15
MOV             R12, R0,LSL#8
MOV             R1, R1,LSR#23
BIC             R5, R2, #0xFF00
MOV             R2, R1,LSL#16
AND             R12, R12, #0xFF00
ADD             R0, R3, R3,LSL#7
ORR             R1, R5, R12
ADD             R0, R0, R3,LSL#15
AND             R2, R2, #0xFF0000
BIC             R1, R1, #0xFF0000
ORR             R1, R1, R2
MOV             R0, R0,LSR#23
BIC             R1, R1, #0xFF000000
ORR             R0, R1, R0,LSL#24
LDRB            R2, [SP,#0x80+var_54]
AND             R3, R0, #0xFF
MOV             R1, #0xFF
ADD             R3, R3, R2
LDRB            R2, [SP,#0x80+var_53]
CMP             R3, #0xFF
MOV             R5, R0,LSL#16
MOVGT           R3, R1
ADD             R2, R2, R5,LSR#24
CMP             R2, #0xFF
MOV             R1, #0xFF
MOVGT           R2, R1
LDRB            R1, [SP,#0x80+var_52]
MOV             R7, R0,LSL#8
MOV             R5, #0xFF
ADD             R1, R1, R7,LSR#24
CMP             R1, #0xFF
MOVGT           R1, R5
LDRB            R5, [SP,#0x80+var_51]
AND             R3, R3, #0xFF
ADD             R0, R5, R0,LSR#24
CMP             R0, #0xFF
MOV             R5, #0xFF
MOVGT           R0, R5
BIC             R5, R12, #0xFF
MOV             R12, R2,LSL#8
ORR             R2, R5, R3
AND             R3, R12, #0xFF00
BIC             R12, R2, #0xFF00
MOV             R2, R1,LSL#16
ORR             R1, R12, R3
BIC             R3, R1, #0xFF0000
AND             R2, R2, #0xFF0000
MOV             R1, R0,LSL#24
ORR             R0, R3, R2
BIC             R0, R0, #0xFF000000
ORR             R0, R0, R1
STR             R0, [SP,#0x80+var_48]
LDR             R0, [R4,#0x13C]
ADD             R1, SP, #0x80+var_48
BL              sub_111C60
LDR             R0, [R4,#0x13C]
LDR             R3, =0xFFFED4AF
MOV             R5, #1
MOV             R1, #3
SUB             R0, R0, R3
SUB             R2, R3, #4
STRB            R5, [R0]
LDR             R8, [R4,#0x13C]
RSB             R12, R2, R1,ASR#1
RSB             R7, R3, R1,ASR#1
SUB             R2, R8, R2
MOV             R3, #0xE
STRB            R1, [R2]
LDR             R2, [R4,#0x13C]
ORR             R0, R7, R1
VLDR            S21, =0.0
STRB            R6, [R2,R7]
LDR             R2, [R4,#0x13C]
ADD             R7, SP, #0x80+var_7C
VMOV.F32        S0, S21
STRB            R3, [R2,R12]
LDR             R2, [R4,#0x13C]
MOV             R3, #0; int
STRB            R6, [R2,R0]
REV             R2, R6
ADD             R0, SP, #0x80+var_48
STR             R0, [SP,#0x80+var_74]; int
STR             R2, [SP,#0x80+var_48]
STR             R6, [SP,#0x80+var_80]; float
STM             R7, {R1,R5}
MOV             R1, R3; int
LDR             R0, [R4,#0x13C]; int
LDR             R2, [R4,#0x144]; int
BL              sub_4A1E7C
LDR             R6, =dword_6E1340
VLDR            S20, =1.0
LDR             R0, [R6]
TST             R0, #1
BNE             loc_21873C
MOV             R0, R6
BLX             sub_3022F4
CMP             R0, #0
BEQ             loc_21873C
LDR             R0, =flt_71203C
VMOV.F32        S0, S21
VSTR            S20, [R0]
VSTR            S0, [R0,#(flt_712040 - 0x71203C)]
VSTR            S0, [R0,#(flt_712044 - 0x71203C)]
VSTR            S0, [R0,#(flt_712048 - 0x71203C)]
VSTR            S0, [R0,#(flt_71204C - 0x71203C)]
VSTR            S20, [R0,#(flt_712050 - 0x71203C)]
VSTR            S0, [R0,#(flt_712054 - 0x71203C)]
VSTR            S0, [R0,#(flt_712058 - 0x71203C)]
VSTR            S0, [R0,#(flt_71205C - 0x71203C)]
VSTR            S0, [R0,#(flt_712060 - 0x71203C)]
VSTR            S20, [R0,#(flt_712064 - 0x71203C)]
VSTR            S0, [R0,#(flt_712068 - 0x71203C)]
MOV             R0, R6
NOP
LDR             R1, =flt_71203C
LDR             R0, [R4,#0x13C]
BL              sub_4A1E40
LDR             R0, [R6]
TST             R0, #1
BNE             loc_2187A8
LDR             R0, =dword_6E1340
BLX             sub_3022F4
CMP             R0, #0
NOP
BEQ             loc_2187A8
LDR             R0, =flt_71203C
VMOV.F32        S0, S21
VSTR            S20, [R0]
VSTR            S0, [R0,#(flt_712040 - 0x71203C)]
VSTR            S0, [R0,#(flt_712044 - 0x71203C)]
VSTR            S0, [R0,#(flt_712048 - 0x71203C)]
VSTR            S0, [R0,#(flt_71204C - 0x71203C)]
VSTR            S20, [R0,#(flt_712050 - 0x71203C)]
VSTR            S0, [R0,#(flt_712054 - 0x71203C)]
VSTR            S0, [R0,#(flt_712058 - 0x71203C)]
VSTR            S0, [R0,#(flt_71205C - 0x71203C)]
VSTR            S0, [R0,#(flt_712060 - 0x71203C)]
VSTR            S20, [R0,#(flt_712064 - 0x71203C)]
VSTR            S0, [R0,#(flt_712068 - 0x71203C)]
LDR             R0, =dword_6E1340
NOP
LDR             R1, =flt_71203C
LDR             R0, [R4,#0x13C]
BL              sub_4A1F14
LDR             R0, [R4,#0x13C]
MOV             R1, #0xFE1FFFFF
MOV             R3, #0
ADD             R0, R0, #0x13000
ADD             R0, R0, #0x6D0
MOV             R2, #1
STR             R1, [R0]
LDR             R0, [R4,#0x13C]
SUB             R1, R1, #0xC0000018
ADD             R0, R0, #0x13000
ADD             R0, R0, #0x6D0
STR             R1, [R0]
STR             R5, [SP,#0x80+var_80]
LDR             R0, [R4,#0x13C]
MOV             R1, #3
BL              sub_1C8D34
VLDR            S0, [R4,#0x140]
VLDR            S1, =0.5
LDR             R0, =off_6CE970
ADD             R7, R4, #0x110
VMUL.F32        S16, S0, S1
LDM             R7, {R5,R7}
MOV             R6, #0
LDR             R0, [R0]
LDRB            R9, [R4,#0xF0]
CMP             R5, R7
ADD             R8, R0, #0x10C000
ADD             R8, R8, #0x5A0
BEQ             loc_21893C
MOV             R3, R9
MOV             R2, #0
MOV             R1, R5
ADD             R0, SP, #0x80+var_68
BL              sub_14C73C
CMP             R6, #0
NOP
BEQ             loc_218950
MOV             R3, R9
MOV             R2, #0
MOV             R1, R6
MOV             R0, SP
BL              sub_14C73C
ADD             R1, SP, #0x80+var_64
VLDMEA          SP, {S0-S2}
VLDR            S5, [SP,#0x80+var_68]
VLDM            R1, {S3-S4}
VSUB.F32        S0, S0, S5
VSUB.F32        S1, S1, S3
VSUB.F32        S2, S2, S4
VLDR            S7, [R8,#(dword_10C5A8 - 0x10C5A0)]
VLDR            S6, [R8]
VLDR            S8, [R8,#(dword_10C5A4 - 0x10C5A0)]
ADD             R1, SP, #0x80+var_68
LDR             R0, [R4,#0x13C]
VMUL.F32        S3, S0, S8
VMUL.F32        S5, S1, S7
VMUL.F32        S4, S2, S6
VMLS.F32        S3, S1, S6
VMLS.F32        S5, S2, S8
VMLS.F32        S4, S0, S7
VMUL.F32        S0, S5, S5
VMLA.F32        S0, S4, S4
VMLA.F32        S0, S3, S3
VSQRT.F32       S1, S0
VDIV.F32        S0, S20, S1
VMUL.F32        S17, S5, S0
VMUL.F32        S18, S4, S0
VMUL.F32        S19, S3, S0
VLDM            R1, {S3-S5}
VMUL.F32        S0, S17, S16
VMUL.F32        S1, S18, S16
VMUL.F32        S2, S19, S16
VSUB.F32        S0, S3, S0
VSUB.F32        S1, S4, S1
VSUB.F32        S2, S5, S2
BL              sub_1C8F64
VMOV.F32        S1, S21
VMOV.F32        S0, S21
LDR             R0, [R4,#0x13C]
BL              sub_1C8FF0
VMUL.F32        S0, S17, S16
VMUL.F32        S1, S18, S16
VMUL.F32        S2, S19, S16
ADD             R1, SP, #0x80+var_68
LDR             R0, [R4,#0x13C]
VLDM            R1, {S3-S5}
VADD.F32        S0, S3, S0
VADD.F32        S1, S4, S1
VADD.F32        S2, S5, S2
BL              sub_1C8F64
VMOV.F32        S1, S21
VMOV.F32        S0, S20
LDR             R0, [R4,#0x13C]
BL              sub_1C8FF0
MOV             R6, R5
ADD             R5, R5, #0x38 ; '8'
CMP             R5, R7
BNE             loc_218828
LDR             R0, [R4,#0x13C]
BL              sub_4A18F0
ADD             SP, SP, #0x4C ; 'L'
VPOP            {D8-D10}
POP             {R4-R9,PC}
ADD             R1, R5, #0x38 ; '8'
MOV             R3, R9
MOV             R2, #0
MOV             R0, SP
BL              sub_14C73C
ADD             R1, SP, #0x80+var_68
VLDR            S5, [SP,#0x80+var_80]
VLDM            R1, {S0-S2}
ADD             R1, SP, #0x80+var_7C
VLDM            R1, {S3-S4}
VSUB.F32        S0, S0, S5
VSUB.F32        S1, S1, S3
VSUB.F32        S2, S2, S4
B               loc_218878
