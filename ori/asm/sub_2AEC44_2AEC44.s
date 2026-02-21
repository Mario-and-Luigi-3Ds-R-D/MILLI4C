PUSH            {R3-R9,LR}
MOV             R5, #0
MOV             R7, R0
ADD             R8, R0, #0x14000
LDRB            R0, [R8,#0x28E]
CMP             R0, #0
BLE             loc_2AEF44
ADD             R4, R7, R5,LSL#2
ADD             R4, R4, #0x14000
ADD             R4, R4, #0x184
LDR             R0, [R4]
LDR             R1, [R0]
LDR             R1, [R1,#8]
BLX             R1
CMP             R0, #0xA; switch 10 cases
LDRCC           PC, [PC,R0,LSL#2]; switch jump
B               def_2AEC80; jumptable 002AEC80 default case, cases 0-2
DCD def_2AEC80; jump table for switch statement
LDR             R1, =dword_6ED9B8; jumptable 002AEC80 case 3
MOV             R3, #0x800000
MOV             R2, #0
MOV             R0, #0xE0
BL              sub_10A358
CMP             R0, #0
MOVEQ           R6, #0
BEQ             loc_2AECEC
MOV             R1, #1
STR             R1, [SP,#0x20+var_20]
LDRB            R2, [R8,#0x28E]
MOV             R3, #0
MOV             R1, R7
BL              sub_22CF58
MOV             R6, R0
LDR             R1, [R4]
MOV             R2, #0xE0
MOV             R0, R6
BL              sub_1103A4
STR             R6, [R4]
NOP
B               def_2AEC80; jumptable 002AEC80 default case, cases 0-2
LDR             R0, [R4]; jumptable 002AEC80 case 4
LDR             R1, [R0]
LDR             R1, [R1,#0xC]
BLX             R1
CMP             R0, #0
BEQ             loc_2AED70
LDR             R9, =0x588
LDR             R1, =dword_6ED9B8
MOV             R3, #0x800000
MOV             R2, #0
MOV             R0, R9
BL              sub_10A358
CMP             R0, #0
NOP
BEQ             loc_2AED68
MOV             R1, #1
STR             R1, [SP,#0x20+var_20]
LDRB            R2, [R8,#0x28E]
MOV             R3, #0
MOV             R1, R7
BL              sub_2D29CC
NOP
NOP
B               loc_2AEFB0
MOV             R6, #0
B               loc_2AEFEC
STR             R6, [R4]
B               def_2AEC80; jumptable 002AEC80 default case, cases 0-2
LDR             R0, [R4]; jumptable 002AEC80 case 5
LDR             R1, [R0]
LDR             R1, [R1,#0xC]
BLX             R1
LDR             R1, =dword_6ED9B8
CMP             R0, #0
MOV             R3, #0x800000
MOV             R2, #0
BEQ             loc_2AEDD8
LDR             R9, =0x828
MOV             R0, R9
BL              sub_10A358
CMP             R0, #0
NOP
BEQ             loc_2AED68
MOV             R1, #1
STR             R1, [SP,#0x20+var_20]
LDRB            R2, [R8,#0x28E]
MOV             R3, #0
MOV             R1, R7
BL              sub_1757C4
NOP
NOP
B               loc_2AEFB0
LDR             R9, =0xAA8
MOV             R0, R9
BL              sub_10A358
CMP             R0, #0
NOP
BEQ             loc_2AED68
MOV             R1, #1
STR             R1, [SP,#0x20+var_20]
LDRB            R2, [R8,#0x28E]
MOV             R3, #0
MOV             R1, R7
BL              sub_1E7DC4
NOP
NOP
B               loc_2AEFB0
LDR             R0, [R4]; jumptable 002AEC80 case 6
LDR             R1, [R0]
LDR             R1, [R1,#0xC]
BLX             R1
CMP             R0, #0
BEQ             loc_2AED70
LDR             R1, =dword_6ED9B8
MOV             R3, #0x800000
MOV             R2, #0
MOV             R0, #0x840
BL              sub_10A358
CMP             R0, #0
MOVEQ           R6, #0
BEQ             loc_2AEE68
MOV             R1, #1
STR             R1, [SP,#0x20+var_20]
LDRB            R2, [R8,#0x28E]
MOV             R3, #0
MOV             R1, R7
BL              sub_231EA4
MOV             R6, R0
LDR             R1, [R4]
MOV             R2, #0x840
MOV             R0, R6
BL              sub_1103A4
NOP
NOP
B               loc_2AED70
LDR             R9, =0x1218; jumptable 002AEC80 case 7
LDR             R1, =dword_6ED9B8
MOV             R3, #0x800000
MOV             R2, #0
MOV             R0, R9
BL              sub_10A358
CMP             R0, #0
MOVEQ           R6, #0
BEQ             loc_2AEEC4
MOV             R1, #1
STR             R1, [SP,#0x20+var_20]
LDRB            R2, [R8,#0x28E]
MOV             R3, #0
MOV             R1, R7
BL              sub_173938
MOV             R6, R0
LDR             R1, [R4]
MOV             R2, R9
MOV             R0, R6
BL              sub_1103A4
MOV             R0, #0
STR             R6, [R4]
STR             R0, [R6,#0x7FC]
B               def_2AEC80; jumptable 002AEC80 default case, cases 0-2
LDR             R1, =dword_6ED9B8; jumptable 002AEC80 case 8
MOV             R3, #0x800000
MOV             R2, #0
MOV             R0, #0xAB0
BL              sub_10A358
CMP             R0, #0
MOVEQ           R6, #0
BEQ             loc_2AEF20
MOV             R1, #1
STR             R1, [SP,#0x20+var_20]
LDRB            R2, [R8,#0x28E]
MOV             R3, #0
MOV             R1, R7
BL              sub_1C8174
MOV             R6, R0
LDR             R1, [R4]
MOV             R2, #0xAB0
MOV             R0, R6
BL              sub_1103A4
STR             R6, [R4]
LDRB            R0, [R8,#0x28E]; jumptable 002AEC80 default case, cases 0-2
ADD             R5, R5, #1
CMP             R0, R5
BGT             loc_2AEC60
LDR             R0, [R7]
LDR             R1, [R0,#0xB0]
ADD             SP, SP, #4
MOV             R0, R7
POP             {R4-R9,LR}
BX              R1
LDR             R0, [R4]; jumptable 002AEC80 case 9
LDR             R1, [R0]
LDR             R1, [R1,#0xC]
BLX             R1
LDR             R1, =dword_6ED9B8
CMP             R0, #0
MOV             R3, #0x800000
MOV             R2, #0
BEQ             loc_2AEFB8
LDR             R9, =0x828
MOV             R0, R9
BL              sub_10A358
CMP             R0, #0
NOP
BEQ             loc_2AED68
MOV             R1, #1
STR             R1, [SP,#0x20+var_20]; float
LDRB            R2, [R8,#0x28E]; int
MOV             R3, #0; int
MOV             R1, R7; int
BL              sub_22CE70
MOV             R6, R0
B               loc_2AEFEC
LDR             R9, =0xAA8
MOV             R0, R9
BL              sub_10A358
CMP             R0, #0
NOP
BEQ             loc_2AED68
MOV             R1, #1
STR             R1, [SP,#0x20+var_20]; float
LDRB            R2, [R8,#0x28E]; int
MOV             R3, #0; int
MOV             R1, R7; int
BL              sub_2AACAC
MOV             R6, R0
LDR             R1, [R4]
MOV             R2, R9
MOV             R0, R6
BL              sub_1103A4
NOP
NOP
B               loc_2AED70
