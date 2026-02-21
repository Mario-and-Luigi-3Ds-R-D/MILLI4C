PUSH            {R4-R8,LR}
MOV             R4, R0
MOV             R8, R1
LDR             R1, =0x4000047
MOV             R0, #0
NOP
LDR             R7, =dword_69829C
LDR             R6, =dword_6D4B68
LDR             R0, [R7,#(dword_6982A0 - 0x69829C)]
LDR             R1, [R6]
CMP             R1, R0
LDRNE           R0, =0xE0A12FF9
BNE             locret_11F2E0
ADR             R5, aLdrRo; "ldr:ro"
MOV             R0, R5
BL              sub_300168
MOV             R2, R0
LDR             R0, =dword_6D4B68
MOV             R3, #0
MOV             R1, R5
BL              sub_119C04
ANDS            R1, R0, #0x80000000
BMI             locret_11F2E0
CMP             R4, #0x8000000
MOV             R3, R4
BCC             loc_11F284
LDR             R0, =0x713000
RSB             R0, R0, #0x8000000
SUB             R3, R4, R0
LDR             R0, [R7]
MOV             R5, R3
MOV             R2, R8
MOV             R1, R4
BL              sub_1211D4
MOV             R4, R0
ANDS            R0, R0, #0x80000000
BMI             loc_11F2C0
LDR             R0, =off_6D307C
STR             R5, [R0]
MOV             R0, #0
BL              sub_118E50
NOP
NOP
B               loc_11F2DC
LDR             R0, [R6]
SVC             0x23 ; '#'
MOV             R1, PC
MOVS            R2, R0,LSR#31
BLNE            sub_10E1F8
LDR             R0, [R7,#(dword_6982A0 - 0x69829C)]
STR             R0, [R6]
MOV             R0, R4
POP             {R4-R8,PC}
