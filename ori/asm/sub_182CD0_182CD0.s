LDR             R1, =off_6D1648
ADD             R2, R3, #8
LDR             R0, =0x13C28
LDM             R2, {R2,R12}
LDR             R1, [R1]
LDR             R3, [R3,#0x10]
ADD             R1, R1, R2,LSL#2
ADD             R0, R0, R12,LSL#2
LDR             R1, [R1,#0xBC]
STR             R3, [R1,R0]
MOV             R0, #0
BX              LR
