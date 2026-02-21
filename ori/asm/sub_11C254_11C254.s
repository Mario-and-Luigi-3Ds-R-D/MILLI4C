PUSH            {R4-R10,LR}
MOV             R4, #0
MOV             R8, R4
LDR             R9, =byte_6D23B8
LDR             R6, =dword_6FB424
VPUSH           {D8}
LDR             R0, [R9,#(dword_6D23E0 - 0x6D23B8)]
VLDR            S16, =0.0
VLDR            S17, =1.0
ADD             R0, R0, #1
STR             R0, [R9,#(dword_6D23E0 - 0x6D23B8)]
ADD             R0, R4, R4,LSL#3
ADD             R0, R0, R4,LSL#7
LDR             R1, [R6,R0,LSL#2]
CMP             R1, #0
BEQ             loc_11C2E0
ADD             R5, R6, R0,LSL#2
LDR             R0, [R5,#4]
CMP             R0, #0
BEQ             loc_11C2E0
BL              sub_12C9B4
CMP             R0, #0
NOP
BNE             loc_11C2E0
CMP             R5, #0
BEQ             loc_11C2E0
STR             R8, [R5]
STR             R8, [R5,#4]
ADD             R1, R5, #0xC
STR             R8, [R5,#8]
MOV             R0, #0x21C
VSTM            R1, {S16-S17}
STR             R8, [R5,#0x14]
STR             R8, [R5,#0x18]
STRH            R8, [R0,R5]
ADD             R4, R4, #1
CMP             R4, #8
BLT             loc_11C280
LDR             R1, [R6]
MOV             R0, R6
CMP             R1, #0
LDREQ           R1, [R9,#(dword_6D23E0 - 0x6D23B8)]
STREQ           R1, [R0,#(dword_6FB43C - 0x6FB424)]
BEQ             loc_11C3E4
MOV             R1, #1
MOV             R2, R1
RSB             R12, R1, #9
ADD             R3, R1, R1,LSL#3
ADD             R3, R3, R1,LSL#7
LDR             R3, [R0,R3,LSL#2]
CMP             R3, #0
BEQ             loc_11C3EC
ADD             R2, R2, #1
CMP             R12, R2
ADD             R1, R1, #1
BGT             loc_11C310
MOV             R4, #0
MOV             R7, R4
MOV             R5, R4
MOV             R10, R6
ADD             R0, R4, R4,LSL#3
ADD             R0, R0, R4,LSL#7
LDR             R1, [R10,R0,LSL#2]
CMP             R1, #0
BEQ             loc_11C390
ADD             R6, R10, R0,LSL#2
LDR             R0, [R6,#4]
CMP             R0, #0
BEQ             loc_11C390
BL              sub_12C9B4
CMP             R0, #0
NOP
BEQ             loc_11C390
LDR             R0, [R6,#0x18]
LDR             R1, [R9,#(dword_6D23E0 - 0x6D23B8)]
SUB             R0, R1, R0
CMP             R0, R7
MOVHI           R7, R0
MOVHI           R5, R6
ADD             R4, R4, #1
CMP             R4, #8
BLT             loc_11C344
CMP             R5, #0
MOVEQ           R0, #0
BEQ             loc_11C3E4
MOV             R2, #0xFFFFFFFF
LDR             R0, [R5,#4]
MOV             R1, R2
BL              sub_1250C8
STR             R8, [R5]
STR             R8, [R5,#4]
ADD             R0, R5, #0xC
STR             R8, [R5,#8]
MOV             R1, #0x21C
VSTM            R0, {S16-S17}
STR             R8, [R5,#0x14]
STRH            R8, [R1,R5]
LDR             R0, [R9,#(dword_6D23E0 - 0x6D23B8)]
STR             R0, [R5,#0x18]
MOV             R0, R5
VPOP            {D8}
POP             {R4-R10,PC}
ADD             R3, R1, R1,LSL#3
ADD             R1, R3, R1,LSL#7
LDR             R2, [R9,#(dword_6D23E0 - 0x6D23B8)]
ADD             R0, R6, R1,LSL#2
STR             R2, [R0,#0x18]
VPOP            {D8}
POP             {R4-R10,PC}
