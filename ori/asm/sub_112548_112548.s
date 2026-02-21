PUSH            {R4,R5,LR}
MOV             R4, R0
LDR             R1, [R0,#0x2C]
LDRH            R0, [R0]
SUB             SP, SP, #0x34
MOV             R1, R1,LSR#24
AND             R0, R0, #0xFF
BL              sub_11CA24
MOV             R5, R0
LDR             R0, [R0,#8]
MOV             R0, R0,LSR#24
STRB            R0, [R4,#0x2F]
LDR             R0, [R4,#0x2C]
MOV             R0, R0,LSR#24
BL              sub_11CA48
LDR             R1, [R4,#0x30]
MOV             R2, #0xF000000
AND             R0, R2, R0,LSL#24
BIC             R1, R1, #0xF000000
ORR             R0, R0, R1
STR             R0, [R4,#0x30]
LDRH            R0, [R4,#0x12]
LDRH            R1, [R4,#0x14]
ADD             R0, R0, R1
LDR             R1, [R5]
BIC             R1, R1, #0xFC00
ADD             R0, R0, R1
UXTH            R1, R0
STRH            R1, [R4,#6]
LDRH            R0, [R4,#0x16]
LDRH            R2, [R4,#0x18]
ADD             R0, R0, R2
LDR             R2, [R5]
MOV             R2, R2,LSL#12
ADD             R0, R0, R2,LSR#22
STRH            R0, [R4,#8]
LDRH            R0, [R4,#0x1A]
LDRH            R2, [R4,#0x1C]
ADD             R0, R0, R2
LDR             R2, [R5]
MOV             R2, R2,LSL#2
ADD             R0, R0, R2,LSR#22
STRH            R0, [R4,#0xA]
LDRH            R0, [R4,#0x1E]
LDRH            R2, [R4,#0x20]
ADD             R0, R0, R2
LDR             R2, [R5,#4]
BIC             R2, R2, #0xFC00
ADD             R0, R0, R2
STRH            R0, [R4,#0xC]
LDRH            R0, [R4,#0x22]
LDRH            R2, [R4,#0x24]
ADD             R0, R0, R2
LDR             R2, [R5,#4]
MOV             R2, R2,LSL#12
ADD             R0, R0, R2,LSR#22
STRH            R0, [R4,#0xE]
LDRH            R0, [R4,#0x26]
LDRH            R2, [R4,#0x28]
ADD             R0, R0, R2
LDR             R2, [R5,#4]
MOV             R2, R2,LSL#2
ADD             R0, R0, R2,LSR#22
STRH            R0, [R4,#0x10]
STR             R1, [SP,#0x40+var_40]
LDRH            R0, [R4,#8]
STR             R0, [SP,#0x40+var_3C]
LDRH            R0, [R4,#0xA]
STR             R0, [SP,#0x40+var_38]
LDRH            R0, [R4,#0xC]
STR             R0, [SP,#0x40+var_34]
LDRH            R0, [R4,#0xE]
STR             R0, [SP,#0x40+var_30]
LDRH            R0, [R4,#0x10]
STR             R0, [SP,#0x40+var_2C]
MOV             R0, #0
STR             R0, [SP,#0x40+var_28]
STR             R0, [SP,#0x40+var_24]
STR             R0, [SP,#0x40+var_20]
STR             R0, [SP,#0x40+var_1C]
STR             R0, [SP,#0x40+var_18]
STR             R0, [SP,#0x40+var_14]
LDR             R1, [R4,#0x30]
MOV             R5, R0
MOV             R1, R1,LSL#1
CMP             R0, R1,LSR#29
BCS             loc_11275C
ADD             R0, R4, R5,LSL#1
LDRH            R0, [R0,#0x34]
BL              sub_11CA94
CMP             R0, #0
NOP
BEQ             def_1126C8; jumptable 001126C8 default case
LDRB            R1, [R0,#0x15]
SUB             R1, R1, #0x1A
CMP             R1, #5; switch 5 cases
LDRCC           PC, [PC,R1,LSL#2]; switch jump
B               def_1126C8; jumptable 001126C8 default case
DCD loc_1126E4; jump table for switch statement
LDR             R1, [SP,#0x40+var_28]; jumptable 001126C8 case 0
LDR             R0, [R0,#0x24]
ADD             R0, R0, R1
STR             R0, [SP,#0x40+var_28]
B               def_1126C8; jumptable 001126C8 default case
LDR             R1, [SP,#0x40+var_24]; jumptable 001126C8 case 1
LDR             R0, [R0,#0x24]
ADD             R0, R0, R1
STR             R0, [SP,#0x40+var_24]
B               def_1126C8; jumptable 001126C8 default case
LDR             R1, [SP,#0x40+var_20]; jumptable 001126C8 case 2
LDR             R0, [R0,#0x24]
ADD             R0, R0, R1
STR             R0, [SP,#0x40+var_20]
B               def_1126C8; jumptable 001126C8 default case
LDR             R1, [SP,#0x40+var_18]; jumptable 001126C8 case 3
LDR             R0, [R0,#0x24]
ADD             R0, R0, R1
STR             R0, [SP,#0x40+var_18]
B               def_1126C8; jumptable 001126C8 default case
LDR             R1, [SP,#0x40+var_14]; jumptable 001126C8 case 4
LDR             R0, [R0,#0x24]
ADD             R0, R0, R1
STR             R0, [SP,#0x40+var_14]
LDR             R0, [R4,#0x30]; jumptable 001126C8 default case
ADD             R1, R5, #1
AND             R5, R1, #0xFF
MOV             R0, R0,LSL#1
CMP             R5, R0,LSR#29
BCC             loc_1126A4
LDR             LR, =0x51EB851F
MOV             R0, #0
ADD             R12, SP, #0x40+var_28
MOV             R3, SP
LDR             R1, [R12,R0,LSL#2]
CMP             R1, #0
BEQ             loc_1127AC
ADD             R2, R1, #0x64 ; 'd'
LDR             R1, [R3,R0,LSL#2]
CMP             R1, #0
CMPNE           R2, #0
MOVEQ           R1, #0
BEQ             loc_1127A8
MUL             R1, R1, R2
SUBLT           R1, R1, #0x32 ; '2'
ADDGE           R1, R1, #0x32 ; '2'
SMULL           R2, R1, LR, R1
MOV             R2, R1,ASR#5
SUB             R1, R2, R1,ASR#31
STR             R1, [R3,R0,LSL#2]
ADD             R0, R0, #1
AND             R0, R0, #0xFF
CMP             R0, #6
BCC             loc_11276C
LDR             R0, [R4,#0x30]
MOV             R5, #0
MOV             R0, R0,LSL#1
CMP             R5, R0,LSR#29
BCS             loc_11286C
ADD             R0, R4, R5,LSL#1
LDRH            R0, [R0,#0x34]
CMP             R0, #0
BEQ             loc_112854
BL              sub_11CA94
LDRB            R1, [R0,#0x14]
CMP             R1, #0
CMPNE           R1, #1
BEQ             loc_112804
LDR             R1, [SP,#0x40+var_38]
LDRSH           R2, [R0,#0x1A]
ADD             R1, R1, R2
STR             R1, [SP,#0x40+var_38]
LDR             R1, [SP,#0x40+var_40]
LDRSH           R2, [R0,#0x16]
ADD             R1, R1, R2
STR             R1, [SP,#0x40+var_40]
LDR             R1, [SP,#0x40+var_3C]
LDRSH           R2, [R0,#0x18]
ADD             R1, R1, R2
STR             R1, [SP,#0x40+var_3C]
LDR             R2, [SP,#0x40+var_34]
LDRSH           R1, [R0,#0x1C]
ADD             R1, R1, R2
STR             R1, [SP,#0x40+var_34]
LDR             R2, [SP,#0x40+var_30]
LDRSH           R1, [R0,#0x1E]
ADD             R1, R1, R2
STR             R1, [SP,#0x40+var_30]
LDR             R1, [SP,#0x40+var_2C]
LDRSH           R0, [R0,#0x20]
ADD             R0, R0, R1
STR             R0, [SP,#0x40+var_2C]
LDR             R0, [R4,#0x30]
ADD             R1, R5, #1
AND             R5, R1, #0xFF
MOV             R0, R0,LSL#1
CMP             R5, R0,LSR#29
BCC             loc_1127D0
LDR             R1, =0x3E7
LDR             R0, [SP,#0x40+var_40]
CMP             R0, R1
MOVGE           R0, R1
BGE             loc_112888
CMP             R0, #1
MOVLE           R0, #1
STRH            R0, [R4,#6]
LDR             R0, [SP,#0x40+var_3C]
CMP             R0, R1
MOVGE           R0, R1
BGE             loc_1128A4
CMP             R0, #1
MOVLE           R0, #1
STRH            R0, [R4,#8]
LDR             R0, [SP,#0x40+var_38]
CMP             R0, R1
MOVGE           R0, R1
BGE             loc_1128C0
CMP             R0, #1
MOVLE           R0, #1
STRH            R0, [R4,#0xA]
LDR             R0, [SP,#0x40+var_34]
CMP             R0, R1
MOVGE           R0, R1
BGE             loc_1128DC
CMP             R0, #1
MOVLE           R0, #1
STRH            R0, [R4,#0xC]
LDR             R0, [SP,#0x40+var_30]
CMP             R0, R1
MOVGE           R0, R1
BGE             loc_1128F8
CMP             R0, #1
MOVLE           R0, #1
STRH            R0, [R4,#0xE]
LDR             R0, [SP,#0x40+var_2C]
CMP             R1, R0
BLE             loc_112914
CMP             R0, #1
MOVLE           R1, #1
MOVGT           R1, R0
STRH            R1, [R4,#0x10]
ADD             SP, SP, #0x34 ; '4'
POP             {R4,R5,PC}
