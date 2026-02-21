CMP             R1, #0
ADD             R1, R0, #0x2400
ADD             R1, R1, #0x294
ADD             R2, R0, #0x400
LDRBNE          R1, [R1]
ADD             R2, R2, #0x248
STRBNE          R1, [R0,#0x648]
BNE             locret_16F510
LDRB            R3, [R0,#0x648]
MOV             R0, #0
STRB            R3, [R1]
STRB            R0, [R2]
BX              LR
