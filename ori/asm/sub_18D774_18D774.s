LDR             R1, [R0]
MOV             R3, #0
LDR             R12, [R1,#0x50]
LDR             R1, =off_67DC24
LDM             R1, {R1,R2}
BX              R12
