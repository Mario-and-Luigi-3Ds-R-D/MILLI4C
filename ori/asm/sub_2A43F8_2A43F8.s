STRB            R1, [R0,#0x34C]
LDM             R2, {R1,R3}
LDR             R2, [R2,#8]
STR             R2, [R0,#0x358]
ADD             R0, R0, #0x350
STM             R0, {R1,R3}
BX              LR
