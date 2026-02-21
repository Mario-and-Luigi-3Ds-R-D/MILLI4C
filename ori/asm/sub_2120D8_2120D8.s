PUSH            {R4,LR}
LDR             R3, [R2,#0x10]
ADD             R2, R2, #8
LDM             R2, {R1,R12}
LDR             R2, =off_6CE970
AND             R4, R1, #0xFF00
AND             R1, R1, #0xFF
CMP             R4, #0x7000
LDR             R2, [R2]
ADDEQ           R0, R0, R1,LSL#3
ADDEQ           R0, R0, #0x800
ADDEQ           R0, R0, #0x2E4
BEQ             loc_212118
CMP             R4, #0x7100
MOVNE           R0, #0
BEQ             loc_212130
LDR             R1, =0x1063B4
LDR             R1, [R1,R2]
MOV             R2, R12
BL              sub_2034CC
MOV             R0, #0
POP             {R4,PC}
LDR             R0, [R2,#4]
MOV             R4, #0xA0
ADD             R1, R4, R1,LSL#3
ADD             R0, R0, R1
B               loc_212118
