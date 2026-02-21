PUSH            {R4-R12,LR}
MOV             R4, R0
VPUSH           {D8}
LDR             R2, [R0,#8]
LDRSH           R0, [R2]
CMP             R0, #0x25; switch 37 cases
LDRCC           PC, [PC,R0,LSL#2]; switch jump
B               def_1B4B74; jumptable 001B4B74 default case, cases 1-17,19,20,22,24,25,27,29,30,32-35
DCD loc_1B4C10; jump table for switch statement
LDR             R3, =byte_68DBBC; jumptable 001B4B74 case 0
LDRB            R0, [R3]
CMP             R0, #0
BEQ             loc_1B4C84
AND             R0, R0, #1
CMP             R0, #1
MOV             R1, #0
BNE             loc_1B4C3C
MOV             R12, #0
MOV             R1, #1
STRB            R12, [R2,#0x4D6]
LDRB            R2, [R3]
CMP             R0, R2
MOVLT           R2, #0
BGE             loc_1B4C84
LDR             R12, [R4,#8]
ADD             R5, R1, #0x400
ADD             R5, R5, #0xD6
ADD             R1, R1, #1
STRB            R2, [R12,R5]
LDR             R5, [R4,#8]
ADD             R12, R1, #0x400
ADD             R12, R12, #0xD6
ADD             R0, R0, #2
STRB            R2, [R5,R12]
LDRB            R12, [R3]
ADD             R1, R1, #1
CMP             R0, R12
BLT             loc_1B4C4C
LDR             R1, [R4,#8]
LDRB            R0, [R3]
ADD             R1, R1, #0x400
SUB             R0, R0, #1
STRH            R0, [R1,#0xD2]
LDR             R0, =dword_6D1F40
BL              sub_546DB0
LDR             R1, [R4,#8]
MOV             R0, #9
ADD             R1, R1, #0x400
STRH            R0, [R1,#0xD4]
B               def_1B4B74; jumptable 001B4B74 default case, cases 1-17,19,20,22,24,25,27,29,30,32-35
VLDR            S0, =0.0; jumptable 001B4B74 cases 18,28
ADD             R0, R4, #0x1000
VSTR            S0, [R0,#0x1E0]
B               def_1B4B74; jumptable 001B4B74 default case, cases 1-17,19,20,22,24,25,27,29,30,32-35
ADD             R0, R4, #0x1000; jumptable 001B4B74 case 21
ADD             R0, R0, #0x1E4
MOV             R1, #1
STRH            R1, [R0]
STRH            R1, [R0,#2]
STRB            R1, [R0,#4]
VLDR            S0, =1.0
ADD             R2, R4, #0x1000
ADD             R0, R4, #0x1000
ADD             R0, R0, #0x1F4
VSTR            S0, [R2,#0x1EC]
STRH            R1, [R0]
STRH            R1, [R0,#2]
STRB            R1, [R0,#4]
VSTR            S0, [R2,#0x1FC]
B               def_1B4B74; jumptable 001B4B74 default case, cases 1-17,19,20,22,24,25,27,29,30,32-35
ADD             R0, R2, #6; jumptable 001B4B74 case 23
BL              sub_45AAB8
VLDR            S1, =90.0
VMUL.F32        S0, S0, S1
VLDR            S1, =0.71111
VMUL.F32        S0, S0, S1
BL              sub_464380
VLDR            S1, =1.0
LDR             R10, =byte_68DBBC
ADD             R0, R4, #0x1000
VSUB.F32        S0, S1, S0
VSTR            S0, [R0,#0x1B8]
LDRB            R0, [R10]
AND             R5, R0, #0xFF
MOV             R9, R0,LSL#1
CMP             R9, R5
LDRHI           R11, =0x19C98
VLDRHI          S16, =2.0
BLS             def_1B4B74; jumptable 001B4B74 default case, cases 1-17,19,20,22,24,25,27,29,30,32-35
RSB             R0, R5, R5,LSL#4
LDRB            R2, [R10]
ADD             R0, R0, R5,LSL#5
LDR             R1, [R4,#4]
ADD             R3, R11, R0,LSL#2
SUB             R0, R5, R2
ADD             R6, R1, R3
RSB             R1, R0, R0,LSL#4
LDR             R0, =unk_68D002
ADD             R7, R0, R1,LSL#1
LDR             R0, [R6]
MOV             R1, #1
LDR             R2, [R0,#0x44]
MOV             R0, R6
BLX             R2
LDRSH           R8, [R7,#8]
LDR             R0, [R6,#0xA4]
AND             R1, R8, #0xFF
BL              sub_5F1670
MOV             R7, R0
LDR             R0, =dword_6D1F40
BL              sub_546DB0
MUL             R0, R0, R7
VMOV.F32        S0, S16
MOV             R3, #0
MOV             R1, R8
MOV             R2, R0,LSR#16
LDR             R0, [R6]
LDR             R12, [R0,#0x3C]
MOV             R0, R6
BLX             R12
ADD             R0, R5, #1
UXTH            R5, R0
CMP             R9, R5
BHI             loc_1B4D50
B               def_1B4B74; jumptable 001B4B74 default case, cases 1-17,19,20,22,24,25,27,29,30,32-35
LDRH            R0, [R2,#2]; jumptable 001B4B74 cases 26,31
CMP             R0, #0x18
BNE             def_1B4B74; jumptable 001B4B74 default case, cases 1-17,19,20,22,24,25,27,29,30,32-35
ADD             R5, R4, #0x1000
VLDR            S1, =0.71111
VLDR            S0, [R5,#0x1B0]
VMUL.F32        S0, S0, S1
BL              sub_464380
VLDR            S3, [R5,#0x1D8]
VLDR            S4, =60.0
VLDR            S1, =90.0
VLDR            S2, [R5,#0x198]
VADD.F32        S3, S3, S4
VMLA.F32        S1, S0, S3
VADD.F32        S0, S1, S2
VSTR            S0, [R5,#0x198]
B               def_1B4B74; jumptable 001B4B74 default case, cases 1-17,19,20,22,24,25,27,29,30,32-35
ADD             R0, R2, #6; jumptable 001B4B74 case 36
BL              sub_45AAB8
VLDR            S1, =1.0
LDR             R10, =byte_68DBBC
ADD             R0, R4, #0x1000
VSUB.F32        S0, S1, S0
VSTR            S0, [R0,#0x1B8]
LDRB            R0, [R10]
AND             R5, R0, #0xFF
MOV             R9, R0,LSL#1
CMP             R9, R5
LDRHI           R11, =0x19C98
VLDRHI          S16, =2.0
BLS             def_1B4B74; jumptable 001B4B74 default case, cases 1-17,19,20,22,24,25,27,29,30,32-35
LDRB            R0, [R10]
RSB             R1, R5, R5,LSL#4
LDR             R2, [R4,#4]
ADD             R1, R1, R5,LSL#5
SUB             R0, R5, R0
ADD             R1, R11, R1,LSL#2
ADD             R6, R2, R1
RSB             R1, R0, R0,LSL#4
LDR             R0, =unk_68D002
ADD             R7, R0, R1,LSL#1
LDR             R0, [R6]
MOV             R1, #1
LDR             R2, [R0,#0x44]
MOV             R0, R6
BLX             R2
LDRSH           R8, [R7,#8]
LDR             R0, [R6,#0xA4]
AND             R1, R8, #0xFF
BL              sub_5F1670
MOV             R7, R0
LDR             R0, =dword_6D1F40
BL              sub_546DB0
MUL             R0, R0, R7
VMOV.F32        S0, S16
MOV             R3, #0
MOV             R1, R8
MOV             R2, R0,LSR#16
LDR             R0, [R6]
LDR             R12, [R0,#0x3C]
MOV             R0, R6
BLX             R12
ADD             R0, R5, #1
UXTH            R5, R0
CMP             R9, R5
BHI             loc_1B4E5C
LDR             R1, [R4,#8]; jumptable 001B4B74 default case, cases 1-17,19,20,22,24,25,27,29,30,32-35
LDRSH           R0, [R1]
CMP             R0, #0
CMPNE           R0, #1
CMPNE           R0, #4
BEQ             loc_1B4F68
CMP             R0, #0x33 ; '3'
BNE             loc_1B4F60
ADD             R2, R4, #0x1000
VLDR            S1, =0.033333
VLDR            S0, [R2,#0x1F0]
MOV             R3, #0
VMUL.F32        S0, S0, S1
VLDR            S1, =12.0
VMOV            R0, S0
CMP             R0, #0x3F800000
VLDRGT          S0, =1.0
ADD             R0, R4, #0x1000
ADD             R0, R0, #0x1E4
VMUL.F32        S0, S1, S0
STRH            R3, [R0]
VCVT.S32.F32    S0, S0
VMOV            R12, S0
VLDR            S0, =1.0
SXTH            R1, R12
CMP             R1, #1
MOVLT           R1, #1
STRH            R1, [R0,#2]
STRB            R3, [R0,#4]
VSTR            S0, [R2,#0x1EC]
VPOP            {D8}
POP             {R4-R12,PC}
LDRSH           R0, [R1,#2]
CMP             R0, #3
CMPNE           R0, #0x20 ; ' '
BNE             loc_1B4F60
ADD             R0, R4, #0x1100
LDRSH           R1, [R0,#0xE4]
LDRSH           R0, [R0,#0xE6]
CMP             R0, R1
ADD             R0, R4, #0x1000
ADD             R0, R0, #0x1E4
BGT             loc_1B500C
MOV             R3, #0
MOV             R1, #0xC
STRH            R3, [R0]
STRH            R1, [R0,#2]
STRB            R3, [R0,#4]
VLDR            S0, =1.0
ADD             R0, R4, #0x1000
VLDR            S1, =0.0
VSTR            S0, [R0,#0x1EC]
LDR             R1, [R4,#4]
ADD             R1, R1, #0x400
VLDR            S0, [R1,#0xC4]
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
VNEGLT.F32      S0, S0
VSTR            S0, [R0,#0x1F0]
VPOP            {D8}
POP             {R4-R12,PC}
DCD byte_68DBBC
DCD dword_6D1F40
DCFS 0.0
DCFS 1.0
DCFS 90.0
DCFS 0.71111
DCD 0x19C98
DCFS 2.0
DCD unk_68D002
DCFS 60.0
DCFS 0.033333
DCFS 12.0
MOV             R4, R0
BL              sub_45AAB8
VMOV            R0, S0
CMP             R0, #0x3F000000
BLE             loc_1B4F60
MOV             R0, R4
BL              sub_45AAB8
VLDR            S16, =0.5
VLDR            S2, =2.0
VLDR            S1, =180.0
VSUB.F32        S0, S0, S16
VMUL.F32        S0, S0, S2
VMUL.F32        S0, S0, S1
VLDR            S1, =0.71111
VMUL.F32        S0, S0, S1
BL              sub_464318
VMOV.F32        S1, S16
VMLA.F32        S1, S0, S16
VMOV.F32        S0, S1
BL              sub_5F5C58
VLDR            S2, =57.296
VLDR            S1, =0.011111
LDRSH           R0, [R4,#2]
VMUL.F32        S0, S0, S2
VLDR            S2, =1.0
MOV             R1, #0
STRB            R1, [R4,#4]
VMUL.F32        S0, S0, S1
VMOV            S1, R0
VCVT.F32.S32    S1, S1
VMUL.F32        S0, S0, S16
VSUB.F32        S1, S1, S2
VMLA.F32        S16, S1, S0
VCVT.S32.F32    S0, S16
VMOV            R0, S0
STRH            R0, [R4]
VPOP            {D8}
POP             {R4-R12,PC}
