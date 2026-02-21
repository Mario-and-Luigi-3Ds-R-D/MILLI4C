PUSH            {R4-R9,LR}
SUB             SP, SP, #0x34
MOV             R8, R0
MOV             R6, SP
ADD             R9, R0, #0x490
ADD             R5, R0, #0x5D0
MOV             R7, #4
MOV             R4, #0
MOV             R2, R5
MOV             R1, R9
MOV             R0, R6
BL              sub_1169FC
ADD             R4, R4, #1
CMP             R4, R7
ADD             R5, R5, #0xC
ADD             R6, R6, #0xC
BLT             loc_27CBD8
ADD             R4, SP, #0x50+var_2C
ADD             R0, R8, #0x570
LDM             R4, {R1-R3}
ADD             R4, SP, #0x50+var_44
STM             R0, {R1-R3}
ADD             R0, R8, #0x400
LDMFD           SP, {R1-R3}
ADD             R0, R0, #0x17C
STM             R0, {R1-R3}
ADD             R0, R8, #0x400
LDM             R4, {R1-R3}
ADD             R0, R0, #0x188
ADD             R4, SP, #0x50+var_38
STM             R0, {R1-R3}
ADD             R0, R8, #0x400
LDM             R4, {R1-R3}
ADD             R0, R0, #0x194
ADD             R4, SP, #0x50+var_44
STM             R0, {R1-R3}
ADD             R0, R8, #0x5A0
LDMFD           SP, {R1-R3}
STM             R0, {R1-R3}
ADD             R0, R8, #0x400
LDM             R4, {R1-R3}
ADD             R0, R0, #0x1AC
ADD             R4, SP, #0x50+var_38
STM             R0, {R1-R3}
ADD             R0, R8, #0x400
LDM             R4, {R1-R3}
ADD             R0, R0, #0x1B8
ADD             R4, SP, #0x50+var_2C
STM             R0, {R1-R3}
ADD             R0, R8, #0x400
LDM             R4, {R1-R3}
ADD             R0, R0, #0x1C4
STM             R0, {R1-R3}
ADD             SP, SP, #0x34 ; '4'
POP             {R4-R9,PC}
