PUSH            {R4,LR}
MOV             R4, R0
BL              sub_1233A8
BL              sub_123148
MOV             R1, R4
BL              sub_123938
MOV             R1, PC
MOVS            R2, R0,LSR#31
BLNE            sub_1215E4
POP             {R4,LR}
B               sub_123520
