PUSH            {R4,LR}
MOV             R4, R0
UXTH            R3, R3
ADD             R0, R0, #0x18
BL              sub_11963C
CMP             R0, #0
BLEQ            sub_128434
MOV             R0, #0
STR             R0, [R4,#0x54]
POP             {R4,PC}
