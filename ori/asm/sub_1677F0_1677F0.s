PUSH            {R4,LR}
MOV             R4, R0
ADD             R0, R0, #0x15000
ADD             R0, R0, #0x24 ; '$'
BL              sub_2A8470
ADD             R0, R4, #0x15000
ADD             R0, R0, #0xB0
BL              sub_2A8470
MOV             R0, R4
BL              sub_1920C4
ADD             R0, R4, #0x16800
ADD             R0, R0, #0x254
MOV             R4, R0
BL              sub_59BF54
MOV             R0, R4
POP             {R4,LR}
B               sub_59CC94
