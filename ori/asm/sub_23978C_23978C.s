PUSH            {R4-R8,LR}
MOV             R4, R0
VPUSH           {D8-D9}
SUB             SP, SP, #8
LDRSH           R0, [R0,#0x40]
LDRSH           R1, [R4,#0x42]
VLDR            S16, =1.0
CMP             R0, R1
BGE             loc_2397CC
ADD             R0, R4, #0x40 ; '@'
BL              sub_45AA4C
LDRSH           R0, [R4,#0x40]
LDRSH           R1, [R4,#0x42]
CMP             R0, R1
LDRGE           R0, [R4,#8]
VSTRGE          S16, [R0,#0x360]
LDR             R0, [R4,#8]
LDRSH           R0, [R0]
CMP             R0, #0x15; switch 21 cases
LDRCC           PC, [PC,R0,LSL#2]; switch jump
B               def_2397D8; jumptable 002397D8 default case, cases 1-16,19
DCD loc_239834; jump table for switch statement
LDR             R0, [R4,#4]; jumptable 002397D8 case 0
ADD             R0, R0, #0x2700
LDRB            R0, [R0,#0x72]
CMP             R0, #0
BNE             def_2397D8; jumptable 002397D8 default case, cases 1-16,19
LDR             R0, [R4,#8]
ADD             R0, R0, #0x400
LDRH            R1, [R0,#0xD4]
CMP             R1, #0
SUBNE           R1, R1, #1
STRHNE          R1, [R0,#0xD4]
BNE             def_2397D8; jumptable 002397D8 default case, cases 1-16,19
LDR             R0, =dword_6D1F40
BL              sub_546DB0
LDR             R1, [R4,#8]
MOV             R0, #9
ADD             R1, R1, #0x400
STRH            R0, [R1,#0xD4]
LDR             R0, [R4,#8]
ADD             R0, R0, #0x400
LDRH            R5, [R0,#0xD2]
CMP             R5, #0
BEQ             def_2397D8; jumptable 002397D8 default case, cases 1-16,19
LDR             R0, =dword_6D1F40
MOV             R6, #0
BL              sub_546DB0
MUL             R0, R0, R5
LDR             R2, =byte_68DBBA
MOV             R5, #0
MOV             R3, R0,LSR#16
LDRB            R0, [R2]
CMP             R0, #0
LDRHI           R0, [R4,#8]
BLS             def_2397D8; jumptable 002397D8 default case, cases 1-16,19
ADD             R1, R5, #0x400
ADD             R1, R1, #0xD6
LDRB            R1, [R0,R1]
CMP             R1, #0
BEQ             loc_2398E8
LDRB            R1, [R2]
ADD             R12, R5, #1
UXTH            R5, R12
CMP             R5, R1
BCC             loc_2398BC
B               def_2397D8; jumptable 002397D8 default case, cases 1-16,19
CMP             R6, R3
ADDNE           R1, R6, #1
UXTHNE          R6, R1
BNE             loc_2398D0
LDR             R1, =0x19C98
RSB             R3, R5, R5,LSL#4
LDR             R2, [R4,#4]
ADD             R3, R3, R5,LSL#5
LDR             R0, =dword_6D1F40
ADD             R1, R1, R3,LSL#2
ADD             R6, R2, R1
BL              sub_546DB0
LDR             R2, =unk_68C17A
MOV             R0, R0,LSL#2
RSB             R1, R5, R5,LSL#4
MOV             R0, R0,LSR#16
ADD             R1, R2, R1,LSL#1
ADD             R0, R1, R0,LSL#1
LDRH            R7, [R0,#0xA]
LDR             R0, =dword_6D1F40
BL              sub_546DB0
LDR             R0, [R6]
MOV             R8, #1
VLDR            S0, =2.0
MOV             R3, R8
LDR             R12, [R0,#0x3C]
MOV             R2, #0
MOV             R1, R7
MOV             R0, R6
BLX             R12
LDR             R0, [R4,#8]
ADD             R2, R5, #0x400
ADD             R2, R2, #0xD6
ADD             R0, R0, #0x400
LDRH            R1, [R0,#0xD2]
SUB             R1, R1, #1
STRH            R1, [R0,#0xD2]
LDR             R0, [R4,#8]
STRB            R8, [R0,R2]
B               def_2397D8; jumptable 002397D8 default case, cases 1-16,19
MOV             R0, #1; jumptable 002397D8 case 17
STRH            R0, [R4,#0x40]
STRH            R0, [R4,#0x42]
STRB            R0, [R4,#0x44]
VSTR            S16, [R4,#0x48]
B               def_2397D8; jumptable 002397D8 default case, cases 1-16,19
LDR             R0, [R4,#8]; jumptable 002397D8 case 18
ADD             R0, R0, #6
BL              sub_45AAB8
VMOV.F32        S1, S16
VLDR            S2, =-0.6
LDR             R0, [R4,#8]
VMLA.F32        S1, S0, S2
VSTR            S1, [R0,#0x364]
LDR             R0, [R4,#8]
ADD             R0, R0, #6
BL              sub_45AAB8
VMOV.F32        S1, S16
VLDR            S2, =0.5
LDR             R0, [R4,#8]
VMLA.F32        S1, S0, S2
VSTR            S1, [R0,#0x360]
B               def_2397D8; jumptable 002397D8 default case, cases 1-16,19
ADD             R0, R4, #0x800; jumptable 002397D8 case 20
VLDR            S0, =30.0
VLDR            S2, [R0,#0x2D4]
LDR             R2, =0x43B40000
VLDR            S1, =360.0
VADD.F32        S0, S0, S2
VMOV            R1, S0
VSTR            S0, [R0,#0x2D4]
CMP             R1, R2
VSUBGT.F32      S0, S0, S1
VLDR            S1, =0.71111
VSTRGT          S0, [R0,#0x2D4]
VMUL.F32        S0, S0, S1
BL              sub_464380
VLDR            S2, =0.012
VLDR            S1, =0.4
LDR             R0, [R4,#8]
VMLA.F32        S1, S0, S2
VSTR            S1, [R0,#0x364]
LDR             R0, [R4,#8]; jumptable 002397D8 default case, cases 1-16,19
LDRSH           R0, [R0]
CMP             R0, #0x2C; switch 44 cases
LDRCC           PC, [PC,R0,LSL#2]; switch jump
B               def_239A3C; jumptable 00239A3C default case, cases 5-21,35
DCD loc_239C3C; jump table for switch statement
DCFS 1.0
DCD dword_6D1F40
DCD byte_68DBBA
DCD 0x19C98
DCD unk_68C17A
DCFS 2.0
DCFS -0.6
DCFS 0.5
DCFS 30.0
DCD 0x43B40000
DCFS 360.0
DCFS 0.71111
DCFS 0.012
DCFS 0.4
ADD             R0, R4, #0x40 ; '@'; jumptable 00239A3C case 22
BL              sub_45AAB8
VMOV            R0, S0
CMP             R0, #0x3F000000
BLE             def_239A3C; jumptable 00239A3C default case, cases 5-21,35
ADD             R0, R4, #0x40 ; '@'
BL              sub_45AAB8
VLDR            S2, =0.5
VMOV.F32        S1, S16
VLDR            S3, =2.0
VSUB.F32        S4, S0, S2
LDR             R0, [R4,#8]
VMOV.F32        S0, S1
VMLS.F32        S0, S4, S3
VMLA.F32        S1, S0, S2
VSTR            S1, [R0,#0x360]
B               def_239A3C; jumptable 00239A3C default case, cases 5-21,35
LDRD            R0, R1, [R4,#4]; jumptable 00239A3C case 23
VLDR            S17, =0.5
VLDR            S18, =0.0
ADD             R2, R1, #0x10
VLDR            S0, [R0,#0x10C]
VLDR            S1, [R0,#0x11C]
VLDR            S2, [R0,#0x108]
VLDR            S3, [R0,#0x118]
VSUB.F32        S0, S0, S1
LDR             R0, [R0,#0x4EC]
VSUB.F32        S2, S2, S3
AND             R1, R0, #1
MOV             R0, R2
VMUL.F32        S1, S0, S17
VMUL.F32        S0, S2, S17
VMOV.F32        S2, S18
BL              sub_4A01D8
LDRD            R0, R1, [R4,#4]
ADD             R2, R0, #0x108
VLDM            R2, {S0-S1}
ADD             R2, R0, #0x118
VLDM            R2, {S2-S3}
LDR             R2, [R0,#0x4EC]
ADD             R0, R1, #0x10
VSUB.F32        S0, S0, S2
VSUB.F32        S1, S1, S3
VMOV.F32        S2, S18
AND             R1, R2, #1
VMUL.F32        S0, S0, S17
VMUL.F32        S1, S1, S17
BL              sub_4A01D8
LDR             R1, [R4,#4]
LDR             R0, [R4,#8]
VMOV.F32        S0, S18
ADD             R1, R1, #0x108
ADD             R0, R0, #0x10
BL              sub_4A03F0
LDR             R0, [R4,#8]
VLDR            S0, [R0,#0x360]
VMOV            R1, S0
CMP             R1, #0x3F800000
BLE             def_239A3C; jumptable 00239A3C default case, cases 5-21,35
VLDR            S1, =-0.01
VADD.F32        S0, S0, S1
VSTR            S0, [R0,#0x360]
VMOV            R0, S0
CMP             R0, #0x3F800000
LDR             R0, [R4,#8]
BGT             loc_239D1C
VMOV.F32        S0, S16
B               loc_239D1C
LDRD            R0, R1, [R4,#4]; jumptable 00239A3C cases 0-4,24,25
VLDR            S17, =0.5
VLDR            S18, =0.0
ADD             R2, R1, #0x10
VLDR            S2, [R0,#0x10C]
VLDR            S3, [R0,#0x11C]
VLDR            S0, [R0,#0x108]
VLDR            S1, [R0,#0x118]
VSUB.F32        S2, S2, S3
LDR             R0, [R0,#0x4EC]
VSUB.F32        S0, S0, S1
AND             R1, R0, #1
MOV             R0, R2
VMUL.F32        S1, S2, S17
VMOV.F32        S2, S18
VMUL.F32        S0, S0, S17
BL              sub_4A01D8
LDRD            R0, R1, [R4,#4]
ADD             R2, R0, #0x118
VLDR            S0, [R0,#0x10C]
VLDR            S1, [R0,#0x108]
VLDM            R2, {S2-S3}
LDR             R2, [R0,#0x4EC]
ADD             R0, R1, #0x10
VSUB.F32        S2, S1, S2
VSUB.F32        S0, S0, S3
AND             R1, R2, #1
VMUL.F32        S1, S0, S17
VMUL.F32        S0, S2, S17
VMOV.F32        S2, S18
BL              sub_4A01D8
LDR             R1, [R4,#4]
LDR             R0, [R4,#8]
VMOV.F32        S0, S18
ADD             R1, R1, #0x108
ADD             R0, R0, #0x10
BL              sub_4A03F0
ADD             R0, R4, #0x800
ADD             R0, R0, #0x2CC
BL              sub_45AA4C
LDRSH           R0, [R4,#0x40]
LDRSH           R1, [R4,#0x42]
CMP             R0, R1
BLT             def_239A3C; jumptable 00239A3C default case, cases 5-21,35
LDR             R0, [R4,#8]
VLDR            S0, [R0,#0x360]
VMOV            R1, S0
CMP             R1, #0x3F800000
BLE             def_239A3C; jumptable 00239A3C default case, cases 5-21,35
VLDR            S1, =-0.1
VADD.F32        S0, S0, S1
VSTR            S0, [R0,#0x360]
VMOV            R0, S0
CMP             R0, #0x3F800000
LDR             R0, [R4,#8]
BLE             loc_239C34
VSTR            S0, [R0,#0x360]
B               def_239A3C; jumptable 00239A3C default case, cases 5-21,35
LDR             R0, [R4,#8]; jumptable 00239A3C case 28
LDRSH           R1, [R0,#6]
VMOV            S0, R1
VCVT.F32.S32    S1, S0
VLDR            S0, =2.0
VMOV.F32        S2, S0
VCMPE.F32       S2, S1
VMRS            APSR_nzcv, FPSCR
BLE             loc_239D70; jumptable 00239A3C cases 26,27
VDIV.F32        S2, S1, S0
VMOV.F32        S0, S16
VLDR            S3, =-0.2
VLDR            S1, =0.6
VMLS.F32        S0, S2, S3
VSTR            S0, [R0,#0x360]
VMOV.F32        S0, S16
LDR             R0, [R4,#8]
VMLS.F32        S0, S2, S1
VSTR            S0, [R0,#0x364]
LDR             R1, [R4,#4]; jumptable 00239A3C cases 26,27
LDR             R0, [R4,#8]
VLDR            S0, =0.0
ADD             R1, R1, #0x108
ADD             R0, R0, #0x10
B               loc_239E18
LDRD            R0, R1, [R4,#4]; jumptable 00239A3C cases 29-33,36-43
VLDR            S17, =0.5
VLDR            S18, =0.0
ADD             R2, R1, #0x10
VLDR            S2, [R0,#0x10C]
VLDR            S3, [R0,#0x11C]
VLDR            S0, [R0,#0x108]
VLDR            S1, [R0,#0x118]
VSUB.F32        S2, S2, S3
LDR             R0, [R0,#0x4EC]
VSUB.F32        S0, S0, S1
AND             R1, R0, #1
MOV             R0, R2
VMUL.F32        S1, S2, S17
VMOV.F32        S2, S18
VMUL.F32        S0, S0, S17
BL              sub_4A01D8
LDRD            R0, R1, [R4,#4]
ADD             R2, R0, #0x118
VLDR            S0, [R0,#0x10C]
VLDR            S1, [R0,#0x108]
VLDM            R2, {S2-S3}
LDR             R2, [R0,#0x4EC]
ADD             R0, R1, #0x10
VSUB.F32        S2, S1, S2
VSUB.F32        S0, S0, S3
AND             R1, R2, #1
VMUL.F32        S1, S0, S17
VMUL.F32        S0, S2, S17
VMOV.F32        S2, S18
BL              sub_4A01D8
LDR             R1, [R4,#4]
LDR             R0, [R4,#8]
VMOV.F32        S0, S18
ADD             R1, R1, #0x108
ADD             R0, R0, #0x10
BL              sub_4A03F0
B               def_239A3C; jumptable 00239A3C default case, cases 5-21,35
VLDR            S0, =0.0; jumptable 00239A3C case 34
MOV             R0, #1
VSTR            S0, [SP,#0x30+var_30]
VSTR            S0, [SP,#0x30+var_2C]
LDRB            R2, [R4,#0xAC0]
VLDR            S1, =-64.0
MOV             R1, SP
RSB             R2, R2, #0
ADD             R0, R0, R2,LSL#1
VMOV            S0, R0
ADD             R0, R4, #0x800
ADD             R0, R0, #0x2A8
VCVT.F32.S32    S0, S0
VMUL.F32        S0, S0, S1
BL              sub_463474
ADD             R0, R4, #0x800
VLDR            S1, =36.0
VLDR            S0, [R0,#0x2BC]
VADD.F32        S0, S0, S1
VSTR            S0, [R0,#0x2BC]
LDR             R0, [R4,#8]; jumptable 00239A3C default case, cases 5-21,35
LDRSH           R0, [R0]
CMP             R0, #0x1F
BEQ             loc_239F1C; jumptable 00239EE4 cases 0,4-11
BGT             loc_239EDC
CMP             R0, #0x17
BEQ             loc_239F1C; jumptable 00239EE4 cases 0,4-11
BGT             loc_239EB8
CMP             R0, #4
BHI             def_239EE4; jumptable 00239EE4 default case, cases 1-3
B               loc_239F1C; jumptable 00239EE4 cases 0,4-11
DCFS 0.0
DCFS -0.01
DCFS -0.1
DCFS -0.2
DCFS 0.6
DCFS -64.0
DCFS 36.0
CMP             R0, #0x18
CMPNE           R0, #0x19
BEQ             loc_239F1C; jumptable 00239EE4 cases 0,4-11
CMP             R0, #0x1D
CMPNE           R0, #0x1E
BEQ             loc_239F1C; jumptable 00239EE4 cases 0,4-11
ADD             SP, SP, #8; jumptable 00239EE4 default case, cases 1-3
VPOP            {D8-D9}
POP             {R4-R8,PC}
SUB             R0, R0, #0x20 ; ' '
CMP             R0, #0xC; switch 12 cases
LDRCC           PC, [PC,R0,LSL#2]; switch jump
B               def_239EE4; jumptable 00239EE4 default case, cases 1-3
DCD loc_239F1C; jump table for switch statement
LDRSH           R0, [R4,#0x40]; jumptable 00239EE4 cases 0,4-11
LDRSH           R1, [R4,#0x42]
CMP             R0, R1
BGE             def_239EE4; jumptable 00239EE4 default case, cases 1-3
ADD             R0, R4, #0x40 ; '@'
BL              sub_45AAB8
VMOV            R0, S0
CMP             R0, #0x3F000000
ADD             R0, R4, #0x40 ; '@'
BGE             loc_239F70
BL              sub_45AAB8
VLDR            S1, =180.0
VMUL.F32        S0, S0, S1
VLDR            S1, =0.71111
VMUL.F32        S0, S0, S1
BL              sub_464380
VLDR            S2, [R4,#0x4C]
VLDR            S1, =0.005
VMUL.F32        S0, S0, S2
VMLS.F32        S16, S0, S1
B               loc_239FB4
NOP
BL              sub_45AAB8
VLDR            S17, =0.5
VLDR            S1, =2.0
VLDR            S2, =180.0
VSUB.F32        S0, S0, S17
VMUL.F32        S0, S0, S1
VLDR            S1, =0.71111
VMUL.F32        S0, S0, S2
VMUL.F32        S0, S0, S1
BL              sub_464318
VMOV.F32        S1, S17
VLDR            S3, [R4,#0x4C]
VLDR            S2, =0.005
VMLA.F32        S1, S0, S17
VMUL.F32        S0, S1, S3
VMLS.F32        S16, S0, S2
VSTR            S16, [R4,#0x48]
ADD             SP, SP, #8
VPOP            {D8-D9}
POP             {R4-R8,PC}
