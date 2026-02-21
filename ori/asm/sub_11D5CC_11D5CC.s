PUSH            {R4-R8,LR}
SUB             SP, SP, #8
LDR             R5, =byte_6D23B8
LDR             R0, [R5,#(dword_6D23C8 - 0x6D23B8)]
CMP             R0, #0
BEQ             loc_11D67C
LDR             R8, =dword_6D4B2C
LDR             R6, =dword_6EF0D0
MOV             R7, #0
LDR             R4, =dword_6D2410
LDREX           R0, [R4]
CMP             R0, #0
BLE             loc_11D684
SUB             R0, R0, #1
STREX           R2, R0, [R4]
CMP             R2, #0
BNE             loc_11D5F4
LDR             R0, [R5,#(dword_6D23C0 - 0x6D23B8)]
CMP             R0, #0
LDREQ           R0, [R6,#(dword_6EF0D4 - 0x6EF0D0)]
CMPEQ           R0, #0
BEQ             loc_11D630
LDR             R0, [R6,#(dword_6EF0D4 - 0x6EF0D0)]
CMP             R0, #0
BLE             loc_11D650
LDR             R4, [R5,#(dword_6D23C8 - 0x6D23B8)]
STR             R7, [R5,#(dword_6D23E8 - 0x6D23B8)]
MOV             R1, #1
LDR             R0, [R4,#0xC]
BL              sub_124068
MOV             R0, R4
NOP
BL              sub_1243E4
LDR             R0, [R5,#(dword_6D23C0 - 0x6D23B8)]
CMP             R0, #0
LDRNE           R0, [R6,#(dword_6EF0D4 - 0x6EF0D0)]
CMPNE           R0, #0
BLE             loc_11D670
LDR             R0, [R6,#(dword_6EF0D4 - 0x6EF0D0)]
SUB             R0, R0, #1
STR             R0, [R6,#(dword_6EF0D4 - 0x6EF0D0)]
LDR             R0, [R5,#(dword_6D23CC - 0x6D23B8)]
CMP             R0, #0
BNE             loc_11D5F0
ADD             SP, SP, #8
POP             {R4-R8,PC}
CLREX
ADD             R0, R4, #4
LDREXH          R1, [R0]
ADD             R1, R1, #1
SXTH            R1, R1
STREXH          R2, R1, [R0]
CMP             R2, #0
BNE             loc_11D68C
MOV             R2, #0
STRH            R1, [SP,#0x20+var_20]
UXTH            R0, R1
STRH            R0, [SP,#0x20+var_20]
LDR             R0, [R8]
MOV             R3, R2
STRD            R2, R3, [SP,#0x20+var_20]
MOV             R3, #1
MOV             R1, R4
MOV             R2, R3
BL              sub_1201E8
ADD             R1, R4, #4
LDREXH          R0, [R1]
SUB             R0, R0, #1
SXTH            R0, R0
STREXH          R2, R0, [R1]
CMP             R2, #0
BNE             loc_11D6D4
STRH            R0, [SP,#0x20+var_20]
UXTH            R0, R0
STRH            R0, [SP,#0x20+var_20]
B               loc_11D5F4
