PUSH            {R0-R2,R4-R11,LR}
MOV             R4, R1
LDRB            R1, [R1]
CMP             R1, #1
LDREQ           R1, [R0,#4]
LDRNE           R1, [R0]
ADD             R0, R0, R1,LSL#2
LDR             R5, [R0,#0xC]
LDR             R0, [R5,#0x38]
LDR             R1, [R5,#0x30]
ADD             R8, R0, R5
LDR             R0, [SP,#0x30+var_28]
ADD             R9, R1, R5
BL              sub_300168
MOV             R11, R0
LDR             R0, [R5,#0x34]
MOV             R7, #0
CMP             R0, #0
ADDHI           R10, R8, R11
BLS             loc_11E674
ADD             R6, R9, R7,LSL#3
MOV             R2, R11
LDR             R0, [R6]
ADD             R1, R0, R8
LDR             R0, [SP,#0x30+var_28]
BL              sub_12029C
CMP             R0, #0
NOP
BNE             loc_11E5A4
LDR             R0, [R6]
LDRSB           R0, [R0,R10]
CMP             R0, #0
BEQ             loc_11E5B8
CMP             R0, #0x2E ; '.'
BEQ             loc_11E5B8
LDR             R0, [R5,#0x34]
ADD             R7, R7, #1
CMP             R0, R7
BHI             loc_11E568
B               loc_11E674
LDR             R0, [R6]
ADD             R0, R0, R8
STR             R0, [R4,#4]
LDR             R0, [R6,#4]
AND             R0, R0, #0xFF
STRB            R0, [R4,#2]
LDR             R1, [R6,#4]
CMP             R0, #0x88
MOV             R1, R1,LSL#8
MOV             R1, R1,LSR#24
STRB            R1, [R4,#3]
BCS             loc_11E674
CMP             R0, #0x78 ; 'x'
BCC             loc_11E610
LDRB            R2, [R4,#1]
SUB             R0, R0, #0x78 ; 'x'
SUB             R1, R1, #0x78 ; 'x'
STRB            R0, [R4,#2]
CMP             R2, #4
STRB            R1, [R4,#3]
BEQ             loc_11E65C
B               loc_11E674
CMP             R0, #0x70 ; 'p'
BCC             loc_11E638
LDRB            R2, [R4,#1]
SUB             R0, R0, #0x70 ; 'p'
SUB             R1, R1, #0x70 ; 'p'
STRB            R0, [R4,#2]
CMP             R2, #3
STRB            R1, [R4,#3]
BEQ             loc_11E65C
B               loc_11E674
CMP             R0, #0x10
BCC             loc_11E668
LDRB            R2, [R4,#1]
SUB             R0, R0, #0x10
SUB             R1, R1, #0x10
STRB            R0, [R4,#2]
CMP             R2, #2
STRB            R1, [R4,#3]
BNE             loc_11E674
MOV             R0, #1
ADD             SP, SP, #0xC
POP             {R4-R11,PC}
LDRB            R0, [R4,#1]
CMP             R0, #1
BEQ             loc_11E660
ADD             SP, SP, #0xC
MOV             R0, #0
POP             {R4-R11,PC}
