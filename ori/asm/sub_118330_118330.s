MOV             R12, R1
LDR             R1, [R0,#4]
LDRB            R2, [R0,#0x298]
MOV             R3, #1
MOV             R0, R12
ADD             R1, R3, R1,ASR#31
NOP
