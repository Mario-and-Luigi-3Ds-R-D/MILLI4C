PUSH            {R4-R10,LR}
MOV             R5, R0
MOV             R4, R1
MOV             R6, R2
LDR             R0, [R0,#0xBC]
MOV             R7, R3
ADD             R0, R0, #0x10000
ADD             R0, R0, #0x3D00
LDRH            R0, [R0,#4]
BL              sub_2AF718
TST             R6, #0xF000
MOV             R8, R0
MOV             R9, #0xFFFFFFFF
MOV             R10, #0
BEQ             loc_1EB43C
MOV             R0, R6
BL              sub_50EFC4
STR             R0, [R4,#8]
LDRH            R0, [R4]
LDR             R1, =unk_67E49C
BIC             R0, R0, #3
ORR             R0, R0, #1
STRH            R0, [R4]
LDRB            R1, [R1,R7]
AND             R0, R0, #3
ORR             R1, R0, R1,LSL#2
STRH            R1, [R4]
LDR             R0, [R4,#8]
LDR             R0, [R0,#0xC]
STRH            R0, [R4,#2]
LDR             R0, [R5,#0x60]
ADD             R0, R0, #0x1E0
STR             R0, [R4,#4]
LDR             R0, [R8]
TST             R0, #1
MOVEQ           R1, #0x9D
MOVNE           R1, #0xC7
ADD             R0, R4, #0xC
STM             R0, {R1,R9}
LDRH            R0, [R4]
AND             R1, R0, #3
CMP             R1, #1
BEQ             loc_1EB490
MOV             R1, R0,LSR#2
LDR             R0, =dword_6E7CD0
BL              sub_586D84
MOV             R7, R0
CMP             R7, #0
MOVNE           R0, #1
MOVEQ           R0, #0
STRH            R10, [R4,#0x14]
POP             {R4-R10,PC}
STR             R10, [R4,#8]
LDRH            R0, [R4]
BIC             R1, R6, #0xF000
BIC             R2, R0, #3
ORR             R0, R2, #2
LDR             R2, =unk_67E4BC
STRH            R0, [R4]
AND             R0, R0, #3
ADD             R1, R1, R1,LSL#1
LDRB            R2, [R2,R7]
ORR             R2, R0, R2,LSL#2
STRH            R2, [R4]
STRH            R1, [R4,#2]
LDR             R0, [R5,#0x60]
ADD             R0, R0, #0x240
STR             R0, [R4,#4]
LDR             R0, [R8]
TST             R0, #1
MOVNE           R1, #0x36 ; '6'
MOVEQ           R1, #0x1E
B               loc_1EB400
MOV             R0, R0,LSR#2
MOV             R1, R6
SXTB            R2, R0
LDR             R0, =dword_6E7CD0
BL              sub_112928
MOV             R7, R0
LDR             R0, [R5,#0xBC]
ADD             R0, R0, #0x10000
ADD             R0, R0, #0x3D00
LDRH            R0, [R0,#4]
BL              sub_2AF718
LDR             R0, [R0]
TST             R0, #1
ANDEQ           R1, R6, #0xF000
CMPEQ           R1, #0x1000
BNE             loc_1EB428
LDR             R1, [R4,#8]
MOV             R2, #2
LDRH            R1, [R1,#0x18]
MOV             R1, R1,LSL#25
CMP             R2, R1,LSR#30
BNE             loc_1EB428
CMP             R7, #0
BLE             loc_1EB428
MOV             R0, R0,LSL#23
LDR             R1, =unk_67E4DC
MOV             R0, R0,LSR#24
MOV             R2, #0
ADD             R0, R1, R0,LSL#1
MOV             R1, R2
LDRH            R5, [R0]
MOV             R0, R5
BL              sub_116B34
VCVT.S32.F32    S0, S0
LDRH            R1, [R4]
MOV             R2, #0
VMOV            R0, S0
ADD             R0, R0, R1,LSR#2
CMP             R0, #0xFF
MOVGT           R0, #0xFF
VMOV            S0, R0
MOV             R1, R2
MOV             R0, R5
VCVT.F32.S32    S0, S0
BL              sub_145730
NOP
NOP
B               loc_1EB428
