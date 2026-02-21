PUSH            {R4-R8,LR}
MOV             R4, R0
ADD             R0, R0, #0xA00
VPUSH           {D8-D10}
LDRH            R0, [R0,#0xA8]
TST             R0, #0x10
ADD             R0, R4, #0x118
VLDM            R0, {S16-S18}
ADD             R0, R4, #0x108
VLDM            R0, {S19-S21}
BEQ             loc_15B0D0
ADD             R0, R4, #0x800
ADD             R0, R0, #0x2CC
ADD             R5, R4, #0x10C
LDM             R0, {R0,R3,R12}
STR             R0, [R4,#0x108]
STM             R5, {R3,R12}
ADD             R5, R4, #0x118
STM             R5, {R0,R3,R12}
ADD             R5, R4, #0x400
LDR             R0, [R4,#0x648]
ADD             R5, R5, #0x248
AND             R6, R0, #1
MOV             R3, R0,LSL#29
MOV             R7, R3,LSR#31
BIC             R3, R0, #5
MOV             R0, R4
STR             R3, [R4,#0x648]
BL              sub_573788
ADD             R0, R4, #0x118
ADD             R4, R4, #0x108
VSTM            R0, {S16-S18}
MOV             R0, #4
AND             R0, R0, R7,LSL#2
VSTM            R4, {S19-S21}
LDR             R1, [R5]
BIC             R1, R1, #4
ORR             R0, R0, R1
BIC             R0, R0, #1
ORR             R0, R0, R6
STR             R0, [R5]
VPOP            {D8-D10}
POP             {R4-R8,PC}
