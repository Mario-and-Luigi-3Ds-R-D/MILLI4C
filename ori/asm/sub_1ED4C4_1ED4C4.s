STR             R1, [R0,#0x154]
LDR             R1, [R0]
MOV             R3, #1
LDR             R12, [R1,#0x28]
LDR             R1, =off_67E1A4
LDM             R1, {R1,R2}
BX              R12
