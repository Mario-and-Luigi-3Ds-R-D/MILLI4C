PUSH            {R4-R6,LR}
MOV             R4, R0
ADD             R0, R0, #0x15000
VPUSH           {D8}
MOV             R1, #0
STRB            R1, [R0,#0xA4]
STRB            R1, [R0,#0xA3]
LDRB            R1, [R0,#0xA1]
MOV             R2, #0xFF
STRB            R1, [R0,#0xA2]
STRB            R2, [R0,#0xA1]
MOV             R0, R4
BL              sub_1608D0
LDR             R1, =0x13D04
VLDR            S16, =0.0039216
MOV             R5, #2
LDRH            R1, [R1,R4]
SUB             R0, R1, #0xFF00
SUBS            R0, R0, #0xFF
BNE             loc_1623DC
MOV             R1, #0xFF
ADD             R0, R4, #0x13800
REV             R1, R1
ADD             R0, R0, #0x2D4
AND             R12, R1, #0xFF
MOV             R3, R1,LSL#16
MOV             R2, R1,LSL#8
MOV             R1, R1,LSR#24
VMOV            S2, R12
VMOV            S3, R1
MOV             R2, R2,LSR#24
MOV             R3, R3,LSR#24
VMOV            S1, R2
VMOV            S0, R3
VCVT.F32.S32    S2, S2
VCVT.F32.S32    S3, S3
ADD             R1, R0, #4
MOV             R2, R5
VCVT.F32.S32    S1, S1
VCVT.F32.S32    S0, S0
VMUL.F32        S2, S2, S16
VMUL.F32        S3, S3, S16
VMUL.F32        S1, S1, S16
VMUL.F32        S0, S0, S16
VSTR            S2, [R0]
VSTR            S3, [R0,#0xC]
ADD             R0, R4, #0x2C4
VSTM            R1, {S0-S1}
MOV             R1, #0
BL              sub_5996A0
MOV             R1, #0xFF
ADD             R0, R4, #0x28800
REV             R1, R1
ADD             R0, R0, #0xEC
AND             R2, R1, #0xFF
MOV             R6, R1,LSL#8
MOV             R12, R1,LSL#16
MOV             R6, R6,LSR#24
MOV             R1, R1,LSR#24
VMOV            S0, R6
MOV             R12, R12,LSR#24
VMOV            S2, R2
VMOV            S1, R1
VMOV            S3, R12
ADD             R3, R4, #0x15000
VCVT.F32.S32    S4, S0
ADD             R3, R3, #0xDC
VCVT.F32.S32    S2, S2
VCVT.F32.S32    S0, S1
VCVT.F32.S32    S3, S3
MOV             R2, R5
MOV             R1, #0
VMUL.F32        S1, S2, S16
VMUL.F32        S0, S0, S16
VMUL.F32        S2, S3, S16
VMUL.F32        S3, S4, S16
VSTR            S0, [R0,#0xC]
VSTM            R0, {S1-S3}
MOV             R0, R3
BL              sub_5996A0
MOV             R1, #0xFF
ADD             R0, R4, #0x3C000
REV             R1, R1
ADD             R0, R0, #0x138
AND             R6, R1, #0xFF
MOV             R12, R1,LSL#16
MOV             R2, R1,LSL#8
MOV             R1, R1,LSR#24
VMOV            S3, R1
MOV             R12, R12,LSR#24
MOV             R2, R2,LSR#24
VMOV            S0, R6
VMOV            S1, R12
VMOV            S2, R2
VCVT.F32.S32    S3, S3
ADD             R3, R4, #0x28800
ADD             R3, R3, #0x128
VCVT.F32.S32    S0, S0
VCVT.F32.S32    S1, S1
VCVT.F32.S32    S2, S2
MOV             R2, R5
MOV             R1, #0xC4
VMUL.F32        S3, S3, S16
VMUL.F32        S0, S0, S16
VMUL.F32        S1, S1, S16
VMUL.F32        S2, S2, S16
VSTM            R0, {S0-S3}
MOV             R0, R3
BL              sub_5996A0
LDR             R0, [R4]
MOV             R3, #0
LDR             R12, [R0,#0x50]
LDR             R0, =off_68AED8
LDM             R0, {R1,R2}
MOV             R0, R4
VPOP            {D8}
POP             {R4-R6,LR}
BX              R12
