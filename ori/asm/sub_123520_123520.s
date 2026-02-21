PUSH            {R4,LR}
LDR             R4, =dword_6D49C0
LDR             R0, [R4]
CMP             R0, #0
LDREQ           R0, =0xE0A0CFF8
BEQ             loc_123548
SVC             0x23 ; '#'
LDR             R1, =dword_69A350
LDR             R1, [R1]
STR             R1, [R4]
MOV             R1, PC
MOVS            R2, R0,LSR#31
BLNE            sub_1215E4
LDR             R0, =dword_6D4978
LDR             R0, [R0]
CMP             R0, #0
BEQ             locret_12357C
SVC             0x14
MOVS            R1, R0,LSR#31
NOP
BEQ             locret_12357C
POP             {R4,LR}
B               sub_12107C
POP             {R4,PC}
