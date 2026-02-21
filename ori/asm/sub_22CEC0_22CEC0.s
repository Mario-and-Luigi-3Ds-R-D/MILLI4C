ADD             R0, R0, #0x400
ADD             R0, R0, #0x358
PUSH            {R4,LR}
BL              sub_2D2020
SUB             R0, R0, #0x400
SUB             R0, R0, #0x358
BL              sub_582B98
POP             {R4,LR}
B               sub_300FD4
