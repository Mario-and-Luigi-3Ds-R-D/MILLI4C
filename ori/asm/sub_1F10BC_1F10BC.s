PUSH            {R4-R7,LR}
MOV             R5, R0
MOV             R4, #0
MOV             R7, R4
VPUSH           {D8}
SUB             SP, SP, #0xC
LDR             R0, [R0,#0xC4]
VLDR            S16, =0.0
MOV             R6, SP
LDR             R1, [R0,#4]
LDR             R1, [R1,#4]
STR             R1, [SP,#0x28+var_28]
LDR             R0, [R0,#4]
LDR             R0, [R0,#8]
STR             R0, [SP,#0x28+var_24]
LDR             R0, [R6,R4,LSL#2]
LDR             R1, [R0,#0x86C]
AND             R1, R1, #0xF
CMP             R1, #6
CMPNE           R1, #0xF
BNE             loc_1F1160
LDR             R1, =0x468
LDRH            R1, [R1,R0]
SUB             R1, R1, #8
CMP             R1, #8
BCS             loc_1F1160
LDR             R1, [R0]
LDR             R1, [R1,#0x370]
BLX             R1
LDR             R0, [R6,R4,LSL#2]
LDR             R1, [R0]
LDR             R1, [R1,#0x3C0]
BLX             R1
LDR             R0, [R6,R4,LSL#2]
ADD             R0, R0, #0x400
STRH            R7, [R0,#0x68]
VSTR            S16, [R0,#0x78]
LDR             R0, [R6,R4,LSL#2]
LDR             R1, [R0]
LDR             R1, [R1,#0x88]
BLX             R1
ADD             R4, R4, #1
CMP             R4, #2
BLT             loc_1F10F8
LDR             R0, [R5,#0xC4]
LDR             R0, [R0,#4]
LDR             R1, [R0,#0x14]
BIC             R1, R1, #0x40 ; '@'
STR             R1, [R0,#0x14]
ADD             SP, SP, #0xC
VPOP            {D8}
POP             {R4-R7,PC}
