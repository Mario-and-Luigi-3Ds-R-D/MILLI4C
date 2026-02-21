PUSH            {R0-R11,LR}
SUB             SP, SP, #4
AND             R3, R0, #0x1F
MOV             R7, R1
LDR             R2, =off_6D48F8
LDR             R1, =dword_700750
LDR             R10, [R2]
LDR             R4, [R1,#(off_7007EC - 0x700750)]
LDR             R1, =dword_700750
LDRB            R2, [R10,#0x693]
ADD             R1, R1, R3,LSL#2
CMP             R2, #0
MOVNE           R2, #0x20 ; ' '
MOVEQ           R2, #8
STR             R2, [SP,#0x38+var_38]
LDR             R5, [R1,#0xA4]
CMP             R5, #0
BEQ             loc_11F360
LDR             R1, [R5]
CMP             R1, R0
LDRNE           R5, [R5,#0x18]
CMPNE           R5, #0
BNE             loc_11F34C
NOP
BL              sub_125898
CMP             R7, #0x500
MOV             R6, R0
MOVEQ           R9, #0
MOVEQ           R7, #1
BEQ             loc_11F3E0
SUB             R0, R7, #0x500
SUBS            R0, R0, #1
MOVEQ           R9, #1
MOVEQ           R7, #2
BEQ             loc_11F3E0
CMP             R0, #1
BNE             loc_11F7C4
MOV             R9, #2
MOV             R7, R9
MOV             R8, R9
LDR             R0, =dword_6D2418
LDR             R2, [R4,#4]
LDR             R1, [R0]
SUB             R3, R1, R2
STR             R3, [R4,#0xC]
LDR             R2, [R4,#0x14]
CMP             R2, R3
LDREQ           R0, [R4,#0x20]
BEQ             loc_11F4F8
LDR             R2, =dword_6D241C
TST             R3, #8
ADDNE           R1, R3, #0x18
STRNE           R1, [R4,#0xC]
BNE             loc_11F414
B               loc_11F3E8
MOV             R8, #1
B               loc_11F3A4
ADD             R3, R3, #0x20 ; ' '
STR             R3, [R4,#0xC]
LDR             R3, [R2]
CMP             R1, R3
BCS             loc_11F414
LDR             R11, =0x8025E
MOV             R12, #0
ADD             LR, R1, #8
STR             R11, [R1,#4]
STR             R12, [R1]
STR             LR, [R0]
LDR             R1, [R0]
LDR             R3, [R2]
CMP             R1, R3
BCS             loc_11F43C
LDR             R11, =0xF0111
MOV             R12, #1
ADD             LR, R1, #8
STR             R11, [R1,#4]
STR             R12, [R1]
STR             LR, [R0]
LDR             R1, [R0]
LDR             R3, [R2]
CMP             R1, R3
BCS             loc_11F464
LDR             R11, =0xF0110
MOV             R12, #1
ADD             LR, R1, #8
STR             R11, [R1,#4]
STR             R12, [R1]
STR             LR, [R0]
LDR             R1, [R2]
LDR             R2, [R0]
CMP             R2, R1
BCS             loc_11F488
LDR             R3, =0x12345678
LDR             R12, =0xF0010
ADD             R11, R2, #8
STM             R2, {R3,R12}
STR             R11, [R0]
LDR             R1, [R4,#0x20]
LDR             R2, [R4,#0x18]
MOV             R0, #1
RSB             R1, R1, R1,LSL#3
ADD             R11, R2, R1,LSL#2
STRB            R0, [R11]
LDR             R0, [R4,#4]
LDR             R1, [R4,#0x14]
ADD             R0, R0, R1
STR             R0, [R11,#4]
LDR             R0, [R4,#0xC]
LDR             R1, [R4,#0x14]
SUB             R0, R0, R1
STR             R0, [R11,#8]
LDR             R0, [R4,#0x34]
CMP             R0, #0
BEQ             loc_11F4D8
MOV             R1, R11
MOV             R0, R4
BL              sub_11F938
LDR             R0, [R11,#0xC]
BIC             R0, R0, #2
STR             R0, [R11,#0xC]
LDR             R0, [R4,#0xC]
STR             R0, [R4,#0x14]
LDR             R0, [R4,#0x20]
ADD             R0, R0, #1
STR             R0, [R4,#0x20]
LDR             R2, [R4,#0x18]
RSB             R0, R0, R0,LSL#3
MOV             R1, #3
ADD             R0, R2, R0,LSL#2
STRB            R1, [R0]
LDR             R1, [R6,#0x1C]
CMP             R1, #5; switch 5 cases
LDRCC           PC, [PC,R1,LSL#2]; switch jump
B               def_11F514; jumptable 0011F514 default case
DCD loc_11F530; jump table for switch statement
LDR             R2, [R0,#0x14]; jumptable 0011F514 case 0
MOV             R1, #4
BIC             R2, R2, #7
B               loc_11F578
LDR             R2, [R0,#0x14]; jumptable 0011F514 case 1
MOV             R1, #3
BIC             R2, R2, #7
ORR             R2, R2, #1
B               loc_11F578
LDR             R2, [R0,#0x14]; jumptable 0011F514 case 3
MOV             R1, #2
BIC             R2, R2, #7
ORR             R2, R2, #2
B               loc_11F578
LDR             R2, [R0,#0x14]; jumptable 0011F514 case 2
MOV             R1, #2
BIC             R2, R2, #7
ORR             R2, R2, #3
STR             R2, [R0,#0x14]
B               loc_11F59C
LDR             R2, [R0,#0x14]; jumptable 0011F514 case 4
MOV             R1, #2
BIC             R2, R2, #7
ORR             R2, R2, #4
STR             R2, [R0,#0x14]
B               loc_11F59C
MOV             R1, #0; jumptable 0011F514 default case
LDR             R3, [R5,#0x10]
LDR             R2, [R6,#0x10]
LDR             R12, [R6,#0xC]
LDR             R11, [R6]
MUL             R3, R3, R8
LDR             LR, =0x8057
SUB             R3, R2, R3
LDR             R2, [SP,#0x38+arg_0]
SUB             R2, R3, R2
LDR             R3, [SP,#0x38+var_38]
MUL             R12, R2, R12
LDR             R2, [SP,#0x38+var_28]
MLA             R2, R2, R3, R12
MLA             R1, R2, R1, R11
STR             R1, [R0,#4]
LDR             R1, [R5,#8]
CMP             R1, LR
SUB             R2, R1, LR
BEQ             loc_11F6DC
BGT             loc_11F604
SUB             R1, R1, #0x8000
SUBS            R1, R1, #0x51 ; 'Q'
BEQ             loc_11F6B4
CMP             R1, #5
BNE             loc_11F618
B               loc_11F6F4
CMP             R2, #1
BEQ             loc_11F6A4
SUB             R1, R2, #0xD00
SUBS            R1, R1, #0xB
BEQ             loc_11F6C8
MOV             R1, #0
LDR             R3, [R5,#4]
LDR             R2, [SP,#0x38+var_2C]
STR             R3, [R0,#8]
CMP             R2, #0
LDR             R2, [R6,#0xC]
STRH            R2, [R0,#0xC]
LDR             R2, [R6,#0x10]
STRH            R2, [R0,#0xE]
LDR             R2, [R5,#0xC]
MUL             R2, R2, R7
STRH            R2, [R0,#0x10]
LDR             R2, [R5,#0x10]
MUL             R2, R2, R8
STRH            R2, [R0,#0x12]
LDREQ           R1, [R0,#0x14]
BICEQ           R1, R1, #0x40 ; '@'
BEQ             loc_11F748
ADD             R8, R0, #0xC
LDM             R8, {R8,R12}
UXTH            R6, R8
UXTH            R2, R12
CMP             R2, R6
MOVCS           R11, R12,LSR#16
CMPCS           R11, R8,LSR#16
BCS             loc_11F740
CMP             R7, #2
BEQ             loc_11F70C
MOV             R5, #0xFFFFFFFF
SUB             R2, R6, R2
ADD             R12, R5, R12,LSR#16
MUL             R2, R2, R12
MUL             R1, R2, R1
SUB             R1, R3, R1
B               loc_11F73C
LDR             R2, [R0,#0x14]
MOV             R1, #4
BIC             R2, R2, #0x38 ; '8'
B               loc_11F6EC
LDR             R2, [R0,#0x14]
MOV             R1, #3
BIC             R2, R2, #0x38 ; '8'
ORR             R2, R2, #8
B               loc_11F6EC
LDR             R2, [R0,#0x14]
MOV             R1, #2
BIC             R2, R2, #0x38 ; '8'
ORR             R2, R2, #0x10
B               loc_11F6EC
LDR             R2, [R0,#0x14]
MOV             R1, #2
BIC             R2, R2, #0x38 ; '8'
ORR             R2, R2, #0x18
STR             R2, [R0,#0x14]
B               loc_11F61C
LDR             R2, [R0,#0x14]
MOV             R1, #2
BIC             R2, R2, #0x38 ; '8'
ORR             R2, R2, #0x20 ; ' '
STR             R2, [R0,#0x14]
B               loc_11F61C
CMP             R1, #3
MOVEQ           R12, #0x10
MOVNE           R12, #8
SUB             R2, R6, R2
TST             R2, R12
SUBNE           R2, R2, R12
LDR             R12, [R5,#0x10]
SUB             R12, R12, #1
MUL             R2, R12, R2
MUL             R1, R2, R1
ADD             R1, R1, R1,LSR#31
SUB             R1, R3, R1,ASR#1
STR             R1, [R0,#8]
LDR             R1, [R0,#0x14]
ORR             R1, R1, #0x40 ; '@'
MOV             R2, #0x180
BIC             R1, R1, #0x180
AND             R2, R2, R9,LSL#7
ORR             R1, R1, R2
STR             R1, [R0,#0x14]
LDRB            R2, [R10,#0x693]
CMP             R2, #0
ORRNE           R1, R1, #0x200
BICEQ           R1, R1, #0x200
BIC             R1, R1, #0xC00
STR             R1, [R0,#0x14]
BL              sub_11A070
LDR             R1, [R4,#0x20]
LDR             R0, =dword_700750
ADD             R1, R1, #1
STR             R1, [R4,#0x20]
LDR             R1, [R0,#(dword_7007F0 - 0x700750)]
CMP             R1, R4
BNE             loc_11F7B8
LDRB            R1, [R0,#(byte_700762 - 0x700750)]
CMP             R1, #0
BEQ             loc_11F7B8
LDRB            R1, [R0,#(byte_700761 - 0x700750)]
CMP             R1, #0
BNE             loc_11F7B8
MOV             R1, #1
STRB            R1, [R0,#(byte_700761 - 0x700750)]
BL              sub_11F990
ADD             SP, SP, #0x14
POP             {R4-R11,LR}
B               sub_11A080
ADD             SP, SP, #0x14
POP             {R4-R11,PC}
