PUSH            {R4-R8,LR}
LDR             R4, =byte_6D49F0
LDR             R0, [R4,#(dword_6D49F4 - 0x6D49F0)]
CMP             R0, #0
BNE             loc_118FA0
LDR             R0, =dword_69A354
LDR             R6, =dword_6D4F28
LDR             R7, [R0,#(off_69A358 - 0x69A354)]; "cfg:u"
BL              sub_119B9C
MOVS            R0, R0,LSR#31
BLNE            sub_128434
LDR             R0, [R6]
LDR             R5, =0xD92103FB
CMP             R0, #0
LDRNE           R0, =0xD8A103F9
BEQ             loc_118FB4
AND             R1, R0, #0x80000000
CMP             R1, #0
MOVGE           R0, #1
STRBGE          R0, [R4]
BGE             loc_118FA0
CMP             R0, R5
BEQ             locret_118FB0
LDR             R0, [R4,#(dword_6D49F4 - 0x6D49F0)]
ADD             R0, R0, #1
STR             R0, [R4,#(dword_6D49F4 - 0x6D49F0)]
MOV             R0, #0
POP             {R4-R8,PC}
MOV             R0, R7
BL              sub_300168
MOV             R2, R0
MOV             R3, #0
MOV             R1, R7
MOV             R0, R6
BL              sub_119C04
AND             R1, R0, #0x80000000
CMP             R1, #0
MOVLT           R0, R5
B               loc_118F84
