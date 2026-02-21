PUSH            {R4-R8,LR}
MOV             R6, R1
MOV             R8, R0
LDR             R0, [R2,#0x10]
ADD             R1, R2, #8
MOV             R5, R2
AND             R7, R0, #0xFF
LDM             R1, {R1,R2}
LDR             R0, =off_6CE970
AND             R4, R2, #0xFF
UXTH            R1, R1
LDR             R0, [R0]
BL              sub_528FF0
VLDR            S0, =0.0
CMP             R7, #0
BEQ             loc_207F78
CMP             R7, #1
BEQ             loc_207F8C
CMP             R7, #2
BEQ             loc_207FA0
CMP             R7, #3
BNE             loc_207FC4
B               loc_207FB4
LDR             R0, [R0,#0x204]
ADD             R1, R4, R4,LSL#2
ADD             R0, R0, R1,LSL#3
VLDR            S0, [R0,#0x10]
B               loc_207FC4
LDR             R0, [R0,#0x204]
ADD             R1, R4, R4,LSL#2
ADD             R0, R0, R1,LSL#3
VLDR            S0, [R0,#0xC]
B               loc_207FC4
LDR             R0, [R0,#0x204]
ADD             R1, R4, R4,LSL#2
ADD             R0, R0, R1,LSL#3
VLDR            S0, [R0,#0x14]
B               loc_207FC4
LDR             R0, [R0,#0x204]
ADD             R1, R4, R4,LSL#2
ADD             R0, R0, R1,LSL#3
VLDR            S0, [R0,#0x18]
CMP             R6, #0
LDRH            R0, [R5,#2]
ADDNE           R2, R6, #4
MOVEQ           R2, #0
MOV             R1, R8
BL              sub_145730
MOV             R0, #0
POP             {R4-R8,PC}
