LDR             R1, =off_6CE970
PUSH            {R4-R7,LR}
MOV             R4, R0
SUB             SP, SP, #0xC
LDR             R1, [R1]
VLDR            S1, =0.0039062
ADD             R0, R0, #0x2C ; ','
ADD             R1, R1, #0x190000
ADD             R1, R1, #0xDE00
LDRSH           R1, [R1,#(loc_19DEE0+2 - 0x19DE00)]
VMOV            S0, R1
VCVT.F32.S32    S0, S0
VMUL.F32        S0, S0, S1
BL              sub_5A176C
LDRB            R0, [R4,#0x19]
MOV             R7, #0
CMP             R0, #0xD; switch 13 cases
LDRCC           PC, [PC,R0,LSL#2]; switch jump
B               def_1A5874; jumptable 001A5874 default case, case 1
DCD loc_1A5A84; jump table for switch statement
MOV             R2, #0; jumptable 001A5874 case 10
LDR             R0, [R4,#0x1C]
MOV             R1, R2
BL              sub_5ECC58
MOV             R6, R0
ADD             R0, R4, #0x2C ; ','
BL              sub_5F1964
CMP             R0, #0
NOP
BNE             def_1A5874; jumptable 001A5874 default case, case 1
MOV             R0, R6
BL              sub_5F159C
CMP             R0, #0
NOP
BNE             def_1A5874; jumptable 001A5874 default case, case 1
MOV             R0, #0x100
MOV             R3, #0
STR             R0, [SP,#0x20+var_1C]
STR             R7, [SP,#0x20+var_20]
LDR             R0, [R4,#0x1C]
MOV             R2, #0xA
MOV             R1, R3
BL              sub_14F048
ADD             R5, R4, #0x2C ; ','
MOV             R0, R5
BL              sub_5A18EC
VLDR            S0, =0.0
ADD             R0, R4, #0x78 ; 'x'
VSTR            S0, [R5,#0xC]
VSTR            S0, [R5,#4]
LDM             R0, {R0-R2}
VLDR            S0, =1.0
STR             R0, [R5,#0x40]
ADD             R0, R5, #0x44 ; 'D'
STM             R0, {R1,R2}
ADD             R0, R4, #0x78 ; 'x'
LDM             R0, {R0-R2}
STR             R0, [R5,#0x34]!
ADD             R5, R5, #4
MOV             R0, #1
STM             R5, {R1,R2}
STRB            R0, [R4,#0x19]
MOV             R0, R6
BL              sub_5924AC
NOP
NOP
B               def_1A5874; jumptable 001A5874 default case, case 1
MOV             R2, #0; jumptable 001A5874 cases 2,3,6-9,11,12
LDR             R0, [R4,#0x1C]
MOV             R1, R2
BL              sub_5ECC58
MOV             R5, R0
NOP
BL              sub_5F159C
CMP             R0, #0
NOP
BNE             def_1A5874; jumptable 001A5874 default case, case 1
MOV             R0, R5
VLDR            S0, =1.0
BL              sub_5924AC
MOV             R0, #1
NOP
B               loc_1A5A10
MOV             R2, #0; jumptable 001A5874 case 4
LDR             R0, [R4,#0x1C]
MOV             R1, R2
BL              sub_5ECC58
MOV             R5, R0
NOP
BL              sub_5F159C
CMP             R0, #0
NOP
BNE             def_1A5874; jumptable 001A5874 default case, case 1
MOV             R0, #0x100
MOV             R3, #0
STR             R0, [SP,#0x20+var_1C]
STR             R7, [SP,#0x20+var_20]
LDR             R0, [R4,#0x1C]
MOV             R2, #6
MOV             R1, R3
BL              sub_14F048
LDR             R0, =off_6CE388
LDR             R0, [R0]
LDR             R0, [R0,#0x98]
VLDR            S0, [R0,#0xCC]
MOV             R0, R5
BL              sub_5924AC
MOV             R0, #5
STRB            R0, [R4,#0x19]
B               def_1A5874; jumptable 001A5874 default case, case 1
MOV             R2, #0; jumptable 001A5874 case 5
LDR             R0, [R4,#0x1C]
MOV             R1, R2
BL              sub_5ECC58
MOV             R5, R0
NOP
BL              sub_5F159C
CMP             R0, #0
NOP
BNE             def_1A5874; jumptable 001A5874 default case, case 1
MOV             R1, #0x100
MOV             R0, #1
STRD            R0, R1, [SP,#0x20+var_20]
MOV             R3, #0
LDR             R0, [R4,#0x1C]
MOV             R2, #7
MOV             R1, R3
BL              sub_14F048
LDR             R0, =off_6CE388
LDR             R0, [R0]
LDR             R0, [R0,#0x98]
VLDR            S0, [R0,#0xD0]
MOV             R0, R5
BL              sub_5924AC
MOV             R0, #6
NOP
B               loc_1A5A10
MOV             R2, #0; jumptable 001A5874 case 0
LDR             R0, [R4,#0x1C]
MOV             R1, R2
BL              sub_5ECC58
NOP
NOP
BL              sub_5F159C
CMP             R0, #0
MOVEQ           R0, #1
BEQ             loc_1A5A10
ADD             R0, R4, #0x2C ; ','; jumptable 001A5874 default case, case 1
BL              sub_1A5710
VSTMEA          SP, {S0-S2}
LDR             R0, [R4,#0x14]
LDR             R1, [R0]
LDR             R1, [R1,#0xC]
BLX             R1
MOV             R1, R0
LDR             R0, [R4,#0x10]
CMP             R0, #0
BLT             loc_1A5AEC
ADD             R1, R1, #4
LDM             R1, {R1,R2}
SUB             R2, R2, R1
CMP             R0, R2,ASR#6
ADDLT           R6, R1, R0,LSL#6
MOV             R2, SP
MOV             R1, R6
MOV             R0, R4
BL              sub_5C66FC
LDR             R0, [R6,#0x3C]
MOV             R5, #0
BIC             R0, R0, #0x800
STR             R0, [R6,#0x3C]
LDR             R0, [R4,#0x14]
LDR             R1, [R0]
LDR             R1, [R1,#0xC]
BLX             R1
CMP             R5, #5
MOV             R1, R0
BCC             loc_1A5B2C
BL              sub_2FE484
LDR             R0, [R4,R5,LSL#2]
CMP             R0, #0
BLT             loc_1A5B4C
ADD             R1, R1, #4
LDM             R1, {R1,R2}
SUB             R2, R2, R1
CMP             R0, R2,ASR#6
ADDLT           R6, R1, R0,LSL#6
MOV             R0, R6
BL              sub_4B6028
ADD             R5, R5, #1
CMP             R5, #5
BCC             loc_1A5B0C
LDR             R0, [R4,#0x14]
LDR             R1, [R0]
LDR             R1, [R1,#0x1C]
BLX             R1
MOV             R1, R0
LDR             R0, [R4,#8]
CMP             R0, #0
BLT             loc_1A5BA8
ADD             R1, R1, #4
LDR             R3, =0x2AAAAAAB
LDM             R1, {R1,R2}
SUB             R2, R2, R1
SMULL           R3, R2, R3, R2
MOV             R3, R2,ASR#3
SUB             R2, R3, R2,ASR#31
CMP             R2, R0
ADDGT           R0, R0, R0,LSL#1
ADDGT           R5, R1, R0,LSL#4
ADD             R0, R4, #0x84
VLDR            S0, [R5,#0xC]
VLDR            S2, [R5,#0x2C]
VLDR            S1, [R5,#0x1C]
VMOV.F32        S5, S0
VLDM            R0, {S6-S8}
VMOV.F32        S4, S2
VMOV.F32        S3, S1
ADD             R0, R4, #0x84
VSUB.F32        S5, S5, S6
VSUB.F32        S4, S4, S8
VSUB.F32        S3, S3, S7
VSTR            S5, [R4,#0x90]
ADD             R4, R4, #0x94
VSTM            R0, {S0-S2}
VSTM            R4, {S3-S4}
ADD             SP, SP, #0xC
POP             {R4-R7,PC}
