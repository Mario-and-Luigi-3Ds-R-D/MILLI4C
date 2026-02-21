PUSH            {R4-R8,LR}
MOV             R5, R1
MOV             R6, R0
LDR             R7, [R1,#4]
MOV             R1, R7
BL              sub_1EA6C4
MOV             R4, #0
ADD             R0, R7, R4,LSL#2
ADD             R0, R0, #0x2000
ADD             R1, R4, R4,LSL#2
ADD             R0, R0, #0x670
ADD             R2, R1, R4,LSL#6
LDR             R1, [R0]
ADD             R0, R6, R2,LSL#2
ADD             R0, R0, #0x150
BL              sub_2337C4
ADD             R4, R4, #1
CMP             R4, #4
BLT             loc_1EA5E4
ADD             R7, R7, #0x2680
LDR             R0, [R7]
ADD             R7, R6, #0x400
ADD             R7, R7, #0x1A4
AND             R1, R0, #1
STR             R1, [R6,#0x5A0]
LDR             R4, [R5,#8]
MOV             R0, R7
MOV             R1, R4
BL              sub_1EA6C4
ADD             R4, R4, #0x2000
ADD             R4, R4, #0x670
ADD             R0, R7, #0x150
LDR             R1, [R4]
BL              sub_2337C4
ADD             R2, R5, #0x14
ADD             R0, R6, #0x800
LDM             R2, {R2,R3,R12}
ADD             R6, R6, #0x800
ADD             R6, R6, #8
ADD             R1, R5, #0x800
STM             R6, {R2,R3,R12}
LDRD            R2, R3, [R5,#0x20]
STRD            R2, R3, [R0,#0x14]
LDRH            R2, [R5,#0x3C]
STRH            R2, [R0,#0x1C]
LDRH            R2, [R5,#0x3E]
STRH            R2, [R0,#0x1E]
LDRH            R2, [R5,#0x40]
STRH            R2, [R0,#0x20]
LDRH            R2, [R5,#0x42]
STRH            R2, [R0,#0x22]
LDRH            R2, [R5,#0x4A]
AND             R2, R2, #3
STRH            R2, [R0,#0x24]
LDRH            R2, [R5,#0x4C]
STRH            R2, [R0,#0x26]
LDR             R2, [R1,#0x54]
STR             R2, [R0,#0x28]
LDRD            R2, R3, [R1,#0x60]
LDR             R1, [R1,#0x68]
STR             R1, [R0,#0x34]
STRD            R2, R3, [R0,#0x2C]
POP             {R4-R8,PC}
