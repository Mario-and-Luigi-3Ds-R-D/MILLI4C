MOV             R12, R3
PUSH            {R3-R5,LR}
ADD             R3, R1, R2
ADD             R1, R1, #3
BIC             R2, R1, #3
BIC             R3, R3, #3
CMP             R3, R2
SUBCS           R1, R3, R2
CMPCS           R1, #0x14
MOVCC           R0, #0
BCC             locret_1196C4
LDR             R1, =0x45585048
MOV             R4, R0
ADD             R5, R0, #0x24 ; '$'
STR             R12, [SP,#0x10+var_10]
BL              sub_121664
MOV             R2, #0
STRH            R2, [R5,#0x10]
STRH            R2, [R5,#0x12]
LDR             R1, [R4,#0x18]
LDR             R0, [R4,#0x1C]
LDR             R3, =0x4652
ADD             LR, R1, #4
SUB             R0, R0, R1
STRH            R3, [R1]
SUB             R0, R0, #0x10
STRH            R2, [R1,#2]
STM             LR, {R0,R2}
MOV             R0, R4
ADD             R4, R5, #4
STR             R2, [R1,#0xC]
STR             R1, [R5]
STM             R4, {R1,R2}
STR             R2, [R5,#0xC]
POP             {R3-R5,PC}
