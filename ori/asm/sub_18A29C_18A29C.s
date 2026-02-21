PUSH            {R4-R8,LR}
BL              sub_2B5C90
LDR             R5, =off_6AFAD4
LDR             R12, =0x14408
MOV             R4, #0xFFFFFFFF
STR             R5, [R0]
MOV             R2, #0
SUB             R7, R12, R4,LSL#4
STR             R2, [R12,R0]
ADD             R6, R0, #0x14000
ADD             R12, R0, #0x14400
ADD             R6, R6, #0x410
MOV             R3, R2
STRH            R4, [R12,#0xC]
SUB             R5, R7, R4,LSL#2
STRD            R2, R3, [R6]
SUB             R8, R5, R4
STR             R2, [R7,R0]
STRB            R2, [R5,R0]
STRB            R2, [R8,R0]
VLDR            S0, =0.0
ADD             R0, R0, #0x14400
VSTR            S0, [R12,#0x20]
ADD             R0, R0, #0x24 ; '$'
BL              sub_5A1E2C
LDR             R1, =off_6B7BEC
MOV             R3, #1
MOV             R2, #0x1C
STR             R1, [R0],#0x18
LDR             R1, =sub_5A2F28
BLX             sub_1002F4
SUB             R0, R0, #0x18
ADD             R2, R0, #0x18
MOV             R1, #1
STR             R2, [R0,#0x10]
STRB            R1, [R0,#0x14]
ORR             R1, R1, R1,LSL#10
SUB             R4, R0, #0x14400
STR             R1, [R0,#-0x2A4]
SUB             R4, R4, #0x24 ; '$'
MOV             R1, #1
MOV             R0, R4
BL              sub_2B01F8
MOV             R0, R4
POP             {R4-R8,PC}
