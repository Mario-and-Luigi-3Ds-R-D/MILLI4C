LDR             R1, =off_6BB864
PUSH            {R4,LR}
STR             R1, [R0],#0x44
BL              sub_5BDB70
POP             {R4,LR}
SUB             R0, R0, #0x44 ; 'D'
B               sub_300FD4
