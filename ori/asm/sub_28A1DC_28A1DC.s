PUSH            {R4-R8,LR}
MOV             R4, R0
ADD             R6, R4, #0x400
ADD             R5, R4, #0x400
VPUSH           {D8-D10}
SUB             SP, SP, #0x28
MOV             R7, #1
ADD             R6, R6, #0x11
LDRB            R1, [R0,#0x410]
VLDR            S17, =0.000015259
VLDR            S16, =0.0
CMP             R1, #7; switch 7 cases
MOV             R0, #4
ADD             R5, R5, #0x44 ; 'D'
LDRCC           PC, [PC,R1,LSL#2]; switch jump
B               def_28A214; jumptable 0028A214 default case, cases 0,4
DCD def_28A214; jump table for switch statement
ADD             R0, R4, #0x1F8; jumptable 0028A214 case 1
BL              sub_5F19B8
CMP             R0, #0
MOVEQ           R0, #2
STRBEQ          R0, [R4,#0x410]
ADD             SP, SP, #0x28 ; '('; jumptable 0028A214 default case, cases 0,4
VPOP            {D8-D10}
POP             {R4-R8,PC}
ADD             SP, SP, #0x28 ; '('; jumptable 0028A214 case 2
MOV             R0, R4
VPOP            {D8-D10}
POP             {R4-R8,LR}
B               sub_289DE4
MOV             R0, R4; jumptable 0028A214 case 6
BL              sub_289DE4
LDR             R0, [R4,#0x444]
VLDR            S0, [R4,#0x44]
VLDR            S1, [R0,#0x11C]
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BHI             def_28A214; jumptable 0028A214 default case, cases 0,4
LDR             R0, [R4,#0x448]
LDR             R1, =0x3FC90FDB
LDR             R0, [R0,#4]
CMP             R1, R0
BGT             def_28A214; jumptable 0028A214 default case, cases 0,4
LDR             R0, [R4,#0x40]
LDR             R2, [R4,#0x48]
VMOV            R1, S0
STMEA           SP, {R0-R2}
MOV             R1, SP
VSTR            S16, [SP,#0x58+var_54]
ADD             R0, R4, #0x1C
BL              sub_14E984
MOV             R0, R4
NOP
BL              sub_289C2C
LDR             R5, [R4,#0x44C]
LDR             R6, =off_6CE970
LDRB            R0, [R5,#1]
CMP             R0, #0
BNE             loc_28A2F4
LDR             R0, [R6]
LDR             R1, =0x1AE
MOV             R2, #0
BL              sub_52F9B4
STRB            R7, [R5,#1]
LDR             R5, [R4,#0x44C]
ADD             R4, R4, #0x1C
LDRB            R0, [R5]
CMP             R0, #0
BNE             def_28A214; jumptable 0028A214 default case, cases 0,4
LDR             R8, =0xFFE683CC
LDR             R0, [R6]
LDR             R2, =0x30214
MOV             R3, #0
MOV             R1, R4
SUB             R0, R0, R8
BL              sub_503720
LDR             R0, [R6]
LDR             R2, =0x30215
MOV             R3, #0
MOV             R1, R4
SUB             R0, R0, R8
BL              sub_503720
STRB            R7, [R5]
ADD             SP, SP, #0x28 ; '('
VPOP            {D8-D10}
POP             {R4-R8,PC}
LDRB            R1, [R4,#0x411]; jumptable 0028A214 case 3
CMP             R1, #0
BEQ             loc_28A384
CMP             R1, #1
BNE             def_28A214; jumptable 0028A214 default case, cases 0,4
ADD             R1, R4, #0x370
VLDM            R1, {S0-S1}
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BLT             def_28A214; jumptable 0028A214 default case, cases 0,4
STRB            R0, [R4,#0x410]
ADD             SP, SP, #0x28 ; '('
VPOP            {D8-D10}
POP             {R4-R8,PC}
ADD             R0, R4, #0x3B8
VLDM            R0, {S0-S1}
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BLT             def_28A214; jumptable 0028A214 default case, cases 0,4
LDR             R0, [R4,#0x444]
LDR             R1, =dword_6D1F40
VLDR            S16, [R0,#0x2C]
VLDR            S18, [R0,#0x30]
MOV             R0, R1
BL              sub_546DB0
VMOV            S0, R0
VSUB.F32        S1, S18, S16
MOV             R0, #0xFFFFFF00
MOV             R1, SP
REV             R0, R0
VCVT.F32.U32    S0, S0
STR             R0, [SP,#0x58+var_58]
ADD             R0, R4, #0x348
VMUL.F32        S0, S0, S17
VMUL.F32        S0, S0, S1
VADD.F32        S0, S16, S0
BL              sub_4E665C
STRB            R7, [R4,#0x411]
ADD             SP, SP, #0x28 ; '('
VPOP            {D8-D10}
POP             {R4-R8,PC}
LDRB            R1, [R4,#0x411]; jumptable 0028A214 case 5
CMP             R1, #0
BEQ             loc_28A424
CMP             R1, #1
BEQ             loc_28A600
CMP             R1, #2
BNE             def_28A214; jumptable 0028A214 default case, cases 0,4
ADD             R1, R4, #0x370
VLDM            R1, {S0-S1}
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BLT             def_28A214; jumptable 0028A214 default case, cases 0,4
B               loc_28A374
MOV             R0, R4
BL              sub_289DE4
ADD             R0, R4, #0x3B8
VLDM            R0, {S0-S1}
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BLT             def_28A214; jumptable 0028A214 default case, cases 0,4
LDRB            R0, [R4,#0x412]
LDR             R1, =dword_6D1F40
STRB            R0, [R4,#0x112]
LDR             R0, [R4,#0x444]
ADD             R0, R0, #0xC0
VLDM            R0, {S18-S19}
MOV             R0, R1
BL              sub_546DB0
VMOV            S0, R0
VSUB.F32        S1, S19, S18
LDR             R0, [R5]
LDR             R1, =dword_6D1F40
ADD             R0, R0, #0xC8
VCVT.F32.U32    S0, S0
VLDM            R0, {S19-S20}
MOV             R0, R1
VMUL.F32        S0, S0, S17
VMUL.F32        S0, S0, S1
VADD.F32        S18, S18, S0
BL              sub_546DB0
VMOV            S0, R0
VSUB.F32        S1, S20, S19
VSTR            S16, [SP,#0x58+var_58]
ADD             R0, SP, #0x58+var_54
VCVT.F32.U32    S0, S0
VMUL.F32        S0, S0, S17
VLDR            S17, =1000.0
VSTM            R0, {S16-S17}
VMUL.F32        S0, S0, S1
VLDR            S1, =0.017453
VADD.F32        S0, S19, S0
VMUL.F32        S0, S0, S1
VLDR            S1, =40.744
VMUL.F32        S20, S0, S1
VMOV.F32        S0, S20
BL              sub_464318
VMOV.F32        S19, S0
VMOV.F32        S0, S20
BL              sub_464380
VMUL.F32        S1, S16, S19
VMUL.F32        S2, S19, S17
VMLA.F32        S1, S0, S17
VMLS.F32        S2, S16, S0
VSTR            S1, [SP,#0x58+var_58]
VSTR            S2, [SP,#0x58+var_50]
LDR             R0, [R5]
ADD             R0, R0, #0xD0
VLDM            R0, {S0-S1}
LDR             R0, =dword_6D1F40
BL              sub_47EAA4
VLDR            S17, =1.0
ADD             R2, SP, #0x58+var_4C
VMOV.F32        S1, S0
VSTM            R2, {S16-S17}
VMOV.F32        S2, S18
VSTR            S16, [SP,#0x58+var_44]
VLDR            S0, [R4,#0x44]
MOV             R1, #1
ADD             R0, R4, #0x1F8
VNEG.F32        S0, S0
BL              sub_5A299C
VMOV.F32        S0, S18
MOV             R2, SP
MOV             R1, #0
ADD             R0, R4, #0x1F8
BL              sub_5A25D0
LDR             R0, [R4,#0x220]
VLDR            S0, [R0,#0x38]
LDR             R0, [R5]
VLDR            S1, [R0,#0xD8]
VSTR            S16, [R4,#0x3B8]
ADD             R0, R0, #0x128
VMUL.F32        S0, S1, S0
VSTR            S0, [R4,#0x3BC]
VLDM            R0, {S0-S1}
LDR             R0, =dword_6D1F40
BL              sub_47EAA4
VMOV.F32        S18, S0
LDR             R0, =dword_6D1F40
BL              sub_546DB0
TST             R0, #1
VLDREQ          S17, =-1.0
VLDR            S0, =36000.0
VSTR            S16, [SP,#0x58+var_40]
VSTR            S16, [SP,#0x58+var_3C]
VMUL.F32        S0, S17, S0
ADD             R1, SP, #0x58+var_40
ADD             R0, R4, #0x11C
VSTR            S0, [SP,#0x58+var_38]
VMOV.F32        S0, S18
BL              sub_5A29E4
LDRB            R0, [R4,#0x411]
ADD             R0, R0, #1
STRB            R0, [R6]
ADD             SP, SP, #0x28 ; '('
VPOP            {D8-D10}
POP             {R4-R8,PC}
DCFS 0.000015259
DCFS 0.0
DCD 0x3FC90FDB
DCD off_6CE970
DCD 0x1AE
DCD 0x30214
DCD 0xFFE683CC
DCD 0x30215
DCD dword_6D1F40
DCFS 0.017453
DCFS 1000.0
DCFS 40.744
DCFS 1.0
DCFS -1.0
DCFS 36000.0
ADD             R0, R4, #0x3B8
VLDM            R0, {S0-S1}
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BLT             def_28A214; jumptable 0028A214 default case, cases 0,4
LDR             R0, [R4,#0x220]
MOV             R1, SP
VLDR            S0, [R0,#0x38]
VLDR            S1, [R0,#0x34]
MOV             R0, #0xFFFFFF00
VSUB.F32        S0, S0, S1
REV             R0, R0
STR             R0, [SP,#0x58+var_58]
ADD             R0, R4, #0x348
BL              sub_4E665C
LDRB            R0, [R4,#0x411]
ADD             R0, R0, #1
STRB            R0, [R6]
ADD             SP, SP, #0x28 ; '('
VPOP            {D8-D10}
POP             {R4-R8,PC}
