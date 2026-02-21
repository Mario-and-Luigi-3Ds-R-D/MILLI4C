PUSH            {R4-R8,LR}
ADD             R6, R3, #0x68 ; 'h'
MOV             R7, R0
LDR             R2, =0x13C8C
VPUSH           {D8-D9}
LDRB            R1, [R1,#0x14]
LDR             R12, [R0,#4]
LDR             R0, [R3,#8]
ADD             R2, R2, R1,LSL#2
LDR             R2, [R12,R2]
ADD             R8, R2, R0,LSL#1
MOV             R0, R12
LDRB            R2, [R8,#1]
BL              sub_1EA7F0
LDR             R1, [R7,#4]
LDR             R2, =0x15018
ADD             R3, R1, #0x13C00
ADD             R3, R3, #0x5C ; '\'
LDR             R5, [R2,R1]
ADD             R2, R0, #0x38 ; '8'
MOV             R0, R5
BL              sub_5965C0
ADD             R6, R6, #4
ADD             R4, R5, #0x158
VLDM            R6, {S16-S18}
MOV             R0, R4
BL              sub_5A26D0
ADD             R0, R4, #0x1C
ADD             R4, R4, #4
VSTM            R0, {S16-S18}
VSTM            R4, {S16-S18}
ADD             R4, R5, #0x100
LDR             R0, [R7,#4]
VLDR            S16, =0.0
LDR             R6, [R0,#0x48]
MOV             R0, R4
BL              sub_5A26D0
STR             R6, [R4,#0x1C]
VSTR            S16, [R4,#0x20]
VSTR            S16, [R4,#0x24]
LDR             R1, [R4,#0x20]
STR             R1, [R4,#8]
STR             R6, [R4,#4]
VSTR            S16, [R4,#0xC]
LDRB            R0, [R8,#1]
STRB            R0, [R5,#5]
MOV             R0, #0
VPOP            {D8-D9}
POP             {R4-R8,PC}
