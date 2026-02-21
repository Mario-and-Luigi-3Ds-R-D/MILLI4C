PUSH            {R0-R11,LR}
SUB             SP, SP, #0x44
MOV             R6, R0
MOV             R7, R1
MOV             R8, R2
LDR             R11, =dword_6D2458
LDRD            R0, R1, [SP,#0x78+arg_8]
LDRD            R4, R5, [SP,#0x78+arg_0]
LDRD            R2, R3, [R11]
EOR             R12, R0, R2
EOR             R9, R1, R3
ORRS            R12, R12, R9
BNE             loc_12A65C
MOV             R0, #0
STRD            R4, R5, [SP,#0x78+var_78]
STR             R0, [SP,#0x78+var_70]
LDR             R3, [SP,#0x78+var_28]
MOV             R2, R8
MOV             R1, R7
MOV             R0, R6
BL              sub_123158
ADD             SP, SP, #0x54 ; 'T'
POP             {R4-R11,PC}
LDR             R9, =dword_6D2460
STRD            R0, R1, [SP,#0x78+var_58]
LDR             R10, [R9,#(dword_6D2464 - 0x6D2460)]
LDR             R12, [R9]
EOR             R10, R10, R1
EOR             R12, R12, R0
ORRS            R12, R12, R10
BEQ             loc_12A69C
EOR             R0, R0, R2
EOR             R1, R1, R3
ORRS            R0, R0, R1
BEQ             loc_12A69C
SVC             0x28 ; '('
STR             R0, [SP,#0x78+var_50]
STR             R1, [SP,#0x78+var_60]
B               loc_12A6A8
MOV             R0, #0
STR             R0, [SP,#0x78+var_50]
STR             R0, [SP,#0x78+var_60]
LDR             R9, [SP,#0x78+var_28]
BL              sub_12A2F8
CMP             R0, #0
LDREQ           R9, =0xC8A0CFEF
BEQ             loc_12A7AC
BL              sub_129DC4
CMP             R0, #0
NOP
BEQ             loc_12A71C
BL              sub_129DC4
STR             R0, [R7]
MOV             R0, #0
BL              sub_1230C8
NOP
NOP
BL              sub_129FB8
CMP             R6, #0
MOVNE           R0, #0
STRNE           R0, [R6]
CMP             R4, #0
MOVNE           R0, #0
STRNE           R0, [R4]
CMP             R5, #0
MOV             R9, #0
BEQ             loc_12A7A4
LDR             R0, =unk_6D2448
LDR             R1, [R0,#(dword_6D2450 - 0x6D2448)]
STR             R1, [R5]
B               loc_12A7A4
MOVS            R0, R6
ADDEQ           R0, SP, #0x78+var_48
STR             R0, [SP,#0x78+var_6C]
MOVS            R0, R7
ADDEQ           R0, SP, #0x78+var_44
STR             R0, [SP,#0x78+var_68]
MOVS            R0, R8
MOVEQ           R9, #0
CMPNE           R9, #0
ADDEQ           R0, SP, #0x78+var_40
STR             R0, [SP,#0x78+var_64]
MOVS            R0, R4
MOVNE           R10, R0
MOV             R0, #0
ADDEQ           R10, SP, #0x78+var_3C
STR             R0, [SP,#0x78+var_4C]
MOVS            R0, R5
ADDEQ           R11, SP, #0x78+var_4C
MOVNE           R11, R0
BL              sub_1233A8
NOP
NOP
BL              sub_123148
ADD             R12, SP, #0x78+var_6C
STMEA           SP, {R9-R11}
MOV             R1, R0
LDM             R12, {R0,R2,R3}
BL              sub_12A4C0
MOV             R9, R0
NOP
BL              sub_123520
LDR             R0, [SP,#0x78+var_4C]
CMP             R0, #0
SVCNE           0x23 ; '#'
NOP
BL              sub_129FB8
ANDS            R0, R9, #0x80000000
STR             R9, [SP,#0x78+var_74]
BPL             loc_12A89C
LDR             R0, =0xC8A0CFEF
CMP             R9, R0
BNE             loc_12A870
LDR             R0, =dword_6D2460
LDR             R1, [SP,#0x78+var_58]
LDM             R0, {R2,R12}
LDR             R0, [SP,#0x78+var_54]
EOR             R3, R1, R2
EOR             R2, R0, R12
ORRS            R2, R2, R3
BEQ             loc_12A89C
LDR             R3, =dword_6D2458
LDRD            R2, R3, [R3]
EOR             R1, R1, R2
EOR             R0, R0, R3
ORRS            R0, R0, R1
BEQ             loc_12A870
SVC             0x28 ; '('
LDR             R12, [SP,#0x78+var_50]
LDR             R3, [SP,#0x78+var_60]
MOV             R2, R1
SUBS            R1, R0, R12
SBC             R0, R2, R3
LDR             R3, =0xBAD34AEE
MOV             R2, #3
MOV             R11, #0
STR             R11, [SP,#0x78+var_68]
UMULL           R10, R12, R1, R3
UMULL           R10, LR, R0, R2
LDR             LR, [SP,#0x78+var_68]
MOV             R9, R11
ADDS            R12, R12, R9
ADC             R10, R10, LR
UMULL           R9, LR, R0, R3
STR             R11, [SP,#0x78+var_70]
MOV             R11, R0,ASR#31
MLA             R3, R11, R3, LR
LDR             R11, [SP,#0x78+var_70]
MLA             R3, R0, R11, R3
UMLAL           R9, R3, R2, R1
ADDS            R0, R9, R12
ADC             R1, R3, R10
LDRD            R2, R3, [SP,#0x78+var_58]
SUBS            R0, R2, R0
SBCS            R0, R3, R1
BLT             loc_12A89C
LDR             R12, =0xF4240
MOV             R1, #0xA
MOV             R3, #0
MOV             R2, R1,ASR#31
UMULL           R0, R9, R1, R12
MLA             R2, R2, R12, R9
MLA             R1, R1, R3, R2
BL              sub_121140
NOP
NOP
B               loc_12A6A8
LDR             R0, [SP,#0x78+var_74]
ADD             SP, SP, #0x54 ; 'T'
POP             {R4-R11,PC}
