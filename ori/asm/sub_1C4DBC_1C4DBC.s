PUSH            {R4-R11,LR}
MOV             R5, R0
ADD             R4, R0, #0x400
MOV             R9, #0
ADD             R4, R4, #0x94
LDR             R11, =off_6CE118
VPUSH           {D8-D10}
SUB             SP, SP, #0x3C
LDRB            R0, [R0,#0x494]
VLDR            S16, =1.0
CMP             R0, #0
BEQ             loc_1C4E3C
ADD             R0, R4, #0x3A0
VLDM            R0, {S0-S1}
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
BLE             loc_1C4E30
LDR             R0, [R11]
LDR             R0, [R0,#8]
VLDR            S0, [R0,#0x174]
ADD             R0, R4, #0x3F8
BL              sub_5E0C80
ADD             R0, SP, #0x78+var_74
ADD             R1, SP, #0x78+var_74
VSTM            R0, {S0-S2}
VMOV.F32        S0, S16
ADD             R0, R4, #0x1E0
BL              sub_5A367C
B               loc_1C4E3C
ADD             R0, R4, #4
STRB            R9, [R4]
BL              sub_528B1C
LDR             R8, =off_6CE970
VLDR            S17, =0.0039062
LDR             R0, [R8]
ADD             R0, R0, #0x190000
ADD             R0, R0, #0xDE00
LDRSH           R0, [R0,#(loc_19DEE0+2 - 0x19DE00)]
VMOV            S0, R0
ADD             R0, R5, #0x400
ADD             R0, R0, #0x24 ; '$'
STR             R0, [SP,#0x78+var_5C]
VCVT.F32.S32    S0, S0
VMUL.F32        S0, S0, S17
BL              sub_5A176C
LDR             R0, [R8]
ADD             R0, R0, #0x190000
ADD             R0, R0, #0xDE00
LDRSH           R0, [R0,#(loc_19DEE0+2 - 0x19DE00)]
VMOV            S0, R0
ADD             R0, R5, #0x400
ADD             R0, R0, #0x58 ; 'X'
VCVT.F32.S32    S0, S0
VMUL.F32        S0, S0, S17
BL              sub_5A176C
LDRB            R0, [R5,#0x410]
VLDR            S19, =40.744
VLDR            S18, =0.0
CMP             R0, #8; switch 8 cases
ADD             R4, R5, #0x400
LDRCC           PC, [PC,R0,LSL#2]; switch jump
B               def_1C4EAC; jumptable 001C4EAC default case, cases 0,3,5
DCD def_1C4EAC; jump table for switch statement
ADD             R0, R5, #0x1DC; jumptable 001C4EAC case 7
BL              sub_5F19B8
CMP             R0, #0
NOP
BNE             def_1C4EAC; jumptable 001C4EAC default case, cases 0,3,5
MOV             R0, #6
STRB            R0, [R5,#0x410]
LDR             R0, [R5,#0x8A4]
MOV             R3, #0x100
MOV             R2, #0
AND             R1, R0, #0xFF
MOV             R0, R5
BL              sub_14C548
LDR             R6, =dword_6D1F40
MOV             R0, R5
BL              sub_5C5724
MOV             R4, R0
MOV             R0, R6
BL              sub_546DB0
MUL             R0, R0, R4
ADD             SP, SP, #0x3C ; '<'
VPOP            {D8-D10}
MOV             R1, R0,LSR#16
MOV             R0, R5
POP             {R4-R11,LR}
B               sub_14F01C
LDR             R1, [R11]; jumptable 001C4EAC case 6
LDR             R0, =0x13CC
ADD             R6, R1, #0xC00
ADD             R6, R6, #0x29C
LDR             R0, [R0,R1]
STR             R0, [R4,#0x14]
MOV             R0, R5
BL              sub_1C45E4
MOV             R0, R5
NOP
BL              sub_5C68A8
VMOV.F32        S16, S0
ADD             R1, SP, #0x78+var_48
MOV             R0, R6
BL              sub_5D4A98
ADD             R1, SP, #0x78+var_74
ADD             R0, SP, #0x78+var_48
BL              sub_5D48BC
VLDR            S0, [R4,#8]
ADD             R0, SP, #0x78+var_48
BL              sub_5D491C
VSTR            S0, [R4,#0x1C]
LDR             R0, [R11]
LDRH            R1, [R4,#0xC]
VLDR            S0, [R4,#0x18]
LDR             R0, [R0,#0xEAC]
RSB             R2, R1, R1,LSL#3
RSB             R1, R2, R1,LSL#6
ADD             R0, R0, R1,LSL#2
VLDR            S1, [R0,#0xC]
VADD.F32        S0, S1, S0
VMUL.F32        S17, S0, S19
VMOV.F32        S0, S17
BL              sub_464318
VLDR            S1, [R4,#0x1C]
VMUL.F32        S19, S0, S1
VMOV.F32        S0, S17
BL              sub_464380
VLDR            S1, [R4,#0x1C]
VSTR            S19, [SP,#0x78+var_5C]
VSTR            S18, [SP,#0x78+var_58]
VMUL.F32        S0, S0, S1
ADD             R1, SP, #0x78+var_5C
MOV             R0, R5
VSTR            S0, [SP,#0x78+var_54]
BL              sub_1C5594
VLDR            S0, [SP,#0x78+var_74]
VLDR            S1, [SP,#0x78+var_5C]
VADD.F32        S0, S0, S1
VSTR            S0, [SP,#0x78+var_74]
VLDR            S0, [SP,#0x78+var_70]
VLDR            S1, [SP,#0x78+var_58]
VADD.F32        S0, S0, S1
VSTR            S0, [SP,#0x78+var_70]
VLDR            S0, [SP,#0x78+var_6C]
VLDR            S1, [SP,#0x78+var_54]
VADD.F32        S0, S0, S1
VSTR            S0, [SP,#0x78+var_6C]
VMOV.F32        S0, S16
VCMPE.F32       S0, S18
VMRS            APSR_nzcv, FPSCR
BCS             loc_1C5158
VMOV.F32        S0, S18
B               loc_1C5158
LDR             R1, [R11]; jumptable 001C4EAC case 1
LDR             R0, =0x13CC
ADD             R6, R1, #0xC00
ADD             R6, R6, #0x29C
LDR             R0, [R0,R1]
STR             R0, [R4,#0x14]
MOV             R0, R5
BL              sub_1C45E4
LDR             R1, [R8]
ADD             R0, R5, #0x490
ADD             R1, R1, #0x190000
ADD             R1, R1, #0xDE00
LDRH            R2, [R0,#2]
LDRSH           R1, [R1,#(loc_19DEE0+2 - 0x19DE00)]
VMOV            S2, R2
VMOV            S0, R1
LDRH            R1, [R0]
VMOV            S1, R1
VCVT.F32.U32    S2, S2
VCVT.F32.S32    S0, S0
VCVT.F32.U32    S1, S1
VMUL.F32        S0, S0, S17
VMLA.F32        S1, S2, S0
VCVT.U32.F32    S0, S1
VMOV            R1, S0
STRH            R1, [R0]
MOV             R0, R5
BL              sub_5C68A8
VMOV.F32        S16, S0
ADD             R1, SP, #0x78+var_48
MOV             R0, R6
BL              sub_5D4A98
ADD             R1, SP, #0x78+var_74
ADD             R0, SP, #0x78+var_48
BL              sub_5D48BC
VLDR            S0, [R4,#8]
ADD             R0, SP, #0x78+var_48
BL              sub_5D491C
VSTR            S0, [R4,#0x1C]
VLDR            S0, [R4,#0x18]
VMUL.F32        S17, S0, S19
VMOV.F32        S0, S17
BL              sub_464318
VLDR            S1, [R4,#0x1C]
VMUL.F32        S19, S0, S1
VMOV.F32        S0, S17
BL              sub_464380
VLDR            S1, [R4,#0x1C]
VSTR            S19, [SP,#0x78+var_5C]
VSTR            S18, [SP,#0x78+var_58]
VMUL.F32        S0, S0, S1
ADD             R1, SP, #0x78+var_5C
MOV             R0, R5
VSTR            S0, [SP,#0x78+var_54]
BL              sub_1C5594
VLDR            S0, [SP,#0x78+var_74]
VLDR            S1, [SP,#0x78+var_5C]
VADD.F32        S0, S0, S1
VSTR            S0, [SP,#0x78+var_74]
VLDR            S0, [SP,#0x78+var_70]
VLDR            S1, [SP,#0x78+var_58]
VADD.F32        S0, S0, S1
VSTR            S0, [SP,#0x78+var_70]
VLDR            S0, [SP,#0x78+var_6C]
VLDR            S1, [SP,#0x78+var_54]
VADD.F32        S0, S0, S1
VSTR            S0, [SP,#0x78+var_6C]
VMOV.F32        S0, S16
VCMPE.F32       S0, S18
VMRS            APSR_nzcv, FPSCR
BCC             loc_1C5034
ADD             R0, R6, #0x400
VSTR            S0, [SP,#0x78+var_70]
VLDR            S1, [R0,#0x14]
ADD             R1, SP, #0x78+var_74
MOV             R0, R5
VADD.F32        S0, S0, S1
VSTR            S0, [SP,#0x78+var_70]
BL              sub_14E984
ADD             SP, SP, #0x3C ; '<'; jumptable 001C4EAC default case, cases 0,3,5
VPOP            {D8-D10}
POP             {R4-R11,PC}
DCFS 1.0
DCD off_6CE118
DCD off_6CE970
DCFS 0.0039062
DCFS 40.744
DCFS 0.0
DCD dword_6D1F40
DCD 0x13CC; float
ADD             R0, R5, #0x39C; jumptable 001C4EAC case 2
ADD             R7, R5, #0x400
VLDM            R0, {S0-S1}
MOV             R10, #1
ADD             R7, R7, #0x8C
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BLT             loc_1C52A4
LDR             R0, [R11]
LDR             R1, =0x13CC
LDR             R1, [R1,R0]
STR             R1, [R4,#0x14]
LDR             R1, [R0,#8]
LDR             R1, [R1,#0x34C]
CMP             R1, #0
BEQ             loc_1C5208
CMP             R1, #1
BNE             loc_1C52A4
VLDR            S0, [R4,#0x18]
VMOV            R1, S0
VCMPE.F32       S0, S18
VMRS            APSR_nzcv, FPSCR
LDRGE           R2, =0x40490FDB
CMPGE           R2, R1
BLT             loc_1C52A4
NOP
BL              sub_3D7660
LDR             R4, [R5,#0x48C]
LDR             R3, [R8]
LDR             R1, =0x301C4
MOV             R2, #0
LDR             R0, [R4,#0xC]
LDR             R0, [R0,#0x18]
LDRH            R0, [R0,#0x10]
VMOV            S0, R0
LDR             R0, =0xFFE683CC
SUB             R0, R3, R0
VCVT.F32.U32    S0, S0
BL              sub_503414
MOV             R0, #0x7F
STMEA           SP, {R0,R10}
LDR             R0, [R11]
MOV             R2, #0x8D; int
MOV             R1, R4; int
LDR             R0, [R0,#8]
LDR             R3, [R0,#0x190]; int
ADD             R0, SP, #0x78+var_48; int
BL              sub_588D84
LDR             R1, [R4,#0xC]
LDR             R0, [R8]
ADD             R3, SP, #0x78+var_64
LDR             R2, [R1,#0x18]
VSTR            S18, [SP,#0x78+var_64]
VSTR            S18, [SP,#0x78+var_60]
VSTR            S16, [SP,#0x78+var_5C]
MOV             R1, #0x8C
STR             R9, [SP,#0x78+var_78]
BL              sub_52AE88
MOV             R0, R5
NOP
BL              sub_1C4BF4
ADD             SP, SP, #0x3C ; '<'
VPOP            {D8-D10}
POP             {R4-R11,PC}
LDR             R0, [R11]
ADD             R6, R0, #0xC00
ADD             R6, R6, #0x29C
MOV             R0, R5
BL              sub_1C45E4
LDR             R1, [R8]
ADD             R0, R5, #0x490
ADD             R1, R1, #0x190000
ADD             R1, R1, #0xDE00
LDRH            R2, [R0,#2]
LDRSH           R1, [R1,#(loc_19DEE0+2 - 0x19DE00)]
VMOV            S0, R1
LDRH            R1, [R0]
VMOV            S2, R1
VCVT.F32.S32    S0, S0
VCVT.F32.U32    S2, S2
VMUL.F32        S1, S0, S17
VMOV            S0, R2
VCVT.F32.U32    S0, S0
VMLA.F32        S2, S0, S1
VCVT.U32.F32    S0, S2
VMOV            R1, S0
STRH            R1, [R0]
MOV             R0, R5
BL              sub_5C68A8
VMOV.F32        S16, S0
ADD             R1, SP, #0x78+var_54
MOV             R0, R6
BL              sub_5D4A98
ADD             R1, SP, #0x78+var_70
ADD             R0, SP, #0x78+var_54
BL              sub_5D48BC
VLDR            S0, [R4,#8]
ADD             R0, SP, #0x78+var_54
BL              sub_5D491C
VMOV.F32        S17, S0
VLDR            S0, [R4,#0x18]
VMUL.F32        S0, S0, S19
BL              sub_464380
VLDR            S1, [SP,#0x78+var_68]
VMLA.F32        S1, S0, S17
VSTR            S1, [SP,#0x78+var_68]
VLDR            S0, [R4,#0x18]
VMUL.F32        S0, S0, S19
BL              sub_464318
VLDR            S1, [SP,#0x78+var_70]
ADD             R0, R6, #0x400
ADD             R2, SP, #0x78+var_70
VMLA.F32        S1, S0, S17
VMOV.F32        S0, S16
ADD             R1, SP, #0x78+var_70
VCMPE.F32       S0, S18
VSTR            S1, [SP,#0x78+var_70]
VMRS            APSR_nzcv, FPSCR
VMOVCC.F32      S0, S18
VSTR            S0, [SP,#0x78+var_6C]
VLDR            S2, [R0,#0x14]
VADD.F32        S5, S0, S2
VSTR            S5, [SP,#0x78+var_6C]
LDR             R0, [R5,#0x48C]
VLDR            S6, [SP,#0x78+var_68]
LDR             R0, [R0,#0xC]
LDR             R0, [R0,#0x18]
VLDR            S3, [R0,#0x2C]
VLDR            S2, [R0,#0x24]
VLDR            S0, [R0,#0x28]
VSUB.F32        S4, S3, S6
VSUB.F32        S3, S2, S1
VSUB.F32        S2, S0, S5
VLDR            S0, [R4,#0x5C]
MOV             R0, R5
VMUL.F32        S3, S3, S0
VMUL.F32        S2, S2, S0
VMUL.F32        S0, S4, S0
VADD.F32        S1, S1, S3
VADD.F32        S2, S5, S2
VADD.F32        S0, S6, S0
VSTR            S0, [SP,#0x78+var_68]
VSTM            R2, {S1-S2}
BL              sub_14E984
LDR             R0, [R7]
VLDR            S0, [R4,#0x5C]
VLDR            S1, [R0,#0x54]
VSUB.F32        S1, S1, S17
VMLA.F32        S17, S1, S0
VSTR            S17, [R4,#0x1C]
LDRB            R0, [R0,#0x10]
CMP             R0, #2
CMPNE           R0, #3
BNE             def_1C4EAC; jumptable 001C4EAC default case, cases 0,3,5
LDR             R0, [R5,#0x400]
CMP             R0, #0
BEQ             loc_1C5420
BL              sub_533330
STR             R9, [R4]
ADD             R0, R5, #0x1DC
BL              sub_5A26D0
MOV             R2, #0
MOV             R3, #0x100
MOV             R1, R2
MOV             R0, R5
BL              sub_14C430
STRB            R10, [R5,#0x410]
LDR             R0, [SP,#0x78+var_5C]
LDR             R5, [SP,#0x78+var_6C]
BL              sub_5A18EC
STR             R5, [R4,#0x30]
STR             R5, [R4,#0x28]
LDR             R1, [R11]
LDRH            R0, [R4,#0xC]
LDR             R1, [R1,#0xEAC]
RSB             R2, R0, R0,LSL#3
RSB             R0, R2, R0,LSL#6
ADD             R4, R1, R0,LSL#2
LDR             R0, [R4,#0x14]
CMP             R0, #0
BEQ             loc_1C5484
BL              sub_5C8A74
VLDR            S1, [R4,#0x50]
VADD.F32        S18, S0, S1
LDR             R0, [R11]
LDR             R0, [R0,#8]
VLDR            S1, [R0,#0x338]
VMOV.F32        S0, S18
LDR             R0, [SP,#0x78+var_5C]
BL              sub_5A12F8
ADD             SP, SP, #0x3C ; '<'
VPOP            {D8-D10}
POP             {R4-R11,PC}
ADD             R0, R5, #0x39C; jumptable 001C4EAC case 4
VLDM            R0, {S0-S1}
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
MOVCS           R0, #5
STRBCS          R0, [R5,#0x410]
BCS             def_1C4EAC; jumptable 001C4EAC default case, cases 0,3,5
MOV             R0, R5
BL              sub_1C45E4
LDR             R0, [R5,#0x204]
VLDR            S1, [R0,#0x40]
LDR             R0, [R8]
VCMPE.F32       S1, S18
ADD             R0, R0, #0x190000
ADD             R0, R0, #0xDE00
LDRSH           R0, [R0,#(loc_19DEE0+2 - 0x19DE00)]
VMRS            APSR_nzcv, FPSCR
VLDR            S2, [R4,#0x1C]
VMOV            S0, R0
VNEGCC.F32      S1, S1
VMOV.F32        S21, S16
VCVT.F32.S32    S0, S0
VMUL.F32        S0, S0, S17
VMLA.F32        S2, S1, S0
VSTR            S2, [R4,#0x1C]
VLDR            S0, [R4,#0x18]
VLDR            S17, [R5,#0x1E0]
VLDR            S20, [R5,#0x1E8]
VMUL.F32        S0, S0, S19
VMOV.F32        S19, S0
BL              sub_464318
VLDR            S1, [R4,#0x1C]
VMUL.F32        S16, S0, S1
VMOV.F32        S0, S19
BL              sub_464380
VLDR            S1, [R4,#0x1C]
LDR             R0, [R11]
ADD             R1, SP, #0x78+var_68
VMUL.F32        S0, S0, S1
ADD             R0, R0, #0x1000
ADD             R0, R0, #0x2AC
VLDR            S1, [R0]
VLDR            S2, [R0,#8]
ADD             R0, R5, #0x1DC
VADD.F32        S1, S16, S1
VADD.F32        S0, S0, S2
VSUB.F32        S1, S1, S17
VSUB.F32        S0, S0, S20
VSTR            S1, [SP,#0x78+var_68]
VSTR            S18, [SP,#0x78+var_64]
VSTR            S0, [SP,#0x78+var_60]
VMOV.F32        S0, S21
BL              sub_5A367C
ADD             SP, SP, #0x3C ; '<'
VPOP            {D8-D10}
POP             {R4-R11,PC}
