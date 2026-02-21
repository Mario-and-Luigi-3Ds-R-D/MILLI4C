PUSH            {R4-R8,LR}
SUB             SP, SP, #0x20
BL              sub_109BC0
LDR             R7, =dword_6EB9D4
LDR             R8, =dword_6ED9B8
MOV             R0, #0x80
LDR             R1, [R7]
LDR             R2, [R7,#(dword_6EB9DC - 0x6EB9D4)]
SUB             R2, R2, R1
CMP             R0, R2,ASR#2
BLS             loc_105BF4
LDR             R2, [R7,#(dword_6EB9D8 - 0x6EB9D4)]
SUB             R1, R2, R1
MOV             R1, R1,ASR#2
ADD             R2, R1, R1,LSR#1
ADD             R4, R2, R1,LSR#3
ADD             R1, R1, #0x20 ; ' '
CMP             R1, R4
MOVHI           R4, R1
CMP             R4, #0x80
MOVLS           R4, R0
LDR             R0, [R8]
MOV             R1, R4,LSL#2
MOV             R2, #0x10000
LDR             R3, [R0,#0xC]
LDR             R0, =dword_6ED9B8
BLX             R3
LDM             R7, {R1,R2}
MOV             R5, R0
CMP             R1, R2
BEQ             loc_105BC4
CMP             R0, #0
LDRNE           R3, [R1]
ADD             R1, R1, #4
STRNE           R3, [R0]
CMP             R1, R2
ADD             R0, R0, #4
BNE             loc_105BA8
LDR             R0, [R7]
CMP             R0, #0
BLNE            sub_110D10
LDR             R0, [R7,#(dword_6EB9D8 - 0x6EB9D4)]
LDR             R1, [R7]
SUB             R0, R0, R1
BIC             R0, R0, #3
ADD             R0, R0, R5
STR             R0, [R7,#(dword_6EB9D8 - 0x6EB9D4)]
ADD             R0, R5, R4,LSL#2
STR             R5, [R7]
STR             R0, [R7,#(dword_6EB9DC - 0x6EB9D4)]
LDR             R4, =dword_6EB9C8
MOV             R1, #8
LDR             R0, [R4]
LDR             R2, [R4,#(dword_6EB9D0 - 0x6EB9C8)]
SUB             R2, R2, R0
CMP             R1, R2,ASR#4
BLS             loc_105CB0
LDR             R2, [R4,#(dword_6EB9CC - 0x6EB9C8)]
SUB             R0, R2, R0
MOV             R0, R0,ASR#4
ADD             R2, R0, R0,LSR#1
ADD             R5, R2, R0,LSR#3
ADD             R0, R0, #0x20 ; ' '
CMP             R0, R5
MOVHI           R5, R0
LDR             R0, [R8]
CMP             R5, #8
MOVLS           R5, R1
MOV             R2, #0x10000
LDR             R3, [R0,#0xC]
LDR             R0, =dword_6ED9B8
MOV             R1, R5,LSL#4
BLX             R3
LDM             R4, {R1,R3}
MOV             R6, R0
CMP             R1, R3
BEQ             loc_105C84
CMP             R0, #0
BEQ             loc_105C74
VLDM            R1, {S0-S3}
VSTM            R0, {S0-S2}
VSTR            S3, [R0,#0xC]
ADD             R1, R1, #0x10
CMP             R1, R3
ADD             R0, R0, #0x10
BNE             loc_105C60
LDR             R0, [R4]
CMP             R0, #0
BLNE            sub_110D10
LDR             R0, [R4,#(dword_6EB9CC - 0x6EB9C8)]
LDR             R1, [R4]
STR             R6, [R4]
SUB             R0, R0, R1
BIC             R0, R0, #0xF
ADD             R1, R6, R5,LSL#4
ADD             R0, R0, R6
STRD            R0, R1, [R4,#(dword_6EB9CC - 0x6EB9C8)]
LDR             R0, [R8]
MOV             R2, #0x1F
MOV             R1, #0x300000
LDR             R3, [R0,#0xC]
LDR             R0, =dword_6ED9B8
BLX             R3
LDR             R5, =dword_6CF8B8
MOV             R3, R0
MOV             R4, #0
STR             R0, [R5,#(dword_6CF8BC - 0x6CF8B8)]
LDRD            R0, R1, [R7]
CMP             R0, R1
BEQ             loc_105CF4
SUB             R0, R1, R0
BIC             R0, R0, #3
SUB             R0, R1, R0
STR             R0, [R7,#(dword_6EB9D8 - 0x6EB9D4)]
LDR             R0, =dword_6EB9C8
LDR             R1, [R0,#(dword_6EB9CC - 0x6EB9C8)]
LDR             R2, [R0]
CMP             R2, R1
BEQ             loc_105D18
SUB             R2, R1, R2
BIC             R2, R2, #0xF
SUB             R1, R1, R2
STR             R1, [R0,#(dword_6EB9CC - 0x6EB9C8)]
MOV             R2, #0
MOV             R1, #0x300000
MOV             R0, R3
BL              sub_109C14
LDR             R1, =unk_65B112
STR             R0, [R5]
BL              sub_109840
ADD             R0, SP, #0x38+var_24
ADD             R1, SP, #0x38+var_28
STR             R4, [SP,#0x38+var_20]
STR             R4, [SP,#0x38+var_24]
STR             R0, [SP,#0x38+var_34]; float
STR             R1, [SP,#0x38+var_38]; int
LDR             R0, =unk_6EB568
ADD             R3, SP, #0x38+var_20
ADD             R2, SP, #0x38+var_1C
MOV             R1, #0x2000000
STR             R4, [SP,#0x38+var_1C]
STR             R4, [SP,#0x38+var_28]
BL              sub_108CCC
MOVS            R2, R0; int
NOP
BEQ             loc_105DC8
LDR             R0, [SP,#0x38+var_1C]
MOV             R1, #0xFFFFFF
CMP             R0, R1
BEQ             loc_105DC8
ADD             R4, SP, #0x38+var_28
MOV             R1, #0xFFFFFFFF
LDM             R4, {R3,R12}
STR             R1, [SP,#0x38+var_2C]; float
MOV             R1, #0; int
STR             R3, [SP,#0x38+var_30]; int
STMEA           SP, {R0,R12}
LDR             R3, [SP,#0x38+var_20]; int
LDR             R0, [R5]; int
BL              sub_1098B4
MOV             R4, R0
LDR             R0, [R5]
MOV             R1, R4
BL              sub_113630
CMP             R0, #0
NOP
BEQ             loc_105DD8
LDR             R0, =byte_6EB9E0
BL              sub_106A20
ADD             SP, SP, #0x20 ; ' '
POP             {R4-R8,PC}
LDR             R0, =0xF42400
MOV             R1, #0
BL              sub_121140
NOP
NOP
B               loc_105DB0
