PUSH            {R4-R8,LR}
MOV             R4, R0
MOV             R7, R1
LDR             R0, [R0]
MOV             R8, R2
MOV             R5, R3
LDR             R1, [R0,#0x78]
MOV             R0, R4
BLX             R1
AND             R5, R5, R0
LDR             R0, =dword_6EDA78
MOV             R1, #0
LDR             R0, [R0,R1,LSL#2]
AND             R6, R0, R5
LDR             R0, =dword_6EDA78
MOV             R1, #2
LDR             R0, [R0,R1,LSL#2]
ADD             R1, R4, #0x13C00
ADD             R1, R1, #0x28 ; '('
ADD             R4, R4, #0x13C00
LDR             R1, [R1]
ADD             R4, R4, #0x2C ; ','
AND             R0, R0, R5
ORR             R1, R1, R6
STR             R1, [R7]
LDR             R1, [R4]
ORR             R0, R0, R1
STR             R0, [R8]
POP             {R4-R8,PC}
