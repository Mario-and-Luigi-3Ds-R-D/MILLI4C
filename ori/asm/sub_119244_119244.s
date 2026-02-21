NOP
LDR             R0, =byte_6D49F0
LDR             R1, [R0,#(dword_6D49F4 - 0x6D49F0)]
CMP             R1, #0
SUBGT           R1, R1, #1
STRGT           R1, [R0,#(dword_6D49F4 - 0x6D49F0)]
CMP             R1, #0
BXNE            LR
LDRB            R1, [R0]
CMP             R1, #0
BXEQ            LR
PUSH            {R4,LR}
MOV             R1, #0
LDR             R4, =dword_6D4F28
STRB            R1, [R0]
LDR             R0, [R4]
CMP             R0, #0
BEQ             locret_1192A4
SVC             0x23 ; '#'
MOVS            R0, R0,LSR#31
BLNE            sub_128434
LDR             R0, =dword_69A354
LDR             R0, [R0]
STR             R0, [R4]
POP             {R4,PC}
