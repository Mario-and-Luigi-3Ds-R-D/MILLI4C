PUSH            {R4-R9,LR}
MOV             R4, R0
SUB             SP, SP, #0xC
MOV             R6, R2
MOV             R5, R1
ADD             R0, R0, #0x80
BL              sub_592EDC
MOV             R0, R5
MOV             R1, #1
BL              sub_5F0474
MOV             R7, R0
MOV             R0, R5
ADD             R0, R0, #0xA0
MOV             R8, R0
MOV             R0, R5
MOV             R1, #0
BL              sub_5F0474
MOV             R9, #0
MOV             R2, #0x100
MOV             R1, R0
STR             R2, [SP,#0x28+var_20]
MOV             R3, R7
MOV             R2, R8
ADD             R0, R4, #0x80
STR             R9, [SP,#0x28+var_28]
STR             R9, [SP,#0x28+var_24]
BL              sub_1137FC
ADD             R0, R4, #0x80
BL              sub_14D500
LDR             R0, [R4,#8]
CMP             R0, #0
BEQ             loc_2A109C
LDR             R1, [R0]
MOV             R2, #0
LDR             R3, [R1,#0x58]
MOV             R1, R5
BLX             R3
STR             R6, [R4,#4]
STR             R4, [R6,#0x10]
STRB            R9, [R4,#0x276]
LDR             R0, [R6]
MOV             R1, R4
BL              sub_30D554
LDR             R0, =dword_6D1F40
NOP
BL              sub_546DB0
ADD             R0, R0, R0,LSL#1
MOV             R0, R0,LSL#1
MOV             R0, R0,LSR#16
STRB            R0, [R4,#0x26C]
LDR             R0, =dword_6D1F40
BL              sub_546DB0
MOV             R0, R0,LSL#1
MOV             R0, R0,LSR#16
STRB            R0, [R4,#0x26D]
LDR             R0, =dword_6D1F40
BL              sub_546DB0
MOV             R0, R0,LSL#2
MOV             R0, R0,LSR#16
STRB            R0, [R4,#0x26E]
LDR             R0, =dword_6D1F40
BL              sub_546DB0
MOV             R0, R0,LSL#2
MOV             R0, R0,LSR#16
STRB            R0, [R4,#0x26F]
LDR             R0, =dword_6D1F40
BL              sub_546DB0
ADD             R0, R0, R0,LSL#2
MOV             R0, R0,LSR#16
STRB            R0, [R4,#0x270]
LDR             R0, =dword_6D1F40
BL              sub_546DB0
AND             R0, R0, #1
STRB            R0, [R4,#0x271]
LDR             R0, [R4,#0x7C]
MOV             R6, #0
ADD             R5, R4, #0x14
CMP             R0, #0
BEQ             loc_2A1150
LDR             R1, [R0]
LDR             R1, [R1,#0x10]
BLX             R1
STR             R5, [R4,#0x7C]
LDR             R0, [R5]
MOV             R1, R6
LDR             R2, [R0,#8]
MOV             R0, R5
BLX             R2
LDR             R1, =off_6CDFD8
LDR             R0, [R4,#4]
LDR             R1, [R1]
LDRB            R0, [R0,#4]
LDR             R1, [R1,#0x280]
SUB             R1, R1, #1
CMP             R0, R1
BNE             loc_2A11A0
LDR             R0, =dword_6D1F40
BL              sub_546DB0
MOV             R0, R0,LSL#1
MOV             R0, R0,LSR#16
ADD             R0, R0, #3
STRB            R0, [R4,#0x26C]
MOV             R1, #1
STRB            R1, [R4,#0xE8]
STRB            R1, [R4,#0xEA]
STRB            R1, [R4,#0xE9]
ADD             SP, SP, #0xC
POP             {R4-R9,PC}
