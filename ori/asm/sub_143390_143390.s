PUSH            {R0,R4-R11,LR}
SUB             SP, SP, #0x100
ADD             R4, R0, #4
MOV             R2, #0x10
ADD             R3, SP, #0x128+var_128
LDR             R5, [R4],#4
SUBS            R2, R2, #1
REV             R5, R5
STR             R5, [R3],#4
BNE             loc_1433A4
MOV             R2, #0x30 ; '0'
SUBS            R2, R2, #1
LDR             R10, [R3,#-0x3C]
MOV             R11, R10,ROR#7
EOR             R11, R11, R10,ROR#18
LDR             R4, [R3,#-0x40]
EOR             R11, R11, R10,LSR#3
LDR             R5, [R3,#-8]
MOV             R6, R5,ROR#17
ADD             R10, R4, R11
EOR             R6, R6, R5,ROR#19
LDR             R8, [R3,#-0x1C]
EOR             R5, R6, R5,LSR#10
ADD             R8, R8, R5
ADD             R8, R8, R10
STR             R8, [R3],#4
BNE             loc_1433BC
ADD             R0, R0, #0x50 ; 'P'
LDR             R1, =unk_6E1368
LDM             R0, {R6-R12,LR}
MOV             R5, R10,ROR#6
AND             R3, R10, R11
BIC             R4, R12, R10
EOR             R5, R5, R10,ROR#11
EOR             R3, R3, R4
EOR             R5, R5, R10,ROR#25
ADD             R5, R5, R3
LDR             R3, [R1,R2,LSL#2]
ADD             R3, R3, LR
ADD             R5, R5, R3
LDR             R3, [SP,R2,LSL#2]
MOV             LR, R12
ADD             R5, R5, R3
MOV             R12, R11
EOR             R4, R7, R8
MOV             R11, R10
ADD             R10, R9, R5
MOV             R3, R6,ROR#2
ADD             R2, R2, #1
EOR             R3, R3, R6,ROR#13
AND             R4, R4, R6
AND             R0, R7, R8
MOV             R9, R8
EOR             R3, R3, R6,ROR#22
EOR             R4, R4, R0
MOV             R8, R7
ADD             R3, R3, R4
MOV             R7, R6
CMP             R2, #0x40 ; '@'
ADD             R6, R5, R3
BLT             loc_143408
LDR             R0, [SP,#0x128+var_28]
ADD             R1, R0, #0x50 ; 'P'
LDM             R1, {R2-R5}
ADD             R2, R2, R6
ADD             R3, R3, R7
ADD             R4, R4, R8
ADD             R5, R5, R9
STM             R1!, {R2-R5}
LDM             R1, {R2-R5}
ADD             R2, R2, R10
ADD             R3, R3, R11
ADD             R4, R4, R12
ADD             R5, R5, LR
STM             R1!, {R2-R5}
ADD             SP, SP, #0x104
POP             {R4-R11,PC}
