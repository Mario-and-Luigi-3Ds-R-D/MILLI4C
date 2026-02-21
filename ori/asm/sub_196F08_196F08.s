LDRB            R1, [R0,#0x254]
ADD             R0, R0, R1,LSL#2
LDR             R0, [R0,#0x218]
LDRH            R0, [R0,#0xBA]
AND             R0, R0, #1
BX              LR
