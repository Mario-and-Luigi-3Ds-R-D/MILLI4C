PUSH            {R4-R10,LR}
MOV             R4, R0
ADD             R0, SP, #0x20+arg_0
MOV             R10, R1
LDM             R0, {R7-R9}
MOV             R5, R2
MOV             R6, R3
BL              sub_13DF78
CMP             R0, #0
BEQ             locret_13E6D0
LDR             R0, =0x131A
LDRH            R0, [R0,R4]
AND             R0, R0, #1
ADD             R0, R0, R0,LSL#1
ADD             R0, R4, R0,LSL#5
ADD             R0, R0, R10,LSL#2
ADD             R0, R0, #0x1000
LDR             R1, [R0,#0xB0]
STRH            R9, [R1,#0x40]
STRH            R8, [R1,#0x42]
STRH            R7, [R1,#0x44]
STRH            R6, [R1,#0x46]
STRH            R5, [R1,#0x48]
LDR             R0, [R1]
ORR             R0, R0, #0x1000000
STR             R0, [R1]
MOV             R0, #1
POP             {R4-R10,PC}
