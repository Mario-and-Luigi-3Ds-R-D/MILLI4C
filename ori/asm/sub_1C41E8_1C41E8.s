PUSH            {LR}
LDM             R1, {R0,R2,R3}
SUB             SP, SP, #0x14
ADD             R12, SP, #0x18+var_14
MOV             R1, #0
STM             R12, {R0,R2,R3}
MOV             R3, #1
LDR             R0, =off_6CE970
ADD             R2, SP, #0x18+var_14
LDR             R0, [R0]
STR             R1, [SP,#0x18+var_18]
LDR             R1, =0x1AA
BL              sub_52AEA8
ADD             SP, SP, #0x14
POP             {PC}
