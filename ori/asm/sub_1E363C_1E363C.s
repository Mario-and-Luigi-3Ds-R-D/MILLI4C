PUSH            {R0,R1,R4-R11,LR}
VPUSH           {D8}
SUB             SP, SP, #0xC
LDR             R4, [R1,#8]
STR             R4, [SP,#0x40+var_40]
LDR             R0, [SP,#0x40+var_2C]
LDR             R0, [R0,#0xC4]
LDR             R5, [R0,#4]
LDR             R0, [R5]
LDR             R1, [R0,#0x188]
MOV             R0, R5
BLX             R1
MOV             R6, R0
LDR             R0, [R5]
LDR             R1, [R0,#0x18C]
MOV             R0, R5
BLX             R1
LDRB            R7, [R4,#8]
MOV             R3, R0
ADD             R0, R6, #0x2600
ADD             R0, R0, #0x86
MOV             R7, R7,LSL#28
ADD             R12, R6, #0x2600
MOV             R9, R7,LSR#29
STRB            R9, [R0]
LDRH            R0, [R4,#2]
ADD             R1, R6, #0x2400
ADD             R1, R1, #0x294
STRH            R0, [R12,#0x84]
LDRB            R0, [R4,#6]
ADD             R2, R6, #0x2400
ADD             R2, R2, #0x36C
STRB            R0, [R1]
LDRH            R0, [R4]
ADD             R6, R6, #0x2700
ADD             R6, R6, #0x6D ; 'm'
STRH            R0, [R12,#0x88]
LDRB            R0, [R4,#8]
ADD             R8, R3, #0x2600
ADD             R3, R3, #0x2600
ADD             R3, R3, #0x76 ; 'v'
MOV             R0, R0,LSL#27
LDR             R7, =off_6D1648
MOV             R0, R0,LSR#31
STRB            R0, [R2]
LDRB            R0, [R4,#8]
MOV             R0, R0,LSL#26
MOV             R0, R0,LSR#31
STRB            R0, [R6]
LDRH            R0, [R4,#4]
STRH            R0, [R8,#0x74]
LDRB            R0, [R4,#7]
STRB            R0, [R3]
LDRB            R0, [R4,#8]
TST             R0, #1
BEQ             loc_1E3760
LDR             R1, [R4,#0xC]
LDR             R0, [R7]
MOV             R1, R1,LSL#16
MOV             R2, R1,LSR#24
ADD             R1, R0, #0x4000
ADD             R1, R1, #0xF40
ADD             R0, R0, #0x4C00
STR             R2, [R1]
LDR             R1, [R4,#0xC]
ADD             R0, R0, #0x344
MOV             R1, R1,LSL#8
MOV             R1, R1,LSR#24
STR             R1, [R0]
MOV             R1, R5
ADD             R0, R4, #0xC
BL              sub_37CA64
B               def_1E3798; jumptable 001E3798 default case
LDR             R0, [R7]
MOV             R1, #0xFF
VLDR            S16, =0.0
ADD             R2, R0, #0x4000
ADD             R2, R2, #0xF40
ADD             R0, R0, #0x4C00
ADD             R0, R0, #0x344
STR             R1, [R2]
STR             R1, [R0]
LDRB            R0, [R4,#8]
MOV             R6, #0
MOV             R0, R0,LSL#28
MOV             R0, R0,LSR#29
CMP             R0, #5; switch 5 cases
LDRCC           PC, [PC,R0,LSL#2]; switch jump
B               def_1E3798; jumptable 001E3798 default case
DCD loc_1E37B4; jump table for switch statement
LDR             R0, [R5]; jumptable 001E3798 case 0
LDR             R1, [R0,#0x188]
MOV             R0, R5
BLX             R1
MOV             R6, R0
LDR             R0, [R5]
LDR             R1, [R0,#0x18C]
MOV             R0, R5
BLX             R1
LDR             R3, [R4,#0xC]
ADD             R2, R6, #0x2400
ADD             R0, R0, #0x2400
STR             R3, [R2,#0x2D4]
LDR             R1, [R4,#0x10]
STR             R1, [R2,#0x2D8]
LDR             R1, [R4,#0x14]
STR             R1, [R0,#0x278]
LDR             R1, [R4,#0x18]
STR             R1, [R0,#0x27C]
B               def_1E3798; jumptable 001E3798 default case
LDR             R1, [R5]; jumptable 001E3798 case 1
MOV             R0, R5
LDR             R1, [R1,#0x188]
BLX             R1
ADD             R0, R0, #0x2400
LDRB            R1, [R4,#0xC]
ADD             R0, R0, #0x298
B               loc_1E3A00
LDR             R1, [R5]; jumptable 001E3798 case 2
MOV             R0, R5
LDR             R1, [R1,#0x188]
BLX             R1
LDR             R2, [R4,#0x10]
ADD             R1, R0, #0x2400
LDR             R7, =0x26A0
STR             R2, [R1,#0x298]
LDR             R2, [R4,#0x14]
ADD             R5, R7, #0xA
ORR             R8, R7, R7,ASR#13
STR             R2, [R1,#0x29C]
LDRB            R9, [R4,#0x18]
ADD             R12, R7, #8
ADD             R2, R5, #2
STRB            R9, [R7,R0]
STRB            R6, [R8,R0]
STRB            R6, [R12,R0]
STRB            R6, [R5,R0]
STRB            R6, [R2,R0]
ADD             R3, R2, #8
VSTR            S16, [R1,#0x2B0]
ADD             R7, R2, #0xA
ADD             R12, R2, #0xC
STRB            R6, [R3,R0]
STRH            R6, [R7,R0]
ADD             R1, R2, #0xBC
STRB            R6, [R12,R0]
LDR             R2, [R4,#0xC]
STR             R2, [R1,R0]
LDRB            R2, [R4,#0x19]
MOV             R1, #0x26C0
STRB            R2, [R1,R0]
LDRB            R2, [R4,#0x1A]
SUB             R1, R1, #0x15
STRB            R2, [R1,R0]
LDRB            R12, [R4,#0x1B]
SUB             R1, R1, #2
ADD             R2, R1, #0x13
ADD             R3, R1, #0x18
STRB            R12, [R1,R0]
STR             R6, [R2,R0]
STRB            R6, [R3,R0]
BL              sub_17124C
NOP
NOP
B               def_1E3798; jumptable 001E3798 default case
LDR             R1, [R5]; jumptable 001E3798 case 3
MOV             R0, R5
LDR             R1, [R1,#0x188]
BLX             R1
LDR             R2, [R4,#0x10]
ADD             R1, R0, #0x2400
LDR             R8, =0x26A0
STR             R2, [R1,#0x298]
LDR             R2, [R4,#0x14]
ORR             R7, R8, R8,ASR#13
STR             R2, [R1,#0x29C]
LDRB            R9, [R4,#0x18]
ADD             R5, R7, #9
ADD             R12, R7, #7
STRB            R9, [R8,R0]
STRB            R6, [R7,R0]
ADD             R2, R5, #2
STRB            R6, [R12,R0]
STRB            R6, [R5,R0]
STRB            R6, [R2,R0]
ADD             R3, R2, #8
VSTR            S16, [R1,#0x2B0]
ADD             R7, R2, #0xA
ADD             R12, R2, #0xC
STRB            R6, [R3,R0]
STRH            R6, [R7,R0]
ADD             R1, R2, #0xBC
STRB            R6, [R12,R0]
LDR             R2, [R4,#0xC]
STR             R2, [R1,R0]
LDRB            R2, [R4,#0x19]
MOV             R1, #0x26C0
STRB            R2, [R1,R0]
LDRB            R2, [R4,#0x1A]
SUB             R1, R1, #0x15
STRB            R2, [R1,R0]
LDRB            R12, [R4,#0x1B]
SUB             R1, R1, #2
ADD             R2, R1, #0x13
ADD             R3, R1, #0x18
STRB            R12, [R1,R0]
STR             R6, [R2,R0]
STRB            R6, [R3,R0]
BL              sub_17124C
NOP
NOP
B               def_1E3798; jumptable 001E3798 default case
LDR             R1, [R5]; jumptable 001E3798 case 4
MOV             R0, R5
LDR             R1, [R1,#0x188]
BLX             R1
LDRB            R12, [R4,#0xC]
ADD             R2, R0, #0x2400
ADD             R2, R2, #0x298
AND             R12, R12, #1
STRB            R12, [R2]
LDRB            R2, [R4,#0xC]
ADD             R1, R0, #0x2700
ADD             R1, R1, #0x6F ; 'o'
ADD             R3, R0, #0x2600
MOV             R2, R2,LSL#30
ADD             R3, R3, #0x99
MOV             R2, R2,LSR#31
STRB            R2, [R1]
LDRB            R1, [R4,#0xD]
ADD             R5, R0, #0x2600
ADD             R0, R0, #0x2400
STRB            R1, [R3]
LDRH            R1, [R4,#0xE]
ADD             R0, R0, #0x2A8
STRH            R1, [R5,#0xA0]
LDRB            R1, [R4,#0x10]
STRB            R1, [R0]
LDR             R0, [SP,#0x40+var_40]; jumptable 001E3798 default case
ADD             R7, R0, #0x20 ; ' '
LDR             R0, [SP,#0x40+var_2C]
ADD             R6, R7, #0x1400
LDR             R8, [R6,#0x170]
LDR             R5, [R0,#0xBC]
ADD             R4, R5, #0x16800
ADD             R4, R4, #0x1B8
MOV             R0, R4
BL              sub_5A18EC
STR             R8, [R4,#0xC]
STR             R8, [R4,#4]
ADD             R4, R5, #0x16800
ADD             R4, R4, #0x1EC
LDR             R8, [R6,#0x174]
MOV             R0, R4
BL              sub_5A18EC
STR             R8, [R4,#0xC]
ADD             R0, R7, #0x15C0
STR             R8, [R4,#4]
STR             R0, [SP,#0x40+var_3C]
LDRB            R0, [R0]
ADD             R1, R5, #0x16800
ADD             R1, R1, #0x2E8
MOV             R0, R0,LSL#30
MOV             R0, R0,LSR#31
STRB            R0, [R1]
MOV             R0, R1
ADD             R1, R6, #0x178
VLDR            S3, [R6,#0x180]
VLDR            S2, [R6,#0x184]
VLDM            R1, {S0-S1}
BL              sub_1E322C
ADD             R4, R5, #0x16000
ADD             R4, R4, #0xA20
LDR             R8, [R6,#0x188]
MOV             R0, R4
BL              sub_5A18EC
LDR             R0, =0x158C
STR             R8, [R4,#0xC]
STR             R8, [R4,#4]
LDR             R1, =0x16BBC
LDR             R2, [R0,R7]
ADD             R9, R5, #0x16800
ADD             R12, R0, #0xC
STR             R2, [R1,R5]
VLDR            S0, [R6,#0x190]
VLDR            S1, [R6,#0x194]
VSTR            S0, [R9,#0x3C0]
VSTR            S1, [R9,#0x3C4]
LDR             R12, [R12,R7]
ADD             R0, R1, #0xC
ADD             R8, R7, #0x1400
STR             R12, [R0,R5]
ADD             R0, R6, #0x19C
ADD             R1, R5, #0x16800
VLDM            R0, {S0-S1}
ADD             R0, R9, #0x3CC
ADD             R2, R5, #0x16C00
ADD             R3, R5, #0x16C00
ADD             R10, R7, #0x1000
ADD             R11, R5, #0x16000
ADD             LR, R7, #0x1400
ADD             R4, R5, #0x16C00
ADD             R8, R8, #0x1A4
ADD             R1, R1, #0x3D4
ADD             R2, R2, #0xD8
ADD             R3, R3, #0xFC
ADD             R10, R10, #0x5B0
ADD             R11, R11, #0xCE0
ADD             LR, LR, #0x1B8
ADD             R4, R4, #0xE8
VSTM            R0, {S0-S1}
B               loc_1E3B40
DCD off_6D1648
DCFS 0.0
DCD 0x26A0
DCD 0x158C
DCD 0x16BBC
LDR             R0, [R8]
ADD             R6, R6, #0x1A8
ADD             R9, R9, #0x3D8
STR             R0, [R1]
LDM             R6, {R0,R1}
STM             R9, {R0,R1}
LDR             R0, [SP,#0x40+var_3C]
LDRB            R0, [R0]
AND             R0, R0, #1
STRB            R0, [R2]
LDR             R0, [SP,#0x40+var_3C]
LDRB            R0, [R0]
AND             R0, R0, #4
MOV             R0, R0,LSR#2
STRB            R0, [R3]
LDRD            R0, R1, [R10]
STRD            R0, R1, [R11]
LDRD            R0, R1, [LR]
STRD            R0, R1, [R4]
ADD             R1, R5, #0x15000
ADD             R1, R1, #0x13C
MOV             R0, R7
BL              sub_321180
ADD             R1, R5, #0x16000
ADD             R0, R7, #0x1000
ADD             R1, R1, #0x338
ADD             R0, R0, #0x70 ; 'p'
BL              sub_110390
LDR             R1, [SP,#0x40+var_2C]
LDR             R0, [SP,#0x40+var_40]
LDR             R1, [R1,#0xC0]
ADD             R0, R0, #0x1400
ADD             R0, R0, #0x1E8
ADD             R1, R1, #0x3C000
LDRD            R2, R3, [R0]
ADD             R4, R1, #0x178
STM             R4, {R2,R3}
LDR             R2, [R0,#0xC]
LDR             R0, [R0,#8]
STR             R0, [R1,#0x180]
STR             R2, [R1,#0x184]
ADD             SP, SP, #0xC
VPOP            {D8}
ADD             SP, SP, #8
POP             {R4-R11,PC}
