MOV             R1, #0
PUSH            {R4,LR}
ADD             R2, R0, R1,LSL#2
LDR             R2, [R2,#0x18]
CMP             R2, #0
BEQ             loc_29BE58
LDR             R0, =off_6D1648
LDR             R0, [R0]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x15000
POP             {R4,LR}
ADD             R0, R0, #0x13C
B               sub_19BD00
ADD             R1, R1, #1
CMP             R1, #3
BLT             loc_29BE2C
POP             {R4,PC}
