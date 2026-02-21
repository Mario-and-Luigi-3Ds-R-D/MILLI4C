PUSH            {R4-R11,LR}
MOV             R5, R0
MOV             R7, R1
VPUSH           {D8-D11}
SUB             SP, SP, #0x8C
LDR             R0, [R0]
LDR             R1, [R0,#0x268]
MOV             R0, R5
BLX             R1
CMP             R0, #1
MOV             R9, R0
BGT             loc_1E5E48
MOV             R0, R5
BL              sub_573AC8
ADD             SP, SP, #0x8C
VPOP            {D8-D11}
POP             {R4-R11,PC}
ADD             R0, R5, #0x400
ADD             R0, R0, #0xEC
STR             R0, [SP,#0xD0+var_90]
LDR             R2, [R5,#0x4EC]
LDR             R1, [R5,#0x5E0]
MOV             R0, #1
ADD             R4, R5, #0x400
STR             R0, [SP,#0xD0+var_88]
VLDR            S17, [R4,#0xC0]
MOV             R0, #0
STR             R0, [SP,#0xD0+var_98]
LDR             R0, [R5,#0x4B8]
VLDR            S16, [R5,#0x10C]
AND             R12, R2, #8
STR             R0, [SP,#0xD0+var_A8]
LDR             R3, [R5,#0x60C]
VLDR            S0, [R4,#0x1CC]
AND             R2, R2, #1
STR             R2, [SP,#0xD0+var_80]
AND             R2, R1, #0x10
STR             R3, [SP,#0xD0+var_70]
AND             R3, R1, #0x40 ; '@'
AND             R1, R1, #0x20 ; ' '
VMOV.F32        S23, S0
MOV             R1, R1,LSR#5
STR             R1, [SP,#0xD0+var_50]
MOV             R2, R2,LSR#4
ADD             R1, R5, #0x400
MOV             R3, R3,LSR#6
ADD             R1, R1, #0x1BC
STR             R2, [SP,#0xD0+var_54]
ADD             R8, R5, #0x5E0
MOV             R11, R12,LSR#3
MOV             R2, #0x10
ADD             R0, SP, #0xD0+var_68
STR             R1, [SP,#0xD0+var_A0]
STR             R3, [SP,#0xD0+var_58]
BL              sub_1103A4
MOV             R6, #0
LDR             R1, [R5]
ADD             R3, SP, #0xD0+var_C4
ADD             R2, SP, #0xD0+var_9C
MOV             R0, R5
LDR             R12, [R1,#0x26C]
AND             R1, R6, #0xFF
BLX             R12
MOV             R2, #0x10
LDRD            R0, R1, [SP,#0xD0+var_A0]
BL              sub_1103A4
VLDR            S0, [SP,#0xD0+var_C4]
CMP             R6, #0
VSTR            S0, [R4,#0x1CC]
VSTR            S16, [R5,#0x10C]
LDR             R1, [R5,#0x4EC]
LDR             R2, [SP,#0xD0+var_80]
BIC             R1, R1, #1
ORR             R1, R1, R2
LDR             R2, [SP,#0xD0+var_90]
BIC             R1, R1, #8
ORR             R1, R1, R11,LSL#3
STR             R1, [R2]
VSTR            S17, [R4,#0xC0]
LDR             R1, [R5,#0x5E0]
LDR             R0, [SP,#0xD0+var_58]
LDR             R2, [SP,#0xD0+var_50]
BIC             R1, R1, #0x40 ; '@'
ORR             R1, R1, R0,LSL#6
LDR             R0, [SP,#0xD0+var_54]
BIC             R1, R1, #0x10
ORR             R1, R1, R0,LSL#4
BIC             R1, R1, #0x20 ; ' '
ORR             R2, R1, R2,LSL#5
STR             R2, [R8]
BLE             loc_1E5FA4
ADD             R1, R7, R6,LSL#2
LDR             R0, [R1,#0x300]
STR             R0, [R4,#0x1F0]
LDR             R0, [R1,#0x30C]
STR             R0, [R4,#0x1F4]
LDR             R0, [R1,#0x318]
STR             R0, [R4,#0x1F8]
LDR             R0, [R1,#0x324]
STR             R0, [R4,#0x1FC]
LDR             R3, [R1,#0x330]
STR             R3, [R5,#0x608]
LDR             R1, [R1,#0x33C]
STR             R1, [R5,#0x60C]
MOV             R1, R2,LSL#17
MOV             R0, R5
MOV             R10, R1,LSR#26
BL              sub_573AC8
LDR             R1, [R8]
ADD             R2, R6, R6,LSL#1
LDR             R3, [R7,#0x2F8]
MOV             R2, R2,LSL#1
MOV             R1, R1,LSL#17
CMP             R6, #0
MOV             R1, R1,LSR#26
BIC             R1, R1, R10
ORR             R1, R3, R1,LSL R2
STR             R1, [R7,#0x2F8]
BEQ             loc_1E6038
LDR             R0, [R4,#0x1F0]
ADD             R1, R7, R6,LSL#2
STR             R0, [R1,#0x300]
LDR             R0, [R4,#0x1F4]
STR             R0, [R1,#0x30C]
LDR             R0, [R4,#0x1F8]
STR             R0, [R1,#0x318]
LDR             R0, [R4,#0x1FC]
STR             R0, [R1,#0x324]
LDR             R2, [R5,#0x608]
STR             R2, [R1,#0x330]
LDR             R1, [R5,#0x4EC]
TST             R1, #8
BEQ             loc_1E6064
AND             R2, R1, #8
VLDR            S19, [R5,#0x10C]
AND             R0, R1, #1
STR             R0, [SP,#0xD0+var_78]
MOV             R0, R2,LSR#3
STR             R0, [SP,#0xD0+var_74]
VLDR            S18, [R4,#0xC0]
B               loc_1E60B0
LDR             R0, [R4,#0x1F0]
LDR             R1, [R5,#0x608]
STR             R0, [SP,#0xD0+var_B8]
VLDR            S22, [R4,#0x1F4]
VLDR            S21, [R4,#0x1F8]
VLDR            S20, [R4,#0x1FC]
CMP             R1, #0
STR             R1, [SP,#0xD0+var_94]
LDREQ           R1, [R5,#0x60C]
STR             R1, [R7,#0x34C]
B               loc_1E600C
TST             R1, #0x10
BNE             loc_1E6088
AND             R2, R1, #8
VLDR            S19, [R5,#0x10C]
AND             R0, R1, #1
STR             R0, [SP,#0xD0+var_78]
MOV             R0, R2,LSR#3
STR             R0, [SP,#0xD0+var_74]
VLDR            S18, [R4,#0xC0]
CMP             R11, #0
BNE             loc_1E60B0
MOV             R2, #0
MOV             R3, #1
STR             R2, [SP,#0xD0+var_88]
MOV             R2, R3,LSL R6
LDR             R3, [SP,#0xD0+var_98]
ORR             R2, R2, R3
SXTB            R2, R2
STR             R2, [SP,#0xD0+var_98]
ADD             R6, R6, #1
CMP             R9, R6
BGT             loc_1E5EE4
LDR             R2, [SP,#0xD0+var_88]
CMP             R2, #0
BNE             loc_1E624C
LDR             R2, [R5,#0x4EC]
TST             R2, #0x10
BEQ             loc_1E624C
BIC             R0, R1, #1
VSTR            S16, [R5,#0x10C]
LDR             R1, [SP,#0xD0+var_80]
CMP             R9, #0
MOV             R6, #0
ORR             R0, R0, R1
BIC             R0, R0, #8
ORR             R1, R0, R11,LSL#3
LDR             R0, [SP,#0xD0+var_90]
STR             R1, [R0]
VSTR            S17, [R4,#0xC0]
LDR             R0, [SP,#0xD0+var_A8]
STR             R0, [R4,#0xB8]
BLE             loc_1E6278
LDR             R0, [SP,#0xD0+var_98]
MOV             R0, R0,ASR R6
TST             R0, #1
BEQ             loc_1E6200
ANDS            R8, R6, #0xFF
BEQ             loc_1E6210
ADD             R0, R7, R8,LSL#2
LDR             R1, [R0,#0x318]
STR             R1, [R4,#0x1F0]
LDR             R1, [R0,#0x324]
STR             R1, [R4,#0x1F4]
LDR             R1, [R0,#0x330]
STR             R1, [R5,#0x608]
LDR             R0, [R0,#0x33C]
STR             R0, [R5,#0x60C]
LDR             R0, [R5]
ADD             R3, SP, #0xD0+var_C4
ADD             R2, SP, #0xD0+var_9C
MOV             R1, R8
LDR             R12, [R0,#0x26C]
MOV             R0, R5
BLX             R12
MOV             R2, #0x10
LDRD            R0, R1, [SP,#0xD0+var_A0]
BL              sub_1103A4
LDR             R0, [SP,#0xD0+var_C4]
MOV             R3, #0
MOV             R2, R3
STR             R0, [R4,#0x1CC]
VLDR            S0, [R5,#0x108]
VLDR            S1, [R4,#0x1BC]
ADD             R1, SP, #0xD0+var_90
VADD.F32        S0, S0, S1
VSTR            S0, [SP,#0xD0+var_8C]
VSTR            S0, [SP,#0xD0+var_90]
VLDR            S1, [R5,#0x108]
VLDR            S0, [R4,#0x1C0]
VADD.F32        S0, S1, S0
VSTR            S0, [SP,#0xD0+var_88]
VSTR            S0, [SP,#0xD0+var_84]
VLDR            S0, [R5,#0x110]
VLDR            S1, [R4,#0x1C4]
VADD.F32        S0, S0, S1
VSTR            S0, [SP,#0xD0+var_74]
VSTR            S0, [SP,#0xD0+var_80]
VLDR            S0, [R5,#0x110]
VLDR            S1, [R4,#0x1C8]
VADD.F32        S0, S0, S1
VSTR            S0, [SP,#0xD0+var_78]
VSTR            S0, [SP,#0xD0+var_7C]
LDR             R0, [R5,#0x5E0]
AND             R0, R0, #0x20 ; ' '
MOV             R0, R0,LSR#5
STR             R0, [SP,#0xD0+var_D0]
LDR             R0, [R5]
LDR             R12, [R0,#0x2AC]
MOV             R0, R5
BLX             R12
LDR             R0, [R5,#0x4EC]
TST             R0, #8
BEQ             loc_1E6278
ADD             R6, R6, #1
CMP             R9, R6
BGT             loc_1E610C
B               loc_1E6278
VSTR            S21, [R4,#0x1F0]
VSTR            S20, [R4,#0x1F4]
LDR             R0, [SP,#0xD0+var_94]
MOV             R2, #0x10
ADD             R1, SP, #0xD0+var_68
STR             R0, [R5,#0x608]
LDR             R0, [SP,#0xD0+var_70]
STR             R0, [R5,#0x60C]
VMOV            R0, S23
STR             R0, [R4,#0x1CC]
LDR             R0, [SP,#0xD0+var_A0]
BL              sub_1103A4
NOP
NOP
B               loc_1E6148
VSTR            S19, [R5,#0x10C]
LDR             R0, [R5,#0x4EC]
BIC             R1, R0, #1
LDR             R0, [SP,#0xD0+var_78]
ORR             R0, R0, R1
BIC             R1, R0, #8
LDR             R0, [SP,#0xD0+var_74]
ORR             R1, R1, R0,LSL#3
LDR             R0, [SP,#0xD0+var_90]
STR             R1, [R0]
VSTR            S18, [R4,#0xC0]
LDR             R0, [SP,#0xD0+var_B8]
MOV             R2, #0x10
ADD             R1, SP, #0xD0+var_68
STR             R0, [R4,#0x1F0]
VSTR            S22, [R4,#0x1F4]
VSTR            S21, [R4,#0x1F8]
VSTR            S20, [R4,#0x1FC]
LDR             R0, [SP,#0xD0+var_94]
STR             R0, [R5,#0x608]
VMOV            R0, S23
STR             R0, [R4,#0x1CC]
LDR             R0, [SP,#0xD0+var_A0]
BL              sub_1103A4
ADD             SP, SP, #0x8C
VPOP            {D8-D11}
POP             {R4-R11,PC}
