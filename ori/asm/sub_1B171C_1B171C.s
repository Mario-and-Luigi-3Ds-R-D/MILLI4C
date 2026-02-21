PUSH            {R0,R1,R4-R11,LR}
MOV             R5, #0
MOV             R7, R1
VPUSH           {D0-D1}
VPUSH           {D8-D9}
SUB             SP, SP, #0x74
VLDR            S3, [R1]
VCMPE.F32       S3, S0
VMRS            APSR_nzcv, FPSCR
MOVCC           R5, #2
BCC             loc_1B174C
MOVGT           R5, #8
VLDR            S3, [R7,#8]
VCMPE.F32       S3, S2
VMRS            APSR_nzcv, FPSCR
ORRCC           R5, R5, #4
BCC             loc_1B1764
ORRGT           R5, R5, #1
VLDR            S2, [R7,#4]
VCMPE.F32       S2, S1
VMRS            APSR_nzcv, FPSCR
ORRCC           R5, R5, #0x10
BCC             loc_1B177C
ORRGT           R5, R5, #0x20 ; ' '
VLDR            S18, =61.0
LDR             R9, =off_6D1648
VMOV.F32        S16, S0
VADD.F32        S17, S1, S18
LDR             R0, [R9]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x16000
ADD             R0, R0, #0x338
MOV             R4, #2
LDR             R1, [R0,#4]
LDRB            R2, [R0,#0x110]
LDR             R0, =0x1428D
LDRB            R0, [R0,R1]
ADD             R0, R0, R2
AND             R6, R0, #0xFF
CMP             R6, #2
BLS             loc_1B1B8C
MOV             R0, #0xFC0
ADD             R10, SP, #0xC0+var_A0
ADD             R11, SP, #0xC0+var_98
AND             R8, R0, R5,LSL#6
LDR             R0, [R9]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x16000
ADD             R0, R0, #0x338
LDR             R1, [R0,#4]
ADD             R1, R1, #0x14000
LDRB            R1, [R1,#0x28D]
CMP             R1, R4
BLE             loc_1B1808
LDR             R0, [R0,#4]
ADD             R0, R0, R4,LSL#2
ADD             R0, R0, #0x14000
LDR             R5, [R0,#0x184]
B               loc_1B1820
LDR             R1, [R0,#4]
ADD             R1, R1, #0x14000
LDRB            R1, [R1,#0x28D]
SUB             R1, R4, R1
ADD             R0, R0, R1,LSL#2
LDR             R5, [R0,#0x10]
LDRB            R0, [R5,#0xDE]
TST             R0, #1
BEQ             loc_1B1B7C
TST             R0, #4
BNE             loc_1B1B7C
LDR             R0, [R5,#0x648]
TST             R0, #2
BEQ             loc_1B1B7C
LDR             R0, [R5]
LDR             R1, [R0,#8]
MOV             R0, R5
BLX             R1
CMP             R0, #4
BLS             loc_1B1B7C
LDR             R0, [SP,#0xC0+var_2C]
MOV             R1, R5
BL              sub_542D24
CMP             R0, #0
LDREQ           R0, [R9]
LDREQ           R0, [R0,#0xBC]
ADD             R0, SP, #0xC0+var_68
VMOV.F32        S0, S18
VSTM            R0, {S16-S17}
ADD             R0, R5, #0x400
VLDR            S1, [R7,#4]
LDR             R1, [R7]
ADD             R3, SP, #0xC0+var_70
VADD.F32        S1, S1, S0
STR             R1, [SP,#0xC0+var_80]
ADD             R1, R5, #0x108
VSTR            S1, [SP,#0xC0+var_7C]
VLDR            S2, [R5,#0x108]
VLDR            S4, [R0,#0x224]
VLDR            S1, [R5,#0x10C]
VLDR            S3, [R0,#0x234]
VADD.F32        S2, S2, S4
VADD.F32        S1, S1, S3
VSTR            S2, [SP,#0xC0+var_78]
VSTR            S1, [SP,#0xC0+var_74]
VLDR            S3, [R0,#0x234]
VLDR            S4, [R0,#0x228]
VLDM            R1, {S1-S2}
ADD             R1, SP, #0xC0+var_70
VADD.F32        S1, S1, S4
VADD.F32        S2, S2, S3
VSTM            R1, {S1-S2}
VLDR            S2, [R5,#0x108]
VLDR            S1, [R0,#0x224]
LDR             R1, [R5,#0x10C]
VADD.F32        S1, S2, S1
VSTR            S1, [SP,#0xC0+var_A0]
STR             R1, [SP,#0xC0+var_9C]
VLDR            S1, [R5,#0x108]
VLDR            S2, [R0,#0x228]
LDR             R2, [R5,#0x10C]
ADD             R1, SP, #0xC0+var_58
VADD.F32        S1, S1, S2
ADD             R0, SP, #0xC0+var_60
VSTR            S1, [SP,#0xC0+var_98]
STRD            R0, R1, [SP,#0xC0+var_B8]
STR             R2, [SP,#0xC0+var_94]
ADD             R2, SP, #0xC0+var_78
ADD             R1, SP, #0xC0+var_80
ADD             R0, SP, #0xC0+var_68
STRD            R10, R11, [SP,#0xC0+var_C0]
BL              sub_45A300
CMP             R0, #0
NOP
BEQ             loc_1B1B7C
LDR             R0, [SP,#0xC0+var_2C]
MOV             R2, R4
MOV             R1, R5
BL              sub_1B316C
LDR             R0, [SP,#0xC0+var_2C]
LDR             R2, =0x8B8
LDR             R0, [R0,#4]
LDRSH           R2, [R2,R0]
SUB             R1, R2, #0x200
SUBS            R1, R1, #0x67 ; 'g'
BEQ             loc_1B1AC4
LDR             R0, [R0,#0x750]
CMP             R0, #0
BNE             loc_1B1A04
LDR             R0, [R5]
LDR             R1, [R0,#8]
MOV             R0, R5
BLX             R1
CMP             R0, #7
BEQ             loc_1B1A04
LDR             R0, [SP,#0xC0+var_2C]
LDR             R0, [R0,#4]
LDR             R1, [R0,#0x750]
CMP             R1, #0
BEQ             loc_1B19DC
LDR             R3, [R5,#0x4EC]
TST             R3, #0xE0
BNE             loc_1B19B0
LDR             R1, [R0,#0x754]
CMP             R1, R5
BNE             loc_1B19DC
AND             R2, R3, #0xE0
CMP             R2, #0x80
BNE             loc_1B1A04
LDR             R1, [R0,#0x754]
CMP             R1, R5
BNE             loc_1B19DC
ADD             R1, R0, #0x400
LDRH            R2, [R1,#0x6C]
LDRH            R1, [R1,#0x6E]
CMP             R2, R1
BEQ             loc_1B1A04
STR             R5, [R0,#0x750]
LDR             R2, [R0,#0x658]
ADD             R1, R0, #0x400
ADD             R1, R1, #0x248
BIC             R2, R2, #0xFC0
ORR             R2, R2, R8
STR             R2, [R0,#0x658]
LDR             R0, [R0,#0x648]
BIC             R0, R0, #0x180000
STR             R0, [R1]
CMP             R5, #0
BEQ             loc_1B1B7C
LDR             R0, [R5]
LDR             R1, [R0,#8]
MOV             R0, R5
BLX             R1
CMP             R0, #8
BNE             loc_1B1B7C
LDRB            R0, [R5,#0xAAC]
CMP             R0, #0x11
BNE             loc_1B1B7C
LDR             R0, [SP,#0xC0+var_2C]
LDR             R0, [R0,#4]
LDR             R1, [R0,#0x750]
CMP             R1, #0
BEQ             loc_1B1A88
LDR             R1, [R5,#0x4EC]
TST             R1, #0xE0
BNE             loc_1B1A5C
LDR             R2, [R0,#0x754]
CMP             R2, R5
BNE             loc_1B1A88
AND             R2, R1, #0xE0
CMP             R2, #0x80
BNE             loc_1B1B7C
LDR             R1, [R0,#0x754]
CMP             R1, R5
BNE             loc_1B1A88
ADD             R1, R0, #0x400
LDRH            R2, [R1,#0x6C]
LDRH            R1, [R1,#0x6E]
CMP             R2, R1
BEQ             loc_1B1B7C
STR             R5, [R0,#0x750]
LDR             R3, [R0,#0x658]
ADD             R2, R0, #0x400
ADD             R2, R2, #0x248
BIC             R3, R3, #0xFC0
ORR             R3, R3, R8
STR             R3, [R0,#0x658]
LDR             R0, [R0,#0x648]
BIC             R0, R0, #0x180000
STR             R0, [R2]
B               loc_1B1B7C
DCFS 61.0
DCD off_6D1648
DCD 0x1428D
DCD 0x8B8
LDR             R0, [R5]
LDR             R1, [R0,#8]
MOV             R0, R5
BLX             R1
CMP             R0, #7
BEQ             loc_1B1B7C
CMP             R5, #0
BEQ             loc_1B1B08
LDR             R0, [R5]
LDR             R1, [R0,#8]
MOV             R0, R5
BLX             R1
CMP             R0, #8
BNE             loc_1B1B08
LDRB            R0, [R5,#0xAAC]
CMP             R0, #0x11
BEQ             loc_1B1B2C
LDR             R0, [SP,#0xC0+var_2C]
LDR             R0, [R0,#4]
LDR             R1, [R0,#0x750]
CMP             R1, #0
BEQ             loc_1B1A88
LDR             R1, [R5,#0x4EC]
TST             R1, #0xE0
BEQ             loc_1B1B44
B               loc_1B1B50
LDR             R0, [SP,#0xC0+var_2C]
LDR             R0, [R0,#4]
LDR             R1, [R0,#0x750]
CMP             R1, #0
BNE             loc_1B1B7C
B               loc_1B1A88
LDR             R2, [R0,#0x754]
CMP             R2, R5
BNE             loc_1B1A88
AND             R2, R1, #0xE0
CMP             R2, #0x80
BNE             loc_1B1B7C
LDR             R1, [R0,#0x754]
CMP             R1, R5
BNE             loc_1B1A88
ADD             R1, R0, #0x400
LDRH            R2, [R1,#0x6C]
LDRH            R1, [R1,#0x6E]
CMP             R2, R1
BNE             loc_1B1A88
ADD             R0, R4, #1
AND             R4, R0, #0xFF
CMP             R6, R4
BHI             loc_1B17D0
ADD             SP, SP, #0x74 ; 't'
VPOP            {D8-D9}
ADD             SP, SP, #0x18
POP             {R4-R11,PC}
