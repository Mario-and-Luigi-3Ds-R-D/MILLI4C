PUSH            {R4-R6,LR}
MOV             R4, R0
LDR             R0, =off_6D1648
MOV             R5, R1
LDR             R0, [R0]
LDR             R0, [R0,#0xBC]
MOV             R2, R5
MOV             R1, R4
POP             {R4-R6,LR}
ADD             R0, R0, #0x15000
ADD             R0, R0, #0x13C
B               sub_19A674
