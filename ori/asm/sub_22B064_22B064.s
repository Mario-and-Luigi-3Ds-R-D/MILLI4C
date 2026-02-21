LDR             R1, =off_6BB9E4
PUSH            {R4,LR}
STR             R1, [R0],#0x48
BL              sub_5BDB70
POP             {R4,LR}
SUB             R0, R0, #0x48 ; 'H'
B               sub_300FD4
