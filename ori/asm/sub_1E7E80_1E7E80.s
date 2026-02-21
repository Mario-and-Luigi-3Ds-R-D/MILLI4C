ADD             R0, R0, #0x400
ADD             R0, R0, #0x358
PUSH            {R4,LR}
BL              sub_2FCC28
LDR             R1, =off_6B8D74
ADD             R2, R1, #0x340
STR             R2, [R0,#-0x678]
STR             R1, [R0,#-0x758]
SUB             R0, R0, #0x264
BL              sub_233754
SUB             R0, R0, #0x400
SUB             R0, R0, #0xF4
BL              sub_22D030
POP             {R4,LR}
B               sub_300FD4
