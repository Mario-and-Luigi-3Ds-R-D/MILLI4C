PUSH            {R4}
LDR             R0, [R0,#4]
LDRD            R2, R3, [R3,#8]
MOV             R1, #0x28 ; '('
ADD             R0, R0, #0x13C00
ADD             R0, R0, #0x78 ; 'x'
ADD             R4, R2, R2,LSL#1
LDR             R0, [R0]
ADD             R2, R4, R2,LSL#3
MOV             R12, #0x80000
ADD             R1, R1, R2,LSL#2
AND             R3, R12, R3,LSL#19
LDR             R2, [R0,R1]
BIC             R2, R2, #0x80000
ORR             R2, R2, R3
STR             R2, [R0,R1]
POP             {R4}
MOV             R0, #0
BX              LR
