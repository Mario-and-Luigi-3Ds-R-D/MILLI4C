PUSH            {R4-R9,LR}
MOV             R6, R0
MOV             R4, R1
MOV             R8, R2
LDR             R9, =off_6D1648
VPUSH           {D8-D10}
SUB             SP, SP, #0x44
LDR             R0, [R9]
BL              sub_1E4614
MOV             R5, R0
CMP             R8, R5
BNE             loc_1808D8
LDR             R0, [R9]
BL              sub_1E45C8
LDR             R0, [R0,#4]
ADD             R0, R0, #0x4000
ADD             R0, R0, #0xF10
LDR             R0, [R0]
CMP             R0, #0
BEQ             loc_1808D8
LDR             R0, [R5]
LDR             R1, [R0,#0x474]
MOV             R0, R5
BLX             R1
CMP             R0, #0
BNE             loc_18059C
LDR             R0, [R5,#0x4EC]
TST             R0, #1
BEQ             loc_18059C
LDR             R0, [R4,#0x658]
TST             R0, #0x10
BNE             loc_1805F4
LDR             R0, [R5]
LDR             R1, [R0,#0x474]
MOV             R0, R5
BLX             R1
CMP             R0, #2
BNE             loc_1805DC
LDR             R0, [R5,#0x4EC]
TST             R0, #1
BNE             loc_1805DC
LDRB            R0, [R4,#0x75C]
AND             R0, R0, #8
MOVS            R0, R0,LSR#3
BEQ             loc_1805DC
LDR             R0, [R4,#0x4EC]
TST             R0, #1
BEQ             loc_1805F4
LDRB            R0, [R4,#0x75C]
VLDR            S16, =0.0
AND             R0, R0, #7
CMP             R0, #1
BNE             loc_1806B4
B               loc_18064C
LDR             R0, [R4]
LDR             R1, [R0,#0x344]
MOV             R0, R4
BLX             R1
ADD             R4, R4, #0x108
LDM             R4, {R0-R2}
STMEA           SP, {R0-R2}
LDR             R0, [R9]
LDR             R0, [R0,#0xBC]
MOV             R3, #1
MOV             R2, SP
MOV             R1, #0x3D ; '='
BL              sub_168114
LDR             R0, [R9]
NOP
LDR             R0, [R0,#0xBC]
MOV             R1, #1
NOP
BL              sub_164824
NOP
NOP
B               loc_1808F8
ADD             R7, R4, #0x700
LDRH            R0, [R7,#0x58]
SUB             R1, R0, #0xFF00
SUBS            R1, R1, #0xFF
BEQ             loc_1806B4
MOV             R2, #0
MOV             R1, R2
BL              sub_116B34
VCMP.F32        S0, S16
LDR             R0, [R4]
MOV             R1, R8
VMRS            APSR_nzcv, FPSCR
LDR             R2, [R0,#0x340]
MOV             R0, R4
MOVNE           R6, #1
MOVEQ           R6, #0
BLX             R2
VMOV            S0, R6
MOV             R2, #0
LDRH            R0, [R7,#0x58]
MOV             R1, R2
VCVT.F32.U32    S0, S0
BL              sub_145730
NOP
NOP
B               loc_1806C8
LDR             R0, [R4]
MOV             R1, R8
LDR             R2, [R0,#0x340]
MOV             R0, R4
BLX             R2
ADD             R0, R4, #0x400
VLDR            S0, [R4,#0x10C]
VLDR            S1, =0.5
VLDR            S2, [R0,#0x234]
LDR             R1, [R4,#0x108]
LDR             R0, [R4,#0x110]
VMLA.F32        S0, S2, S1
STR             R1, [SP,#0x78+var_64]
VSTR            S0, [SP,#0x78+var_60]
STR             R0, [SP,#0x78+var_5C]
LDR             R0, [R9]
LDR             R0, [R0,#0xBC]
MOV             R3, #1
ADD             R2, SP, #0x78+var_64
MOV             R1, #0x3D ; '='
BL              sub_168114
LDR             R0, [R9]
NOP
LDR             R0, [R0,#0xBC]
MOV             R1, #0
NOP
BL              sub_164824
LDR             R0, [R4]
ADD             R2, R4, #0x164
MOV             R1, #0
LDR             R3, [R0,#0xF0]
MOV             R0, R4
BLX             R3
LDR             R0, [R4]
LDR             R1, [R0,#0x220]
MOV             R0, R4
BLX             R1
VLDR            S0, [R4,#0x108]
VLDR            S1, [R5,#0x108]
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
MOVGT           R0, #1
MOVLE           R0, #0xFFFFFFFF
VMOV            S0, R0
LDR             R0, =dword_6D1F40
VCVT.F32.S32    S17, S0
BL              sub_546DB0
MOV             R1, #0x258
MUL             R0, R0, R1
MOV             R0, R0,LSR#16
ADD             R0, R0, #0xC8
VMOV            S0, R0
LDR             R0, =dword_6D1F40
VCVT.F32.U32    S0, S0
VMUL.F32        S17, S0, S17
BL              sub_546DB0
MOV             R1, #0x17C
VSTR            S17, [SP,#0x78+var_58]
MUL             R0, R0, R1
VSTR            S16, [SP,#0x78+var_54]
MOV             R0, R0,LSR#16
ADD             R0, R0, #0x1F4
VMOV            S0, R0
LDR             R0, =dword_6D1F40
VCVT.F32.U32    S0, S0
VSTR            S0, [SP,#0x78+var_50]
BL              sub_546DB0
ADD             R0, R0, R0,LSL#2
VLDR            S17, =40.0
MOV             R0, R0,LSL#5
VLDR            S20, =-300.0
MOV             R0, R0,LSR#16
ADD             R0, R0, #0x78 ; 'x'
VMOV            S0, R0
VMOV.F32        S1, S17
MOV             R5, #0
VCVT.F32.U32    S19, S0
VMOV.F32        S0, S20
VMOV.F32        S2, S19
BL              sub_589698
VMOV.F32        S18, S0
VMOV.F32        S1, S17
VMOV.F32        S2, S19
VMOV.F32        S0, S20
BL              sub_589658
ADD             R1, SP, #0x78+var_74
MOV             R6, #1
STM             R1, {R5,R6}
ADD             R0, R4, #0x164
STR             R0, [SP,#0x78+var_68]
STR             R5, [SP,#0x78+var_78]
STR             R6, [SP,#0x78+var_6C]
LDR             R0, [R4]
VMOV.F32        S17, S0
MOV             R3, #0x28 ; '('
ADD             R2, SP, #0x78+var_58
LDR             R12, [R0,#0x1E8]
MOV             R1, R6
MOV             R0, R4
BLX             R12
LDR             R0, [R4]
VNEG.F32        S1, S17
VMOV.F32        S0, S18
VLDR            S2, =-1.0
LDR             R1, [R0,#0x214]
MOV             R0, R4
BLX             R1
VMOV.F32        S0, S16
VLDR            S1, =137510.0
ADD             R0, R4, #0x400
ADD             R0, R0, #0x28 ; '('
ADD             R3, SP, #0x78+var_40
VSTR            S0, [SP,#0x78+var_4C]
VSTR            S0, [SP,#0x78+var_48]
VSTR            S1, [SP,#0x78+var_44]
VLDR            S0, =3437.7
VSTR            S16, [SP,#0x78+var_40]
VSTR            S16, [SP,#0x78+var_3C]
VSTR            S0, [SP,#0x78+var_38]
STR             R0, [SP,#0x78+var_74]
STR             R6, [SP,#0x78+var_78]
LDR             R0, [R4]
ADD             R2, SP, #0x78+var_4C
MOV             R1, #1
LDR             R12, [R0,#0x18C]
MOV             R0, R4
BLX             R12
B               loc_1808F8
DCD off_6D1648
DCFS 0.0
DCFS 0.5
DCD dword_6D1F40
DCFS 40.0
DCFS -300.0
DCFS -1.0
DCFS 137510.0
DCFS 3437.7
LDR             R0, [R9]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x15000
ADD             R0, R0, #0x13C
BL              sub_19A120
CMP             R0, #0
NOP
BEQ             loc_180908
ADD             SP, SP, #0x44 ; 'D'
MOV             R0, #0
VPOP            {D8-D10}
POP             {R4-R9,PC}
ADD             SP, SP, #0x44 ; 'D'
MOV             R2, R8
VPOP            {D8-D10}
MOV             R1, R4
MOV             R0, R6
POP             {R4-R9,LR}
NOP
