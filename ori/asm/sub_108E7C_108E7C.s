PUSH            {R4,R5,LR}
SUB             SP, SP, #0xC
LDR             R1, =0x8D42
MOV             R4, R0
MOV             R2, SP
SUB             R5, R1, #1
MOV             R0, R5
BL              sub_1162FC
ADD             R2, SP, #0x18+var_14
ORR             R1, R5, R5,ASR#14
MOV             R0, R5
BL              sub_1162FC
ADD             R5, R4, #0x800
LDMFD           SP, {R0,R3}
ADD             R5, R5, #0xAC
ADD             R4, R4, #0x800
MOV             R1, #0
ADD             R4, R4, #0xA4
STM             R5, {R0,R3}
MOV             R2, R1
STM             R4, {R1,R2}
ADD             SP, SP, #0xC
POP             {R4,R5,PC}
