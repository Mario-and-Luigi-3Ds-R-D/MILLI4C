PUSH            {R4-R6,LR}
MOV             R5, R0
LDR             R0, [R0]
ADD             R4, R5, #0x4C ; 'L'
CMP             R0, #9
LDREQ           R0, [R4]
BEQ             locret_1343FC
LDR             R0, [R5,#4]
CMP             R0, #0xD; switch 13 cases
LDRCC           PC, [PC,R0,LSL#2]; switch jump
B               def_134268; jumptable 00134268 default case, cases 3,5-7
DCD loc_1342A4; jump table for switch statement
LDR             R0, [R5,#0x48]; jumptable 00134268 case 0
LDR             R1, =unk_6D3958
MOV             R0, R0,LSL#23
MOV             R0, R0,LSR#23
STR             R0, [R4]
LDR             R0, [R1,R0,LSL#2]
STR             R0, [R4]
LDR             R1, [R5,#0x48]
TST             R1, #0x200
BNE             loc_1342F8
B               loc_1343CC
LDR             R0, [R5,#0x48]; jumptable 00134268 case 8
LDR             R1, =unk_6D3958
MOV             R0, R0,LSL#23
MOV             R0, R0,LSR#23
STR             R0, [R4]
LDR             R0, [R1,R0,LSL#2]
STR             R0, [R4]
LDR             R1, [R5,#0x48]
TST             R1, #0x200
BNE             loc_134380
RSB             R0, R0, #0
B               loc_1343C8
LDR             R0, [R5,#0x48]; jumptable 00134268 case 1
MOV             R0, R0,LSL#24
MOV             R0, R0,LSR#16
STR             R0, [R4]
LDR             R1, [R5,#0x48]
MOV             R1, R1,LSL#22
MOV             R1, R1,LSR#30
CMP             R1, #1
RSBEQ           R0, R0, #0x10000
BEQ             loc_1343C8
CMP             R1, #2
BEQ             loc_1342F8
CMP             R1, #3
SUBEQ           R0, R0, #0x10000
BNE             loc_1343CC
B               loc_1343C8
LDR             R0, [R5,#0x48]; jumptable 00134268 case 9
MOV             R0, R0,LSL#24
MOV             R0, R0,LSR#16
STR             R0, [R4]
LDR             R1, [R5,#0x48]
MOV             R1, R1,LSL#22
MOV             R1, R1,LSR#30
CMP             R1, #1
RSBEQ           R0, R0, #0x10000
BEQ             loc_134384
CMP             R1, #2
BEQ             loc_134380
CMP             R1, #3
SUBEQ           R0, R0, #0x10000
BNE             loc_1342F8
B               loc_134384
RSB             R0, R0, #0
STR             R0, [R4]
B               loc_1342F8
LDR             R0, [R5,#0x48]; jumptable 00134268 case 2
MOV             R0, R0,ASR#2
SXTB            R0, R0
MOV             R0, R0,LSL#8
B               loc_1343C8
LDR             R0, [R5,#0x48]; jumptable 00134268 case 10
MOV             R0, R0,ASR#2
SXTB            R0, R0
MOV             R0, R0,LSL#8
RSB             R0, R0, #0
B               loc_1343C8
MOV             R0, #0; jumptable 00134268 cases 4,12
BL              sub_13F21C
MOV             R0, R0,LSL#17
MOV             R0, R0,LSR#16
STR             R0, [R4]
ADD             R0, R5, #0x20 ; ' '
BL              sub_13F878
LDR             R1, [R4]
MUL             R0, R0, R1
MOV             R0, R0,ASR#16
STR             R0, [R4]
ADD             R0, R5, #0xC
BL              sub_13F878
LDR             R1, [R4]
MUL             R0, R0, R1
MOV             R0, R0,ASR#8
STR             R0, [R4]
POP             {R4-R6,PC}
LDR             R0, [R5,#0x48]; jumptable 00134268 case 11
TST             R0, #0x200
BEQ             loc_134414
MOV             R0, #0x10000
B               loc_1343C8
LDR             R0, =0xFFFF0000
B               loc_1343C8
LDR             R0, [R5,#0x48]; jumptable 00134268 default case, cases 3,5-7
TST             R0, #0x200
BNE             loc_134414
B               loc_13440C
