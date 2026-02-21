PUSH            {R4,LR}
MOV             R4, R0
LDR             R0, [R0]
ADD             R1, R4, #0x13C00
MOV             R3, #1
ADD             R1, R1, #0x84
LDR             R12, [R0,#0x154]
LDR             R0, =0xFFFEBD7B
SUB             R2, R4, R0
MOV             R0, R4
BLX             R12
CMP             R0, #0
BNE             locret_18F680
LDR             R0, [R4]
MOV             R3, #1
LDR             R12, [R0,#0x50]
LDR             R0, =off_67DC5C
LDM             R0, {R1,R2}
MOV             R0, R4
POP             {R4,LR}
BX              R12
POP             {R4,PC}
