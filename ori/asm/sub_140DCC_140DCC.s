PUSH            {R4-R6,LR}
MOV             R5, R0
MOV             R6, R1
MOV             R4, R2
BL              sub_13DF78
CMP             R0, #0
BEQ             locret_140E88
LDR             R0, =0x131A
MOV             R3, #4
LDRH            R0, [R0,R5]
AND             R0, R0, #1
ADD             R0, R0, R0,LSL#1
ADD             R0, R5, R0,LSL#5
ADD             R0, R0, R6,LSL#2
ADD             R0, R0, #0x1000
LDR             R12, [R0,#0xB0]
SUB             R0, R4, #2
ADD             R2, R12, #4
ADD             R1, R12, #2
LDRH            LR, [R0,#2]
SUBS            R3, R3, #1
STRH            LR, [R1,#2]
LDRH            LR, [R0,#4]!
STRH            LR, [R1,#4]!
BNE             loc_140E18
ADD             R0, R4, #0xE
ADD             R1, R2, #0xE
MOV             R3, #4
LDRH            LR, [R0,#2]
SUBS            R3, R3, #1
STRH            LR, [R1,#2]
LDRH            LR, [R0,#4]!
STRH            LR, [R1,#4]!
BNE             loc_140E3C
ADD             R1, R2, #0x1E
ADD             R0, R4, #0x1E
MOV             R2, #4
LDRH            R3, [R0,#2]
SUBS            R2, R2, #1
STRH            R3, [R1,#2]
LDRH            R3, [R0,#4]!
STRH            R3, [R1,#4]!
BNE             loc_140E60
LDR             R0, [R12]
ORR             R0, R0, #0xE000000
STR             R0, [R12]
MOV             R0, #1
POP             {R4-R6,PC}
