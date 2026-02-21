PUSH            {R4,R5,LR}
MOV             R4, R0
ADD             R0, R0, #0x400
LDR             R1, =off_6CDF98
SUB             SP, SP, #0xC
VSTR            S1, [R0]
LDR             R0, [R4,#0x404]
LDR             R2, [R1]
LDR             R1, [R0]
LDR             R3, [R2,#0x124]
LDRB            R5, [R0,#5]
LDRB            R1, [R1,#0x708]
LDR             R12, [R3,#0x610]
MUL             R1, R12, R1
LDR             R12, [R3,#0x614]
MOV             R3, #0
STRB            R3, [R4,#0xF6]
MLA             R1, R12, R5, R1
STR             R1, [R4,#0x40]
LDRB            R1, [R4,#0x3F4]
CMP             R1, #0xC; switch 12 cases
LDRCC           PC, [PC,R1,LSL#2]; switch jump
B               def_27EA38; jumptable 0027EA38 default case
DCD loc_27EA90; jump table for switch statement
MOV             R0, R4; jumptable 0027EA38 cases 3,7-11
BL              sub_27E8D4
MOV             R0, R4
NOP
BL              sub_27EEAC
NOP
NOP
B               def_27EA38; jumptable 0027EA38 default case
LDRB            R0, [R0,#0xC]; jumptable 0027EA38 case 0
TST             R0, #2
BEQ             loc_27EB2C
LDR             R0, [R2,#0xC4]
ADD             R1, SP, #0x18+var_14
LDR             R2, [R0,#0x1C]!
ADD             R0, R0, #4
STR             R0, [SP,#0x18+var_14]
STR             R2, [SP,#0x18+var_18]
LDR             R2, [R0,#4]
STR             R2, [SP,#0x18+var_10]
STR             R1, [R2]
STR             R1, [R0,#4]
LDR             R0, [SP,#0x18+var_18]
LDR             R1, [SP,#0x18+var_10]
LDRB            R5, [R0,#0x67]
ADD             R0, SP, #0x18+var_14
CMP             R1, R0
BNE             loc_27EAF8
LDR             R0, [SP,#0x18+var_18]
CMP             R0, #0
BEQ             loc_27EAF8
BL              sub_273C74
NOP
NOP
BL              sub_300FD4
LDRD            R0, R1, [SP,#0x18+var_14]
CMP             R5, #1
MOVLS           R5, #1
MOV             R3, #0x100
STR             R1, [R0,#4]
STR             R0, [R1]
AND             R1, R5, #0xFF
MOV             R2, #0
MOV             R0, R4
BL              sub_14C430
NOP
NOP
B               loc_27EA70; jumptable 0027EA38 cases 3,7-11
MOV             R2, #0
MOV             R3, #0x100
MOV             R1, R2
MOV             R0, R4
BL              sub_14C430
NOP
NOP
B               loc_27EA70; jumptable 0027EA38 cases 3,7-11
LDRB            R1, [R4,#0x3F6]; jumptable 0027EA38 case 1
LDRB            R0, [R0,#0xC]
MOV             R2, #0xC
MOV             R3, #0x100
ADD             R1, R2, R1,LSL#2
ADD             R0, R0, R1
AND             R1, R0, #0xFF
MOV             R2, #0
MOV             R0, R4
BL              sub_14C430
NOP
NOP
B               loc_27EA70; jumptable 0027EA38 cases 3,7-11
MOV             R0, R4; jumptable 0027EA38 case 4
BL              sub_27E8D4
MOV             R0, R4
NOP
BL              sub_27EEAC
ADD             R0, R4, #0x39C
VLDM            R0, {S0-S1}
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
BLT             def_27EA38; jumptable 0027EA38 default case
MOV             R0, R4
MOV             R2, #0
MOV             R1, SP
BL              sub_5C4F84
LDR             R0, [SP,#0x18+var_18]
LDR             R1, =0xC3570000
CMP             R0, R1
MOVCS           R0, #0xC
STRBCS          R0, [R4,#0x3F4]
B               def_27EA38; jumptable 0027EA38 default case
MOV             R0, R4; jumptable 0027EA38 case 2
BL              sub_27E8D4
MOV             R0, R4
NOP
BL              sub_27EEAC
MOV             R0, R4
NOP
BL              sub_5C5820
CMP             R0, #0
LDRBEQ          R0, [R4,#0x3F5]
BNE             def_27EA38; jumptable 0027EA38 default case
B               loc_27EC30
ADD             R0, R4, #0x1DC; jumptable 0027EA38 case 5
BL              sub_5F19B8
CMP             R0, #0
NOP
BEQ             loc_27EC2C
B               def_27EA38; jumptable 0027EA38 default case
ADD             R0, R4, #0x1DC; jumptable 0027EA38 case 6
BL              sub_5F19B8
CMP             R0, #0
NOP
BNE             def_27EA38; jumptable 0027EA38 default case
MOV             R0, #0xC
STRB            R0, [R4,#0x3F4]
LDRB            R0, [R4,#0x3F4]; jumptable 0027EA38 default case
CMP             R0, #1
CMPNE           R0, #2
BEQ             loc_27EC50
CMP             R0, #3
CMPNE           R0, #9
BNE             loc_27EC70
LDR             R0, [R4,#0x404]
LDRB            R0, [R0,#0xE]
CMP             R0, #0
BNE             loc_27EC70
ADD             SP, SP, #0xC
MOV             R0, R4
POP             {R4,R5,LR}
B               sub_27EC80
ADD             SP, SP, #0xC
POP             {R4,R5,PC}
