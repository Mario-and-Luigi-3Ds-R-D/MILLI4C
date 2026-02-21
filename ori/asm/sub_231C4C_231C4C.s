LDR             R2, =off_6B3478
MOV             R1, #0
PUSH            {R4,LR}
STR             R1, [R0,#0x164]
STR             R2, [R0]
BL              sub_533584
POP             {R4,LR}
B               sub_300FD4
