PUSH            {R4-R10,LR}
ADD             R12, R0, #0xA00
MOV             R8, R2
MOV             R7, R0
ADD             R2, R0, #0x2B0
LDRH            R0, [R12,#0xB0]
MOV             R5, R1
MOV             R1, #0
MOV             R9, R3
MOV             R6, R1
CMP             R0, #0x100
MOVCS           R0, #0
ADD             R3, R2, R0,LSL#3
LDR             R3, [R3,#4]
CMP             R3, #0
BEQ             loc_1456D0
ADD             R1, R1, #1
ADD             R0, R0, #1
UXTH            R1, R1
UXTH            R0, R0
CMP             R1, #0x100
BCC             loc_14569C
B               loc_1456E8
ADD             R1, R0, #1
UXTH            R1, R1
CMP             R1, #0x100
STRH            R1, [R12,#0xB0]
STRHCS          R6, [R12,#0xB0]
AND             R6, R0, #0xFF
ADD             R4, R7, R6,LSL#3
LDR             R0, [R4,#0x2B0]!
LDR             R1, [R0,#8]
MOV             R0, R4
BLX             R1
ORR             R1, R6, #0xD000
VMOV            S0, R1
CMP             R5, #0
STR             R5, [R4,#4]
STRNE           R4, [R5,#0x184]
CMP             R8, #0
LDRH            R0, [R9,#2]
VCVT.F32.U32    S0, S0
ADDNE           R2, R8, #4
MOV             R1, R7
POP             {R4-R10,LR}
MOVEQ           R2, #0
NOP
