MOV             R1, #0
ADD             R2, R0, #0x800
STR             R1, [R0,#0xA50]
ADD             R2, R2, #0x28C
STR             R1, [R0,#0xA54]
STR             R1, [R0,#0xA58]
LDM             R2, {R2,R3,R12}
STR             R1, [R0,#0xAA4]
ADD             R0, R0, #0x800
ADD             R0, R0, #0x298
STM             R0, {R2,R3,R12}
BX              LR
