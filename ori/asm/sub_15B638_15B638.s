PUSH            {R3-R5,LR}
LDR             R12, [SP,#0x10+arg_0]
STR             R12, [SP,#0x10+var_10]
BL              sub_173938
LDR             R1, =off_6AD07C
MOV             R4, R0
VLDR            S1, =0.0
ADD             R2, R1, #0x384
STR             R1, [R0]
ADD             R3, R2, #0x18
STR             R2, [R0,#0xE0]
STR             R3, [R0,#0x758]
ADD             R0, R0, #0x1000
ADD             R0, R0, #0x218
VLDR            S0, =15.0
MOV             R1, #0
VSTM            R0!, {S1}
VSTM            R0, {S0-S1}
ADD             R0, R4, #0x1000
STRB            R1, [R0,#0x224]
STR             R1, [R0,#0x228]
MOV             R0, R4
BL              sub_15B4B4
MOV             R0, R4
POP             {R3-R5,PC}
