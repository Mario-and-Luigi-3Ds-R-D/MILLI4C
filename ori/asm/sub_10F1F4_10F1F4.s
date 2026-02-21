PUSH            {R0-R3}
PUSH            {R4,LR}
ADD             R3, SP, #0x18+varg_r3
LDR             R2, [SP,#0x18+varg_r2]
BL              sub_131A94
POP             {R4}
LDR             PC, [SP+0x14+var_14],#0x14
