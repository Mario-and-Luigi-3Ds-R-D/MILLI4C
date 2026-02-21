LDR             R0, =off_6D1648
PUSH            {R4,LR}
LDR             R0, [R0]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x15000
POP             {R4,LR}
ADD             R0, R0, #0x13C
B               sub_19BD00
