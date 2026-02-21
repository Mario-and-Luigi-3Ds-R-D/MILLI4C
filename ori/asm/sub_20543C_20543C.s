PUSH            {R4-R6,LR}
MOV             R5, #0
LDR             R1, [R2,#8]
AND             R2, R1, #0xFF00
AND             R1, R1, #0xFF
CMP             R2, #0x7000
ADDEQ           R0, R0, R1,LSL#3
ADDEQ           R4, R0, #0x800
ADDEQ           R4, R4, #0x2E4
BEQ             loc_205470
CMP             R2, #0x7100
MOVNE           R4, R5
BEQ             loc_205494
LDR             R0, [R4,#4]
CMP             R0, #0
BEQ             loc_205484
BL              sub_2FF5D4
STR             R5, [R4,#4]
STRH            R5, [R4]
MOV             R0, #0
STRH            R5, [R4,#2]
POP             {R4-R6,PC}
LDR             R0, =off_6CE970
LDR             R2, [R0]
MOV             R0, #0xA0
ADD             R0, R0, R1,LSL#3
LDR             R2, [R2,#4]
ADD             R4, R2, R0
B               loc_205470
