PUSH            {R4-R11,LR}
MOV             R4, R0
ADD             R8, R0, #0x4C00
ADD             R10, R0, #0x4C00
ADD             R10, R10, #0x348
SUB             SP, SP, #0xC
LDRB            R0, [R10]
ADD             R8, R8, #0x34C
CMP             R0, #0
BEQ             loc_1E46F8
CMP             R0, #1
BNE             loc_1E49C8
B               loc_1E48F4
LDR             R0, [R4,#0xC8]
ADD             R6, R4, #0x4000
ADD             R7, R4, #0x4C00
TST             R0, #7
ADD             R6, R6, #0xF40
ADD             R7, R7, #0x344
BNE             loc_1E4728
MOV             R0, R4
BL              sub_5C8540
CMP             R0, #0
NOP
BEQ             loc_1E47C0
MOV             R0, #0
STR             R0, [R8]
ADD             R0, R4, #0x4000
ADD             R0, R0, #0xF10
LDR             R1, =unk_6ED84C
MOV             R2, #0x30 ; '0'
MOV             R5, R0
BL              sub_1103A4
LDR             R3, [R6]
ADD             R0, R4, #0x4000
ADD             R0, R0, #0xF30
STR             R0, [SP,#0x30+var_30]
ADD             R11, R4, #0x4C00
ADD             R0, R4, #0x4C00
ADD             R11, R11, #0x318
ADD             R0, R0, #0x33C
CMP             R3, #0xFF
STR             R0, [SP,#0x30+var_2C]
LDRNE           R12, [R11]
ADD             LR, R4, #0x4C00
ADD             R1, R4, #0x4C00
ADD             R2, R4, #0x4C00
ADD             R0, R4, #0x4C00
CMPNE           R12, R3
ADD             LR, LR, #0x324
ADD             R1, R1, #0x328
ADD             R2, R2, #0x334
ADD             R0, R0, #0x31C
BEQ             loc_1E4834
LDR             R9, [LR]
CMP             R9, R3
BNE             loc_1E47D8
VLDM            R5, {S2-S3}
VLDM            R0, {S0-S1}
VSTM            R0, {S2-S3}
STR             R12, [R0,#8]
VSTM            R5, {S0-S1}
B               loc_1E4804
MOV             R0, #0xFF
STR             R0, [R7]
MOV             R1, #0x80
STR             R0, [R6]
STR             R1, [R8]
B               loc_1E4730
LDR             R9, [SP,#0x30+var_30]
LDR             R9, [R9]
CMP             R9, R3
BNE             loc_1E480C
VLDM            R5, {S1-S2}
LDR             R3, [R1,#4]
VLDR            S0, [R1]
VSTM            R1, {S1-S2}
STR             R12, [R1,#8]
VSTR            S0, [R5]
STR             R3, [R5,#4]
STR             R9, [R5,#8]
B               loc_1E4834
LDR             R9, [SP,#0x30+var_2C]
LDR             R9, [R9]
CMP             R9, R3
BNE             loc_1E4834
VLDM            R5, {S2-S3}
VLDM            R2, {S0-S1}
VSTM            R2, {S2-S3}
STR             R12, [R2,#8]
VSTM            R5, {S0-S1}
STR             R9, [R5,#8]
LDR             R3, [R7]
CMP             R3, #0xFF
BEQ             loc_1E48BC
LDR             R12, [R11]
CMP             R12, R3
BNE             loc_1E4860
LDM             R0, {R3,R9,R11}
LDM             R5, {R1,R2}
STM             R5, {R3,R9,R11}
STM             R0, {R1,R2,R12}
B               loc_1E48BC
LDR             R12, [LR]
CMP             R12, R3
BEQ             loc_1E48BC
LDR             R5, [SP,#0x30+var_30]
LDR             R5, [R5]
CMP             R5, R3
BNE             loc_1E4890
LDM             R0, {R9,R11}
LDRD            R2, R3, [R1]
STM             R1, {R9,R11,R12}
STM             R0, {R2,R3,R5}
B               loc_1E48BC
LDR             R1, [SP,#0x30+var_2C]
LDR             R1, [R1]
CMP             R1, R3
BNE             loc_1E48BC
LDM             R0, {R5,R9}
LDR             R3, [R2]
VLDR            S0, [R2,#4]
STM             R2, {R5,R9,R12}
STR             R3, [R0]
VSTR            S0, [R0,#4]
STR             R1, [R0,#8]
MOV             R0, #0xFF
STR             R0, [R7]
STR             R0, [R6]
LDR             R0, [R4,#0x10]
LDR             R2, =unk_68E894
LDR             R3, [R0,#0x40]
SUB             R1, R2, #0x40 ; '@'
ADD             R3, R3, #0x384
LDR             R1, [R1,#(off_68E88C - 0x68E854)]; "r"
STR             R0, [R3,#0x18]
MOV             R0, R3
BL              sub_158B60
MOV             R0, #1
STRB            R0, [R10]
LDR             R0, [R4,#0x10]
LDR             R0, [R0,#0x40]
ADD             R0, R0, #0x384
BL              sub_1DFF00
CMP             R0, #0
LDREQ           R11, =0xFFFFF
MOVEQ           R5, #0
BNE             loc_1E49C8
ADD             R0, R5, R5,LSL#1
LDR             R1, [R4,#0x60]
ADD             R7, R4, R0,LSL#2
LDR             R0, =0x4F18
LDR             R0, [R0,R7]
ADD             R0, R0, R0,LSL#1
ADD             R6, R1, R0,LSL#5
MOV             R0, R6
BL              sub_5C75C8
CMP             R0, #0
NOP
BNE             loc_1E49A4
ADD             R7, R7, #0x4000
ADD             R7, R7, #0xF10
LDR             R7, [R7]
CMP             R7, R11
BEQ             loc_1E49A4
LDR             R0, [R4,#0x54]
LDR             R1, [R0]
LDR             R2, [R1,#8]
MOV             R1, R7
BLX             R2
MOV             R9, R0
LDR             R0, [R6]
CMP             R0, #0
BEQ             loc_1E49D0
LDR             R0, [R6,#8]
CMP             R0, #0
BEQ             loc_1E4A38
MOV             R0, R6
BL              sub_1E4CE4
MOV             R0, R6
NOP
BL              sub_1E4D00
ADD             R6, R6, #0x34 ; '4'
STM             R6, {R7,R9}
ADD             R5, R5, #1
CMP             R5, #4
BLT             loc_1E4914
LDR             R0, [R4,#0x10]
LDR             R0, [R0,#0x40]
ADD             R0, R0, #0x384
BL              sub_10D33C
MOV             R0, #2
STRB            R0, [R10]
ADD             SP, SP, #0xC
POP             {R4-R11,PC}
LDR             R0, [R4,#0x10]
LDR             R1, [R9]
LDR             R0, [R0,#0x40]
ADD             R0, R0, #0x384
BL              sub_158E18
MOV             R5, R0
LDR             R0, =dword_6ED9B8
MOV             R2, #0
MOV             R1, R5
LDR             R0, [R0]
LDR             R3, [R0,#0xC]
LDR             R0, =dword_6ED9B8
BLX             R3
MOV             R7, R0
LDR             R0, [R8]
STR             R5, [SP,#0x30+var_30]; int
MOV             R3, R7; int
STR             R0, [SP,#0x30+var_2C]; float
LDR             R2, [R9]; int
LDR             R0, [R4,#0x10]; int
MOV             R1, #0xF; int
BL              sub_532898
STR             R5, [R6,#4]
STR             R7, [R6]
ADD             SP, SP, #0xC
POP             {R4-R11,PC}
LDR             R0, [R4,#0x10]
LDR             R1, [R9,#4]
LDR             R0, [R0,#0x40]
ADD             R0, R0, #0x384
BL              sub_158E18
MOV             R5, R0
LDR             R0, =dword_6ED9B8
MOV             R2, #0x7F
MOV             R1, R5
LDR             R0, [R0]
LDR             R3, [R0,#0xC]
LDR             R0, =dword_6ED9B8
BLX             R3
MOV             R7, R0
LDR             R0, [R8]
STR             R5, [SP,#0x30+var_30]; int
MOV             R3, R7; int
STR             R0, [SP,#0x30+var_2C]; float
LDR             R2, [R9,#4]; int
LDR             R0, [R4,#0x10]; int
MOV             R1, #0xF; int
BL              sub_532898
STR             R7, [R6,#8]!
STR             R5, [R6,#4]
ADD             SP, SP, #0xC
POP             {R4-R11,PC}
