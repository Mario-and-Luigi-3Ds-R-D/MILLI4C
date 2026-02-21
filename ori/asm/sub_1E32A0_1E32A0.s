PUSH            {R4,LR}
MOV             R4, R0
ADD             R0, R0, #4
BL              sub_5F1964
CMP             R0, #0
BNE             loc_1E32E8
ADD             R0, R4, #0x38 ; '8'
BL              sub_5F1964
CMP             R0, #0
BNE             loc_1E32E8
ADD             R0, R4, #0x6C ; 'l'
BL              sub_5F1964
CMP             R0, #0
BNE             loc_1E32E8
ADD             R0, R4, #0xA0
BL              sub_5F1964
CMP             R0, #0
BEQ             locret_1E32EC
MOV             R0, #1
POP             {R4,PC}
