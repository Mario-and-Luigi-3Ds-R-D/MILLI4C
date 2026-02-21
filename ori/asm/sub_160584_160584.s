ADD             R3, R0, #0x3C000
ADD             R3, R3, #0x180
MOV             R2, R1
PUSH            {R4,LR}
LDM             R3, {R0,R1}
BL              sub_14351C
AND             R0, R0, #1
POP             {R4,PC}
