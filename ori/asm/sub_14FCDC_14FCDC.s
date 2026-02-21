LDRB            R1, [R0,#0x18]
CMP             R1, #2
BNE             locret_14FCF8
LDR             R2, =dword_63E900
ADD             R0, R0, #0xC
LDM             R2, {R1,R2}
STM             R0, {R1,R2}
BX              LR
