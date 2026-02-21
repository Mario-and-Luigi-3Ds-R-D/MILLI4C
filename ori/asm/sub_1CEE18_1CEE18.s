PUSH            {R0-R11,LR}
SUB             SP, SP, #0x14
MOV             R4, R3
MOV             R3, #0x13
MOV             R2, #0x1CC
MOV             R9, #0
LDR             R1, =off_6B165C
STR             R9, [R0,#4]
STR             R9, [R0,#8]
STR             R1, [R0],#0xC
LDR             R1, =sub_1CECE4
STR             R9, [R0],#4
BLX             sub_1002F4
ADD             R5, R0, #0x1000
ADD             R5, R5, #0xFF0
LDR             R10, =off_6CE970
STRB            R9, [R5,#0x234]
STRB            R9, [R5,#0x235]
STR             R9, [R5,#0x238]
LDR             R11, =0x1214C8
SUB             R7, R0, #0x10
STR             R4, [R5,#0x240]
MOV             R0, #0
STR             R9, [R5,#0x23C]
STR             R0, [SP,#0x48+var_48]
NOP
BL              sub_47FC0C
LDR             R1, [SP,#0x48+var_48]
LDR             R0, [SP,#0x48+var_30]
ADD             R0, R0, R1,LSL#1
LDRH            R1, [R0,#4]
LDRB            R0, [R5,#0x234]
ADD             R1, R1, R0
UXTH            R1, R1
CMP             R0, R1
STR             R1, [SP,#0x48+var_38]
BCS             loc_1CEFB8
LDRB            R1, [R5,#0x234]
MOV             R2, #0x73 ; 's'
LDR             R0, [SP,#0x48+var_48]
LDR             R6, [SP,#0x48+var_2C]
SMULBB          R1, R1, R2
LDR             R8, [SP,#0x48+arg_0]
ADD             R1, R7, R1,LSL#2
ADD             R4, R1, #0x10
STRB            R0, [R1,#0x10E]
MOV             R1, #1
MOV             R0, R4
BL              sub_14C450
LDR             R0, =flt_6E2A58
ADD             R1, SP, #0x48+var_44
LDR             R0, [R0,#(dword_6E2B24 - 0x6E2A58)]
STRB            R0, [R4,#0xF6]
MOV             R0, R8
BL              sub_47F374
LDRB            R1, [R4,#0xFE]
ADD             R3, SP, #0x48+var_44
MOV             R2, R6
ADD             R0, R4, #0x110
BL              sub_47F708
STRB            R9, [R4,#0xFD]
STR             R7, [R4,#0x10C]
LDRB            R0, [R4,#0xFE]
BL              sub_47FC0C
LDRB            R1, [R0,#2]
MOV             R6, R0
LDR             R0, [R10]
MOV             R2, #0xFFFFFFFF
ADD             R0, R0, R11; loc_1214C8
BL              sub_5F15E4
MOV             R1, R0
ADD             R0, R4, #0x100
BL              sub_123C70
LDR             R0, =0x106
STRH            R9, [R0,R4]
LDR             R0, [R10]
LDRB            R1, [R6,#2]
ADD             R0, R0, R11; loc_1214C8
BL              sub_5F1670
MOV             R8, R0
LDR             R0, =dword_6D1F40
BL              sub_546DB0
MUL             R0, R0, R8
LDRB            R1, [R6,#2]
MOV             R2, R0,LSR#16
LDR             R0, [R10]
ADD             R0, R0, R11; loc_1214C8
BL              sub_5F15E4
MOV             R1, R0,LSL#8
ADD             R0, R4, #0x100
BL              sub_485780
ADD             R1, R4, #0x24 ; '$'
ADD             R0, R4, #0x110
BL              sub_5E34A8
MOV             R1, #0
MOV             R0, R4
BL              sub_14C3E8
LDRB            R0, [R5,#0x234]
ADD             R0, R0, #1
AND             R0, R0, #0xFF
STRB            R0, [R5,#0x234]
LDR             R1, [SP,#0x48+var_38]
CMP             R0, R1
BCC             loc_1CEEAC
LDR             R0, [SP,#0x48+var_48]
ADD             R0, R0, #1
AND             R0, R0, #0xFF
CMP             R0, #5
STR             R0, [SP,#0x48+var_48]
BCC             loc_1CEE7C
LDRB            R0, [R5,#0x234]
STRB            R0, [R5,#0x235]
CMP             R0, #0
STRB            R0, [R5,#0x236]
BEQ             loc_1CF000
LDR             R0, [R10]
LDR             R12, =0xFFE683CC
LDR             R2, =0x30077
MOV             R3, #0
ADD             R1, R7, #0x10
SUB             R0, R0, R12
BL              sub_503720
LDR             R0, [R5,#0x240]
MOV             R1, R7
BL              sub_1CF9FC
LDR             R0, [R5,#0x240]
LDRH            R1, [R0,#0x20]
ADD             R1, R1, #1
STRH            R1, [R0,#0x20]
ADD             SP, SP, #0x24 ; '$'
MOV             R0, R7
POP             {R4-R11,PC}
