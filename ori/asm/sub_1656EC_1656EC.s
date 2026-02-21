PUSH            {R4-R9,LR}
MOV             R6, R0
LDR             R0, =off_6D1648
VPUSH           {D8}
SUB             SP, SP, #0x204
LDR             R0, [R0]
BL              sub_1E45C8
LDR             R1, [R0]
LDR             R1, [R1,#0x188]
BLX             R1
LDR             R1, =0x2698
LDRB            R4, [R1,R0]
LDR             R1, [R0]
LDR             R1, [R1,#0x468]
BLX             R1
CMP             R0, #1
BNE             loc_1658C4
CMP             R4, #0
BEQ             loc_1658C4
ADD             R7, R6, #0x14000
ADD             R5, R6, #0x14000
LDRB            R0, [R7,#0x28D]
ADD             R5, R5, #0x184
MOV             R9, SP
CMP             R0, #0
VLDRGT          S16, =3.4028e38
VLDRGT          S17, =-3.4028e38
MOV             R6, #0
BLE             loc_1657C4
LDR             R0, [R5]
ADD             R8, R9, R6,LSL#3
STR             R0, [R8,#4]
LDR             R0, [R5]
LDR             R1, [R0]
LDR             R1, [R1,#8]
BLX             R1
CMP             R0, #3
BEQ             loc_1658D8
LDR             R0, [R5]
LDR             R1, [R0]
LDR             R1, [R1,#8]
BLX             R1
CMP             R0, #4
BEQ             loc_1658D8
LDR             R0, [R5]
CMP             R4, #2
LDREQ           R0, [R0,#0x10C]
LDRNE           R0, [R0,#0x108]
STR             R0, [R8]
LDRB            R0, [R7,#0x28D]
ADD             R6, R6, #1
ADD             R5, R5, #4
CMP             R0, R6
BGT             loc_165760
AND             R0, R0, #0xFF
SUBS            R0, R0, #1
BMI             loc_165850
ADD             R8, R0, #1
CMP             R8, #1
MOV             R1, #0xFFFFFFFF
MOV             R0, #1
BLE             loc_165850
ADD             R2, R9, R0,LSL#3
CMP             R4, #1
VLDR            S0, [R2,#-8]
VLDR            S1, [R2]
BEQ             loc_1658E8
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
BLE             loc_16583C
SUB             R1, R0, #1
ADD             R3, R9, R0,LSL#3
ADD             R12, R9, R1,LSL#3
MOV             R5, R3
VLDR            S1, [R12]
ADD             R2, R12, #4
VLDM            R3!, {S0}
VSTR            S1, [R5]
MOV             R6, R3
VSTR            S0, [R12]
LDR             R3, [R12,#4]
LDR             R12, [R6]
STR             R3, [R6]
STR             R12, [R2]
ADD             R0, R0, #1
CMP             R0, R8
BLT             loc_1657E4
SUBS            R0, R1, #0
BGE             loc_1657D0
MOV             R6, #0
STR             R6, [R7,#0x170]
STR             R6, [R7,#0x174]
LDRB            R0, [R7,#0x28D]
MOV             R5, R6
CMP             R0, #0
BLE             loc_1658CC
ADD             R0, R9, R5,LSL#3
LDR             R4, [R0,#4]
LDR             R0, [R4]
LDR             R1, [R0,#8]
MOV             R0, R4
BLX             R1
CMP             R0, #3
BEQ             loc_1658CC
LDR             R0, [R4]
LDR             R1, [R0,#8]
MOV             R0, R4
BLX             R1
CMP             R0, #4
BEQ             loc_1658CC
LDR             R0, [R7,#0x174]
CMP             R0, #0
BEQ             loc_1658F8
STR             R4, [R0,#0xC]
LDR             R0, [R7,#0x174]
STR             R0, [R4,#0x10]
STR             R6, [R4,#0xC]
B               loc_165904
MOV             R0, R6
BL              sub_2B047C
ADD             SP, SP, #0x204
VPOP            {D8}
POP             {R4-R9,PC}
CMP             R4, #1
VSTREQ          S16, [R8]
VSTRNE          S17, [R8]
B               loc_1657B0
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BLE             loc_16583C
B               loc_165804
STR             R4, [R7,#0x170]
STR             R6, [R4,#0xC]
STR             R6, [R4,#0x10]
STR             R4, [R7,#0x174]
LDRB            R0, [R7,#0x28D]
ADD             R5, R5, #1
CMP             R0, R5
BGT             loc_16586C
ADD             SP, SP, #0x204
VPOP            {D8}
POP             {R4-R9,PC}
