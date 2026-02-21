PUSH            {R4,LR}
MOV             R4, R0
BL              sub_10754C
STR             R0, [R4]
BL              sub_10745C
LDR             R1, [R4]
ADD             R0, R0, R1
STR             R0, [R4,#4]
MOV             R0, #0x20000
BL              sub_10BB5C
STR             R0, [R4,#8]
MOV             R0, #0x20000
BL              sub_10BB20
STR             R0, [R4,#0xC]
MOV             R0, #0x30000
BL              sub_10BB5C
STR             R0, [R4,#0x10]
MOV             R0, #0x30000
BL              sub_10BB20
STR             R0, [R4,#0x14]
POP             {R4,PC}
