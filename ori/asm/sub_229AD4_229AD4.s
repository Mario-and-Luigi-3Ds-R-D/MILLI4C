ADD             R0, R0, #0x21C00
ADD             R0, R0, #0x268
PUSH            {R4,LR}
NOP
SUB             R0, R0, #0x21C00
SUB             R0, R0, #0x264
BL              sub_5B9FC0
SUB             R0, R0, #4
POP             {R4,PC}
