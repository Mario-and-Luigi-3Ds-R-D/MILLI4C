LDR             R1, =off_6B6440
PUSH            {R4,LR}
STR             R1, [R0],#0x1BC
BL              sub_232C90
LDR             R1, =off_6B5508
STR             R1, [R0,#-0x1BC]
SUB             R0, R0, #0x1B0
BL              sub_1E9FF4
POP             {R4,LR}
SUB             R0, R0, #0xC
B               nullsub_824
