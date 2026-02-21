PUSH            {R4-R12,LR}
MOV             R5, R0
MOV             R7, R1
MOV             R8, #0
MOV             R1, #1
ADD             R0, R0, #0x2AC
VPUSH           {D8}
BL              sub_1400CC
VLDR            S16, =1.0
CMP             R0, #0
MOVNE           R8, #1
VMOV.F32        S0, S16
ADD             R0, R5, #0x280
BL              sub_140038
CMP             R0, #0
ADD             R6, R5, #0x2D4
BEQ             loc_1349E0
ORR             R8, R8, #2
ADD             R0, R5, #0x280
LDR             R0, [R0,#4]
CMP             R0, #0
BNE             loc_1349E0
MOV             R1, #2
ADD             R0, R5, #0x280
BL              sub_1401B8
CMP             R0, #0
BEQ             loc_1349B0
LDR             R0, [R5,#0x18]
ADD             R4, R5, #0x2C4
ORR             R0, R0, #2
STR             R0, [R5,#0x18]
LDR             R0, [R4]
CMP             R0, #0
MOVNE           R1, #1
BLNE            sub_136068
ADD             R4, R4, #4
CMP             R4, R6
BNE             loc_134990
B               loc_1349E0
MOV             R1, #1
ADD             R0, R5, #0x280
BL              sub_1401B8
CMP             R0, #0
NOP
BEQ             loc_1349E0
MOV             R1, #0
MOV             R0, R5
BL              sub_13F3A4
LDR             R0, [R5,#0x18]
BIC             R1, R0, #2
STR             R1, [R5,#0x18]
VMOV.F32        S0, S16
ADD             R0, R5, #0x298
BL              sub_140038
CMP             R0, #0
ORRNE           R8, R8, #4
BL              sub_1348B4
LDR             R1, [R5,#0x18]
LDR             R2, [R5,#0xC]
MOV             R1, R1,LSL#30
CMP             R2, #0
ORR             R0, R0, R1,LSR#31
BEQ             loc_134DA4
CMP             R0, #0
BNE             loc_134DA4
LDR             R0, [R5,#0x2C]
MOV             R11, #0
ADD             R0, R0, R7
STR             R0, [R5,#0x2C]
LDR             R0, [R5,#8]
LDR             R0, [R0,#0x10]
CMP             R0, #0x12C
BCS             loc_134C94
LDR             R0, [R5,#4]
ADD             R0, R0, #4
BL              sub_13F878
MUL             R0, R0, R7
LDR             R1, [R5,#0x30]
SUB             R0, R1, R0
ADD             R1, R5, #0x30 ; '0'
CMP             R0, #0
STM             R1, {R0,R11}
BGT             loc_134A78
LDR             R1, [R5,#0x34]
ADD             R0, R0, #0x96
CMP             R0, #0
ADD             R1, R1, #1
STRD            R0, R1, [R5,#0x30]
BLE             loc_134A60
ADD             R4, R5, #0x2C4
LDR             R0, [R4]
CMP             R0, #0
BLNE            sub_13F99C
ADD             R4, R4, #4
CMP             R4, R6
BNE             loc_134A7C
ADD             R7, R5, #0x400
ADD             R4, R5, #0x2D4
ADD             R7, R7, #0x14
MOV             R0, R4
BL              sub_1413B0
ADD             R4, R4, #0x50 ; 'P'
CMP             R4, R7
BNE             loc_134AA0
LDR             R0, [R5,#0x34]
CMP             R0, #0
LDRGT           R9, =off_6D4198
BLE             loc_134D74
SUB             R0, R0, #1
STR             R0, [R5,#0x34]
LDR             R0, [R5,#4]
ADD             R0, R0, #0x74 ; 't'
LDRH            R1, [R0,#4]
CMP             R1, #0
BEQ             loc_134B40
LDRH            R1, [R0,#6]
SUB             R1, R1, #1
STRH            R1, [R0,#6]
SXTH            R1, R1
CMP             R1, #1
LDRSHLT         R1, [R0,#4]
LDRSHLT         R2, [R0,#8]
BGE             loc_134B40
LDRH            R3, [R0,#0xA]
LDRH            R12, [R0,#6]
ADD             R3, R3, #1
ADD             R4, R12, R1
SXTH            R12, R3
SXTH            R3, R4
STRH            R12, [R0,#0xA]
CMP             R12, R2
STRH            R3, [R0,#6]
BLT             loc_134B38
LDR             R12, [R0]
STRH            R11, [R0,#0xA]
ADD             R12, R12, #1
STR             R12, [R0]
CMP             R3, #1
BLT             loc_134B00
LDR             R0, [R5,#4]
LDR             R1, [R0]
CMP             R1, #0
BEQ             loc_134C84
ADD             R0, R0, #4
MOV             R1, #1
BL              sub_141408
LDR             R0, [R5,#4]
VMOV.F32        S0, S16
ADD             R0, R0, #0x18
BL              sub_140038
CMP             R0, #0
LDR             R0, [R5,#4]
VMOV.F32        S0, S16
ORRNE           R8, R8, #2
ADD             R0, R0, #0x30 ; '0'
BL              sub_140038
CMP             R0, #0
LDR             R0, [R5,#4]
VMOV.F32        S0, S16
ORRNE           R8, R8, #2
ADD             R0, R0, #0x48 ; 'H'
BL              sub_140038
CMP             R0, #0
ORRNE           R8, R8, #4
MOV             R1, #1
ADD             R0, R5, #0x1A4
BL              sub_1400CC
CMP             R0, #0
LDR             R0, [R5,#4]
VMOV.F32        S0, S16
ORRNE           R8, R8, #1
ADD             R0, R0, #0x5C ; '\'
BL              sub_140038
CMP             R0, #0
ORRNE           R8, R8, #4
ADD             R4, R5, #0x2D4
MOV             R0, R4
BL              sub_141390
ADD             R4, R4, #0x50 ; 'P'
CMP             R4, R7
BNE             loc_134BD4
ADD             R4, R5, #0x2C4
LDR             R0, [R4]
CMP             R0, #0
BLNE            sub_13F96C
ADD             R4, R4, #4
CMP             R4, R6
BNE             loc_134BEC
LDR             R0, [R5,#0x28]
MOV             R4, R5
SUB             R0, R0, #1
STR             R0, [R5,#0x28]
B               loc_134C6C
DCFS 1.0
DCD off_6D4198
ADD             R2, R0, #1
STR             R2, [R1]
LDRB            R1, [R0]
LDR             R0, [R4,#0x10]
AND             R1, R1, #0x7F
ADD             R0, R0, #1
ADD             R2, R9, R1,LSL#3
STR             R0, [R4,#0x10]
LDR             R0, [R2,#4]
TST             R0, #1
LDREQ           R2, [R2]
ADD             R0, R4, R0,ASR#1
BEQ             loc_134C60
LDR             R3, [R0]
LDR             R2, [R2]
LDR             R2, [R3,R2]
NOP
BLX             R2
LDR             R0, [R4,#0x28]
CMP             R0, #0
BGT             loc_134C84
LDR             R1, [R4,#4]
LDR             R0, [R1]
CMP             R0, #0
BNE             loc_134C20
LDR             R0, [R5,#0x34]
CMP             R0, #0
BGT             loc_134AC4
B               loc_134D74
LDR             R7, [R5,#0x40]
MOV             R4, #0
MOV             R2, R4
MOV             R0, R4
MOV             R1, #4
ADD             R3, R2, R0
ADD             R0, R0, #1
ADD             R3, R5, R3,LSL#2
LDR             R3, [R3,#0x2C4]
CMP             R3, #0
ADDNE           R4, R4, #1
SUBS            R1, R1, #1
BNE             loc_134CA8
MOV             R0, R7
BL              sub_1361C8
CMP             R0, #0
NOP
BEQ             loc_134D04
LDRSB           R0, [R7,#0x1E]
CMP             R0, R4
BNE             loc_134D04
LDRSB           R0, [R7,#0x1F]
CMP             R0, #1
BGE             loc_134D74
LDR             R0, [R5,#0x478]
LDR             R1, [R7,#0x10]
CMP             R0, R1
BLT             loc_134D20
MOV             R1, #0
MOV             R0, R5
BL              sub_13F3A4
LDR             R0, [R5,#0x18]
BIC             R1, R0, #2
STR             R1, [R5,#0x18]
B               loc_134D74
MOV             R9, #0
MOV             R10, R9
ADD             R4, R5, #0x2C4
LDR             R7, [R4]
CMP             R7, #0
BEQ             loc_134D58
ADD             R9, R9, #1
MOV             R0, R7
BL              sub_1406E0
CMP             R0, #0
MOVNE           R0, R7
MOVEQ           R0, #1
BLNE            sub_13FC04
ADD             R10, R10, R0
ADD             R4, R4, #4
CMP             R4, R6
BNE             loc_134D2C
CMP             R9, #0
BEQ             loc_134D04
CMP             R10, #0
BEQ             loc_134D04
LDR             R0, [R5,#0x2C0]
STR             R11, [R5,#0x2C0]
ORRS            R7, R0, R8
ADDNE           R4, R5, #0x2C4
BEQ             loc_134DA4
LDR             R0, [R4]
CMP             R0, #0
MOVNE           R1, R7
BLNE            sub_13F95C
ADD             R4, R4, #4
CMP             R4, R6
BNE             loc_134D88
VPOP            {D8}
MOV             R0, #1
POP             {R4-R12,PC}
