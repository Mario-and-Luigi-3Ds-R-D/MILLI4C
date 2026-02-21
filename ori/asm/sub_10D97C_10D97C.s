PUSH            {R4-R6,LR}
SUB             SP, SP, #0x20
MOV             R4, R0
ADD             R0, SP, #0x30+arg_0
LDM             R0, {R6,R12}
MOV             R0, #0
STR             R0, [SP,#0x30+var_24]
STR             R0, [SP,#0x30+var_20]
STR             R0, [SP,#0x30+var_1C]
STR             R0, [SP,#0x30+var_18]
ADD             R0, SP, #0x30+var_20
STR             R0, [SP,#0x30+var_28]
ADD             R0, SP, #0x30+var_24
STMEA           SP, {R6,R12}
BL              sub_1173A4
MOVS            R1, R0,LSR#31
LDREQ           R5, [SP,#0x30+var_24]
MOVEQ           R0, #0
MOV             R1, PC
MOVS            R2, R0,LSR#31
BLNE            sub_10E1F8
MOV             R3, #0
MOV             R2, R3
MOV             R1, R5
MOV             R0, R4
BL              sub_1171B8
MOV             R4, R0
ANDS            R0, R0, #0x80000000
BPL             loc_10DA10
LDR             R1, [R5]
MOV             R0, R5
LDR             R1, [R1,#0x30]
BLX             R1
MOV             R0, R4
MOV             R1, PC
MOVS            R2, R4,LSR#31
BLNE            sub_10E1F8
ADD             SP, SP, #0x20 ; ' '
MOV             R0, #0
POP             {R4-R6,PC}
