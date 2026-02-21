PUSH            {R4-R9,LR}
SUB             SP, SP, #0x14
MOV             R4, R0
LDR             R7, =0xD8A02BF8
LDR             R9, =0x4EC4EC4F
LDR             R8, =0xD8A02A02
LDR             R5, =0x2BEF
LDR             R2, [R4,#0x2C]
MOV             R0, #0xFFFFFFFF
MOV             R1, R0
STMEA           SP, {R0-R2}
MOV             R3, #0
MOV             R2, #1
ADD             R1, SP, #0x30+var_28
ADD             R0, SP, #0x30+var_24
BL              sub_120250
MOVS            R1, R0,LSR#31
NOP
BLNE            sub_12107C
LDR             R0, [R4,#0x2C]
NOP
SVC             0x19
MOVS            R1, R0,LSR#31
NOP
BLNE            sub_12107C
LDRB            R0, [R4,#0x77]
CMP             R0, #0
BNE             loc_129C14
LDR             R0, [R4,#0x34]
CMP             R0, #0
MOVEQ           R0, R7
BEQ             loc_129BBC
LDRB            R1, [R0,#1]
CMP             R1, #0
MOVEQ           R0, R5
BEQ             loc_129BBC
LDRB            R1, [R0]
ADD             R0, R0, R1
LDRB            R3, [R0,#0xC]
LDR             R0, [R4,#0x34]
LDREX           R1, [R0]
AND             R0, R1, #0xFF
ADD             R0, R0, #1
BIC             R12, R1, #0xFF
UMULL           R6, R1, R9, R0
MOV             R2, #0xFFFFFFF3
MOV             R1, R1,LSR#4
MUL             R1, R1, R2
ADD             R0, R0, R1,LSL#2
AND             R0, R0, #0xFF
ORR             R0, R0, R12
LDR             R1, [R4,#0x34]
MOV             R2, R0,LSL#16
BIC             R0, R0, #0xFF00
MOV             R2, R2,LSR#24
SUB             R2, R2, #1
MOV             R2, R2,LSL#8
AND             R2, R2, #0xFF00
ORR             R0, R0, R2
STREX           R2, R0, [R1]
CMP             R2, #0
BNE             loc_129B4C
LDR             R1, [R4,#0x34]
MOV             R0, #0
LDRB            R1, [R1,#2]
CMP             R1, #1
MOVEQ           R0, R8
CMP             R0, R5
BEQ             loc_129ACC
AND             R6, R3, #0xFF
MOV             R0, R4
BL              sub_13273C
ADD             R0, R4, R6,LSL#2
LDR             R0, [R0,#0x10]
CMP             R0, #0
BLXNE           R0
LDRB            R1, [R4,#0x76]
MOV             R0, #2
MOV             R2, R4
CMP             R1, #1
STRB            R0, [R4,#0x76]
ADDEQ           R0, R2, #0x64 ; 'd'
BLEQ            sub_118998
MOV             R0, R4
NOP
BL              sub_1327BC
NOP
NOP
B               loc_129B20
ADD             SP, SP, #0x14
POP             {R4-R9,PC}
