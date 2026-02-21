PUSH            {R4-R10,LR}
MOV             R5, R0
VPUSH           {D8}
BL              sub_2CDF54
LDR             R1, [R5,#4]
LDRB            R0, [R1,#0xDE]
TST             R0, #1
BEQ             loc_201BC8
LDRB            R0, [R5,#0x1D3]
VLDR            S16, =0.0
CMP             R0, #3
BEQ             loc_201C08
CMP             R0, #4
BNE             loc_201BC8
VLDR            S0, [R1,#0xF4]
VLDR            S1, [R5,#0x1CC]
LDR             R9, =off_6D1648
LDR             R10, =0x208F6
VADD.F32        S0, S0, S1
ADD             R8, R5, #0x100
VSTR            S0, [R1,#0xF4]
LDR             R0, [R5,#4]
ADD             R0, R0, #0x650
LDM             R0, {R6,R7}
ORRS            R0, R6, R7
MOVNE           R4, #2
BEQ             loc_201AE8
MOV             R2, R4
MOV             R0, R6
MOV             R1, R7
BL              sub_14351C
TST             R0, #1
NOP
BEQ             loc_201ACC
LDR             R0, [R9]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, R4,LSL#2
ADD             R0, R0, #0x14000
LDR             R0, [R0,#0x184]
LDR             R1, [R0]
LDR             R1, [R1,#8]
BLX             R1
CMP             R0, #8
BEQ             loc_201AA8
STRH            R4, [R8,#0xE4]
LDR             R0, [R5]
LDR             R1, [R0,#0x6C]
MOV             R0, R5
BLX             R1
VMOV.F32        S0, S16
LDR             R1, [R5,#4]
MOV             R2, #0
MOV             R0, R10
VMOV.F32        S1, S0
BL              sub_1459F8
NOP
NOP
B               loc_201ADC
LDR             R0, [R9]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, R4,LSL#2
ADD             R0, R0, #0x14000
LDR             R0, [R0,#0x184]
LDRB            R0, [R0,#0xAAC]
CMP             R0, #1
CMPNE           R0, #0x12
BNE             loc_201A70
ADD             R0, R4, #1
AND             R4, R0, #0xFF
CMP             R4, #0x40 ; '@'
BCC             loc_201A2C
LDRSH           R0, [R8,#0xE4]
CMN             R0, #1
BNE             loc_201BC8
LDR             R4, [R5,#4]
LDR             R0, [R4,#0x164]
TST             R0, #7
BEQ             loc_201BD0
LDR             R0, =0x4B6
LDRH            R0, [R0,R4]
MOV             R1, R0,LSL#30
MOV             R0, R0,LSL#29
MOV             R6, R1,LSR#31
MOV             R7, R0,LSR#31
LDR             R0, [R9]
LDR             R0, [R0,#0xBC]
ADD             R1, R0, #0x13800
LDR             R0, [R4]
ADD             R1, R1, #0x3A4
LDR             R2, [R0,#0x74]
MOV             R0, R4
BLX             R2
LDR             R0, [R5,#4]
MOV             R1, #4
AND             R3, R1, R7,LSL#2
ADD             R0, R0, #0x400
MOV             R2, #2
LDRH            R1, [R0,#0xB6]
AND             R2, R2, R6,LSL#1
BIC             R4, R1, #2
MOV             R12, R1,LSL#30
ORR             R1, R4, R2
STRH            R1, [R0,#0xB6]
BIC             R1, R1, #4
MOVS            R0, R12,LSR#31
ORR             R2, R1, R3
LDR             R12, [R5,#4]
LDR             R1, =0x4B6
STRH            R2, [R1,R12]
BEQ             loc_201BC8
LDR             R1, [R5,#4]
LDRB            R0, [R1,#0xDE]
BIC             R0, R0, #1
STRB            R0, [R1,#0xDE]
ORR             R1, R0, #4
LDR             R0, [R5,#4]
STRB            R1, [R0,#0xDE]
LDR             R0, [R5,#4]
LDR             R1, [R0,#0x464]
ORR             R1, R1, #0x10000
STR             R1, [R0,#0x464]
LDR             R0, [R5,#4]
LDR             R1, [R0]
LDR             R2, [R1,#0x84]
MOV             R1, #0
BLX             R2
LDR             R0, [R5,#4]
LDR             R1, [R0,#0x164]
BIC             R1, R1, #7
STR             R1, [R0,#0x164]
VPOP            {D8}
POP             {R4-R10,PC}
MOV             R0, #0xFFFFFFFE
STRH            R0, [R8,#0xE4]
LDR             R0, [R5]
LDR             R1, [R0,#0x6C]
MOV             R0, R5
BLX             R1
VMOV.F32        S0, S16
LDR             R1, [R5,#4]
MOV             R0, R10
VPOP            {D8}
MOV             R2, #0
POP             {R4-R10,LR}
VMOV.F32        S1, S0
B               sub_1459F8
LDR             R0, [R1,#0x4EC]
TST             R0, #8
BNE             loc_201BC8
MOV             R0, #0
VMOV.F32        S0, S16
STRB            R0, [R5,#0x1D3]
MOV             R2, R0
VPOP            {D8}
LDR             R0, =0x208F7
POP             {R4-R10,LR}
VMOV.F32        S1, S0
B               sub_1459F8
