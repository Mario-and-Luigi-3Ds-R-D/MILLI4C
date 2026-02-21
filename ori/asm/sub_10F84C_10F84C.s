PUSH            {R4-R9,LR}
SUB             SP, SP, #0x24
MOV             R4, #0
MOV             R7, R0
LDR             R6, =dword_70D34C
MOV             R9, R1
MOV             R8, R2
ADD             R5, R6, #4
MOV             R1, R4
MOV             R0, SP
STR             R4, [SP,#0x40+var_40]
BL              sub_120218
MOVS            R1, R0,LSR#31
BNE             loc_10F890
LDR             R1, [SP,#0x40+var_40]
MOV             R0, #0
STR             R1, [R5]
MOVS            R1, R0,LSR#31
BLNE            sub_12107C
LDR             R0, [R6,#(dword_70D350 - 0x70D34C)]
ADD             R5, R6, #4
CMP             R0, #0
BEQ             loc_10F8B0
SVC             0x23 ; '#'
STR             R4, [R5]
STR             R9, [R6,#(dword_70D350 - 0x70D34C)]
MOV             R1, R4
MOV             R0, SP
STR             R4, [SP,#0x40+var_40]
BL              sub_120218
MOVS            R1, R0,LSR#31
NOP
BNE             loc_10F8DC
LDR             R1, [SP,#0x40+var_40]
MOV             R0, #0
STR             R1, [R6]
MOVS            R1, R0,LSR#31
BLNE            sub_12107C
LDR             R5, =dword_70D34C
LDR             R0, [R5]
CMP             R0, #0
BEQ             loc_10F8FC
SVC             0x23 ; '#'
STR             R4, [R5]
LDR             R0, =dword_70D34C
ADD             R5, R6, #8
MOV             R1, R4
STR             R8, [R0]
MOV             R0, SP
STR             R4, [SP,#0x40+var_40]
BL              sub_120218
MOVS            R1, R0,LSR#31
NOP
BNE             loc_10F930
LDR             R1, [SP,#0x40+var_40]
MOV             R0, #0
STR             R1, [R5]
MOVS            R1, R0,LSR#31
BLNE            sub_12107C
LDR             R0, =dword_6D4954
MOV             R1, #1
BL              sub_120E48
LDR             R0, =byte_6D4940
MOV             R12, #4
ADD             R5, SP, #0x40+var_38
MOV             R3, #0xFFFFFFFE
STRB            R4, [R0]
STR             R12, [SP,#0x40+var_30]
LDR             R12, =sub_12015C
STR             R4, [SP,#0x40+var_20]
LDR             R1, =dword_6CA000
STR             R12, [SP,#0x40+var_2C]
LDR             R12, =nullsub_369
LDR             R2, =sub_11A7E0
ADD             R0, R0, #0xC
STR             R12, [SP,#0x40+var_28]
LDR             R12, =sub_120178
STR             R12, [SP,#0x40+var_24]
STM             R5, {R3,R4}
ADD             R3, SP, #0x40+var_20
STMEA           SP, {R1,R7}
ADD             R1, SP, #0x40+var_30
BL              sub_118C00
MOVS            R1, R0,LSR#31
NOP
BLNE            sub_12107C
ADD             SP, SP, #0x24 ; '$'
POP             {R4-R9,PC}
