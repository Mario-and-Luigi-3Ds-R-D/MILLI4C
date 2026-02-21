LDRB            R1, [R0,#0x24]
CMP             R1, #2
BNE             locret_1507A4
LDR             R2, =dword_63E8B0
ADD             R0, R0, #0xC
LDM             R2, {R1,R2}
STM             R0, {R1,R2}
BX              LR
