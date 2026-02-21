PUSH            {R3-R7,LR}
MOV             R6, R0
LDR             R4, =byte_6D2578
LDR             R0, [R4,#(dword_6D2580 - 0x6D2578)]
CMP             R0, #0
LDRNE           R0, =0xC92044E7
BNE             locret_1171AC
MOV             R1, #4
MOV             R0, SP
BL              sub_117500
MOV             R5, R0
ANDS            R0, R0, #0x80000000
BMI             loc_1171A8
MOV             R3, #0
LDR             R1, [SP,#0x18+var_18]
MOV             R2, R3
MOV             R0, R6
BL              sub_1171B8
MOV             R5, R0
AND             R0, R0, #0x80000000
CMP             R0, #0
LDR             R0, [SP,#0x18+var_18]
STRGE           R0, [R4,#(dword_6D2580 - 0x6D2578)]
BGE             loc_1171A8
LDR             R1, [R0]
LDR             R1, [R1,#0x30]
BLX             R1
MOV             R0, R5
POP             {R3-R7,PC}
