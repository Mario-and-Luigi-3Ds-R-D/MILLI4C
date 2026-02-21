PUSH            {R0-R11,LR}
MOV             R6, R0
MOV             R10, R1
VPUSH           {D8-D10}
SUB             SP, SP, #0x5C
LDR             R0, [SP,#0xA8+arg_0]
CMP             R0, #0
LDRBNE          R0, [R6,#0x72]
CMPNE           R0, #0
BEQ             loc_136A2C
LDR             R0, [R6,#0xBC]
CMP             R0, #0
BEQ             loc_1369A0
LDR             R1, [R0]
LDRB            R7, [R0,#6]
LDR             R9, [R6,#0xCC]
ADD             R8, R6, #0x7C ; '|'
CMP             R7, #0
ADD             R5, R1, R0
MOV             R4, #0
BLE             loc_1369A0
MOV             R2, R9
MOV             R1, R5
ADD             R0, SP, #0xA8+var_98
BL              sub_13DD64
LDRB            R2, [R5,#8]
MOV             R5, R0
LDR             R1, [SP,#0xA8+var_94]
ADD             R4, R4, #1
ADD             R2, R8, R2,LSL#2
CMP             R7, R4
LDR             R0, [R2]
AND             R0, R0, R1
STR             R0, [R2]
LDR             R1, [SP,#0xA8+var_98]
ORR             R0, R0, R1
STR             R0, [R2]
BGT             loc_13695C
MOV             R9, #0
ADD             R0, R9, R9,LSL#1
ADD             R1, R6, R0,LSL#3
LDR             R0, [R1,#0xD4]
CMP             R0, #0
BEQ             loc_136A20
LDR             R11, [R1,#0xE4]
LDR             R1, [R0]
LDRB            R7, [R0,#6]
ADD             R8, R6, #0x7C ; '|'
ADD             R4, R1, R0
CMP             R7, #0
MOV             R5, #0
BLE             loc_136A20
MOV             R2, R11
MOV             R1, R4
ADD             R0, SP, #0xA8+var_A0
BL              sub_13DD64
MOV             R2, R0
LDRB            R0, [R4,#8]
MOV             R4, R2
LDR             R1, [SP,#0xA8+var_9C]
ADD             R5, R5, #1
ADD             R0, R8, R0,LSL#2
CMP             R7, R5
LDR             R2, [R0]
AND             R1, R1, R2
STR             R1, [R0]
LDR             R2, [SP,#0xA8+var_A0]
ORR             R1, R1, R2
STR             R1, [R0]
BGT             loc_1369D8
ADD             R9, R9, #1
CMP             R9, #2
BLT             loc_1369A4
LDR             R0, [SP,#0xA8+var_28]
LDRH            R0, [R0,#2]
CMP             R0, #0
LDREQ           R0, [SP,#0xA8+var_2C]
BEQ             loc_137748
LDR             R4, [SP,#0xA8+var_2C]
LDR             R2, =0xF02C0
MOV             R0, #0x80000000
ADD             R1, R6, #0x20 ; ' '
STM             R4!, {R0,R2}
MOV             R0, R4
LDR             R2, =0xBF02C1
BL              sub_127348
LDR             R0, [SP,#0xA8+var_28]
VLDR            S19, =0.0
ADD             R4, R4, #0x38 ; '8'
MOV             R5, #0
LDRH            R1, [R0,#6]
CMP             R1, #0
BEQ             loc_136AFC
LDR             R0, [R6,#4]
SUB             R1, R1, #1
MOV             R5, #4
ADD             R1, R1, R1,LSL#2
LDR             R2, [R0,#0x18]
ADD             R0, R0, R2
ADD             R1, R0, R1,LSL#2
LDR             R0, =0x804F02C0
MOV             R2, #0x80000005
STR             R2, [R4],#4
STR             R0, [R4],#4
LDR             R2, [R1,#0xC]
STR             R2, [R4],#4
LDR             R2, [R1,#8]
STR             R2, [R4],#4
LDR             R2, [R1,#4]
STR             R2, [R4],#4
LDR             R2, [R1]
STR             R2, [R4],#4
LDRSH           R2, [R1,#0x10]
LDRSH           R1, [R1,#0x12]
VMOV            S0, R2
VMOV            S1, R1
MOV             R1, #0x80000006
STR             R1, [R4],#4
STR             R0, [R4],#4
VCVT.F32.S32    S0, S0
VCVT.F32.S32    S1, S1
VSTM            R4!, {S19}
VSTM            R4!, {S19}
VSTM            R4!, {S1}
VSTM            R4!, {S0}
LDRB            R0, [R6,#0x6F]
TST             R0, #1
ORREQ           R5, R5, #8
BEQ             loc_136C14
LDR             R0, =dword_6CEF18
LDR             R8, =flt_6EA328
LDR             R0, [R0,#(dword_6CEF2C - 0x6CEF18)]
TST             R0, #1
BNE             loc_136B90
LDR             R0, =dword_6CEF2C
BLX             sub_3022F4
CMP             R0, #0
NOP
BEQ             loc_136B90
LDR             R0, =dword_6E1334
LDR             R0, [R0]
TST             R0, #1
BNE             loc_136B74
LDR             R0, =dword_6E1334
BLX             sub_3022F4
CMP             R0, #0
NOP
BEQ             loc_136B74
LDR             R0, =flt_711FF0
VSTR            S19, [R0]
VSTR            S19, [R0,#(flt_711FF4 - 0x711FF0)]
VSTR            S19, [R0,#(flt_711FF8 - 0x711FF0)]
VSTR            S19, [R0,#(flt_711FFC - 0x711FF0)]
LDR             R0, =dword_6E1334
NOP
LDR             R0, =flt_711FF0
LDM             R0, {R1-R3}
LDR             R0, [R0,#(flt_711FFC - 0x711FF0)]
STR             R0, [R8,#(dword_6EA334 - 0x6EA328)]
LDR             R0, =dword_6CEF2C
STM             R8, {R1-R3}
NOP
LDRB            R0, [R6,#0x6F]
VLDR            S0, [R6,#0x4C]
AND             R1, R0, #2
LDR             R0, [R10,#0x28]
MOV             R7, R1,LSR#1
CMP             R0, #0
VMOVEQ.F32      S0, S19
BEQ             loc_136BE0
BL              sub_12CC18
VLDR            S1, [R10,#0x2C]
CMP             R7, #0
VMUL.F32        S0, S0, S1
BEQ             loc_136BE0
VCMPE.F32       S0, S19
VMRS            APSR_nzcv, FPSCR
VLDR            S1, =0.5
VLDRCC          S1, =-0.5
VADD.F32        S0, S0, S1
VCVT.S32.F32    S0, S0
VCVT.F32.S32    S0, S0
LDR             R0, =0x804F02C0
MOV             R1, #0x80000009
VSTR            S0, [R8]
STR             R1, [R4],#4
STR             R0, [R4],#4
LDR             R0, [R8,#(dword_6EA334 - 0x6EA328)]
STR             R0, [R4],#4
LDR             R0, [R8,#(dword_6EA330 - 0x6EA328)]
STR             R0, [R4],#4
LDR             R0, [R8,#(dword_6EA32C - 0x6EA328)]
STR             R0, [R4],#4
LDR             R0, [R8]
STR             R0, [R4],#4
LDR             R0, [R6,#0x54]
MOV             R1, #1
BIC             R12, R6, #0xFF
STR             R0, [SP,#0xA8+var_78]
LDRB            R0, [R6,#0x6D]
MOV             R2, R1,LSL#8
CMP             R0, #0
MOVNE           R0, #1
AND             R3, R0, #0xFF
ORR             R1, R12, R3
AND             R3, R2, #0xFF00
BIC             R1, R1, #0xFF00
MOV             R0, #0
ORR             R1, R1, R3
MOV             R3, R0,LSL#16
LDRB            R2, [R6,#0x68]
BIC             R1, R1, #0xFF0000
AND             R3, R3, #0xFF0000
ORR             R1, R1, R3
BIC             R1, R1, #0xFF000000
CMP             R2, #0
ORR             R9, R1, R0,LSL#24
BEQ             loc_136C98
MOV             R0, #2
LDRB            R1, [R6,#0x69]
MOV             R3, R0,LSL#16
BIC             R2, R9, #0xFF0000
AND             R3, R3, #0xFF0000
CMP             R1, #0
ORR             R9, R2, R3
BEQ             loc_136C98
BIC             R1, R9, #0xFF000000
ORR             R9, R1, R0,LSL#24
LDRB            R0, [R6,#0x5C]
TST             R0, #1
BEQ             loc_136CDC
MOV             R1, R9,LSL#8
LDRB            R0, [R6,#0x5D]
MOV             R1, R1,LSR#24
ORR             R1, R1, #1
BIC             R2, R9, #0xFF0000
MOV             R1, R1,LSL#16
AND             R1, R1, #0xFF0000
CMP             R0, #0
ORR             R9, R2, R1
BEQ             loc_136CDC
MOV             R0, R9,LSR#24
ORR             R0, R0, #1
BIC             R1, R9, #0xFF000000
ORR             R9, R1, R0,LSL#24
LDR             R1, =0x30104
LDR             R2, =0xF0105
LDRB            R0, [R10,#0x4D]
ADD             R7, R2, R1,ASR#14
CMP             R0, #0
EOR             R3, R2, R1,ASR#16
ORR             R12, R2, R1,ASR#15
BIC             R11, R7, R1,ASR#2
BEQ             loc_136F0C
LDRB            R0, [R6,#0x6D]
LDRB            R8, [R10,#0x30]
CMP             R8, R0
BEQ             loc_136D30
LDR             R8, =unk_658664
ADD             R0, R8, R0,LSL#3
LDR             R8, [R0]
STR             R8, [R4],#4
LDR             R0, [R0,#4]
STR             R0, [R4],#4
LDRB            R0, [R6,#0x6D]
STRB            R0, [R10,#0x30]
LDRH            R0, [R6,#0x64]
LDRH            R8, [R10,#0x32]
CMP             R8, R0
BEQ             loc_136D4C
STRD            R0, R1, [R4],#8
LDRH            R0, [R6,#0x64]
STRH            R0, [R10,#0x32]
LDR             R0, [R6,#0x5C]
LDR             R1, [R10,#0x34]
CMP             R1, R0
BNE             loc_136D6C
LDRH            R1, [R10,#0x38]
LDRH            R8, [R6,#0x60]
CMP             R1, R8
BEQ             loc_136D80
STM             R4!, {R0,R2}
LDRH            R0, [R6,#0x60]
STM             R4!, {R0,R3}
LDRD            R0, R1, [R6,#0x5C]
STRD            R0, R1, [R10,#0x34]
LDR             R0, [R10,#0x3C]
LDR             R1, [R6,#0x68]
CMP             R0, R1
BEQ             loc_136DC8
LDRB            R0, [R6,#0x68]
LDRB            R1, [R6,#0x6A]
LDRB            R2, [R6,#0x69]
CMP             R0, #0
MOVNE           R0, #1
CMP             R2, #0
ORR             R0, R0, R1,LSL#4
MOVNE           R1, #0x1000
MOVEQ           R1, #0
ORR             R0, R0, R1
ORR             R0, R0, #0xF00
STM             R4!, {R0,R12}
LDR             R0, [R6,#0x68]
STR             R0, [R10,#0x3C]
LDR             R0, [R10,#0x40]
LDR             R1, [SP,#0xA8+var_78]
CMP             R0, R1
BEQ             loc_136DF0
ADD             R1, SP, #0xA8+var_78
MOV             R0, R4
BL              sub_13DCDC
MOV             R4, R0
LDR             R0, [SP,#0xA8+var_78]
STR             R0, [R10,#0x40]
LDR             R0, [R10,#0x44]
CMP             R0, R9
BEQ             loc_136EA0
TST             R9, #0xFF
MOV             R1, #1
B               loc_136E40
DCD 0xF02C0
DCD 0xBF02C1
DCFS 0.0
DCD 0x804F02C0
DCD dword_6CEF18
DCD flt_6EA328
DCD dword_6CEF2C
DCD dword_6E1334
DCD flt_711FF0
DCFS 0.5
DCFS -0.5
DCD 0x30104
DCD 0xF0105
DCD unk_658664
STM             R4!, {R1,R7}
MOVNE           R2, #0xF
STM             R4!, {R1,R11}
MOVEQ           R2, #0
LDR             R0, =0x10112
MOV             R1, R9,LSL#16
STR             R2, [R4],#4
MOVS            R1, R1,LSR#24
STR             R0, [R4],#4
MOVNE           R0, #0xF
MOVEQ           R0, #0
STR             R0, [R4],#4
LDR             R0, =0x10113
MOV             R1, R9,LSL#8
STR             R0, [R4],#4
MOV             R1, R1,LSR#24
STR             R1, [R4],#4
ADD             R0, R0, #1
STR             R0, [R4],#4
MOV             R1, R9,LSR#24
STR             R1, [R4],#4
ORR             R0, R0, R0,ASR#8
STR             R0, [R4],#4
STR             R9, [R10,#0x44]
LDRB            R2, [R6,#0x6E]
MOV             R1, R4
MOV             R0, R10
BL              sub_13D93C
LDRB            R1, [R6,#0x6E]
MOV             R7, #0
STRB            R1, [R10,#0x4C]
LDR             R1, [R6,#4]
LDR             R1, [R1,#0x10]
CMP             R1, #0
ORREQ           R5, R5, #0x10
ORR             R2, R5, #0x7F000000
LDR             R1, =0xF02B0
ORR             R2, R2, #0xFF0000
STR             R2, [R0],#4
STR             R1, [R0],#4
LDR             R2, [R6,#4]
LDRB            R1, [R6,#0x71]
CMP             R1, #0
LDRB            R1, [R2,#1]
BEQ             loc_137034
CMP             R1, #0xC
MOVEQ           R3, #2
MOVNE           R3, #0
MOV             R2, #6
ORR             R2, R2, R3,LSL#4
B               loc_137044
MOV             R0, R4
LDRB            R4, [R6,#0x6D]
LDR             R8, =unk_658664
LDR             R4, [R8,R4,LSL#3]!
STR             R4, [R0],#4
LDR             R4, [R8,#4]
ADD             R8, R10, #0x34 ; '4'
STR             R4, [R0],#4
LDRB            R4, [R6,#0x6D]
STRB            R4, [R10,#0x30]
LDRH            R4, [R6,#0x64]
STR             R4, [R0],#4
STR             R1, [R0],#4
LDRH            R1, [R6,#0x64]
STRH            R1, [R10,#0x32]
LDR             R1, [R6,#0x5C]
STM             R0!, {R1,R2}
LDRH            R1, [R6,#0x60]
STM             R0!, {R1,R3}
LDR             R1, [R6,#0x5C]
LDR             R2, [R6,#0x60]
STM             R8, {R1,R2}
LDRB            R1, [R6,#0x68]
LDRB            R2, [R6,#0x6A]
LDRB            R3, [R6,#0x69]
CMP             R1, #0
MOVNE           R1, #1
CMP             R3, #0
ORR             R1, R1, R2,LSL#4
MOVNE           R2, #0x1000
MOVEQ           R2, #0
ORR             R1, R1, R2
ORR             R1, R1, #0xF00
STM             R0!, {R1,R12}
LDR             R1, [R6,#0x68]
STR             R1, [R10,#0x3C]
ADD             R1, SP, #0xA8+var_78
BL              sub_13DCDC
LDR             R1, [SP,#0xA8+var_78]
MOV             R2, #1
TST             R9, #0xFF
STR             R1, [R10,#0x40]
STM             R0!, {R2,R7}
MOVNE           R3, #0xF
STM             R0!, {R2,R11}
MOVEQ           R3, #0
LDR             R1, =0x10112
MOV             R2, R9,LSL#16
STR             R3, [R0],#4
MOVS            R2, R2,LSR#24
STR             R1, [R0],#4
MOVNE           R1, #0xF
MOVEQ           R1, #0
STR             R1, [R0],#4
LDR             R1, =0x10113
MOV             R2, R9,LSL#8
STR             R1, [R0],#4
MOV             R2, R2,LSR#24
STR             R2, [R0],#4
ADD             R1, R1, #1
STR             R1, [R0],#4
MOV             R2, R9,LSR#24
STR             R2, [R0],#4
ORR             R1, R1, R1,ASR#8
STR             R1, [R0],#4
MOV             R1, R0
STR             R9, [R10,#0x44]
LDRB            R2, [R6,#0x6E]
MOV             R0, R10
BL              sub_13D93C
LDRB            R1, [R6,#0x6E]
MOV             R7, #0
STRB            R1, [R10,#0x4C]
B               loc_136EBC
CMP             R1, #0xC
MOVNE           R2, #0
MOVEQ           R2, #2
MOV             R2, R2,LSL#4
STR             R2, [R0],#4
LDR             R2, =0xF0083
VMOV.F32        S16, S19
STR             R2, [R0],#4
ADD             R2, R2, #0xB
STM             R0!, {R1,R2}
MOV             R8, R0
LDR             R0, [R6,#4]
LDR             R1, [R0,#0x14]
ADD             R2, R1, R0
LDRB            R1, [R0,#2]
STR             R2, [SP,#0xA8+var_A0]
CMP             R1, #0
LDREQ           R0, =dword_6CEF18
LDRNE           R1, [R0,#0x1C]
LDREQ           R0, [R0,#0xC]
ADDNE           R0, R0, R1
STR             R0, [SP,#0xA8+var_58]
LDR             R0, [R6,#8]
VLDR            S18, [R6,#0x50]
VLDR            S17, [R6,#0x58]
LDR             R0, [R0,#4]
BL              sub_122B64
VLDR            S0, [SP,#0xA8+var_78]
MOV             R2, R0
LDR             R0, [R10]
VSUB.F32        S1, S0, S17
ADD             R1, R6, #0x7C ; '|'
STR             R1, [SP,#0xA8+var_88]
MOV             R1, #0xFF
MOV             R11, #0xFFFFFFFF
STR             R1, [SP,#0xA8+var_70]
STR             R2, [SP,#0xA8+var_80]
STR             R11, [SP,#0xA8+var_A4]
VLDR            S0, [R0,#0x28]
ADD             R0, SP, #0xA8+var_7C
ADD             R1, R6, #0x74 ; 't'
VSTM            R0, {S0-S1}
LDR             R0, =0x80000052
VLDM            R1, {S0-S1}
STR             R0, [R8],#4
LDR             R0, =0x804F02C0
STR             R0, [R8],#4
VSTM            R8!, {S19}
VSTM            R8!, {S19}
VSTM            R8!, {S1}
VSTM            R8!, {S0}
LDR             R0, [R6,#4]
LDR             R2, [R0,#0x10]
CMP             R2, #0
BEQ             loc_1373B8
LDRB            R12, [R6,#0x70]
MOV             R1, #0
CMP             R12, #0
BEQ             loc_13712C
CMP             R12, #1
BNE             loc_137184
B               loc_137158
LDR             R3, [SP,#0xA8+var_28]
ADD             R0, R0, R2
LDRH            R1, [R3]
ADD             R1, R1, R1,LSL#1
ADD             R4, R0, R1,LSL#2
LDRH            R0, [R3,#2]
MOV             R1, #1
ADD             R0, R0, R0,LSL#1
ADD             R0, R4, R0,LSL#2
STR             R0, [SP,#0xA8+var_68]
B               loc_137184
LDR             R3, [SP,#0xA8+var_28]
ADD             R0, R0, R2
LDRH            R1, [R3]
SUB             R1, R1, #1
ADD             R1, R1, R1,LSL#1
ADD             R0, R0, R1,LSL#2
LDRH            R1, [R3,#2]
STR             R0, [SP,#0xA8+var_68]
ADD             R2, R1, R1,LSL#1
MOV             R1, #0xFFFFFFFF
ADD             R4, R0, R2,LSL#2
LDR             R0, [SP,#0xA8+var_68]
CMP             R4, R0
ADDNE           R0, R1, R1,LSL#1
STRNE           R0, [SP,#0xA8+var_8C]
BEQ             loc_137730
LDRH            R1, [R4,#6]
CMP             R1, R11
BEQ             loc_1371D0
LDR             R0, [SP,#0xA8+var_80]
MOV             R11, R1
LDRB            R2, [R4]
ADD             R1, R0, R11,LSL#7
LDR             R0, =unk_658634
MOV             R3, R1,LSR#3
ADD             R1, R0, #0xFC
LDR             R2, [R0,R2,LSL#2]
MOV             R0, R8
BL              sub_13D900
MOV             R8, R0
LDRH            R1, [R4,#4]
MOV             R0, R5
CMP             R1, #0
ORREQ           R5, R0, #2
BEQ             loc_137290
LDRB            R12, [R4,#1]
BIC             R5, R0, #2
CMP             R12, #0
BEQ             loc_137244
LDR             R2, [SP,#0xA8+var_A4]
MOV             R1, R12,LSL#16
CMP             R2, R1
BEQ             loc_137290
MOV             R3, #0x80000003
STR             R3, [R8],#4
LDR             R3, =unk_658758
LDR             R2, =0x804F02C0
STR             R1, [SP,#0xA8+var_A4]
ADD             R3, R3, R12,LSL#4
STR             R2, [R8],#4
VLDR            S0, [R3,#-4]
VSTM            R8!, {S0}
VLDR            S0, [R3,#-8]
VSTM            R8!, {S0}
LDR             R2, [R3,#-0xC]
STR             R2, [R8],#4
LDR             R1, [R3,#-0x10]
STR             R1, [R8],#4
B               loc_137290
LDR             R2, [SP,#0xA8+var_A4]
SUB             R1, R1, #1
CMP             R2, R1
BEQ             loc_137290
MOV             R2, #0x80000003
STR             R2, [R8],#4
LDR             R2, [SP,#0xA8+var_A0]
LDR             R3, =0x804F02C0
STR             R1, [SP,#0xA8+var_A4]
ADD             R2, R2, R1,LSL#4
STR             R3, [R8],#4
VLDR            S0, [R2,#0xC]
VSTM            R8!, {S0}
VLDR            S0, [R2,#8]
VSTM            R8!, {S0}
LDR             R1, [R2,#4]
STR             R1, [R8],#4
LDR             R1, [R2]
STR             R1, [R8],#4
CMP             R0, R5
BEQ             loc_1372AC
ORR             R1, R5, #0x7F000000
LDR             R0, =0xF02B0
ORR             R1, R1, #0xFF0000
STR             R1, [R8],#4
STR             R0, [R8],#4
LDRSH           R2, [R4,#0xA]
LDRSH           R1, [R4,#8]
LDR             R12, =0x804F02C0
VMOV            S0, R2
VMOV            S1, R1
MOV             R3, #0x80000004
STM             R8, {R3,R12}
VCMP.F32        S17, S19
VSTR            S19, [R8,#8]
VCVT.F32.S32    S0, S0
VCVT.F32.S32    S1, S1
VSTR            S16, [R8,#0xC]
ADD             R12, R8, #0x18
VSTR            S0, [R8,#0x10]
VSTR            S1, [R8,#0x14]
VLDR            S0, [SP,#0xA8+var_78]
VADD.F32        S0, S0, S17
VMRS            APSR_nzcv, FPSCR
VADD.F32        S16, S16, S18
VSTR            S0, [SP,#0xA8+var_78]
BEQ             loc_137310
ADD             R1, SP, #0xA8+var_78
MOV             R0, R12
BL              sub_13DCDC
MOV             R12, R0
LDRB            R1, [R4,#2]
LDR             R2, [SP,#0xA8+var_58]
RSB             R1, R1, R1,LSL#3
ADD             R1, R1, R1,LSL#1
ADD             R1, R2, R1,LSL#2
CMP             R1, R7
BEQ             loc_137388
CMP             R7, #0
LDRBNE          R3, [R7]
LDR             R2, [SP,#0xA8+var_88]
MOVEQ           R3, #6
MOV             R7, R1
MOV             R0, R12
BL              sub_13DB94
LDRB            R1, [R7,#1]
LDR             R2, [SP,#0xA8+var_70]
MOV             R12, R0
CMP             R1, R2
BEQ             loc_137388
CMP             R1, #0xFF
LDRBEQ          R1, [R6,#0x6D]
CMP             R1, R2
BEQ             loc_137388
LDR             R2, =unk_658664
LDR             R0, [R2,R1,LSL#3]!
STR             R0, [R12],#4
LDR             R0, [R2,#4]
STR             R0, [R12],#4
STRB            R1, [R10,#0x30]
STR             R1, [SP,#0xA8+var_70]
LDRB            R1, [R4]
LDR             R2, [SP,#0xA8+var_7C]
MOV             R0, R12
ADD             R1, R2, R1,LSL#2
BL              sub_13D918
MOV             R8, R0
LDR             R0, [SP,#0xA8+var_8C]
ADD             R4, R4, R0,LSL#2
LDR             R0, [SP,#0xA8+var_68]
CMP             R4, R0
BNE             loc_137198
B               loc_137730
LDRB            R1, [R0],#0x60
LDR             R3, [SP,#0xA8+var_28]
VLDR            S0, =1.0
ADD             R12, R0, R1,LSL#3
LDRH            R0, [R3]
ADD             R1, R12, #8
LDRB            R3, [R6,#0x70]
MOV             R11, R12
ADD             R0, R0, R0,LSL#1
CMP             R3, #0
ADD             R2, R1, R0,LSL#2
LDRH            R0, [R12,#4]
LDRH            R1, [R12,#6]
STR             R2, [SP,#0xA8+var_60]
VMOV            S1, R0
VMOV            S2, R1
MOV             R2, #0
STR             R2, [SP,#0xA8+var_84]
VCVT.F32.U32    S3, S1
VCVT.F32.U32    S1, S2
VDIV.F32        S21, S0, S3
VDIV.F32        S20, S0, S1
BEQ             loc_137420
CMP             R3, #1
BNE             loc_137494
B               loc_137458
LDR             R0, [SP,#0xA8+var_60]
LDRH            R1, [R0]
LDRH            R0, [R12]
ADD             R12, R11, #8
ADD             R0, R0, R0,LSL#1
ADD             R0, R12, R0,LSL#2
ADD             R4, R0, R1,LSL#4
LDR             R0, [SP,#0xA8+var_60]
LDRH            R1, [R0,#2]
MOV             R0, #1
STR             R0, [SP,#0xA8+var_84]
ADD             R0, R4, R1,LSL#4
STR             R0, [SP,#0xA8+var_68]
B               loc_137494
LDR             R0, [SP,#0xA8+var_60]
LDRH            R1, [R12]
ADD             R12, R11, #8
LDRH            R0, [R0]
ADD             R1, R1, R1,LSL#1
SUB             R0, R0, #1
ADD             R1, R12, R1,LSL#2
ADD             R0, R1, R0,LSL#4
LDR             R1, [SP,#0xA8+var_60]
LDRH            R1, [R1,#2]
STR             R0, [SP,#0xA8+var_68]
MOV             R0, #0xFFFFFFFF
STR             R0, [SP,#0xA8+var_84]
LDR             R0, [SP,#0xA8+var_68]
ADD             R4, R0, R1,LSL#4
LDR             R1, =unk_658788
MOV             R2, #0x28 ; '('
MOV             R0, R8
BL              sub_1273D0
LDR             R1, [SP,#0xA8+var_80]
LDR             R0, [R11,#4]
MOV             R1, R1,LSR#3
STR             R1, [R8,#0x18]
LDR             R1, =0x80000051
MOV             R0, R0,ROR#16
STR             R0, [R8,#0x10]
LDR             R0, =0x804F02C0
STR             R1, [R8,#0x28]!
STR             R0, [R8,#4]!
ADD             R8, R8, #4
VSTM            R8!, {S19}
VSTM            R8!, {S19}
VSTM            R8!, {S20}
VSTM            R8!, {S21}
LDR             R1, [SP,#0xA8+var_68]
CMP             R4, R1
LDRNE           R11, =0x80000050
BEQ             loc_137730
LDRH            R0, [R4,#0xA]
CMP             R0, #0
BNE             loc_13771C
LDR             R0, [R6,#4]
LDRH            R3, [R4,#8]
LDR             R12, =0x804F02C0
LDRB            R1, [R0],#0x60
ADD             R0, R0, R1,LSL#3
LDRH            R1, [R0]
LDRH            R2, [R0,#2]
ADD             R0, R0, #8
ADD             R1, R1, R1,LSL#1
ADD             R0, R0, R1,LSL#2
ADD             R0, R0, R2,LSL#4
ADD             R0, R0, R3,LSL#3
LDRH            R3, [R0,#6]
LDRH            R2, [R0,#4]
LDRH            R1, [R0,#2]
VMOV            S0, R3
VMOV            S1, R2
LDRH            R0, [R0]
STM             R8!, {R11,R12}
MOV             R3, R5
VMOV            S3, R0
VCVT.F32.U32    S2, S0
VMOV            S0, R1
VCVT.F32.U32    S1, S1
VCVT.F32.U32    S0, S0
VSTM            R8!, {S2}
VCVT.F32.U32    S2, S3
VSTM            R8!, {S1}
VSTM            R8!, {S0}
VSTM            R8!, {S2}
LDRH            R0, [R4,#6]
CMP             R0, #0
ORREQ           R5, R3, #2
BEQ             loc_137628
LDRB            R2, [R4,#0xE]
BIC             R5, R3, #2
CMP             R2, #0
BEQ             loc_1375E0
LDR             R0, [SP,#0xA8+var_A4]
MOV             R1, R2,LSL#16
CMP             R0, R1
BEQ             loc_137628
MOV             R0, #0x80000003
STR             R0, [R8],#4
LDR             R0, =unk_6587B0
STR             R1, [SP,#0xA8+var_A4]
STR             R12, [R8],#4
ADD             R0, R0, R2,LSL#4
LDR             R1, [R0,#-4]
STR             R1, [R8],#4
LDR             R1, [R0,#-8]
STR             R1, [R8],#4
LDR             R1, [R0,#-0xC]
STR             R1, [R8],#4
LDR             R0, [R0,#-0x10]
STR             R0, [R8],#4
B               loc_137628
SUB             R1, R0, #1
LDR             R0, [SP,#0xA8+var_A4]
CMP             R0, R1
BEQ             loc_137628
MOV             R0, #0x80000003
STR             R0, [R8],#4
LDR             R0, [SP,#0xA8+var_A0]
STR             R1, [SP,#0xA8+var_A4]
STR             R12, [R8],#4
ADD             R0, R0, R1,LSL#4
VLDR            S0, [R0,#0xC]
VSTM            R8!, {S0}
VLDR            S0, [R0,#8]
VSTM            R8!, {S0}
LDR             R1, [R0,#4]
STR             R1, [R8],#4
LDR             R0, [R0]
STR             R0, [R8],#4
CMP             R3, R5
BEQ             loc_137644
ORR             R1, R5, #0x7F000000
LDR             R0, =0xF02B0
ORR             R1, R1, #0xFF0000
STR             R1, [R8],#4
STR             R0, [R8],#4
LDRSH           R2, [R4,#2]
LDRSH           R1, [R4]
MOV             R3, #0x80000004
VMOV            S0, R2
VMOV            S1, R1
STM             R8, {R3,R12}
VCMP.F32        S17, S19
VSTR            S19, [R8,#8]
VSTR            S16, [R8,#0xC]
VCVT.F32.S32    S0, S0
VCVT.F32.S32    S1, S1
ADD             R0, R8, #0x18
VSTR            S0, [R8,#0x10]
VSTR            S1, [R8,#0x14]
VLDR            S0, [SP,#0xA8+var_78]
VADD.F32        S0, S0, S17
VMRS            APSR_nzcv, FPSCR
VADD.F32        S16, S16, S18
VSTR            S0, [SP,#0xA8+var_78]
ADDNE           R1, SP, #0xA8+var_78
BLNE            sub_13DCDC
LDR             R1, [SP,#0xA8+var_60]
LDR             R2, [SP,#0xA8+var_58]
LDRB            R1, [R1,#0xB]
RSB             R1, R1, R1,LSL#3
ADD             R1, R1, R1,LSL#1
ADD             R1, R2, R1,LSL#2
CMP             R1, R7
BEQ             loc_13770C
CMP             R7, #0
LDRBNE          R3, [R7]
LDR             R2, [SP,#0xA8+var_88]
MOVEQ           R3, #6
MOV             R7, R1
BL              sub_13DB94
LDRB            R1, [R7,#1]
LDR             R2, [SP,#0xA8+var_70]
CMP             R1, R2
BEQ             loc_13770C
CMP             R1, #0xFF
LDRBEQ          R1, [R6,#0x6D]
CMP             R1, R2
BEQ             loc_13770C
LDR             R2, =unk_658664
LDR             R3, [R2,R1,LSL#3]!
STR             R3, [R0],#4
LDR             R2, [R2,#4]
STR             R2, [R0],#4
STRB            R1, [R10,#0x30]
STR             R1, [SP,#0xA8+var_70]
LDR             R1, [SP,#0xA8+var_7C]
ADD             R1, R1, #0x30 ; '0'
BL              sub_13D918
MOV             R8, R0
LDR             R0, [SP,#0xA8+var_84]
ADD             R4, R4, R0,LSL#4
LDR             R0, [SP,#0xA8+var_68]
CMP             R4, R0
BNE             loc_1374F0
LDR             R1, [SP,#0xA8+var_78]
ADD             R2, R10, #0x40 ; '@'
MOV             R0, #1
STM             R2, {R1,R9}
STRB            R0, [R10,#0x4D]
MOV             R0, R8
ADD             SP, SP, #0x5C ; '\'
VPOP            {D8-D10}
ADD             SP, SP, #0x10
POP             {R4-R11,PC}
