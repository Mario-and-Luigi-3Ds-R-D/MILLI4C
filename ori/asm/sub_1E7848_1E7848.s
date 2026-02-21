MOV             R2, R1
ADD             R1, R0, #0x400
ADD             R1, R1, #0x358
NOP
LDRB            R0, [R1,#0x2F5]
MOV             R1, R2,LSL#1
MOV             R0, R0,LSR R1
AND             R0, R0, #3
BX              LR
