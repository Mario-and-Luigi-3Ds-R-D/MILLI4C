PUSH            {R4,LR}
MOV             R4, R0
LDR             R0, [R0,#4]
LDR             R0, [R0,#0x5C]
ADD             R0, R0, #0x1DC
BL              sub_5F19B8
CMP             R0, #0
LDREQ           R0, [R4,#4]
BLEQ            sub_61E4FC
POP             {R4,PC}
