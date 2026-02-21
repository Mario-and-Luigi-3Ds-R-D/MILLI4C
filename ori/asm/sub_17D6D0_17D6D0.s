PUSH            {R4,LR}
LDRSB           R1, [R1,#0x75]
LDR             R0, [R0,#4]
ADD             R0, R0, R1,LSL#2
ADD             R0, R0, #0x14000
LDR             R4, [R0,#0x184]
LDR             R0, [R4,#0x84]
TST             R0, #2
TSTNE           R0, #4
TSTNE           R0, #8
BEQ             loc_17D718
LDR             R0, [R4]
LDR             R1, [R0,#0x2C]
MOV             R0, R4
BLX             R1
LDR             R0, [R4,#0x84]
BIC             R0, R0, #8
STR             R0, [R4,#0x84]
LDR             R0, [R4,#0x4EC]
TST             R0, #0x100
BEQ             locret_17D744
LDR             R1, [R4]
MOV             R0, R0,LSL#12
MOV             R2, #1
LDR             R3, [R1,#0x60]
MOV             R1, R0,LSR#28
MOV             R0, R4
POP             {R4,LR}
BX              R3
POP             {R4,PC}
