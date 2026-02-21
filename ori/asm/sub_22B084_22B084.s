LDR             R1, =off_6BB9E4
PUSH            {R4,LR}
STR             R1, [R0],#0x48
BL              sub_5BDB70
SUB             R0, R0, #0x48 ; 'H'
POP             {R4,PC}
