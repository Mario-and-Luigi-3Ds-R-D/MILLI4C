PUSH            {R0,R1,R4-R11,LR}
MOV             R6, R0
LDR             R0, =dword_6EA234
SUB             SP, SP, #0x22C
LDR             R1, [R0]
CMP             R1, #0
BNE             loc_107040
LDR             R1, =byte_6CEDF0
MOV             R2, #0xC
MOV             R8, #0
MOV             R4, R8
ADD             R9, SP, #0x258+var_58
SUB             R7, R0, #0x1C
ADD             R10, SP, #0x258+var_34
STRB            R2, [R1]
B               loc_106D4C
CMP             R4, #6
BEQ             loc_106F0C
CMP             R4, #5
MOVEQ           R4, #6
BEQ             loc_106D44
CMP             R4, #4
MOVEQ           R4, #5
BEQ             loc_106D44
LDR             R0, =off_6BFDFC
STR             R8, [SP,#0x258+var_54]
STR             R8, [SP,#0x258+var_50]
STR             R8, [SP,#0x258+var_4C]
STR             R8, [SP,#0x258+var_48]
STR             R8, [SP,#0x258+var_44]
LDR             R2, [R0]; off_6BFE3C
ADD             R1, SP, #0x258+var_58
CMP             R4, #0
STR             R2, [SP,#0x258+var_58]
LDR             R2, [R2,#(dword_6BFE0C - 0x6BFE3C)]
LDR             R0, [R0,#(off_6BFE08 - 0x6BFDFC)]; off_6BFE3C
STR             R0, [R1,R2]
BEQ             loc_107048
LDR             R0, =unk_6CEE08
LDR             R2, [SP,#0x258+var_28]
LDR             R1, [R0,R4,LSL#2]
MOV             R0, SP
BL              sub_10D1D0
MOV             R1, SP
MOV             R2, #1
ADD             R0, R9, #4
STR             R8, [SP,#0x258+var_48]
STR             R8, [SP,#0x258+var_44]
STR             R8, [SP,#0x258+var_50]
STR             R8, [SP,#0x258+var_4C]
BL              sub_10D7A8
MOVS            R1, R0,LSR#31
MOVNE           R1, PC
BLNE            sub_10E1F8
ADD             R0, R9, #4
ADD             R1, SP, #0x258+var_40
BL              sub_113BF0
MOVS            R1, R0,LSR#31
MOV             R2, PC
MOVNE           R1, R2
BLNE            sub_10E1F8
MOV             R2, #0
LDR             R5, [SP,#0x258+var_40]
MOV             R1, R2
MOV             R0, #0x80
BL              sub_10D1B4
MOV             R2, R0
LDR             R0, [R6]
MOV             R1, R5
LDR             R3, [R0,#0xC]
MOV             R0, R6
BLX             R3
ADD             R12, R9, #4
MOV             R2, R0
STR             R0, [R7,R4,LSL#2]
MOV             R3, R5
ADD             R1, SP, #0x258+var_34
MOV             R0, R12
BL              sub_10D8F4
MOVS            R1, R0,LSR#31
MOV             R2, PC
MOVNE           R1, R2
BLNE            sub_10E1F8
LDR             R0, =unk_6EA250
ADD             R2, R4, R4,LSL#1
LDR             R1, [R7,R4,LSL#2]
ADD             R0, R0, R2,LSL#3
MOV             R5, R0
BL              sub_10EF48
LDR             R0, [SP,#0x258+var_54]
BICS            R0, R0, #1
BEQ             loc_106E90
LDR             R0, [SP,#0x258+var_54]
TST             R0, #1
BLNE            sub_128434
LDR             R0, [SP,#0x258+var_54]
BIC             R0, R0, #1
BL              sub_10D89C
STR             R8, [SP,#0x258+var_54]
LDR             R0, [R7,R4,LSL#2]
BL              sub_10F15C
MOV             R11, R0
MOV             R2, #0
MOV             R1, R2
MOV             R0, #4
BL              sub_10D1B4
MOV             R2, R0
LDR             R0, [R6]
MOV             R1, R11
LDR             R3, [R0,#0xC]
MOV             R0, R6
BLX             R3
LDR             R1, =dword_6EA234
STR             R0, [R1,R4,LSL#2]
MOV             R1, R0
MOV             R0, R5
BL              sub_10F120
LDR             R0, [SP,#0x258+var_54]
BICS            R0, R0, #1
BEQ             loc_106F00
LDR             R0, [SP,#0x258+var_54]
TST             R0, #1
BLNE            sub_128434
LDR             R0, [SP,#0x258+var_54]
BIC             R0, R0, #1
BL              sub_10D89C
STR             R8, [SP,#0x258+var_54]
ADD             R4, R4, #1
CMP             R4, #7
BLT             loc_106D44
LDR             R5, =off_6BFDFC
LDR             R1, =aR_0; "r"
MOV             R7, SP
LDR             R0, [R5,#(off_6BFE00 - 0x6BFDFC)]; off_656E4C
MOV             R2, R0
STR             R0, [SP,#0x258+var_258]
LDR             R2, [R2,#(dword_656E1C - 0x656E4C)]
LDR             R0, [R5,#(off_6BFE04 - 0x6BFDFC)]; off_656E4C
STR             R0, [SP,R2]
MOV             R2, #1
ADD             R0, SP, #0x258+var_254
STR             R8, [SP,#0x258+var_254]
STR             R8, [SP,#0x258+var_248]
STR             R8, [SP,#0x258+var_244]
STR             R8, [SP,#0x258+var_250]
STR             R8, [SP,#0x258+var_24C]
BL              sub_10D7A8
ANDS            R1, R0, #0x80000000
NOP
BPL             loc_106F68
MOV             R1, PC
MOVS            R2, R0,LSR#31
BLNE            sub_10E1F8
LDR             R0, [R5]; off_6BFE3C
MOV             R4, SP
MOV             R1, R0
STR             R0, [SP,#0x258+var_258]
LDR             R1, [R1,#(dword_6BFE0C - 0x6BFE3C)]
LDR             R0, [R5,#(off_6BFE08 - 0x6BFDFC)]; off_6BFE3C
STR             R0, [R7,R1]
ADD             R0, SP, #0x258+var_254
ADD             R1, SP, #0x258+var_240
BL              sub_113BF0
MOV             R1, PC
MOVS            R2, R0,LSR#31
BLNE            sub_10E1F8
MOV             R2, #0
LDR             R5, [SP,#0x258+var_240]
MOV             R1, R2
MOV             R0, #0x80
BL              sub_10D1B4
LDR             R1, [R6]
MOV             R2, R0
MOV             R0, R6
LDR             R3, [R1,#0xC]
MOV             R1, R5
BLX             R3
LDR             R1, =byte_6CEDF0
MOV             R2, R0
MOV             R3, R5
STR             R0, [R1,#(dword_6CEDF4 - 0x6CEDF0)]
ADD             R0, R4, #4
ADD             R1, SP, #0x258+var_240
BL              sub_10D8F4
MOV             R1, PC
MOVS            R2, R0,LSR#31
BLNE            sub_10E1F8
LDR             R0, [SP,#0x258+var_254]
BICS            R0, R0, #1
BEQ             loc_107018
LDR             R0, [SP,#0x258+var_254]
TST             R0, #1
BLNE            sub_128434
LDR             R0, [SP,#0x258+var_254]
BIC             R0, R0, #1
BL              sub_10D89C
STR             R8, [SP,#0x258+var_254]
LDR             R0, [SP,#0x258+var_254]
BICS            R0, R0, #1
BEQ             loc_107040
LDR             R0, [SP,#0x258+var_254]
TST             R0, #1
BLNE            sub_128434
LDR             R0, [SP,#0x258+var_254]
BIC             R0, R0, #1
BL              sub_10D89C
STR             R8, [SP,#0x258+var_254]
ADD             SP, SP, #0x234
POP             {R4-R11,PC}
ADR             R2, aRomMessageGaij; "rom:/Message/gaiji.bcfnt"
MOV             R0, SP
MOV             R1, #0x100
MOV             R3, R10
STR             R2, [SP,#0x258+var_38]
BLX             sub_100048
NOP
NOP
B               loc_106DB0
