PUSH            {R4-R11,LR}
ADD             R5, R0, #0x14000
MOV             R7, R0
ADD             R0, R0, #0x13000
ADD             R0, R0, #0xB70
LDR             R4, =off_6D1648
ADD             R5, R5, #0x184
VPUSH           {D8-D9}
SUB             SP, SP, #0x5C
LDR             R1, [R4]
STR             R0, [SP,#0x90+var_68]
ADD             R0, R7, #0x14000
STR             R0, [SP,#0x90+var_84]
ADD             R0, R7, #0x10000
ADD             R0, R0, #0x4300
STR             R0, [SP,#0x90+var_48]
STR             R5, [SP,#0x90+var_4C]
LDR             R0, [R1,#0xC8]
TST             R0, #7
BEQ             loc_2ACE18
LDR             R0, [SP,#0x90+var_84]
MOV             R5, #0
LDRB            R0, [R0,#0x28D]
CMP             R0, #0
BLE             loc_2ACDF8
ADD             R0, R7, R5,LSL#2
ADD             R4, R0, #0x14000
LDR             R0, [R4,#0x184]
LDR             R1, [R0]
LDR             R1, [R1,#0xC]
BLX             R1
CMP             R0, #0
BEQ             loc_2ACDA4
LDR             R0, [R7]
LDR             R1, [R4,#0x184]
ADD             R2, SP, #0x90+var_8C
LDR             R3, [R0,#0x11C]
MOV             R0, R7
BLX             R3
LDR             R0, [R4,#0x184]
LDR             R1, [R0]
LDR             R1, [R1,#8]
BLX             R1
CMP             R0, #0
BEQ             loc_2ACD64
LDR             R0, [R4,#0x184]
LDR             R1, [R0]
LDR             R1, [R1,#8]
BLX             R1
CMP             R0, #1
BEQ             loc_2ACD64
LDR             R0, [R4,#0x184]
LDR             R1, [R0]
LDR             R1, [R1,#8]
BLX             R1
CMP             R0, #4
BEQ             loc_2ACD7C
B               loc_2ACDD4
LDR             R0, [R4,#0x184]
LDR             R1, [R0]
LDR             R2, [R1,#0x344]
ADD             R1, R0, #0x8C0
BLX             R2
B               loc_2ACDD4
LDR             R0, [SP,#0x90+var_8C]
LDR             R0, [R0,#0xA4]
CMP             R0, #0
ADDNE           R1, R0, #0x104
LDR             R0, [SP,#0x90+var_68]
MOVEQ           R1, #0
BL              sub_2018EC
NOP
NOP
B               loc_2ACDD4
LDR             R0, [R4,#0x184]
LDR             R1, [R0]
LDR             R1, [R1,#0x10]
BLX             R1
CMP             R0, #0
BEQ             loc_2ACDD4
LDR             R0, [R7]
LDR             R1, [R4,#0x184]
ADD             R2, SP, #0x90+var_80
LDR             R3, [R0,#0x120]
MOV             R0, R7
BLX             R3
LDR             R0, [R4,#0x184]
LDR             R1, [R0]
LDR             R1, [R1,#0x34]
BLX             R1
LDR             R0, [SP,#0x90+var_84]
ADD             R5, R5, #1
LDRB            R0, [R0,#0x28D]
CMP             R0, R5
BGT             loc_2ACCE0
LDR             R0, [SP,#0x90+var_48]
LDRH            R0, [R0,#8]
ORR             R1, R0, #4
LDR             R0, [SP,#0x90+var_48]
STRH            R1, [R0,#8]
ADD             SP, SP, #0x5C ; '\'
VPOP            {D8-D9}
POP             {R4-R11,PC}
ADD             R6, R7, #0x13C00
MOV             R0, #0
ADD             R6, R6, #0x24 ; '$'
STR             R0, [SP,#0x90+var_60]
LDR             R0, [R6]
LDR             R1, [R0]
LDR             R1, [R1,#0x14]
BLX             R1
LDR             R0, [SP,#0x90+var_48]
LDRSH           R0, [R0,#0xA]
CMP             R0, #0
BLT             loc_2ACEA4
LDR             R0, [R6]
LDR             R1, =0x13C70
LDR             R2, [R0,#0x1A8]
BIC             R2, R2, #2
STR             R2, [R0,#0x1A8]
LDR             R0, [R1,R7]
LDR             R1, [SP,#0x90+var_48]
LDR             R3, [R6]
LDR             R2, [R0,#0x14]
LDRSH           R1, [R1,#0xA]
ADD             R0, R0, R2
LDR             R2, [R3]
LDR             R12, [R0]
LDR             R2, [R2,#0x2C]
ADD             R12, R0, R12,LSL#2
ADD             R1, R12, R1,LSL#2
LDR             R1, [R1,#4]
ADD             R1, R1, R0
MOV             R0, R3
BLX             R2
LDR             R0, [SP,#0x90+var_48]
MOV             R1, #0xFFFFFFFF
STRH            R1, [R0,#0xA]
MOV             R0, #0
STR             R0, [SP,#0x90+var_44]
ADD             R0, R7, #0x13C00
VLDR            S16, =0.0
ADD             R0, R0, #0x164
STR             R0, [SP,#0x90+var_50]
LDR             R0, [SP,#0x90+var_44]
ADD             R0, R7, R0,LSL#2
ADD             R10, R0, #0x13000
ADD             R10, R10, #0xC70
LDR             R1, [R10]
CMP             R1, #0
BEQ             loc_2AD2B0
LDR             R2, [R1,#0x10]
ADD             R4, R1, R2
LDR             R2, [SP,#0x90+var_60]
LDR             R1, [R4],#4
STR             R1, [SP,#0x90+var_64]
ADD             R1, R1, R2
STR             R1, [SP,#0x90+var_60]
LDR             R1, [SP,#0x90+var_64]
CMP             R1, #0
MOV             R1, #0
ADDHI           R0, R0, #0x13C00
ADDHI           R0, R0, #0x8C
STR             R1, [SP,#0x90+var_7C]
STRHI           R0, [SP,#0x90+var_40]
BLS             loc_2AD2B0
LDR             R9, =0xFFFF
LDRH            R0, [R4,#0xC]
CMP             R0, R9
BEQ             loc_2ACF40
MOV             R2, #0
MOV             R1, R2
BL              sub_116B34
VCMP.F32        S0, S16
VMRS            APSR_nzcv, FPSCR
MOVNE           R8, #0
BNE             loc_2ACF44
MOV             R8, #1
LDRSH           R0, [R4,#0xA]
CMP             R0, #0
BLT             loc_2ACFB0
LDRH            R0, [R4,#0xC]
CMP             R0, R9
BEQ             loc_2ACF74
MOV             R2, #0
MOV             R1, R2
BL              sub_116B34
VCMP.F32        S0, S16
VMRS            APSR_nzcv, FPSCR
BNE             loc_2ACFB0
LDR             R0, [R10]
LDR             R12, [R6]
LDRSH           R1, [R4,#0xA]
LDR             R2, [R0,#0x14]
ADD             R0, R0, R2
LDR             R2, [R12]
LDR             R3, [R0]
ADD             R9, R0, R3,LSL#2
ADD             R1, R9, R1,LSL#2
LDR             R3, [R2,#0x50]
LDR             R1, [R1,#4]
LDR             R2, [R5]
ADD             R1, R1, R0
MOV             R0, R12
BLX             R3
LDR             R0, [R5]
LDR             R1, [R0]
LDR             R1, [R1,#8]
BLX             R1
CMP             R0, #3
BEQ             def_2ACFE8; jumptable 002ACFE8 default case, cases 0,1
LDRH            R0, [R4,#8]
CMP             R0, #0x7F
BCS             loc_2AD1F4
LDR             R1, [R4,#0x14]
MOV             R1, R1,LSL#8
MOV             R1, R1,LSR#28
SUB             R1, R1, #2
CMP             R1, #8; switch 8 cases
LDRCC           PC, [PC,R1,LSL#2]; switch jump
B               def_2ACFE8; jumptable 002ACFE8 default case, cases 0,1
DCD def_2ACFE8; jump table for switch statement
LDR             R1, [SP,#0x90+var_40]; jumptable 002ACFE8 cases 2-7
LDR             R11, [R5]
LDR             R1, [R1]
ADD             R9, R1, R0,LSL#1
LDRB            R0, [R9]
CMP             R0, #0
BEQ             loc_2AD0D4
LDRH            R2, [R4,#6]
MOV             R1, #1
ADD             R0, R11, #0xE0
STR             R2, [SP,#0x90+var_6C]
STRB            R1, [R0,#0x34]
LDR             R0, [R7]
LDR             R1, [R5]
ADD             R2, SP, #0x90+var_78
LDR             R3, [R0,#0x120]
MOV             R0, R7
BLX             R3
LDR             R0, [R11]
LDR             R1, [R0,#0x1BC]
MOV             R0, R11
BLX             R1
LDR             R0, =byte_6EC430
LDR             R2, [SP,#0x90+var_6C]
ADD             R3, R7, #0xCC
STR             R0, [SP,#0x90+var_90]
LDR             R0, [SP,#0x90+var_78]
LDRB            R9, [R9,#1]
LDR             R1, [R0]
LDR             R12, [R1,#0x170]
MOV             R1, R9
BLX             R12
LDR             R0, [SP,#0x90+var_78]
LDR             R1, [R4,#0x14]
LDR             R2, [R0]
AND             R1, R1, R8
LDR             R2, [R2,#0x178]
BLX             R2
LDR             R1, [R4,#0x14]
MOV             R0, #4
MOV             R1, R1,LSL#8
CMP             R0, R1,LSR#28
BEQ             def_2ACFE8; jumptable 002ACFE8 default case, cases 0,1
LDR             R0, [R11]
LDR             R2, [R0,#0x280]
LDR             R0, [SP,#0x90+var_50]
LDR             R1, [R0]
MOV             R0, R11
B               loc_2AD28C
LDR             R0, [R7]
MOV             R1, R11
ADD             R2, SP, #0x90+var_78
LDR             R3, [R0,#0x11C]
MOV             R0, R7
BLX             R3
LDR             R0, [SP,#0x90+var_78]
LDRB            R3, [R9,#1]
LDR             R1, [R0]
LDR             R2, [R1,#0x50]
MOV             R1, R3
BLX             R2
LDR             R0, [SP,#0x90+var_78]
LDR             R1, [R4,#0x14]
LDR             R2, [R0]
AND             R1, R1, R8
LDR             R2, [R2,#0x60]
BLX             R2
LDRH            R8, [R4,#6]
TST             R8, #0x8000
BNE             loc_2AD1A0
LDR             R0, [SP,#0x90+var_78]
MOV             R3, #1
MOV             R2, #0xFFFFFFFF
LDR             R1, [R0]
LDR             R12, [R1,#0x54]
MOV             R1, R8
BLX             R12
LDR             R0, [SP,#0x90+var_78]
LDR             R0, [R0,#0xA8]
LDR             R2, [R0,#0x38]
LDR             R0, =unk_6731D8
LDRB            R1, [R2,#0x1C]
AND             R1, R1, #7
LDRB            R0, [R0,R1]
CMP             R0, #0
BEQ             loc_2AD1A0
CMP             R0, R8
BLE             loc_2AD1A0
UXTH            R1, R8
MOV             R0, R2
BL              sub_194AAC
LDR             R1, [R11,#0x464]
AND             R0, R0, #0xF
BIC             R1, R1, #0xF
ORR             R0, R0, R1
MOV             R1, #0xF0
BIC             R2, R0, #0xF0
AND             R0, R1, R0,LSL#4
ORR             R0, R0, R2
STR             R0, [R11,#0x464]
LDR             R1, [R4,#0x14]
MOV             R0, #4
MOV             R1, R1,LSL#8
CMP             R0, R1,LSR#28
BNE             loc_2AD0A8
LDR             R0, [SP,#0x90+var_78]
LDR             R0, [R0,#0xA4]
CMP             R0, #0
ADDNE           R1, R0, #0x104
LDR             R0, [SP,#0x90+var_68]
MOVEQ           R1, #0
BL              sub_2018EC
NOP
NOP
B               loc_2AD0A8
DCD off_6D1648
DCD 0x13C70
DCFS 0.0
DCD 0xFFFF
DCD byte_6EC430
DCD unk_6731D8
LDR             R0, [R7]
LDR             R1, [R5]
MOV             R2, #0
LDR             R3, [R0,#0x11C]
MOV             R0, R7
BLX             R3
LDR             R0, =off_6D1648
LDR             R8, [R5]
LDR             R0, [R0]
BL              sub_5C8540
CMP             R0, #0
NOP
BNE             loc_2AD278
LDR             R0, [R8]
LDR             R1, [R0,#0x80]
MOV             R0, R8
BLX             R1
MOV             R9, R0
LDR             R0, [R8]
ADD             R1, R8, #0x8C0
LDR             R2, [R0,#0x344]
MOV             R0, R8
BLX             R2
LDR             R0, [R7]
MOV             R1, R8
LDR             R2, [R0,#0x13C]
MOV             R0, R7
BLX             R2
LDR             R0, [R8]
MOV             R1, R9
LDR             R2, [R0,#0x84]
MOV             R0, R8
BLX             R2
LDR             R0, [R8]
LDR             R2, [R0,#0x280]
LDR             R0, [SP,#0x90+var_50]
LDR             R1, [R0]
MOV             R0, R8
BLX             R2
LDR             R0, [SP,#0x90+var_7C]; jumptable 002ACFE8 default case, cases 0,1
LDR             R1, [SP,#0x90+var_64]
ADD             R5, R5, #4
ADD             R0, R0, #1
CMP             R0, R1
ADD             R4, R4, #0x18
STR             R0, [SP,#0x90+var_7C]
BCC             loc_2ACF14
LDR             R0, [SP,#0x90+var_44]
ADD             R0, R0, #1
CMP             R0, #2
STR             R0, [SP,#0x90+var_44]
BLT             loc_2ACEBC
LDR             R0, [SP,#0x90+var_48]
LDR             R11, =off_6D1648
LDRH            R0, [R0,#8]
BIC             R1, R0, #4
LDR             R0, [SP,#0x90+var_48]
STRH            R1, [R0,#8]
LDR             R0, [R11]
BL              sub_5C8540
CMP             R0, #0
NOP
BEQ             loc_2AD480
LDR             R0, [R11]
BL              sub_5C8534
MOV             R10, R0
LDR             R0, [SP,#0x90+var_84]
LDR             R0, [R0,#0x180]
CMP             R0, #0x400
BEQ             loc_2AD3A0
ADD             R0, R10, #0x4000
ADD             R0, R0, #0xDC0
MOV             R1, R7
MOV             R4, R0
BL              sub_5CEF40
MOV             R1, R7
MOV             R0, R4
BL              sub_5D4634
MOV             R9, #0
ADD             R0, R7, R9,LSL#2
ADD             R0, R0, #0x14000
LDR             R8, [R0,#0x184]
LDR             R0, [R8]
LDR             R1, [R0,#0x80]
MOV             R0, R8
BLX             R1
MOV             R4, R0
LDR             R0, [R8]
ADD             R1, R8, #0x8C0
LDR             R2, [R0,#0x344]
MOV             R0, R8
BLX             R2
LDR             R0, [R7]
MOV             R1, R8
LDR             R2, [R0,#0x13C]
MOV             R0, R7
BLX             R2
LDR             R0, [R8]
MOV             R1, R4
LDR             R2, [R0,#0x84]
MOV             R0, R8
BLX             R2
LDR             R0, [SP,#0x90+var_84]
LDR             R0, [R0,#0x180]
CMP             R0, #0x400
BEQ             loc_2AD3EC
B               loc_2AD414
LDR             R0, [R11]
LDR             R1, [R0,#0xC4]
ADD             R0, R10, #0x1C
BL              sub_5D02CC
LDR             R0, [R11]
LDR             R1, [R0,#0xC4]
ADD             R0, R10, #0x1C
BL              sub_5C9D88
ADD             R0, R10, #0x800
ADD             R0, R0, #0x54 ; 'T'
MOV             R1, R7
MOV             R4, R0
BL              sub_5CEFC4
MOV             R1, R7
MOV             R0, R4
BL              sub_5CF05C
NOP
NOP
B               loc_2AD32C
LDR             R0, [R8]
LDR             R1, [R0,#8]
MOV             R0, R8
BLX             R1
CMP             R0, #0
LDR             R0, [R11]
LDR             R1, [R0,#0xC4]
ADD             R0, R10, #0x1C
BEQ             loc_2AD4E8
BL              sub_5CA3C0
LDR             R0, [R8]
LDR             R1, [R0,#0x3C4]
MOV             R0, R8
BLX             R1
MOV             R5, R0
LDR             R0, [R8]
MOV             R4, #0
LDR             R1, [R0,#0x3CC]
MOV             R0, R8
BLX             R1
CMP             R0, #0
BLS             loc_2AD474
LDR             R0, [R5]
ADD             R5, R5, #4
ADD             R4, R4, #1
LDRB            R1, [R0,#0xDE]
TST             R1, #1
STRNE           R7, [R0,#4]
LDR             R0, [R8]
LDR             R1, [R0,#0x3CC]
MOV             R0, R8
BLX             R1
CMP             R0, R4
BHI             loc_2AD444
ADD             R9, R9, #1
CMP             R9, #2
BLT             loc_2AD330
LDR             R4, [SP,#0x90+var_4C]
MOV             R9, #0
ADD             R0, R7, R9,LSL#2
ADD             R0, R0, #0x13000
ADD             R0, R0, #0xC70
LDR             R0, [R0]
CMP             R0, #0
BEQ             loc_2AD534
LDR             R1, [R0,#0x10]
MOV             R5, #0
LDR             R8, [R0,R1]
CMP             R8, #0
BLS             loc_2AD534
LDR             R0, [R6]
LDR             R1, [R4]
LDR             R2, [R0]
ADD             R1, R1, #0x14
LDR             R2, [R2,#0x80]
BLX             R2
LDR             R0, [R4]
LDR             R1, [R0]
LDR             R1, [R1,#8]
BLX             R1
CMP             R0, #6
BNE             loc_2AD510
B               loc_2AD4FC
NOP
BL              sub_5D021C
NOP
NOP
B               loc_2AD414
LDR             R0, [R4]
LDRB            R0, [R0,#0xDE]
TST             R0, #1
MOVNE           R1, #1
BNE             loc_2AD514
MOV             R1, #0
LDR             R0, [R6]
ADD             R5, R5, #1
CMP             R5, R8
ADD             R4, R4, #4
LDRB            R2, [R0,#0x462]
ORR             R1, R1, R2
STRB            R1, [R0,#0x462]
BCC             loc_2AD4B4
ADD             R9, R9, #1
CMP             R9, #2
BLT             loc_2AD488
LDR             R0, =0x13D00
LDR             R5, [R0,R7]
CMP             R5, #0
BEQ             loc_2ACE0C
ADD             R10, R7, #0x13C00
VLDR            S16, =30.0
VLDR            S17, =15.0
VLDR            S18, =-15.0
MOV             R6, #0
MOV             R8, #2
MOV             R9, #1
ADD             R10, R10, #0x5C ; '\'
LDR             R0, [R5]
MOV             R0, R0,LSL#28
MOV             R0, R0,LSR#29
CMP             R0, #5; switch 5 cases
LDRCC           PC, [PC,R0,LSL#2]; switch jump
B               def_2AD580; jumptable 002AD580 default case, cases 1,3
DCD loc_2AD59C; jump table for switch statement
LDR             R0, [SP,#0x90+var_60]; jumptable 002AD580 cases 0,2,4
MOV             R1, #1
ADD             R0, R0, R6
ADD             R0, R7, R0,LSL#2
ADD             R0, R0, #0x14000
LDR             R4, [R0,#0x184]
ADD             R0, R4, #0xE0
STRB            R1, [R0,#0x34]
LDR             R0, [R4]
MOV             R1, R10
LDR             R2, [R0,#0x34C]
MOV             R0, R4
BLX             R2
LDR             R0, [R4]
MOV             R1, #0
LDR             R2, [R0,#0x350]
MOV             R0, R4
BLX             R2
LDR             R0, [R5]
MOV             R0, R0,LSL#28
CMP             R8, R0,LSR#29
BEQ             loc_2AD618
ADD             R1, R4, #0xA00
LDRH            R0, [R1,#0xA8]
EOR             R0, R0, #8
STRH            R0, [R1,#0xA8]
LDR             R2, [R4]
BIC             R1, R9, R0,LSR#3
MOV             R0, R4
LDR             R2, [R2,#0x368]
BLX             R2
LDR             R2, [R4]
LDR             R0, [SP,#0x90+var_50]
LDR             R2, [R2,#0x280]
LDR             R1, [R0]
MOV             R0, R4
BLX             R2
LDR             R0, [R4]
LDR             R1, [R0,#0x1BC]
MOV             R0, R4
BLX             R1
LDR             R0, [R4]
VMOV.F32        S4, S16
VMOV.F32        S3, S16
VMOV.F32        S2, S16
LDR             R1, [R0,#0x4C]
VMOV.F32        S1, S17
VMOV.F32        S0, S18
MOV             R0, R4
BLX             R1
LDR             R0, [R4]
VMOV.F32        S4, S16
VMOV.F32        S3, S16
VMOV.F32        S2, S16
LDR             R1, [R0,#0x2D0]
VMOV.F32        S1, S17
VMOV.F32        S0, S18
MOV             R0, R4
BLX             R1
LDR             R0, [R4]
VMOV.F32        S4, S16
VMOV.F32        S3, S16
VMOV.F32        S2, S16
LDR             R1, [R0,#0x284]
VMOV.F32        S1, S17
VMOV.F32        S0, S18
MOV             R0, R4
BLX             R1
LDR             R1, [R4,#0x5E0]
ADD             R6, R6, #1
ORR             R1, R1, #0x20 ; ' '
STR             R1, [R4,#0x5E0]
LDR             R1, [R4,#0x5E4]
ORR             R1, R1, #1
STR             R1, [R4,#0x5E4]
LDR             R0, [R5]; jumptable 002AD580 default case, cases 1,3
TST             R0, #1
ADDEQ           R5, R5, #0xC
BEQ             loc_2AD570
ADD             SP, SP, #0x5C ; '\'
VPOP            {D8-D9}
POP             {R4-R11,PC}
