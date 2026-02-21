PUSH            {R4,LR}
MOV             R4, R0
BL              sub_118F44
MOV             R1, R0
AND             R1, R1, #0x80000000
CMP             R1, #0
MOV             R0, #0
STRBGE          R0, [R4]
BGE             locret_10E130
BL              sub_1190BC
ANDS            R0, R0, #0x80000000
BMI             loc_10E134
MOV             R0, #1
STRB            R0, [R4]
MOV             R0, #0
POP             {R4,PC}
NOP
BL              sub_119138
AND             R0, R0, #0x80000000
CMP             R0, #0
MOVGE           R0, #2
STRBGE          R0, [R4]
LDRLT           R0, =0xD90103EA
MOVGE           R0, #0
POP             {R4,PC}
