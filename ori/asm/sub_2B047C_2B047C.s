PUSH            {R4-R8,LR}
ADD             R6, R0, #0x14000
ADD             R4, R0, #0x14000
ADD             R4, R4, #0x184
VPUSH           {D8}
SUB             SP, SP, #0x200
LDRB            R0, [R6,#0x28D]
MOV             R8, SP
MOV             R5, #0
CMP             R0, #0
VLDRGT          S16, =3.4028e38
BLE             loc_2B0508
LDR             R0, [R4]
ADD             R7, R8, R5,LSL#3
STR             R0, [R7,#4]
LDR             R0, [R4]
LDR             R1, [R0]
LDR             R1, [R1,#8]
BLX             R1
CMP             R0, #3
BEQ             loc_2B05F4
LDR             R0, [R4]
LDR             R1, [R0]
LDR             R1, [R1,#8]
BLX             R1
CMP             R0, #4
BEQ             loc_2B05F4
LDR             R0, [R4]
LDR             R0, [R0,#0x10C]
STR             R0, [R7]
LDRB            R0, [R6,#0x28D]
ADD             R5, R5, #1
ADD             R4, R4, #4
CMP             R0, R5
BGT             loc_2B04AC
AND             R0, R0, #0xFF
SUBS            R1, R0, #1
BMI             loc_2B0580
ADD             R7, R1, #1
CMP             R7, #1
MOV             R0, #0xFFFFFFFF
MOV             R1, #1
BLE             loc_2B0580
ADD             R3, R8, R1,LSL#3
VLDR            S1, [R3,#-8]
VLDR            S0, [R3]
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
BLE             loc_2B056C
SUB             R0, R1, #1
ADD             R5, R3, #4
ADD             R12, R8, R0,LSL#3
ADD             R2, R12, #4
VLDR            S1, [R12]
VSTR            S1, [R3]
VSTR            S0, [R12]
LDR             R3, [R12,#4]
LDR             R12, [R5]
STR             R3, [R5]
STR             R12, [R2]
ADD             R1, R1, #1
CMP             R1, R7
BLT             loc_2B0528
SUBS            R1, R0, #0
BGE             loc_2B0514
MOV             R7, #0
STR             R7, [R6,#0x170]
STR             R7, [R6,#0x174]
LDRB            R0, [R6,#0x28D]
MOV             R5, R7
CMP             R0, #0
BLE             loc_2B061C
ADD             R0, R8, R5,LSL#3
LDR             R4, [R0,#4]
LDR             R0, [R4]
LDR             R1, [R0,#8]
MOV             R0, R4
BLX             R1
CMP             R0, #3
BEQ             loc_2B061C
LDR             R0, [R4]
LDR             R1, [R0,#8]
MOV             R0, R4
BLX             R1
CMP             R0, #4
BEQ             loc_2B061C
LDR             R0, [R6,#0x174]
CMP             R0, #0
BEQ             loc_2B05FC
STR             R4, [R0,#0xC]
LDR             R0, [R6,#0x174]
STR             R0, [R4,#0x10]
STR             R7, [R4,#0xC]
B               loc_2B0608
VSTR            S16, [R7]
B               loc_2B04F4
STR             R4, [R6,#0x170]
STR             R7, [R4,#0xC]
STR             R7, [R4,#0x10]
STR             R4, [R6,#0x174]
LDRB            R0, [R6,#0x28D]
ADD             R5, R5, #1
CMP             R0, R5
BGT             loc_2B059C
ADD             SP, SP, #0x200
VPOP            {D8}
POP             {R4-R8,PC}
