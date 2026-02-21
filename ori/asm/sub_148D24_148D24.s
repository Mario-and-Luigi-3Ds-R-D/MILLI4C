LDR             R1, =off_6B5508
PUSH            {R4,LR}
STR             R1, [R0],#0xC
BL              sub_1E9FF4
POP             {R4,LR}
SUB             R0, R0, #0xC
B               nullsub_824
