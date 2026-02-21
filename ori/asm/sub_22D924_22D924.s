LDRB            R3, [R2]
TST             R3, #7
BEQ             locret_22D958
BIC             R3, R3, #7
CMP             R1, #0
STRB            R3, [R2]
BEQ             locret_22D958
ADD             R1, R2, #0x20 ; ' '
LDR             R2, [R2,#0x28]
LDM             R1, {R1,R3}
STR             R2, [R0,#0xEC]
ADD             R0, R0, #0xE4
STM             R0, {R1,R3}
BX              LR
