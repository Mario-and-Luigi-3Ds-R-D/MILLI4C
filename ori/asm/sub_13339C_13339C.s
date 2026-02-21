PUSH            {R4-R6,LR}
MOV             R6, R0
MOV             R5, R1
MOV             R4, R2
BL              sub_13DF78
CMP             R0, #0
BEQ             locret_133478
LDR             R0, =0x131E
LDRH            R1, [R4]
ADD             R2, R5, R5,LSL#2
LDRH            R0, [R0,R6]
TST             R1, #1
ADD             R0, R6, R0,LSL#2
ADD             R0, R0, #0x1000
LDR             R0, [R0,#0xA0]
ADD             R3, R0, #4
BEQ             loc_1333EC
LDRH            R1, [R4,#2]
ADD             R12, R3, R2,LSL#2
STRH            R1, [R12,#0x2A]
LDRH            R1, [R4]
TST             R1, #4
BEQ             loc_133424
LDRH            R1, [R4,#6]
ADD             R12, R3, R2,LSL#2
STRH            R1, [R12,#0x2E]
LDRH            R1, [R4,#0xC]
STRH            R1, [R12,#0x34]
LDRH            R1, [R4,#0xE]
STRH            R1, [R12,#0x36]
LDRH            R1, [R4,#0x10]
STRH            R1, [R12,#0x38]
LDRH            R1, [R4,#0x12]
STRH            R1, [R12,#0x3A]
LDRH            R1, [R4]
TST             R1, #2
BEQ             loc_13343C
LDR             R1, [R4,#8]
ADD             R12, R3, R2,LSL#2
STR             R1, [R12,#0x30]
ADD             R1, R3, R2,LSL#2
LDRH            R2, [R4]
LDRH            R3, [R1,#0x28]
CMP             R5, #0
ORR             R2, R2, R3
STRH            R2, [R1,#0x28]
LDREQ           R1, [R0]
ORREQ           R1, R1, #0x400
BEQ             loc_133470
CMP             R5, #1
LDREQ           R1, [R0]
ORREQ           R1, R1, #0x800
BNE             loc_133474
STR             R1, [R0]
MOV             R0, #1
POP             {R4-R6,PC}
