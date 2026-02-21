PUSH            {R4,LR}
BL              sub_129AA0
CMP             R0, #0
LDREQ           R0, =0x202BF8
BEQ             locret_122EF8
BL              sub_129DB8
POP             {R4,LR}
B               sub_129CF8
POP             {R4,PC}
