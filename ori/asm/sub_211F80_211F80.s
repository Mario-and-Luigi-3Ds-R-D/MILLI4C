ADD             R2, R2, #8
PUSH            {R4-R6,LR}
MOV             R4, #0xA0
LDM             R2, {R1,R2}
MOV             R12, #0
LDR             R6, =off_6CE970
AND             R5, R1, #0xFF00
AND             R3, R1, #0xFF
CMP             R5, #0x7000
LDR             R1, [R6]
ADDEQ           R3, R0, R3,LSL#3
ADDEQ           R3, R3, #0x800
UXTH            R2, R2
ADDEQ           R3, R3, #0x2E4
BEQ             loc_211FD0
CMP             R5, #0x7100
LDREQ           R5, [R1,#4]
ADDEQ           R3, R4, R3,LSL#3
MOVNE           R3, R12
ADDEQ           R3, R3, R5
AND             R5, R2, #0xFF00
AND             R2, R2, #0xFF
CMP             R5, #0x7000
ADDEQ           R0, R0, R2,LSL#3
ADDEQ           R12, R0, #0x800
ADDEQ           R12, R12, #0x2E4
BEQ             loc_212000
CMP             R5, #0x7100
BNE             loc_212000
LDR             R0, [R1,#4]
ADD             R1, R4, R2,LSL#3
ADD             R12, R0, R1
LDRH            R0, [R3]
LDRH            R1, [R3,#2]
MUL             R2, R0, R1
LDR             R1, [R12,#4]
LDR             R0, [R3,#4]
MOV             R2, R2,LSL#2
BL              sub_1103A4
MOV             R0, #0
POP             {R4-R6,PC}
