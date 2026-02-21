PUSH            {R4,LR}
LDR             R4, =dword_6D49C0
LDR             R0, [R4]
CMP             R0, #0
LDREQ           R0, =0xE0A0CFF8
BEQ             loc_10F564
SVC             0x23 ; '#'
LDR             R1, =dword_69A350
LDR             R1, [R1]
STR             R1, [R4]
MOV             R4, R0
MOV             R1, PC
MOVS            R2, R0,LSR#31
BLNE            sub_1215E4
MOV             R0, R4
POP             {R4,PC}
