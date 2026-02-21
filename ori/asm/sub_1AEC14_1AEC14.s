PUSH            {R0-R12,LR}
MOV             R4, #0
MOV             R8, R0
VPUSH           {D8-D15}
SUB             SP, SP, #0x2840
ADD             R0, SP, #0x28B8+var_8B8
LDR             R0, [R0,#0x888]
VLDR            S1, [R0]
ADD             R0, SP, #0x28B8+var_8B8
LDR             R0, [R0,#0x884]
VLDR            S0, [R0]
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
MOVCC           R4, #2
BCC             loc_1AEC54
MOVGT           R4, #8
ADD             R0, SP, #0x28B8+var_8B8
LDR             R0, [R0,#0x888]
VLDR            S0, [R0,#8]
ADD             R0, SP, #0x28B8+var_8B8
LDR             R0, [R0,#0x884]
VLDR            S1, [R0,#8]
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
ORRCC           R4, R4, #4
BCC             loc_1AEC80
ORRGT           R4, R4, #1
ADD             R0, SP, #0x28B8+var_8B8
LDR             R0, [R0,#0x888]
VLDR            S0, [R0,#4]
ADD             R0, SP, #0x28B8+var_8B8
LDR             R0, [R0,#0x884]
VLDR            S1, [R0,#4]
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
ORRCC           R4, R4, #0x10
BCC             loc_1AECAC
ORRGT           R4, R4, #0x20 ; ' '
ADD             R6, SP, #0x28B8+var_2858
VLDR            S29, =61.0
MOV             R0, R6
BL              sub_17293C
LDR             R0, [R8,#4]
LDRB            R0, [R0,#0xDC]
STRB            R0, [SP,#0x28B8+var_277C]
LDR             R0, [SP,#0x28B8+var_236C]
BIC             R0, R0, #0x10
STR             R0, [SP,#0x28B8+var_236C]
LDR             R0, [R8,#4]
LDR             R1, [R0,#0x610]
MOV             R0, R6
STR             R1, [R0,#0x610]
LDR             R5, =off_6D1648
LDR             R0, [R5]
LDR             R0, [R0,#0xBC]
STR             R0, [SP,#0x28B8+var_2854]
LDRB            R0, [SP,#0x28B8+var_277A]
ORR             R0, R0, #1
STRB            R0, [SP,#0x28B8+var_277A]
LDR             R0, [R5]
LDR             R0, [R0,#0xBC]
ADD             R1, R0, #0x16000
ADD             R1, R1, #0x338
TST             R4, #5
LDR             R2, [R1,#4]
LDRB            R3, [R1,#0x110]
MOV             R1, #0
ADD             R2, R2, #0x14000
MOV             R0, #1
LDRB            R2, [R2,#0x28D]
VLDR            S24, =0.0
VLDR            S27, =-43.134
ADD             R2, R2, R3
AND             R10, R2, #0xFF
ADD             R2, SP, #0x28B8+var_8B8
VMOV.F32        S16, S24
STRBNE          R1, [R2,#0x7E4]
STRBNE          R0, [R2,#0x7E5]
STRBEQ          R0, [R2,#0x7E4]
STRBEQ          R1, [R2,#0x7E5]
MOV             R0, #0
STR             R0, [R2,#0x7FC]
MOV             R2, #0xFC0
ADD             R1, SP, #0x28B8+var_8B8
AND             R2, R2, R4,LSL#6
STR             R2, [R1,#0x7DC]
ADD             R1, SP, #0x28B8+var_8B8
ADD             R1, R1, #0x770
STR             R1, [SP,#0x28B8+var_286C]
LDR             R0, =_ZTV10DreamMario; `vtable for'DreamMario ...
ADD             R1, SP, #0x28B8+var_8B8
ADD             R2, R8, #0x1000
STR             R2, [R1,#0x804]
ADD             R1, R0, #8
STR             R1, [SP,#0x28B8+var_2878]
ADD             R1, R0, #0x480
ADD             R0, R0, #0x400
ADD             R0, R0, #0x98
STR             R0, [SP,#0x28B8+var_2870]
LDR             R0, =off_6B7BFC
VLDR            S22, =43.134
VLDR            S28, =86.267
STR             R0, [SP,#0x28B8+var_285C]
LDR             R0, =off_6B7BEC
VLDR            S26, =8.0
VLDR            S31, =-61.0
VLDR            S30, =122.0
STR             R0, [SP,#0x28B8+var_28B4]
STR             R1, [SP,#0x28B8+var_2874]
ADD             R1, SP, #0x28B8+var_8B8
ADD             R0, SP, #0x28B8+var_4B8
LDR             R1, [R1,#0x7FC]
ADD             R0, R0, #0x3E4
LDRB            R0, [R0,R1]
CMP             R0, #0
BEQ             loc_1AEDF0
CMP             R0, #1
BNE             loc_1B0318
B               loc_1AF908
ADD             R0, SP, #0x28B8+var_8B8
VMOV.F32        S0, S26
LDR             R0, [R0,#0x804]
VMOV.F32        S23, S27
VMOV.F32        S18, S28
ADD             R1, SP, #0x28B8+var_8B8
VLDR            S2, [R0,#0x194]
ADD             R0, SP, #0x28B8+var_8B8
VLDR            S20, =17.866
LDR             R0, [R0,#0x804]
VSUB.F32        S17, S2, S0
VLDR            S1, [R0,#0x190]
MOV             R0, #0
STR             R0, [R1,#0x7E0]
VSUB.F32        S0, S1, S0
VSUB.F32        S19, S17, S0
VMOV.F32        S25, S0
B               loc_1AF0A4
ADD             R0, SP, #0x28B8+var_8B8
LDR             R0, [R0,#0x7E0]
CMP             R0, #0
BEQ             loc_1AF0A4
VMOV.F32        S4, S25
VMOV.F32        S3, S18
VMOV.F32        S2, S22
VMOV.F32        S1, S17
VMOV.F32        S0, S21
ADD             R4, SP, #0x28B8+var_2858
MOV             R0, R4
BL              sub_575D3C
VMOV.F32        S4, S25
VMOV.F32        S3, S18
VMOV.F32        S2, S22
VMOV.F32        S1, S17
VMOV.F32        S0, S21
MOV             R0, R4
BL              sub_22D56C
VMOV.F32        S4, S25
VMOV.F32        S3, S18
VMOV.F32        S2, S22
VMOV.F32        S1, S17
VMOV.F32        S0, S21
MOV             R0, R4
BL              sub_575C24
VMOV.F32        S3, S25
VMOV.F32        S2, S22
VMOV.F32        S1, S17
VMOV.F32        S0, S21
MOV             R0, R4
BL              sub_53FA70
VMOV.F32        S3, S25
VMOV.F32        S2, S22
VMOV.F32        S1, S17
VMOV.F32        S0, S21
MOV             R0, R4
BL              sub_53FAA0
VMOV.F32        S3, S25
VMOV.F32        S2, S22
VMOV.F32        S1, S17
VMOV.F32        S0, S21
MOV             R0, R4
BL              sub_53FA50
ADD             R0, SP, #0x28B8+var_8B8
ADD             R3, SP, #0x28B8+var_2740
LDR             R0, [R0,#0x884]
ADD             R11, SP, #0x28B8+var_2858
LDR             R1, [R0,#4]
LDR             R2, [R0]
LDR             R0, [R0,#8]
VMOV            S0, R1
STR             R1, [SP,#0x28B8+var_274C]
STR             R0, [SP,#0x28B8+var_2748]
ADD             R0, SP, #0x28B8+var_8B8
STR             R2, [SP,#0x28B8+var_2750]
VADD.F32        S0, S0, S20
VSTR            S0, [SP,#0x28B8+var_274C]
LDR             R0, [R0,#0x888]
LDM             R0, {R1,R2}
LDR             R0, [R0,#8]
VMOV            S0, R2
STR             R0, [SP,#0x28B8+var_2738]
STM             R3, {R1,R2}
ADD             R0, SP, #0x28B8+var_8B8
VADD.F32        S0, S0, S20
VSTR            S0, [SP,#0x28B8+var_273C]
LDR             R0, [R0,#0x884]
VLDR            S5, [R0]
ADD             R0, SP, #0x28B8+var_8B8
LDR             R0, [R0,#0x888]
VLDR            S1, [R0]
ADD             R0, SP, #0x28B8+var_8B8
LDR             R0, [R0,#0x884]
VSUB.F32        S1, S5, S1
VLDR            S2, [R0,#4]
ADD             R0, SP, #0x28B8+var_8B8
LDR             R0, [R0,#0x884]
VLDR            S3, [R0,#8]
ADD             R0, SP, #0x28B8+var_8B8
VMUL.F32        S1, S1, S1
LDR             R0, [R0,#0x888]
VLDR            S4, [R0,#4]
ADD             R0, SP, #0x28B8+var_8B8
VSUB.F32        S2, S2, S4
LDR             R0, [R0,#0x888]
VLDR            S0, [R0,#8]
ADD             R0, SP, #0x28B8+var_24B8
VSUB.F32        S0, S3, S0
VMLA.F32        S1, S2, S2
VMLA.F32        S1, S0, S0
VSQRT.F32       S0, S1
VSTR            S0, [R0,#0xDC]
LDR             R0, [SP,#0x28B8+var_2278]
ORR             R0, R0, #0x10
STR             R0, [SP,#0x28B8+var_2278]
MOV             R0, R11
BL              sub_171C88
MOV             R0, R11
NOP
BL              sub_169ED8
LDR             R9, =off_6D1648
LDR             R0, [R9]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x14000
LDR             R4, [R0,#0x174]
LDR             R0, [R9]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x14000
MOV             R2, R4
LDR             R1, [R0,#0x170]
MOV             R0, R11
BL              sub_169CE8
LDR             R0, [R9]
MOV             R4, R11
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x16000
ADD             R0, R0, #0x338
MOV             R5, #0
LDR             R1, [R0,#4]
LDRB            R0, [R0,#0x110]
ADD             R1, R1, #0x14000
LDRB            R1, [R1,#0x28D]
ADD             R6, R1, R0
CMP             R6, #0
MOVGT           R7, #0
BLE             loc_1AF1BC
LDR             R0, [R9]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x16000
ADD             R0, R0, #0x338
LDR             R1, [R0,#4]
ADD             R1, R1, #0x14000
LDRB            R1, [R1,#0x28D]
CMP             R1, R5
BLE             loc_1AF150
B               loc_1AF090
DCFS 61.0
DCD off_6D1648
DCFS 0.0
DCD _ZTV10DreamMario
DCFS -43.134
DCFS 43.134
DCFS 86.267
DCFS 8.0
DCFS -61.0
DCFS 122.0
DCD off_6B7BFC
DCD off_6B7BEC
DCFS 17.866
LDR             R0, [R0,#4]
ADD             R0, R0, R5,LSL#2
ADD             R0, R0, #0x14000
LDR             R1, [R0,#0x184]
B               loc_1AF168
VMOV.F32        S4, S25
VMOV.F32        S3, S18
VMOV.F32        S2, S22
VMOV.F32        S1, S17
VMOV.F32        S0, S23
ADD             R4, SP, #0x28B8+var_2858
MOV             R0, R4
BL              sub_575D3C
VMOV.F32        S4, S25
VMOV.F32        S3, S18
VMOV.F32        S2, S22
VMOV.F32        S1, S17
VMOV.F32        S0, S23
MOV             R0, R4
BL              sub_22D56C
VMOV.F32        S4, S25
VMOV.F32        S3, S18
VMOV.F32        S2, S22
VMOV.F32        S1, S17
VMOV.F32        S0, S23
MOV             R0, R4
BL              sub_575C24
VMOV.F32        S3, S25
VMOV.F32        S2, S22
VMOV.F32        S1, S17
VMOV.F32        S0, S23
MOV             R0, R4
BL              sub_53FA70
VMOV.F32        S3, S25
VMOV.F32        S2, S22
VMOV.F32        S1, S17
VMOV.F32        S0, S23
MOV             R0, R4
BL              sub_53FAA0
VMOV.F32        S3, S25
VMOV.F32        S2, S22
VMOV.F32        S1, S17
VMOV.F32        S0, S23
MOV             R0, R4
BL              sub_53FA50
VMOV.F32        S21, S24
NOP
B               loc_1AEEE8
LDR             R1, [R0,#4]
ADD             R1, R1, #0x14000
LDRB            R1, [R1,#0x28D]
SUB             R1, R5, R1
ADD             R0, R0, R1,LSL#2
LDR             R1, [R0,#0x10]
ADD             R5, R5, #1
LDR             R0, [R1,#0x740]
CMP             R0, R4
STREQ           R7, [R1,#0x740]
LDR             R0, [R1,#0x744]
CMP             R0, R4
STREQ           R7, [R1,#0x744]
LDR             R0, [R1,#0x748]
CMP             R0, R4
STREQ           R7, [R1,#0x748]
LDR             R0, [R1,#0x74C]
CMP             R0, R4
STREQ           R7, [R1,#0x74C]
LDR             R0, [R1,#0x750]
CMP             R0, R4
STREQ           R7, [R1,#0x750]
LDR             R0, [R1,#0x754]
CMP             R0, R4
STREQ           R7, [R1,#0x754]
CMP             R5, R6
BLT             loc_1AF034
LDR             R0, [R8,#4]
LDR             R1, [R0,#0x610]
ADD             R0, SP, #0x28B8+var_2858
STR             R1, [R0,#0x610]
LDR             R0, =off_6D1648
LDR             R0, [R0]
LDR             R0, [R0,#0xBC]
STR             R0, [SP,#0x28B8+var_2854]
LDR             R0, [SP,#0x28B8+var_2108]
CMP             R0, #0
BNE             loc_1AF1F4
LDR             R0, [SP,#0x28B8+var_2200]
TST             R0, #0x3F
BEQ             loc_1AF778
ADD             R0, SP, #0x28B8+var_8B8
LDR             R0, [R0,#0x7E0]
CMP             R0, #0
BEQ             loc_1AF2A0
VSTR            S21, [SP,#0x28B8+var_28A8]
VSTR            S21, [SP,#0x28B8+var_28A4]
VSTR            S19, [SP,#0x28B8+var_28A0]
VLDR            S1, [SP,#0x28B8+var_2750]
VMOV.F32        S0, S22
ADD             R0, SP, #0x28B8+var_2890
VADD.F32        S1, S21, S1
VSTR            S1, [SP,#0x28B8+var_28A8]
VLDR            S2, [SP,#0x28B8+var_274C]
VADD.F32        S2, S21, S2
VSTR            S2, [SP,#0x28B8+var_28A4]
VLDR            S3, [SP,#0x28B8+var_2748]
VADD.F32        S3, S19, S3
VSTR            S3, [SP,#0x28B8+var_28A0]
VSTR            S0, [SP,#0x28B8+var_2890]
VADD.F32        S0, S0, S1
VADD.F32        S1, S18, S2
VADD.F32        S2, S17, S3
VSTR            S18, [SP,#0x28B8+var_288C]
VSTR            S17, [SP,#0x28B8+var_2888]
VSTM            R0, {S0-S2}
CMP             R10, #2
MOV             R7, #2
BLS             loc_1AF778
LDR             R4, =off_6D1648
LDR             R0, [R4]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x16000
ADD             R0, R0, #0x338
LDR             R1, [R0,#4]
ADD             R1, R1, #0x14000
LDRB            R1, [R1,#0x28D]
CMP             R1, R7
BLE             loc_1AF2F8
LDR             R0, [R0,#4]
ADD             R0, R0, R7,LSL#2
ADD             R0, R0, #0x14000
LDR             R6, [R0,#0x184]
B               loc_1AF310
VMOV.F32        S0, S21
VSTR            S23, [SP,#0x28B8+var_28A8]
ADD             R0, SP, #0x28B8+var_2890
VSTR            S0, [SP,#0x28B8+var_28A4]
VSTR            S19, [SP,#0x28B8+var_28A0]
VLDR            S1, [SP,#0x28B8+var_2750]
VADD.F32        S1, S23, S1
VSTR            S1, [SP,#0x28B8+var_28A8]
VLDR            S2, [SP,#0x28B8+var_274C]
VADD.F32        S2, S0, S2
VSTR            S2, [SP,#0x28B8+var_28A4]
VLDR            S3, [SP,#0x28B8+var_2748]
VADD.F32        S3, S19, S3
VSTR            S3, [SP,#0x28B8+var_28A0]
VSTR            S0, [SP,#0x28B8+var_2890]
VADD.F32        S0, S0, S1
VADD.F32        S1, S18, S2
VADD.F32        S2, S17, S3
VSTR            S18, [SP,#0x28B8+var_288C]
VSTR            S17, [SP,#0x28B8+var_2888]
VSTM            R0, {S0-S2}
B               loc_1AF258
LDR             R1, [R0,#4]
ADD             R1, R1, #0x14000
LDRB            R1, [R1,#0x28D]
SUB             R1, R7, R1
ADD             R0, R0, R1,LSL#2
LDR             R6, [R0,#0x10]
LDR             R0, [R8,#4]
ADD             R0, R0, #0x600
LDRB            R1, [R6,#0xDC]
LDRSB           R0, [R0,#0x5E]
CMP             R1, R0
BEQ             loc_1AF768
MOV             R1, R6
MOV             R0, R8
BL              sub_542D24
CMP             R0, #0
NOP
BNE             loc_1AF380
LDR             R0, [R4]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x14000
LDRB            R0, [R0,#0x28D]
CMP             R0, R7
BLS             loc_1AF380
LDR             R0, [R6,#0x640]
TST             R0, #1
ADD             R0, SP, #0x28B8+var_8B8
MOVEQ           R1, #1
MOVNE           R1, #0
MOVNE           R9, #1
MOVEQ           R9, #1
STR             R1, [R0,#0x7E8]
BNE             loc_1AF42C
B               loc_1AF390
MOV             R1, #1
ADD             R0, SP, #0x28B8+var_8B8
MOV             R9, R1
STR             R1, [R0,#0x7E8]
ADD             R1, R6, #0x400
ADD             R3, SP, #0x28B8+var_2884
VLDR            S0, [R1,#0x224]
VLDR            S1, [R1,#0x22C]
VSTR            S0, [SP,#0x28B8+var_2868]
VSTR            S16, [SP,#0x28B8+var_2864]
VSTR            S1, [SP,#0x28B8+var_2860]
VLDR            S2, [R6,#0x108]
ADD             R0, R6, #0x108
ADD             R4, SP, #0x28B8+var_2868
VADD.F32        S0, S0, S2
MOV             R2, R4
VSTR            S0, [SP,#0x28B8+var_2868]
VLDR            S0, [R6,#0x10C]
VADD.F32        S0, S16, S0
VSTR            S0, [SP,#0x28B8+var_2864]
VLDR            S0, [R6,#0x110]
VADD.F32        S0, S1, S0
VSTR            S0, [SP,#0x28B8+var_2860]
VLDR            S2, [R1,#0x234]
VLDR            S0, [R1,#0x230]
VLDR            S1, [R1,#0x228]
VSUB.F32        S2, S2, S16
VSTR            S0, [SP,#0x28B8+var_287C]
ADD             R1, SP, #0x28B8+var_2890
VSTM            R3, {S1-S2}
VLDR            S3, [R0]
VADD.F32        S1, S1, S3
VSTR            S1, [SP,#0x28B8+var_2884]
VLDR            S1, [R0,#4]
VADD.F32        S1, S2, S1
VSTR            S1, [SP,#0x28B8+var_2880]
VLDR            S1, [R0,#8]
ADD             R0, SP, #0x28B8+var_28A8
VADD.F32        S0, S0, S1
VSTR            S0, [SP,#0x28B8+var_287C]
BL              sub_459A80
CMP             R0, #0
MOVEQ           R9, #0
ADD             R0, SP, #0x28B8+var_8B8
LDR             R0, [R0,#0x8BC]
TST             R0, R9
BEQ             loc_1AF600
LDR             R0, [SP,#0x28B8+var_2108]
CMP             R0, R6
BNE             loc_1AF600
LDR             R0, [R8,#4]
LDR             R2, =0x8B8
LDRSH           R2, [R2,R0]
SUB             R1, R2, #0x200
SUBS            R1, R1, #0x67 ; 'g'
BEQ             loc_1AF4E8
LDR             R1, [R0,#0x750]
LDR             R2, [SP,#0x28B8+var_2108]
CMP             R1, #0
BEQ             loc_1AF4B4
LDR             R3, [R2,#0x4EC]
TST             R3, #0xE0
BNE             loc_1AF488
LDR             R1, [R0,#0x754]
CMP             R1, R2
BNE             loc_1AF4B4
AND             R3, R3, #0xE0
CMP             R3, #0x80
BNE             loc_1AF600
LDR             R1, [R0,#0x754]
CMP             R1, R2
BNE             loc_1AF4B4
ADD             R1, R0, #0x400
LDRH            R3, [R1,#0x6C]
LDRH            R1, [R1,#0x6E]
CMP             R3, R1
BEQ             loc_1AF600
STR             R2, [R0,#0x750]
LDR             R1, [R0,#0x658]
ADD             R2, R0, #0x400
ADD             R2, R2, #0x248
BIC             R12, R1, #0xFC0
ADD             R1, SP, #0x28B8+var_8B8
LDR             R1, [R1,#0x7DC]
ORR             R1, R1, R12
STR             R1, [R0,#0x658]
LDR             R0, [R0,#0x648]
BIC             R0, R0, #0x180000
STR             R0, [R2]
B               loc_1AF600
LDR             R0, [R6]
LDR             R1, [R0,#8]
MOV             R0, R6
BLX             R1
CMP             R0, #7
BEQ             loc_1AF600
MOVS            R4, R6
BEQ             loc_1AF52C
LDR             R0, [R4]
LDR             R1, [R0,#8]
MOV             R0, R6
BLX             R1
CMP             R0, #8
BNE             loc_1AF52C
LDRB            R0, [R4,#0xAAC]
CMP             R0, #0x11
BEQ             loc_1AF550
LDR             R0, [R8,#4]
LDR             R1, [SP,#0x28B8+var_2108]
LDR             R2, [R0,#0x750]
CMP             R2, #0
BEQ             loc_1AF59C
LDR             R3, [R1,#0x4EC]
TST             R3, #0xE0
BEQ             loc_1AF564
B               loc_1AF570
LDR             R0, [R8,#4]
LDR             R1, [R0,#0x750]
CMP             R1, #0
BNE             loc_1AF600
B               loc_1AF5D0
LDR             R2, [R0,#0x754]
CMP             R2, R1
BNE             loc_1AF59C
AND             R3, R3, #0xE0
CMP             R3, #0x80
BNE             loc_1AF600
LDR             R2, [R0,#0x754]
CMP             R2, R1
BNE             loc_1AF59C
ADD             R2, R0, #0x400
LDRH            R3, [R2,#0x6C]
LDRH            R2, [R2,#0x6E]
CMP             R3, R2
BEQ             loc_1AF600
STR             R1, [R0,#0x750]
LDR             R1, [R0,#0x658]
ADD             R2, R0, #0x400
ADD             R2, R2, #0x248
BIC             R12, R1, #0xFC0
ADD             R1, SP, #0x28B8+var_8B8
LDR             R1, [R1,#0x7DC]
ORR             R1, R1, R12
STR             R1, [R0,#0x658]
LDR             R0, [R0,#0x648]
BIC             R0, R0, #0x180000
STR             R0, [R2]
B               loc_1AF600
STR             R6, [R0,#0x750]
LDR             R1, [R0,#0x658]
ADD             R2, R0, #0x400
ADD             R2, R2, #0x248
BIC             R12, R1, #0xFC0
ADD             R1, SP, #0x28B8+var_8B8
LDR             R1, [R1,#0x7DC]
ORR             R1, R1, R12
STR             R1, [R0,#0x658]
LDR             R0, [R0,#0x648]
BIC             R0, R0, #0x180000
STR             R0, [R2]
LDR             R2, [R8,#4]
ADD             R11, R6, #0x650
MOV             R0, #1
LDM             R11, {R4,R5}
MOV             R1, #0
LDRB            R2, [R2,#0xDC]
BL              sub_300CF8
AND             R2, R4, R0
AND             R3, R5, R1
ORRS            R2, R2, R3
BEQ             loc_1AF768
CMP             R9, #0
BEQ             loc_1AF75C
LDR             R0, [SP,#0x28B8+var_2278]
MOV             R0, R0,LSL#17
MOV             R1, R0,LSR#26
ADD             R0, SP, #0x28B8+var_8B8
LDR             R0, [R0,#0x88C]
STR             R1, [R0,#0xC]
LDR             R0, [SP,#0x28B8+var_2200]
AND             R1, R0, #0x3F ; '?'
ADD             R0, SP, #0x28B8+var_8B8
LDR             R0, [R0,#0x88C]
STR             R1, [R0,#0x10]
ADD             R0, SP, #0x28B8+var_2750
VLDM            R0, {S0-S2}
ADD             R0, SP, #0x28B8+var_8B8
LDR             R0, [R0,#0x8B8]
CMP             R0, #0
ADD             R0, SP, #0x28B8+var_8B8
LDR             R0, [R0,#0x88C]
VSTM            R0, {S0-S2}
BEQ             loc_1AF6B8
LDR             R3, [R8,#4]
ADD             R1, SP, #0x28B8+var_2208
LDM             R1, {R0,R2}
LDR             R1, [R3,#0x654]
LDR             R12, [R3,#0x650]
ORR             R1, R1, R2
ADD             R2, R3, #0x650
ORR             R0, R0, R12
STRD            R0, R1, [R2]
MOV             R2, R7
MOV             R1, R6
MOV             R0, R8
BL              sub_1B316C
ADD             R0, SP, #0x28B8+var_8B8
LDR             R0, [R0,#0x7E8]
CMP             R0, #0
BNE             loc_1AF768
LDR             R0, [SP,#0x28B8+var_2878]
LDR             R1, [SP,#0x28B8+var_2870]
MOV             R3, #1
STR             R0, [SP,#0x28B8+var_2858]
LDR             R0, [SP,#0x28B8+var_2874]
STR             R1, [SP,#0x28B8+var_2100]
LDR             R1, [SP,#0x28B8+var_285C]
STR             R0, [SP,#0x28B8+var_2778]
ADD             R0, SP, #0x28B8+var_8B8
LDR             R4, [SP,#0x28B8+var_286C]
STR             R1, [R0,#0x770]
LDR             R1, =sub_5A2F60
MOV             R2, #0x28 ; '('
ADD             R0, R4, #0x30 ; '0'
BLX             sub_1009D8
MOV             R0, R4
NOP
NOP
LDR             R1, [SP,#0x28B8+var_28B4]
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
MOV             R0, #1
ADD             SP, SP, #0x2840
VPOP            {D8-D15}
ADD             SP, SP, #0x10
POP             {R4-R12,PC}
BIC             R0, R4, R0
BIC             R1, R5, R1
STRD            R0, R1, [R11]
ADD             R0, R7, #1
AND             R7, R0, #0xFF
CMP             R7, R10
BCC             loc_1AF264
LDR             R0, [SP,#0x28B8+var_2278]
TST             R0, #0x7E00
BEQ             loc_1AF8E4
CMP             R10, #2
LDRHI           R9, =off_6D1648
MOV             R6, #2
BLS             loc_1AF820
LDR             R0, [R9]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x16000
ADD             R0, R0, #0x338
LDR             R1, [R0,#4]
ADD             R1, R1, #0x14000
LDRB            R1, [R1,#0x28D]
CMP             R1, R6
BLE             loc_1AF7CC
LDR             R0, [R0,#4]
ADD             R0, R0, R6,LSL#2
ADD             R0, R0, #0x14000
LDR             R7, [R0,#0x184]
B               loc_1AF7E4
LDR             R1, [R0,#4]
ADD             R1, R1, #0x14000
LDRB            R2, [R1,#0x28D]
SUB             R1, R6, R2
ADD             R0, R0, R1,LSL#2
LDR             R7, [R0,#0x10]
LDR             R2, [R8,#4]
MOV             R0, #1
ADD             R4, R7, #0x650
MOV             R1, #0
LDM             R4, {R4,R5}
LDRB            R2, [R2,#0xDC]
BL              sub_300CF8
ADD             R7, R7, #0x650
ADD             R2, R6, #1
BIC             R0, R4, R0
BIC             R1, R5, R1
AND             R6, R2, #0xFF
STM             R7, {R0,R1}
CMP             R6, R10
BCC             loc_1AF794
LDR             R2, [SP,#0x28B8+var_2278]
ADD             R4, SP, #0x28B8+var_2750
MOV             R1, R2,LSL#17
MOV             R2, R1,LSR#26
ADD             R1, SP, #0x28B8+var_8B8
LDR             R0, [R1,#0x88C]
STR             R2, [R0,#0xC]
LDR             R1, [SP,#0x28B8+var_2200]
AND             R2, R1, #0x3F ; '?'
ADD             R1, SP, #0x28B8+var_8B8
LDR             R0, [R1,#0x88C]
STR             R2, [R0,#0x10]
LDM             R4, {R1-R3}
STM             R0, {R1-R3}
MOV             R3, #1
LDR             R0, [SP,#0x28B8+var_2878]
LDR             R1, [SP,#0x28B8+var_285C]
MOV             R2, #0x28 ; '('
STR             R0, [SP,#0x28B8+var_2858]
LDR             R0, [SP,#0x28B8+var_2874]
STR             R0, [SP,#0x28B8+var_2778]
LDR             R0, [SP,#0x28B8+var_2870]
STR             R0, [SP,#0x28B8+var_2100]
ADD             R0, SP, #0x28B8+var_8B8
LDR             R4, [SP,#0x28B8+var_286C]
STR             R1, [R0,#0x770]
LDR             R1, =sub_5A2F60
ADD             R0, R4, #0x30 ; '0'
BLX             sub_1009D8
MOV             R0, R4
NOP
NOP
LDR             R1, [SP,#0x28B8+var_28B4]
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
MOV             R0, #1
NOP
B               loc_1AF74C
ADD             R0, SP, #0x28B8+var_8B8
LDR             R0, [R0,#0x7E0]
ADD             R0, R0, #1
AND             R1, R0, #0xFF
ADD             R0, SP, #0x28B8+var_8B8
CMP             R1, #2
STR             R1, [R0,#0x7E0]
BCC             loc_1AEE38
B               loc_1B0318
VMOV.F32        S18, S30
VMOV.F32        S17, S24
VMOV.F32        S20, S31
VMOV.F32        S19, S26
ADD             R4, SP, #0x28B8+var_2858
MOV             R0, R4
VMOV.F32        S3, S18
VMOV.F32        S2, S18
VMOV.F32        S1, S17
VMOV.F32        S4, S19
VMOV.F32        S0, S20
BL              sub_575D3C
VMOV.F32        S4, S19
VMOV.F32        S3, S18
VMOV.F32        S2, S18
VMOV.F32        S1, S17
VMOV.F32        S0, S20
MOV             R0, R4
BL              sub_22D56C
VMOV.F32        S4, S19
VMOV.F32        S3, S18
VMOV.F32        S2, S18
VMOV.F32        S1, S17
VMOV.F32        S0, S20
MOV             R0, R4
BL              sub_575C24
VMOV.F32        S3, S19
VMOV.F32        S2, S18
VMOV.F32        S1, S17
VMOV.F32        S0, S20
MOV             R0, R4
BL              sub_53FA70
VMOV.F32        S3, S19
VMOV.F32        S2, S18
VMOV.F32        S1, S17
VMOV.F32        S0, S20
MOV             R0, R4
BL              sub_53FAA0
VMOV.F32        S3, S19
VMOV.F32        S2, S18
VMOV.F32        S1, S17
VMOV.F32        S0, S20
MOV             R0, R4
BL              sub_53FA50
ADD             R2, SP, #0x28B8+var_8B8
ADD             R3, SP, #0x28B8+var_2750
LDR             R2, [R2,#0x884]
LDM             R2, {R0-R2}
STM             R3, {R0-R2}
ADD             R2, SP, #0x28B8+var_8B8
ADD             R3, SP, #0x28B8+var_2740
LDR             R2, [R2,#0x888]
LDM             R2, {R0-R2}
STM             R3, {R0-R2}
ADD             R0, SP, #0x28B8+var_8B8
LDR             R0, [R0,#0x884]
VLDR            S2, [R0]
ADD             R0, SP, #0x28B8+var_8B8
LDR             R0, [R0,#0x888]
VLDR            S5, [R0]
ADD             R0, SP, #0x28B8+var_8B8
LDR             R0, [R0,#0x884]
VSUB.F32        S2, S2, S5
VLDR            S1, [R0,#4]
ADD             R0, SP, #0x28B8+var_8B8
LDR             R0, [R0,#0x884]
VLDR            S0, [R0,#8]
ADD             R0, SP, #0x28B8+var_8B8
VMUL.F32        S2, S2, S2
LDR             R0, [R0,#0x888]
VLDR            S4, [R0,#4]
ADD             R0, SP, #0x28B8+var_8B8
VSUB.F32        S1, S1, S4
LDR             R0, [R0,#0x888]
VLDR            S3, [R0,#8]
ADD             R0, SP, #0x28B8+var_24B8
VSUB.F32        S0, S0, S3
VMLA.F32        S2, S1, S1
VMLA.F32        S2, S0, S0
VSQRT.F32       S0, S2
VSTR            S0, [R0,#0xDC]
LDR             R0, [SP,#0x28B8+var_2278]
ORR             R0, R0, #0x10
STR             R0, [SP,#0x28B8+var_2278]
MOV             R0, R4
BL              sub_171C88
MOV             R0, R4
NOP
BL              sub_169ED8
LDR             R9, =off_6D1648
LDR             R0, [R9]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x14000
LDR             R5, [R0,#0x174]
LDR             R0, [R9]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x14000
MOV             R2, R5
LDR             R1, [R0,#0x170]
MOV             R0, R4
BL              sub_169CE8
LDR             R0, [R9]
NOP
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x16000
ADD             R0, R0, #0x338
MOV             R5, #0
LDR             R1, [R0,#4]
LDRB            R0, [R0,#0x110]
ADD             R1, R1, #0x14000
LDRB            R1, [R1,#0x28D]
ADD             R7, R1, R0
CMP             R7, #0
MOVGT           R6, #0
BLE             loc_1AFB78
LDR             R0, [R9]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x16000
ADD             R0, R0, #0x338
LDR             R1, [R0,#4]
ADD             R1, R1, #0x14000
LDRB            R1, [R1,#0x28D]
CMP             R1, R5
BLE             loc_1AFB0C
LDR             R0, [R0,#4]
ADD             R0, R0, R5,LSL#2
ADD             R0, R0, #0x14000
LDR             R0, [R0,#0x184]
B               loc_1AFB24
LDR             R1, [R0,#4]
ADD             R1, R1, #0x14000
LDRB            R1, [R1,#0x28D]
SUB             R1, R5, R1
ADD             R0, R0, R1,LSL#2
LDR             R0, [R0,#0x10]
ADD             R5, R5, #1
LDR             R1, [R0,#0x740]
CMP             R1, R4
STREQ           R6, [R0,#0x740]
LDR             R1, [R0,#0x744]
CMP             R1, R4
STREQ           R6, [R0,#0x744]
LDR             R1, [R0,#0x748]
CMP             R1, R4
STREQ           R6, [R0,#0x748]
LDR             R1, [R0,#0x74C]
CMP             R1, R4
STREQ           R6, [R0,#0x74C]
LDR             R1, [R0,#0x750]
CMP             R1, R4
STREQ           R6, [R0,#0x750]
LDR             R1, [R0,#0x754]
CMP             R1, R4
STREQ           R6, [R0,#0x754]
CMP             R5, R7
BLT             loc_1AFAD4
ADD             R1, SP, #0x28B8+var_8B8
VMOV.F32        S18, S29
LDR             R0, [R1,#0x884]
VLDR            S0, [R0,#4]
VLDR            S1, [R0]
VADD.F32        S0, S0, S18
VSTR            S1, [SP,#0x28B8+var_2880]
VSTR            S0, [SP,#0x28B8+var_287C]
LDR             R1, [SP,#0x28B8+var_2108]
CMP             R1, #0
BNE             loc_1AFBB0
LDR             R1, [SP,#0x28B8+var_2200]
TST             R1, #0x3F
BEQ             loc_1AFF58
CMP             R10, #2
MOV             R11, #2
BLS             loc_1AFF58
LDR             R4, =off_6D1648
LDR             R0, [R4]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x16000
ADD             R0, R0, #0x338
LDR             R1, [R0,#4]
ADD             R1, R1, #0x14000
LDRB            R1, [R1,#0x28D]
CMP             R1, R11
BLE             loc_1AFBF8
LDR             R0, [R0,#4]
ADD             R0, R0, R11,LSL#2
ADD             R0, R0, #0x14000
LDR             R9, [R0,#0x184]
B               loc_1AFC10
LDR             R1, [R0,#4]
ADD             R1, R1, #0x14000
LDRB            R1, [R1,#0x28D]
SUB             R1, R11, R1
ADD             R0, R0, R1,LSL#2
LDR             R9, [R0,#0x10]
LDR             R0, [R9]
LDR             R1, [R0,#8]
MOV             R0, R9
BLX             R1
CMP             R0, #4
BLS             loc_1AFF48
MOV             R1, R9
MOV             R0, R8
BL              sub_542D24
CMP             R0, #0
NOP
BNE             loc_1AFC60
LDR             R0, [R4]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x14000
LDRB            R0, [R0,#0x28D]
CMP             R0, R11
MOVHI           R5, #0
MOVHI           R4, #1
BHI             loc_1AFCD4
ADD             R0, R9, #0x400
MOV             R5, #1
VLDR            S0, [R0,#0x234]
VLDR            S2, [R0,#0x224]
ADD             R3, SP, #0x28B8+var_28B0
VSUB.F32        S1, S0, S16
MOV             R4, R5
ADD             R2, SP, #0x28B8+var_28A8
MOV             R1, R3
VSTR            S1, [SP,#0x28B8+var_28AC]
VLDR            S0, [R0,#0x228]
VSTR            S16, [SP,#0x28B8+var_28A4]
VLDR            S3, [R9,#0x108]
ADD             R0, SP, #0x28B8+var_2880
VADD.F32        S2, S2, S3
VSTR            S2, [SP,#0x28B8+var_28B0]
VLDR            S2, [R9,#0x10C]
VADD.F32        S1, S1, S2
VSTR            S1, [SP,#0x28B8+var_28AC]
VLDR            S1, [R9,#0x108]
VADD.F32        S0, S0, S1
VSTR            S0, [SP,#0x28B8+var_28A8]
VLDR            S0, [R9,#0x10C]
VADD.F32        S0, S16, S0
VSTR            S0, [SP,#0x28B8+var_28A4]
VMOV.F32        S0, S18
BL              sub_45A034
CMP             R0, #0
MOVEQ           R4, #0
ADD             R0, SP, #0x28B8+var_8B8
LDR             R0, [R0,#0x8BC]
TST             R0, R4
BEQ             loc_1AFEA8
LDR             R0, [SP,#0x28B8+var_2108]
CMP             R0, R9
BNE             loc_1AFEA8
LDR             R0, [R8,#4]
LDR             R2, =0x8B8
LDRSH           R2, [R2,R0]
SUB             R1, R2, #0x200
SUBS            R1, R1, #0x67 ; 'g'
BEQ             loc_1AFD90
LDR             R1, [R0,#0x750]
LDR             R2, [SP,#0x28B8+var_2108]
CMP             R1, #0
BEQ             loc_1AFD5C
LDR             R3, [R2,#0x4EC]
TST             R3, #0xE0
BNE             loc_1AFD30
LDR             R1, [R0,#0x754]
CMP             R1, R2
BNE             loc_1AFD5C
AND             R3, R3, #0xE0
CMP             R3, #0x80
BNE             loc_1AFEA8
LDR             R1, [R0,#0x754]
CMP             R1, R2
BNE             loc_1AFD5C
ADD             R1, R0, #0x400
LDRH            R3, [R1,#0x6C]
LDRH            R1, [R1,#0x6E]
CMP             R3, R1
BEQ             loc_1AFEA8
STR             R2, [R0,#0x750]
LDR             R1, [R0,#0x658]
ADD             R2, R0, #0x400
ADD             R2, R2, #0x248
BIC             R12, R1, #0xFC0
ADD             R1, SP, #0x28B8+var_8B8
LDR             R1, [R1,#0x7DC]
ORR             R1, R1, R12
STR             R1, [R0,#0x658]
LDR             R0, [R0,#0x648]
BIC             R0, R0, #0x180000
STR             R0, [R2]
B               loc_1AFEA8
LDR             R0, [R9]
LDR             R1, [R0,#8]
MOV             R0, R9
BLX             R1
CMP             R0, #7
BEQ             loc_1AFEA8
CMP             R9, #0
BEQ             loc_1AFDD4
LDR             R0, [R9]
LDR             R1, [R0,#8]
MOV             R0, R9
BLX             R1
CMP             R0, #8
BNE             loc_1AFDD4
LDRB            R0, [R9,#0xAAC]
CMP             R0, #0x11
BEQ             loc_1AFDF8
LDR             R0, [R8,#4]
LDR             R1, [SP,#0x28B8+var_2108]
LDR             R2, [R0,#0x750]
CMP             R2, #0
BEQ             loc_1AFE44
LDR             R2, [R1,#0x4EC]
TST             R2, #0xE0
BEQ             loc_1AFE0C
B               loc_1AFE18
LDR             R0, [R8,#4]
LDR             R1, [R0,#0x750]
CMP             R1, #0
BNE             loc_1AFEA8
B               loc_1AFE78
LDR             R3, [R0,#0x754]
CMP             R3, R1
BNE             loc_1AFE44
AND             R3, R2, #0xE0
CMP             R3, #0x80
BNE             loc_1AFEA8
LDR             R2, [R0,#0x754]
CMP             R2, R1
BNE             loc_1AFE44
ADD             R2, R0, #0x400
LDRH            R3, [R2,#0x6C]
LDRH            R2, [R2,#0x6E]
CMP             R3, R2
BEQ             loc_1AFEA8
STR             R1, [R0,#0x750]
LDR             R1, [R0,#0x658]
ADD             R2, R0, #0x400
ADD             R2, R2, #0x248
BIC             R12, R1, #0xFC0
ADD             R1, SP, #0x28B8+var_8B8
LDR             R1, [R1,#0x7DC]
ORR             R1, R1, R12
STR             R1, [R0,#0x658]
LDR             R0, [R0,#0x648]
BIC             R0, R0, #0x180000
STR             R0, [R2]
B               loc_1AFEA8
STR             R9, [R0,#0x750]
LDR             R1, [R0,#0x658]
ADD             R2, R0, #0x400
ADD             R2, R2, #0x248
BIC             R12, R1, #0xFC0
ADD             R1, SP, #0x28B8+var_8B8
LDR             R1, [R1,#0x7DC]
ORR             R1, R1, R12
STR             R1, [R0,#0x658]
LDR             R0, [R0,#0x648]
BIC             R0, R0, #0x180000
STR             R0, [R2]
ADD             R3, SP, #0x28B8+var_2208
LDRB            R2, [R9,#0xDC]
LDM             R3, {R0,R1}
MOV             R6, R0
MOV             R7, R1
BL              sub_14351C
TST             R0, #1
NOP
BEQ             loc_1AFF48
CMP             R4, #0
BEQ             loc_1AFF1C
ADD             R0, SP, #0x28B8+var_8B8
LDR             R0, [R0,#0x8B8]
CMP             R0, #0
BEQ             loc_1AFF10
LDR             R2, [R8,#4]
ADD             R0, R2, #0x650
ADD             R2, R2, #0x650
LDM             R0, {R0,R1}
ORR             R0, R0, R6
ORR             R1, R1, R7
STM             R2, {R0,R1}
MOV             R2, R11
MOV             R1, R9
MOV             R0, R8
BL              sub_1B316C
CMP             R5, #0
BEQ             loc_1B0238
B               loc_1AFF48
LDR             R2, [R8,#4]
LDR             R4, [R9,#0x650]
LDR             R5, [R9,#0x654]
MOV             R0, #1
LDRB            R2, [R2,#0xDC]
MOV             R1, #0
ADD             R6, R9, #0x650
BL              sub_300CF8
BIC             R0, R4, R0
BIC             R1, R5, R1
STRD            R0, R1, [R6]
ADD             R0, R11, #1
AND             R11, R0, #0xFF
CMP             R10, R11
BHI             loc_1AFBBC
LDR             R0, [SP,#0x28B8+var_2278]
TST             R0, #0x7E00
BNE             loc_1AFF94
ADD             R0, SP, #0x28B8+var_8B8
VLDR            S0, [SP,#0x28B8+var_274C]
LDR             R0, [R0,#0x884]
LDR             R1, =0x3DCCCCCD
VLDR            S1, [R0,#4]
VSUB.F32        S0, S0, S1
VCMPE.F32       S0, S17
VMRS            APSR_nzcv, FPSCR
VNEGLT.F32      S0, S0
VMOV            R0, S0
CMP             R0, R1
BLE             loc_1B0318
LDR             R0, [R8,#4]
MOV             R6, #0
VLDR            S17, =100000.0
MOV             R7, R6
LDR             R5, [R0,#0x610]
ADD             R9, SP, #0x28B8+var_2890
ADD             R11, SP, #0x28B8+var_28A8
ADD             R4, SP, #0x28B8+var_2868
LDR             R0, [R5]
TST             R0, #2
BNE             loc_1AFFCC
CMP             R6, #0
MOVEQ           R6, R5
MOV             R7, R5
LDR             R1, [R5,#8]
TST             R1, #0x400
BNE             loc_1B0310
TST             R1, #1
BEQ             loc_1B0310
TST             R0, #0x3C
BEQ             loc_1B0084
ADD             R0, SP, #0x28B8+var_2880
ADD             R2, SP, #0x28B8+var_2898
VLDM            R0, {S0-S1}
ADD             R0, SP, #0x28B8+var_4B8
ADD             R0, R0, #0x3E8
ADD             R1, SP, #0x28B8+var_28A0
VSTM            R0, {S0-S1}
LDR             R0, [R5,#8]
VLDR            S1, [R5,#0xC]
TST             R0, #0x800
VMOVNE.F32      S0, S17
VLDREQ          S0, [R5,#0x14]
VSTR            S1, [SP,#0x28B8+var_28A0]
ADD             R0, R5, #0x2C ; ','
VSTR            S0, [SP,#0x28B8+var_289C]
VLDM            R0, {S0-S1}
ADD             R0, SP, #0x28B8+var_4B8
ADD             R0, R0, #0x3E8
VSTM            R2, {S0-S1}
VMOV.F32        S0, S18
BL              sub_45A034
CMP             R0, #0
NOP
BEQ             loc_1B01F8
LDR             R2, [SP,#0x28B8+var_2278]
ADD             R4, SP, #0x28B8+var_2750
MOV             R1, R2,LSL#17
MOV             R2, R1,LSR#26
ADD             R1, SP, #0x28B8+var_8B8
LDR             R0, [R1,#0x88C]
STR             R2, [R0,#0xC]
LDR             R1, [SP,#0x28B8+var_2200]
AND             R2, R1, #0x3F ; '?'
ADD             R1, SP, #0x28B8+var_8B8
LDR             R0, [R1,#0x88C]
STR             R2, [R0,#0x10]
LDM             R4, {R1-R3}
STM             R0, {R1-R3}
B               loc_1AF6C8
ADD             R0, SP, #0x28B8+var_2880
ADD             R3, SP, #0x28B8+var_2888
VLDM            R0, {S1-S2}
ADD             R0, SP, #0x28B8+var_8B8
ADD             R0, R0, #0x7F0
VMOV.F32        S0, S18
VSTM            R0, {S1-S2}
MOV             R1, R9
LDR             R0, [R5,#8]
VLDR            S2, [R5,#0xC]
MOV             R2, R11
TST             R0, #0x800
VMOVNE.F32      S1, S17
VLDREQ          S1, [R5,#0x14]
VSTR            S2, [SP,#0x28B8+var_2890]
VSTR            S1, [SP,#0x28B8+var_288C]
LDR             R0, [R5,#8]
VLDR            S2, [R5,#0x2C]
TST             R0, #0x800
VMOVNE.F32      S1, S17
VLDREQ          S1, [R5,#0x34]
VSTR            S2, [SP,#0x28B8+var_28A8]
ADD             R0, R5, #0xC
VSTR            S1, [SP,#0x28B8+var_28A4]
VLDM            R0, {S1-S2}
ADD             R0, R5, #0x2C ; ','
VSTM            R3, {S1-S2}
VLDM            R0, {S1-S2}
ADD             R0, SP, #0x28B8+var_2868
VSTM            R0, {S1-S2}
ADD             R0, SP, #0x28B8+var_8B8
ADD             R0, R0, #0x7F0
STR             R4, [SP,#0x28B8+var_28B8]
BL              sub_459EEC
CMP             R0, #0
NOP
BEQ             loc_1B01F8
LDR             R0, [SP,#0x28B8+var_2278]
VMOV.F32        S0, S29
MOV             R3, #1
MOV             R2, #0x28 ; '('
MOV             R0, R0,LSL#17
MOV             R1, R0,LSR#26
ADD             R0, SP, #0x28B8+var_8B8
LDR             R0, [R0,#0x88C]
STR             R1, [R0,#0xC]
LDR             R0, [SP,#0x28B8+var_2200]
AND             R1, R0, #0x3F ; '?'
ADD             R0, SP, #0x28B8+var_8B8
LDR             R0, [R0,#0x88C]
STR             R1, [R0,#0x10]
ADD             R0, SP, #0x28B8+var_8B8
LDR             R1, [SP,#0x28B8+var_2750]
LDR             R0, [R0,#0x88C]
STR             R1, [R0]
VLDR            S1, [SP,#0x28B8+var_274C]
ADD             R0, SP, #0x28B8+var_8B8
VSUB.F32        S0, S1, S0
LDR             R0, [R0,#0x88C]
VSTR            S0, [R0,#4]
LDR             R0, [SP,#0x28B8+var_2878]
LDR             R1, [SP,#0x28B8+var_2870]
STR             R0, [SP,#0x28B8+var_2858]
LDR             R0, [SP,#0x28B8+var_2874]
STR             R1, [SP,#0x28B8+var_2100]
LDR             R1, [SP,#0x28B8+var_285C]
STR             R0, [SP,#0x28B8+var_2778]
ADD             R0, SP, #0x28B8+var_8B8
LDR             R4, [SP,#0x28B8+var_286C]
STR             R1, [R0,#0x770]
LDR             R1, =sub_5A2F60
ADD             R0, R4, #0x30 ; '0'
BLX             sub_1009D8
MOV             R0, R4
NOP
NOP
SUB             R4, R0, #0x34 ; '4'
LDR             R0, [SP,#0x28B8+var_28B4]
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
MOV             R0, #1
NOP
B               loc_1AF74C
LDR             R0, [R5]
TST             R0, #1
BEQ             loc_1B0310
ADD             R0, SP, #0x28B8+var_24B8
VLDR            S2, [SP,#0x28B8+var_2750]
VLDR            S3, [R0,#0x21C]
VLDR            S4, [R0,#0x220]
VLDR            S0, [R6,#0x78]
VADD.F32        S3, S3, S2
VADD.F32        S2, S4, S2
VLDR            S1, [R7,#0x7C]
VCMPE.F32       S3, S0
VMRS            APSR_nzcv, FPSCR
VCMPECS.F32     S1, S2
VMRSCS          APSR_nzcv, FPSCR
BCS             loc_1B0318
LDR             R2, [SP,#0x28B8+var_2278]
ADD             R4, SP, #0x28B8+var_2750
MOV             R1, R2,LSL#17
MOV             R2, R1,LSR#26
ADD             R1, SP, #0x28B8+var_8B8
LDR             R0, [R1,#0x88C]
STR             R2, [R0,#0xC]
LDR             R1, [SP,#0x28B8+var_2200]
AND             R2, R1, #0x3F ; '?'
ADD             R1, SP, #0x28B8+var_8B8
LDR             R0, [R1,#0x88C]
STR             R2, [R0,#0x10]
LDM             R4, {R1-R3}
STM             R0, {R1-R3}
MOV             R3, #1
LDR             R0, [SP,#0x28B8+var_2878]
LDR             R1, [SP,#0x28B8+var_2870]
MOV             R2, #0x28 ; '('
STR             R0, [SP,#0x28B8+var_2858]
LDR             R0, [SP,#0x28B8+var_2874]
STR             R1, [SP,#0x28B8+var_2100]
LDR             R1, [SP,#0x28B8+var_285C]
STR             R0, [SP,#0x28B8+var_2778]
ADD             R0, SP, #0x28B8+var_8B8
LDR             R4, [SP,#0x28B8+var_286C]
STR             R1, [R0,#0x770]
LDR             R1, =sub_5A2F60
ADD             R0, R4, #0x30 ; '0'
BLX             sub_1009D8
MOV             R0, R4
NOP
NOP
SUB             R4, R0, #0x34 ; '4'
LDR             R0, [SP,#0x28B8+var_28B4]
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
MOV             R0, #1
NOP
B               loc_1AF74C
DCD 0x8B8
DCD sub_5A2F60
DCD nullsub_300
DCD 0x3DCCCCCD
DCFS 100000.0
ADD             R5, R5, #0x88
B               loc_1AFFB4
ADD             R0, SP, #0x28B8+var_8B8
LDR             R0, [R0,#0x7FC]
ADD             R0, R0, #1
AND             R1, R0, #0xFF
ADD             R0, SP, #0x28B8+var_8B8
CMP             R1, #2
STR             R1, [R0,#0x7FC]
BCC             loc_1AEDC8
LDR             R0, [SP,#0x28B8+var_2878]
LDR             R1, [SP,#0x28B8+var_2870]
MOV             R3, #1
STR             R0, [SP,#0x28B8+var_2858]
LDR             R0, [SP,#0x28B8+var_2874]
STR             R1, [SP,#0x28B8+var_2100]
LDR             R1, [SP,#0x28B8+var_285C]
STR             R0, [SP,#0x28B8+var_2778]
ADD             R0, SP, #0x28B8+var_8B8
LDR             R4, [SP,#0x28B8+var_286C]
STR             R1, [R0,#0x770]
LDR             R1, =sub_5A2F60
MOV             R2, #0x28 ; '('
ADD             R0, R4, #0x30 ; '0'
BLX             sub_1009D8
MOV             R0, R4
NOP
NOP
LDR             R1, [SP,#0x28B8+var_28B4]
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
MOV             R0, #0
B               loc_1AF74C
