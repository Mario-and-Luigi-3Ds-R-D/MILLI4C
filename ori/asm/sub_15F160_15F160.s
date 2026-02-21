PUSH            {R0-R2,R4,R5,LR}
MOV             R4, R0
LDR             R5, =off_6D1648
LDR             R0, [R5]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x16000
ADD             R0, R0, #0x338
ADD             R3, SP, #0x18+var_10
ADD             R2, SP, #0x18+var_14
MOV             R1, R4
BL              sub_21DC20
ADD             R3, SP, #0x18+var_14
MOV             R0, R4
LDM             R3, {R1,R2}
BL              sub_573788
LDR             R0, [R5]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x16000
ADD             R0, R0, #0x338
ADD             R3, SP, #0x18+var_10
ADD             R2, SP, #0x18+var_14
MOV             R1, R4
BL              sub_21DF60
ADD             SP, SP, #0xC
POP             {R4,R5,PC}
