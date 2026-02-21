PUSH            {R4-R12,LR}
MOV             R4, R0
MOV             R7, R1
LDR             R1, =0xC80C
LDR             R8, =0x21218
LDR             R9, =unk_68D70A
LDR             R11, =byte_68DBBD
VPUSH           {D8-D9}
LDRB            R1, [R1,R0]
VLDR            S17, =-1.0
VLDR            S16, =1.0
CMP             R1, #0
BEQ             loc_237308
LDRB            R1, [R11]
MOV             R5, #0
CMP             R1, #0
VLDRGT          S18, =2.0
BLE             loc_237280
ADD             R0, R4, R5
ADD             R0, R0, #0xC800
ADD             R0, R0, #0xD
RSB             R2, R5, R5,LSL#4
LDRB            R12, [R0]
ADD             R3, R2, R5,LSL#5
LDR             R1, =0x19C98
LDR             R0, [R4,#4]
LDR             R2, =0x21218
RSB             R6, R5, R5,LSL#3
ADD             R3, R1, R3,LSL#2
ADD             R2, R2, R6,LSL#3
ADD             R9, R0, R3
ADD             R6, R0, R2
LDR             R0, =unk_68D70A
ADD             R1, R12, R12,LSL#2
VMOV.F32        S0, S16
ADD             R10, R0, R1,LSL#2
ADD             R0, R4, R5,LSL#7
ADD             R0, R0, #0xC
BL              sub_5A2484
LDM             R0, {R1,R2}
VMOV.F32        S0, S16
LDR             R0, [R0,#8]
ADD             R3, R6, #0x28 ; '('
STR             R0, [R6,#0x30]
ADD             R0, R5, R5,LSL#2
ADD             R0, R0, R5,LSL#3
STM             R3, {R1,R2}
ADD             R8, R4, R0,LSL#2
ADD             R0, R8, #0x5000
ADD             R0, R0, #0xC
BL              sub_5A176C
ADD             R0, R5, R5,LSL#1
ADD             R0, R0, R5,LSL#3
VSTR            S0, [R6,#0x18]
ADD             R0, R4, R0,LSL#3
VMOV.F32        S0, S16
ADD             R0, R0, #0x7000
ADD             R0, R0, #0x8C
BL              sub_5A2484
LDM             R0, {R1,R2}
ADD             R8, R8, #0xA400
LDR             R0, [R0,#8]
VMOV.F32        S0, S16
ADD             R3, R6, #0x1C
STR             R0, [R6,#0x24]
ADD             R8, R8, #0x38C
MOV             R0, R8
STM             R3, {R1,R2}
BL              sub_5A176C
MOV             R0, R8
NOP
BL              sub_5F1964
CMP             R0, #0
NOP
BNE             loc_237270
LDRSH           R1, [R9,#0xB0]
SUB             R0, R1, #0x4000
SUBS            R0, R0, #0x1F
BEQ             loc_23724C
MOV             R1, #0x3800
MOV             R0, R9
BL              sub_543494
LDR             R0, [R9]
VMOV.F32        S0, S18
MOV             R3, #0
LDRSH           R1, [R10,#8]
LDR             R12, [R0,#0x3C]
MOV             R2, R3
MOV             R0, R9
BLX             R12
LDRH            R0, [R10,#0xA]
CMP             R0, #0
VMOVNE.F32      S1, S17
VMOVEQ.F32      S1, S16
CMP             R7, #0
VMOVNE.F32      S0, S17
VMOVEQ.F32      S0, S16
VMUL.F32        S0, S1, S0
VSTR            S0, [R6,#4]
LDRB            R0, [R11]
ADD             R5, R5, #1
CMP             R5, R0
BLT             loc_23712C
LDR             R0, [R4,#4]
VMOV.F32        S0, S16
ADD             R5, R0, #0x23000
ADD             R0, R4, #0x4C00
ADD             R5, R5, #0x4E0
ADD             R0, R0, #0x38C
BL              sub_5A2484
LDM             R0, {R1,R2}
VMOV.F32        S0, S16
LDR             R0, [R0,#8]
ADD             R3, R5, #0x28 ; '('
STR             R0, [R5,#0x30]
ADD             R0, R4, #0x7000
ADD             R0, R0, #0x58 ; 'X'
STM             R3, {R1,R2}
BL              sub_5A176C
VSTR            S0, [R5,#0x18]
ADD             R0, R4, #0xC
BL              sub_5F19B8
CMP             R0, #0
NOP
BNE             loc_23749C
LDR             R1, =0xC80C
MOV             R0, #0
STRB            R0, [R1,R4]
LDR             R0, [R4,#4]
ADD             R0, R0, #0x21000
ADD             R0, R0, #0x15C
LDR             R1, [R0]
LDR             R2, [R1,#0x44]
MOV             R1, #0
VPOP            {D8-D9}
POP             {R4-R12,LR}
BX              R2
LDRB            R0, [R11]
MOV             R2, #0
CMP             R0, #0
VLDRGT          S0, =0.0
MOVGT           R10, #0
BLE             loc_23749C
ADD             R0, R4, R2
ADD             R0, R0, #0xC800
ADD             R0, R0, #0xD
RSB             R1, R2, R2,LSL#3
LDRB            R3, [R0]
ADD             R12, R8, R1,LSL#3
LDR             R0, [R4,#4]
CMP             R7, #0
ADD             R1, R3, R3,LSL#2
ADD             R0, R0, R12
ADD             R1, R9, R1,LSL#2
VMOVNE.F32      S2, S17
LDRSH           R12, [R1]
VMOVEQ.F32      S2, S16
LDRSH           R6, [R1,#4]
VMOV            S1, R12
LDRSH           R12, [R1,#2]
ADD             R3, R0, #0x28 ; '('
ADD             R5, R0, #4
VMOV            S3, R12
ADD             R12, R0, #0x28 ; '('
VCVT.F32.S32    S1, S1
VCVT.F32.S32    S3, S3
VMUL.F32        S1, S1, S2
VMOV            S2, R6
MOV             R6, R12
VCVT.F32.S32    S2, S2
VSTR            S1, [R3]
VSTR            S3, [R3,#4]
VSTR            S2, [R3,#8]
LDRH            R3, [R1,#0xA]
CMP             R3, #0
VMOVNE.F32      S2, S17
VMOVEQ.F32      S2, S16
CMP             R7, #0
VMOVNE.F32      S3, S17
VMOVEQ.F32      S3, S16
VMUL.F32        S2, S2, S3
VSTR            S2, [R5]
VSTR            S16, [R5,#4]
VSTR            S16, [R5,#8]
LDRSH           R5, [R1,#0xC]
LDRSH           LR, [R1,#0xE]
VMOV            S3, R5
VMOV            S2, LR
VCVT.F32.S32    S3, S3
VCVT.F32.S32    S2, S2
VSTR            S3, [R0,#0x1C]
VSTR            S2, [R0,#0x20]
VSTR            S0, [R0,#0x24]
LDRSH           R3, [R1,#0x10]
VMOV            S2, R3
VCVT.F32.S32    S2, S2
VSTR            S2, [R0,#0x18]
LDR             R3, [R4,#4]
ADD             R3, R3, #0x108
VLDR            S2, [R3]
VADD.F32        S1, S1, S2
VSTR            S1, [R12]
VLDR            S1, [R6,#4]
VLDR            S2, [R3,#4]
VADD.F32        S1, S1, S2
VSTR            S1, [R12,#4]
VLDR            S1, [R12,#8]
VLDR            S2, [R3,#8]
MOVNE           R3, #0xFFFFFFFF
MOVEQ           R3, #1
VADD.F32        S1, S1, S2
VSTR            S1, [R12,#8]
LDRSH           R1, [R1]
VMOV            S1, R1
VCVT.F32.S32    S1, S1
VCVT.S32.F32    S1, S1
VMOV            R1, S1
SXTH            R1, R1
MOV             R12, R10
MUL             R1, R3, R1
LDR             R3, =0x88888889
VLDR            S2, [R0,#0x2C]
ADD             R1, R1, #0x3C ; '<'
ADD             R2, R2, #1
SMLAL           R12, R1, R3, R1
LDR             R12, [R4,#4]
MOV             R3, R1,ASR#3
SUB             R1, R3, R1,ASR#31
LDR             R3, =0x19C70
SXTH            R1, R1
ADD             R1, R3, R1,LSL#2
ADD             R1, R1, R12
VLDR            S1, [R1]
VADD.F32        S1, S1, S2
VSTR            S1, [R0,#0x2C]
LDRB            R0, [R11]
CMP             R2, R0
BLT             loc_237320
VPOP            {D8-D9}
POP             {R4-R12,PC}
