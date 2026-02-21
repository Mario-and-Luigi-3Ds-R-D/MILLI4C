PUSH            {R0-R11,LR}
SUB             SP, SP, #0x1C
MOV             R6, R1
MOV             R7, R0
MOV             R8, R3
LDR             R4, =dword_6D2460
LDRD            R0, R1, [SP,#0x50+arg_8]
LDR             R9, [SP,#0x50+arg_0]
SUB             R5, R4, #8
STRD            R0, R1, [SP,#0x50+var_48]
LDRD            R2, R3, [R4]
EOR             R2, R2, R0
EOR             R3, R3, R1
ORRS            R2, R2, R3
BEQ             loc_1236B0
LDRD            R2, R3, [R5]
EOR             R0, R0, R2
EOR             R1, R1, R3
ORRS            R0, R0, R1
BEQ             loc_1236B0
SVC             0x28 ; '('
STRD            R0, R1, [SP,#0x50+var_40]
AND             R0, R6, #0x10000
MOV             R10, R0,LSR#16
B               loc_1236BC
MOV             R0, #0
MOV             R1, R0
B               loc_1236A0
LDR             R5, [SP,#0x50+var_2C]
CMP             R8, #0x1000
MOV             R4, R8
BLHI            sub_128434
CMP             R5, #0
CMPNE           R4, #0
MOVEQ           R5, #0
MOVEQ           R4, R5
BL              sub_1233A8
NOP
NOP
BL              sub_123148
MOV             R3, R5
MOV             R2, R6
MOV             R1, R7
STMEA           SP, {R4,R9}
BL              sub_12A380
MOV             R4, R0
ANDS            R0, R0, #0x80000000
BMI             loc_123714
CMP             R10, #0
BLNE            sub_12A0C8
NOP
BL              sub_123520
ANDS            R0, R4, #0x80000000
STR             R4, [SP,#0x50+var_50]
BPL             loc_123810
LDR             R0, =0xC8A0CC02
CMP             R4, R0
BNE             loc_123810
LDR             R0, =dword_6D2460
LDRD            R2, R3, [R0]
LDRD            R0, R1, [SP,#0x50+var_48]
EOR             R2, R2, R0
EOR             R3, R3, R1
ORRS            R2, R2, R3
BEQ             loc_123810
LDR             R2, =dword_6D2458
LDR             R3, [R2]
LDR             R2, [R2,#(dword_6D245C - 0x6D2458)]
EOR             R3, R3, R0
EOR             R0, R1, R2
ORRS            R0, R0, R3
BEQ             loc_1237E4
SVC             0x28 ; '('
MOV             R2, R0
ADD             R4, SP, #0x50+var_40
MOV             R0, R1
LDM             R4, {R1,R3}
MOV             R11, #0
STR             R11, [SP,#0x50+var_4C]
SUBS            R1, R2, R1
SBC             R0, R0, R3
LDR             R3, =0xBAD34AEE
MOV             R2, #3
STR             R11, [SP,#0x50+var_38]
MOV             R4, R11
UMULL           R5, R12, R1, R3
UMULL           R5, LR, R0, R2
LDR             LR, [SP,#0x50+var_38]
ADDS            R12, R12, R4
MOV             R11, R0,ASR#31
ADC             R5, R5, LR
UMULL           R4, LR, R0, R3
MLA             R3, R11, R3, LR
LDR             R11, [SP,#0x50+var_4C]
MLA             R0, R0, R11, R3
UMLAL           R4, R0, R2, R1
LDRD            R2, R3, [SP,#0x50+var_48]
ADDS            R1, R4, R12
ADC             R0, R0, R5
SUBS            R1, R2, R1
SBCS            R0, R3, R0
BLT             loc_123810
LDR             R12, =0xF4240
MOV             R1, #0xA
MOV             R3, #0
MOV             R2, R1,ASR#31
UMULL           R0, R4, R1, R12
MLA             R2, R2, R12, R4
MLA             R1, R1, R3, R2
BL              sub_121140
NOP
NOP
B               loc_1236BC
LDR             R0, [SP,#0x50+var_50]
ADD             SP, SP, #0x2C ; ','
POP             {R4-R11,PC}
