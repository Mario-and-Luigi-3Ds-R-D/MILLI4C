PUSH            {R4-R6,LR}
SUB             SP, SP, #0x18
LDR             R1, =sub_1230BC
MOV             R3, #3
MOV             R2, #4
ADD             R0, SP, #0x28+var_1C
BLX             sub_1002F4
LDR             R5, =dword_70D34C
LDR             R4, =byte_6D4940
LDR             R0, [R5]
STR             R0, [SP,#0x28+var_1C]
LDR             R0, [R5,#(dword_70D350 - 0x70D34C)]
STR             R0, [SP,#0x28+var_18]
LDR             R0, [R5,#(dword_70D354 - 0x70D34C)]
STR             R0, [SP,#0x28+var_14]
LDRB            R0, [R4]
CMP             R0, #0
BNE             loc_11AB1C
MOV             R0, #0xFFFFFFFF
MOV             R1, R0
STRD            R0, R1, [SP,#0x28+var_28]
MOV             R3, #0
MOV             R2, #3
ADD             R1, SP, #0x28+var_1C
ADD             R0, SP, #0x28+var_20
BL              sub_120250
MOV             R1, PC
MOVS            R2, R0,LSR#31
BLNE            sub_1215E4
LDRB            R0, [R4]
CMP             R0, #0
BNE             loc_11AB1C
LDR             R0, =dword_6D4954
BL              sub_1281E8
CMP             R0, #0
NOP
BEQ             loc_11A8B8
LDR             R3, =0xF4240
MOV             R1, #0xA
MOV             R12, #0
MOV             R2, R1,ASR#31
UMULL           R0, R6, R1, R3
MLA             R2, R2, R3, R6
MLA             R1, R1, R12, R2
BL              sub_121140
LDR             R0, [SP,#0x28+var_20]
LDR             R0, [R5,R0,LSL#2]
SVC             0x18
MOVS            R1, R0,LSR#31
NOP
BLNE            sub_12107C
NOP
NOP
B               loc_11AB10
LDR             R0, [SP,#0x28+var_20]
LDR             R0, [R5,R0,LSL#2]
SVC             0x19
MOVS            R1, R0,LSR#31
NOP
BLNE            sub_12107C
LDR             R0, [SP,#0x28+var_20]
CMP             R0, #2
MOVEQ           R0, #0xC
BEQ             loc_11A9EC
CMP             R0, #1
BEQ             loc_11A8F4
CMP             R0, #0
BEQ             loc_11A924
B               loc_11AB10
LDR             R1, [R4,#(off_6D4944 - 0x6D4940)]
CMP             R1, #0
BEQ             loc_11A910
LDR             R0, [R4,#(dword_6D4948 - 0x6D4940)]
BLX             R1
CMP             R0, #0
BEQ             loc_11AB10
LDR             R0, =dword_6D4954
BL              sub_118998
NOP
NOP
B               loc_11AB10
NOP
BL              sub_1233A8
NOP
NOP
BL              sub_123148
MOV             R1, SP
NOP
BL              sub_1239B8
MOV             R6, R0
NOP
BL              sub_123520
ANDS            R0, R6, #0x80000000
NOP
BMI             loc_11AB10
LDRB            R0, [SP,#0x28+var_28]
CMP             R0, #0xC; switch 12 cases
LDRCC           PC, [PC,R0,LSL#2]; switch jump
B               def_11A964; jumptable 0011A964 default case, case 0
DCD def_11A964; jump table for switch statement
NOP; jumptable 0011A964 cases 1,2
BL              sub_123590
CMP             R0, #0
NOP
BNE             loc_11A9C0
LDRB            R0, [SP,#0x28+var_28]
CMP             R0, #1
MOVNE           R0, #2
BL              sub_1235CC
LDR             R1, [R4,#(off_6D4944 - 0x6D4940)]
CMP             R1, #0
BEQ             loc_11A9DC
LDR             R0, [R4,#(dword_6D4948 - 0x6D4940)]
BLX             R1
CMP             R0, #0
BEQ             loc_11AB10
LDRB            R0, [SP,#0x28+var_28]
CMP             R0, #1
MOVEQ           R0, #6
MOVNE           R0, #7
NOP
BL              sub_1230C8
LDR             R0, =dword_6D4954
NOP
BL              sub_118998
NOP
NOP
B               loc_11AB10
AND             R0, R0, #0xFF; jumptable 0011A964 cases 3-6
CMP             R0, #3
MOVEQ           R0, #1
CMPNE           R0, #4
BEQ             loc_11AA38
CMP             R0, #5
MOVEQ           R0, #2
BEQ             loc_11AA38
CMP             R0, #6
MOVEQ           R0, #3
BNE             loc_11AA3C
BL              sub_1234D8
LDR             R1, [R4,#(off_6D4944 - 0x6D4940)]
CMP             R1, #0
BEQ             loc_11AB10
B               loc_11AA9C
NOP; jumptable 0011A964 case 7
BL              sub_1230D8
MOV             R0, #1
NOP
BL              sub_1234C8
MOV             R0, #1
NOP
BL              sub_11B1F4
LDR             R1, [R4,#(off_6D4944 - 0x6D4940)]
CMP             R1, #0
BEQ             loc_11AB10
B               loc_11AA9C
NOP; jumptable 0011A964 case 8
BL              sub_123110
MOV             R0, #1
NOP
BL              sub_11B1E4
LDR             R1, [R4,#(off_6D4944 - 0x6D4940)]
CMP             R1, #0
BEQ             loc_11AB10
LDR             R0, [R4,#(dword_6D4948 - 0x6D4940)]
BLX             R1
B               loc_11AB10
MOV             R0, #0; jumptable 0011A964 case 9
BL              sub_11B1E4
NOP
NOP
B               loc_11AB10
NOP; jumptable 0011A964 case 10
BL              sub_1233A8
MOV             R0, #0
MOV             R1, #0x40 ; '@'
BL              sub_123830
MOV             R1, PC
MOVS            R2, R0,LSR#31
BLNE            sub_1215E4
NOP
NOP
BL              sub_123520
NOP
NOP
B               loc_11AB10
MOV             R0, #1; jumptable 0011A964 case 11
BL              sub_11B1F4
NOP
NOP
B               loc_11AB10
NOP; jumptable 0011A964 default case, case 0
BL              sub_128434
LDRB            R0, [R4]
CMP             R0, #0
BEQ             loc_11A828
ADD             SP, SP, #0x18
POP             {R4-R6,PC}
