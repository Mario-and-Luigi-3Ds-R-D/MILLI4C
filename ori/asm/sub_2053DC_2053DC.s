PUSH            {R4,LR}
LDR             R1, [R2,#8]
AND             R2, R1, #0xFF00
AND             R1, R1, #0xFF
CMP             R2, #0x7000
ADDEQ           R0, R0, R1,LSL#3
ADDEQ           R0, R0, #0x800
ADDEQ           R0, R0, #0x2E4
BEQ             loc_20540C
CMP             R2, #0x7100
MOVNE           R0, #0
BEQ             loc_20541C
NOP
BL              sub_203B00
MOV             R0, #0
POP             {R4,PC}
LDR             R0, =off_6CE970
LDR             R2, [R0]
MOV             R0, #0xA0
ADD             R0, R0, R1,LSL#3
LDR             R2, [R2,#4]
ADD             R0, R0, R2
B               loc_20540C
