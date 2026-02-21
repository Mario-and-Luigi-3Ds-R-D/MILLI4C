ADD             R0, R0, #0x400
ADD             R0, R0, #0x358
PUSH            {R4,LR}
BL              sub_2D2020
SUB             R0, R0, #0x400
POP             {R4,LR}
SUB             R0, R0, #0x358
B               sub_582B98
