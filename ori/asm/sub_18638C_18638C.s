LDR             R1, [R0,#0x464]
LDR             R2, =unk_67DFB0
LDR             R0, [R0,#0x658]
AND             R1, R1, #0xF
LDRB            R1, [R2,R1]
MOV             R0, R0,LSL#20
ANDS            R0, R1, R0,LSR#26
MOVNE           R0, #1
BX              LR
