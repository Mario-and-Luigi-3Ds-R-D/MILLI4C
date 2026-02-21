PUSH            {R3-R9,LR}
MOV             R8, #0
LDR             R1, =off_6B2AA0
STR             R8, [R0,#4]
STR             R1, [R0]
STR             R8, [R0,#8]
STR             R8, [R0,#0xC]
STRB            R8, [R0,#0x10]
ADD             R0, R0, #0x14
BL              sub_2A264C
SUB             R4, R0, #0x14
LDR             R0, =dword_6E7CD0
BL              sub_5F10B0
STRH            R0, [R4,#0xD4]
LDR             R0, =dword_6E2378
LDR             R7, =dword_6EDAE8
MOV             R2, #1
LDRB            R1, [R0,#(byte_6E238B - 0x6E2378)]
CMP             R1, #2
CMPNE           R1, #3
CMPNE           R1, #1
BNE             loc_214748
LDRB            R1, [R0,#(byte_6E2386 - 0x6E2378)]
LDRB            R0, [R0,#(byte_6E238C - 0x6E2378)]
CMP             R1, #0
BEQ             loc_21470C
CMP             R0, #6; switch 6 cases
LDRCC           PC, [PC,R0,LSL#2]; switch jump
B               def_2146EC; jumptable 002146EC default case, case 0
DCD def_2146EC; jump table for switch statement
CMP             R0, #0xA; switch 10 cases
LDRCC           PC, [PC,R0,LSL#2]; switch jump
B               def_2146EC; jumptable 002146EC default case, case 0
DCD loc_214790; jump table for switch statement
CMP             R2, #0; jumptable 002146EC default case, case 0
BEQ             loc_214790; jumptable 002146EC cases 1-5
LDR             R0, [R7]
CMP             R0, #0
LDREQ           R5, =dword_6EDAE8
ADDEQ           R6, R5, #4
BNE             loc_214774
BL              sub_460744
MOV             R2, R0
MOV             R1, #0
MOV             R0, R6
BL              sub_461B5C
STR             R0, [R5]
STRB            R8, [SP,#0x20+var_20]
LDR             R0, [R7]
MOV             R1, SP
BL              sub_4608C4
NOP
NOP
B               loc_2147A4
LDR             R0, [R7]; jumptable 002146EC cases 1-5
CMP             R0, #0
BEQ             loc_2147A4
BL              sub_461D5C
STR             R8, [R7]
MOV             R3, #0
LDR             R1, =dword_6ED9B8
LDR             R0, =off_1A00A0
MOV             R2, R3
BL              sub_10A358
CMP             R0, #0
MOVNE           R1, R4
BLNE            sub_1D7350
STR             R0, [R4,#0xC]
MOV             R0, R4
POP             {R3-R9,PC}
