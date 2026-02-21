PUSH            {R0-R2,R4-R11,LR}
SUB             SP, SP, #0x98
MOV             R11, R2
LDR             R1, =off_6CE970
LDR             R0, =0x1835D8
MOV             R2, #0x94
LDR             R1, [R1]
ADD             R4, R1, R0; loc_1835D8
ADD             R1, R4, #0x12800
ADD             R1, R1, #0x348
MOV             R0, SP
STR             R1, [SP,#0xC8+var_34]
BL              sub_127EB8
ADD             R1, R4, #0x10000
ADD             R1, R1, #0x2900
ADD             R0, R4, #0x12800
LDR             R7, [R1,#(off_195F20 - 0x195ED8)]!
ADD             R0, R0, #0x118
LDR             R10, [R1,#(off_195F44 - 0x195F20)]!
LDM             R0, {R5,R8,R9}
LDR             R6, [R1,#(flt_195F4C - 0x195F44)]
LDR             R0, [SP,#0xC8+var_30]
BL              sub_24D65C
LDR             R0, [SP,#0xC8+var_34]
MOV             R2, #0x94
MOV             R1, SP
BL              sub_127EB8
LDR             R1, =(off_195F44 - 0x1835D8)
LDR             R2, =0xFFFED693
SUB             R0, R1, #0x54 ; 'T'
STRB            R10, [R1,R4]; off_195F44
MOV             R1, R10,LSL#16
SUB             R2, R4, R2
MOV             R1, R1,ASR#24
STRB            R1, [R2]
MOV             R1, R10,LSL#8
ADD             R2, R0, #0x56 ; 'V'
MOV             R1, R1,LSR#24
STRB            R1, [R4,R2]; off_195F44
MVN             R1, R0
MOV             R2, R5,LSL#16
SUB             R1, R4, R1
STRB            R5, [R0,R4]
MOV             R2, R2,LSR#24
STRB            R2, [R1]
ORR             R0, R0, R0,ASR#12
MOV             R2, R5,LSL#8
ORR             R1, R0, R0,ASR#13
MOV             R2, R2,LSR#24
STRB            R2, [R4,R0]
MOV             R2, R5,LSR#24
STRB            R2, [R4,R1]
ADD             R0, R0, #2
MOV             R2, R8,LSL#8
ORR             R1, R0, R0,ASR#12
STRB            R8, [R0,R4]
MOV             R2, R2,LSR#24
STRB            R2, [R4,R1]
ADD             R0, R0, #3
MOV             R2, R8,LSR#24
STRB            R2, [R4,R0]
ADD             R1, R0, #1
LDR             R2, =0xFFFED6DF
STRB            R9, [R1,R4]
MOV             R1, R9,LSL#16
SUB             R2, R4, R2
MOV             R1, R1,LSR#24
STRB            R1, [R2]
ADD             R0, R0, #0x29 ; ')'
MOV             R1, R9,LSL#8
SUB             R2, R0, #0x26 ; '&'
MOV             R1, R1,LSR#24
STRB            R1, [R4,R2]
LDR             R2, =0xFFFED6B7
ADD             R1, R0, #0x2C ; ','
STRB            R7, [R0,R4]
MOV             R0, R7,LSL#16
SUB             R2, R4, R2
MOV             R0, R0,LSR#24
STRB            R0, [R2]
MOV             R0, R7,LSL#8
SUB             R2, R1, #0x2A ; '*'
MOV             R0, R0,LSR#24
STRB            R0, [R4,R2]
MVN             R0, R1
MOV             R2, R6,LSL#16
SUB             R0, R4, R0
MOV             R2, R2,LSR#24
STRB            R6, [R1,R4]
STRB            R2, [R0]
LDR             R0, =(flt_195F4C+2 - 0x1835D8)
MOV             R1, R6,LSL#8
MOV             R1, R1,LSR#24
STRB            R1, [R4,R0]; flt_195F4C
MOV             R1, #1
MOV             R0, R4
BL              sub_111BEC
BL              sub_464168
MOV             R1, R0
MOV             R0, R4
BL              sub_4A1F14
BL              sub_464168
MOV             R1, R0
MOV             R0, R4
BL              sub_4A1E40
LDR             R0, =(dword_196CA8 - 0x1835D8)
LDR             R1, =0x3E1FFFE7
STR             R1, [R0,R4]; dword_196CA8
MOV             R0, R4
BL              sub_4A1948
LDR             R0, [R11]
MOV             R1, #5
LDR             R2, [R0,#8]
MOV             R0, R11
BLX             R2
ADD             SP, SP, #0xA4
POP             {R4-R11,PC}
