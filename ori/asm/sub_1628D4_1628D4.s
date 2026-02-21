PUSH            {R4,LR}
MOV             R4, R0
MOV             R3, R2
MOV             R2, #0
MOV             R0, #0x570
BL              sub_10A358
CMP             R0, #0
BLNE            sub_15EB38
ADD             R4, R4, #0x13C00
ADD             R4, R4, #0x24 ; '$'
STR             R0, [R4]
POP             {R4,PC}
