PUSH            {R0-R12,LR}
ADD             R4, SP, #0x38+arg_8
LDM             R4, {R1,R10}
ADD             R4, SP, #0x38+arg_10
LDR             R5, [SP,#0x38+arg_4]
LDM             R4, {R6,R12}
ADD             R4, SP, #0x38+arg_18
LDR             R9, [SP,#0x38+arg_0]
LDM             R4, {R11,LR}
MRC             p15, 0, R4,c13,c0, 3
LDR             R7, =0x8030204
MOV             R8, #0
STR             R7, [R4,#0x80]!
ADD             R7, R4, #0x14
STR             R9, [R4,#0xC]
STR             R1, [R4,#0x10]
STR             R11, [R4,#0x1C]
STRD            R2, R3, [R4,#4]
MOV             R2, #0x800
STM             R7, {R10,R12}
ORR             R1, R2, R1,LSL#14
ADD             R7, R4, #0x24 ; '$'
ORR             R1, R1, #2
STR             LR, [R4,#0x20]
STM             R7, {R1,R5}
ORR             R1, R8, R12,LSL#14
ADD             R7, R4, #0x2C ; ','
ORR             R1, R1, #2
STM             R7, {R1,R6}
LDR             R0, [R0]
SVC             0x32 ; '2'
ANDS            R1, R0, #0x80000000
BMI             loc_120C98
LDR             R1, [SP,#0x38+var_34]
LDR             R0, [R4,#0xC]
STR             R0, [R1]
LDR             R0, [R4,#4]
ADD             SP, SP, #0x10
POP             {R4-R12,PC}
