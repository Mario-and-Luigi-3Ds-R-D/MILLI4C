PUSH            {R4-R10,LR}
MOV             R4, R0
LDR             R8, =off_6D1648
VPUSH           {D8}
SUB             SP, SP, #0x68
LDR             R0, [R8]
LDR             R1, [R0,#0xC4]
LDR             R1, [R1,#4]
LDR             R7, [R1,#4]
LDR             R0, [R0,#0xBC]
LDR             R1, [R0]
LDR             R3, =0xF0001FFB
ADD             R2, SP, #0x90+var_80
LDR             R12, [R1,#0x74]
ADD             R1, SP, #0x90+var_2C
BLX             R12
LDR             R0, [R4,#0x1B4]
MOV             R9, #0
ADD             R6, R4, #0x100
TST             R0, #2
BNE             loc_19C8C8
BIC             R0, R0, #0xC000
STR             R0, [R4,#0x1B4]
LDR             R0, [R8]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x17800
ADD             R0, R0, #0x2C8
ADD             R5, R4, #0xF8
LDRB            R0, [R0]
LDR             R1, =dword_6ED9B8
STRH            R0, [R6,#0xB0]
LDR             R0, [R4,#0xF8]
LDR             R2, [R0,#0x28]
MOV             R0, R5
BLX             R2
LDR             R0, [R8]
LDR             R0, [R0,#0xBC]
ADD             R1, R0, #0x13800
LDR             R0, [R5]
ADD             R1, R1, #0x374
LDR             R2, [R0,#0x2C]
MOV             R0, R5
BLX             R2
LDR             R0, [R8]
LDR             R0, [R0,#0xBC]
LDR             R1, [R5,#0xA4]
ADD             R0, R0, #0x13800
ADD             R0, R0, #0x368
CMP             R1, #0
ADDNE           R1, R1, #0x104
BL              sub_2018EC
LDR             R1, [R8]
LDR             R2, [R5]
MOV             R0, R5
LDR             R1, [R1,#0x60]
LDR             R2, [R2,#0x34]
ADD             R1, R1, #0x780
BLX             R2
LDR             R0, [R5,#0xA4]
MOV             R2, #1
MOV             R1, #5
VLDR            S0, =0.0
STRB            R9, [R0,#0x6D]
LDR             R0, [R5,#0xA4]
VLDR            S1, =-118.0
VLDR            S16, =1.0
STRB            R2, [R0,#0x68]
STRB            R1, [R0,#0x6A]
STRB            R2, [R0,#0x69]
ADD             R2, SP, #0x90+var_38
ADD             R1, SP, #0x90+var_38
VSTM            R2, {S0-S1}
ADD             R2, SP, #0x90+var_68
VLDR            S1, =1.5
VSTR            S0, [SP,#0x90+var_30]
VSTR            S1, [SP,#0x90+var_68]
STR             R9, [SP,#0x90+var_64]
STR             R9, [SP,#0x90+var_60]
STR             R9, [SP,#0x90+var_5C]
STR             R9, [SP,#0x90+var_58]
VSTR            S1, [SP,#0x90+var_54]
STR             R9, [SP,#0x90+var_50]
STR             R9, [SP,#0x90+var_4C]
STR             R9, [SP,#0x90+var_48]
STR             R9, [SP,#0x90+var_44]
VSTR            S16, [SP,#0x90+var_40]
MOV             R0, R2
STR             R9, [SP,#0x90+var_3C]
BL              sub_142328
ADD             R2, SP, #0x90+var_68
LDR             R0, [R5,#0xA4]
ADD             R10, SP, #0x90+var_48
VLDM            R2, {S0-S7}
ADD             R2, R0, #0x20 ; ' '
ADD             R0, R0, #0x40 ; '@'
VSTM            R2, {S0-S7}
LDM             R10, {R1-R3,R12}
STM             R0, {R1-R3,R12}
MOV             R1, #0
LDR             R0, [R5]
LDR             R2, [R0,#0x44]
MOV             R0, R5
BLX             R2
LDR             R0, [R8]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x17800
ADD             R0, R0, #0x2C8
LDRB            R0, [R0]
CMP             R0, #0
BEQ             loc_19C830
LDR             R0, [R8]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x17800
ADD             R0, R0, #0x2C8
LDRB            R0, [R0]
CMP             R0, #2
BEQ             loc_19C7A4
LDR             R0, [R8]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x17800
ADD             R0, R0, #0x2C8
LDRB            R0, [R0]
CMP             R0, #3
BEQ             loc_19C804
LDR             R0, [R8]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x17800
ADD             R0, R0, #0x2C8
LDRB            R0, [R0]
CMP             R0, #4
BEQ             loc_19C804
LDR             R0, [R8]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x17800
ADD             R0, R0, #0x2C8
LDRB            R0, [R0]
CMP             R0, #5
BEQ             loc_19C804
LDR             R0, [R8]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x17800
ADD             R0, R0, #0x2C8
LDRB            R0, [R0]
CMP             R0, #6
BEQ             loc_19C804
LDR             R0, [R8]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x17800
ADD             R0, R0, #0x2C8
LDRB            R0, [R0]
CMP             R0, #7
BEQ             loc_19C804
LDR             R0, [R8]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x17800
ADD             R0, R0, #0x2C8
LDRB            R0, [R0]
CMP             R0, #1
BEQ             loc_19C804
B               loc_19C830
LDR             R0, [R4,#0x90]
CMP             R0, #0
BEQ             loc_19C84C
LDRB            R0, [R0,#0xB4]
CMP             R0, #0xC
BEQ             loc_19C83C
CMP             R0, #5
BEQ             loc_19C7D4
MOV             R2, #0
MOV             R1, R2
MOV             R0, R4
BL              sub_19AB88
LDR             R0, [R8]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x14400
ADD             R0, R0, #8
MOV             R3, #0
LDR             R0, [R0]
MOV             R2, #1
MOV             R1, R3
BL              sub_2FBB34
NOP
NOP
B               loc_19C830
LDR             R0, [R4,#0x90]
CMP             R0, #0
BEQ             loc_19C84C
LDRB            R0, [R0,#0xB4]
CMP             R0, #0xC
CMPNE           R0, #5
BEQ             loc_19C83C
MOV             R2, #0
MOV             R1, R2
MOV             R0, R4
BL              sub_19AB88
LDR             R0, [R4,#0x90]
CMP             R0, #0
BEQ             loc_19C84C
LDR             R0, [R4,#0x90]
LDRB            R0, [R0,#0xB4]
CMP             R0, #8
BEQ             loc_19C8BC
LDR             R0, [R8]
LDR             R0, [R0,#0xC0]
ADD             R0, R0, #0x15000
LDR             R0, [R0,#0xA8]
AND             R0, R0, #2
MOVS            R0, R0,LSR#1
BEQ             loc_19C874
MOV             R1, #0
MOV             R0, R4
BL              sub_19B0B0
LDR             R0, [R8]
LDR             R0, [R0,#0xC0]
ADD             R0, R0, #0x15000
LDR             R0, [R0,#0xA8]
AND             R0, R0, #4
MOVS            R0, R0,LSR#2
BEQ             loc_19C8BC
LDR             R0, [R8]
LDR             R0, [R0,#0xC0]
ADD             R0, R0, #0x15000
ADD             R0, R0, #0xA8
VMOV.F32        S0, S16
LDR             R1, [R0]
BIC             R1, R1, #4
STR             R1, [R0]
LDR             R1, =unk_6EB568
MOV             R0, R1
BL              sub_51D000
LDR             R0, [R4,#0x1B4]
ORR             R0, R0, #2
STR             R0, [R4,#0x1B4]
LDR             R0, [R8]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x17800
ADD             R0, R0, #0x2C8
LDRB            R0, [R0]
CMP             R0, #0
BEQ             loc_19C924
LDR             R0, [R8]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x17800
ADD             R0, R0, #0x2C8
LDRB            R0, [R0]
CMP             R0, #2
BEQ             loc_19CA70
B               loc_19CA84
DCD off_6D1648
DCD 0xF0001FFB
DCD dword_6ED9B8
DCFS 0.0
DCFS -118.0
DCFS 1.5
DCFS 1.0
DCD unk_6EB568
LDR             R0, [R4,#0x1B4]
TST             R0, #1
BEQ             loc_19CA84
LDR             R0, [R4,#0x90]
CMP             R0, #0
BEQ             loc_19C9D0
LDR             R0, [SP,#0x90+var_80]
TST             R0, #0x800
BEQ             loc_19CA84
LDR             R1, [R8]
LDR             R0, [R1,#0xC4]
LDR             R0, [R0,#4]
LDR             R0, [R0,#4]
LDR             R2, [R0,#0x4EC]
TST             R2, #1
BEQ             loc_19C9B4
MOV             R0, R1
BL              sub_1E45C8
LDRH            R0, [R0,#0x4A]
TST             R0, #4
BEQ             loc_19CA84
LDR             R0, [R8]
LDR             R0, [R0,#0xBC]
NOP
NOP
MOV             R0, #1
CMP             R0, #0
NOP
BEQ             loc_19CA84
LDR             R0, [R4,#0x90]
LDR             R1, [R0]
LDR             R1, [R1,#0x54]
BLX             R1
CMP             R0, #0
BEQ             loc_19CA84
B               loc_19CA7C
ADD             R0, R0, #0x400
LDRH            R0, [R0,#0x6C]
CMP             R0, #3
CMPNE           R0, #0
CMPNE           R0, #4
BNE             loc_19C964
B               loc_19C978
LDR             R0, [R8]
LDR             R0, [R0,#0xBC]
NOP
NOP
BL              sub_1656B8
CMP             R0, #0
NOP
BEQ             loc_19CA84
LDR             R0, [SP,#0x90+var_80]
TST             R0, #0x800
BEQ             loc_19CA84
ADD             R7, R7, #0x108
MOV             R10, #0
LDM             R7, {R0,R1}
ADD             R9, SP, #0x90+var_78
MOV             R5, R10
STR             R0, [SP,#0x90+var_78]
STRD            R0, R1, [SP,#0x90+var_74]
STR             R1, [SP,#0x90+var_6C]
ADD             R0, R4, R5,LSL#2
LDR             R0, [R0,#0x10]
CMP             R0, #0
BEQ             loc_19CA40
LDR             R1, [R0]
MOV             R2, R9
LDR             R3, [R1,#0x34]
MOV             R1, R10
BLX             R3
ADD             R5, R5, #1
CMP             R5, #0x20 ; ' '
BLT             loc_19CA1C
LDR             R0, [R4,#0x90]
CMP             R0, #0
BNE             loc_19CA84
LDR             R0, [R4,#0x94]
CMP             R0, #0
BLNE            sub_234C74
NOP
NOP
B               loc_19CA84
LDR             R0, [SP,#0x90+var_80]
TST             R0, #0x200
BEQ             loc_19CA84
MOV             R0, R4
BL              sub_19A480
LDR             R1, [R4,#0x1B4]
LDR             R0, [R4,#0x94]
BIC             R1, R1, #0x800000
CMP             R0, #0
STR             R1, [R4,#0x1B4]
BEQ             loc_19CAA8
LDR             R1, [R0]
LDR             R1, [R1,#0x28]
BLX             R1
LDR             R0, [R4,#0x1B4]
BIC             R0, R0, #0x10
STR             R0, [R4,#0x1B4]
MOV             R0, R4
BL              sub_19AA1C
LDR             R0, [R4,#0xA8]
CMP             R0, #0
BLNE            sub_1F5FA8
LDR             R0, [R4,#0xAC]
CMP             R0, #0
BLNE            sub_1E1908
LDR             R0, [R4,#0xB0]
CMP             R0, #0
BLNE            sub_29BCF4
MOV             R5, #0
ADD             R0, R4, R5,LSL#2
LDR             R0, [R0,#0x10]
CMP             R0, #0
BEQ             loc_19CB00
LDR             R1, [R0]
LDR             R1, [R1,#0x28]
BLX             R1
ADD             R5, R5, #1
CMP             R5, #0x20 ; ' '
BLT             loc_19CAE4
LDR             R0, [R4,#0x90]
CMP             R0, #0
MOVNE           R0, #0xF
BEQ             loc_19CBE8
STRH            R0, [R4,#0xA2]
LDRSH           R0, [R6,#0xD2]
CMN             R0, #1
BEQ             loc_19CBA0
CMP             R0, #0
SUBGT           R0, R0, #1
STRHGT          R0, [R6,#0xD2]
BGT             loc_19CBA0
MOV             R0, #0xFFFFFFFF
STRH            R0, [R6,#0xD2]
LDR             R0, [R8]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x15000
ADD             R0, R0, #0x13C
LDR             R0, [R0,#0x1B4]
AND             R0, R0, #0x400000
MOVS            R0, R0,LSR#22
BEQ             loc_19CBA0
LDR             R0, [R8]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x16800
ADD             R0, R0, #0x1B8
BL              sub_5A18EC
LDR             R0, [R8]
NOP
LDR             R0, [R0,#0xBC]
LDRSH           R1, [R6,#0xD0]
ADD             R0, R0, #0x16800
ADD             R0, R0, #0x1B8
VMOV            S1, R1
VLDR            S0, [R4,#0x1CC]
VCVT.F32.S32    S1, S1
BL              sub_5A12F8
MOV             R0, R4
BL              sub_19BBC4
MOV             R0, R4
NOP
BL              loc_19CEE0
LDR             R0, [R4,#0x1B4]
TST             R0, #8
BEQ             loc_19CBDC
BIC             R0, R0, #8
STR             R0, [R4,#0x1B4]
LDR             R0, [R8]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0xCC
NOP
BL              sub_4B1570
ADD             SP, SP, #0x68 ; 'h'
VPOP            {D8}
POP             {R4-R10,PC}
LDRSH           R0, [R4,#0xA2]
CMP             R0, #0
SUBGT           R0, R0, #1
BLE             loc_19CB20
B               loc_19CB1C
