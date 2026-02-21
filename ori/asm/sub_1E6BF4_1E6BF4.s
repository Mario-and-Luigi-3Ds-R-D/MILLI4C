ADD             R1, R0, #0x400
ADD             R1, R1, #0x358
NOP
LDRB            R0, [R1,#0x2F4]
MOV             R0, R0,LSL#26
MOV             R0, R0,LSR#29
BX              LR
