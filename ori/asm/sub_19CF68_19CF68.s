MOV             R5, #3
LDRB            R0, [R0]
MOV             R8, #1
MOV             R7, #2
CMP             R0, #0
LDR             R0, [R6]
BEQ             loc_19D048
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x17800
ADD             R0, R0, #0x2C8
LDRB            R0, [R0]
CMP             R0, #2
BEQ             loc_19D250
LDR             R0, [R6]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x17800
ADD             R0, R0, #0x2C8
LDRB            R0, [R0]
CMP             R0, #3
BEQ             loc_19D430
LDR             R0, [R6]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x17800
ADD             R0, R0, #0x2C8
LDRB            R0, [R0]
CMP             R0, #4
BEQ             loc_19D430
LDR             R0, [R6]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x17800
ADD             R0, R0, #0x2C8
LDRB            R0, [R0]
CMP             R0, #5
BEQ             loc_19D430
LDR             R0, [R6]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x17800
ADD             R0, R0, #0x2C8
LDRB            R0, [R0]
CMP             R0, #6
BEQ             loc_19D430
LDR             R0, [R6]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x17800
ADD             R0, R0, #0x2C8
LDRB            R0, [R0]
CMP             R0, #7
BEQ             loc_19D430
LDR             R0, [R6]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x17800
ADD             R0, R0, #0x2C8
LDRB            R0, [R0]
CMP             R0, #1
BEQ             loc_19D430
B               loc_19D51C
NOP
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x14400
ADD             R0, R0, #8
LDR             R0, [R0]
LDRB            R0, [R0,#0xC0A]
CMP             R0, #0
BEQ             loc_19D134
LDR             R0, [R4,#0x90]
CMP             R0, #0
LDRBNE          R0, [R0,#0xB4]
CMPNE           R0, #0xC
LDR             R0, [R4,#0x1B4]
BEQ             loc_19D15C
MOV             R0, R0,LSL#18
CMP             R7, R0,LSR#30
BEQ             loc_19D51C
ADD             R0, R4, #0xF8
BL              sub_5C63A4
CMP             R0, #0
NOP
BEQ             loc_19D0AC
MOV             R1, #0
ADD             R0, R4, #0xF8
BL              sub_194BC0
LDR             R0, [R4,#0x90]
CMP             R0, #0
BEQ             loc_19D51C
LDR             R0, [R6]
LDR             R0, [R0,#0xBC]
NOP
NOP
MOV             R0, #1
CMP             R0, #0
NOP
BEQ             loc_19D51C
LDR             R0, [R4,#0x90]
LDR             R1, [R0]
LDR             R1, [R1,#0x58]
BLX             R1
CMP             R0, #0
BEQ             loc_19D51C
LDR             R0, [R4,#0x1B4]
BIC             R0, R0, #0x3000
ORR             R0, R0, #0x2000
STR             R0, [R4,#0x1B4]
LDR             R0, [R4,#0x90]
CMP             R0, #0
BEQ             loc_19D118
LDRB            R0, [R0,#0xB4]
CMP             R0, #5
BEQ             loc_19D51C
MOV             R2, #1
MOV             R1, #0
MOV             R0, R4
BL              sub_19AB88
NOP
NOP
B               loc_19D51C
LDR             R0, [R4,#0x1B4]
MOV             R0, R0,LSL#18
CMP             R5, R0,LSR#30
BNE             loc_19D150
MOV             R1, #0
ADD             R0, R4, #0xF8
BL              sub_194BC0
LDR             R0, [R4,#0x1B4]
BIC             R0, R0, #0xF3000
B               loc_19D560
TST             R0, #0x10000
BEQ             loc_19D220
ADD             R0, R4, #0xE0
ADD             R3, SP, #arg_30
LDM             R0, {R0-R2}
VLDR            S0, =1.5
VLDR            S1, =1.0
STM             R3, {R0-R2}
MOV             R0, #0
VSTR            S0, [SP,#arg_0]
STR             R0, [SP,#arg_4]
STR             R0, [SP,#arg_8]
STR             R0, [SP,#arg_C]
STR             R0, [SP,#arg_10]
VSTR            S0, [SP,#arg_14]
STR             R0, [SP,#arg_18]
STR             R0, [SP,#arg_1C]
STR             R0, [SP,#arg_20]
STR             R0, [SP,#arg_24]
VSTR            S1, [SP,#arg_28]
MOV             R2, SP
STR             R0, [SP,#arg_2C]
ADD             R1, SP, #arg_30
MOV             R0, R2
BL              sub_142328
VLDMEA          SP, {S0-S7}
ADD             R6, SP, #arg_20
LDR             R0, [R4,#0x19C]
ADD             R1, R0, #0x20 ; ' '
ADD             R0, R0, #0x40 ; '@'
VSTM            R1, {S0-S7}
LDM             R6, {R1-R3,R12}
STM             R0, {R1-R3,R12}
LDR             R0, [R4,#0x1B4]
MOV             R1, R0,LSL#18
CMP             R5, R1,LSR#30
BEQ             loc_19D204
ORR             R0, R0, #0x3000
STR             R0, [R4,#0x1B4]
MOV             R1, #1
ADD             R0, R4, #0xF8
BL              sub_194BC0
MOV             R2, #1
MOV             R1, R2
MOV             R0, R4
BL              sub_19AB88
NOP
NOP
B               loc_19D51C
MOV             R1, R0,LSL#18
CMP             R8, R1,LSR#30
BEQ             loc_19D51C
BIC             R0, R0, #0x3000
ORR             R0, R0, #0x1000
STR             R0, [R4,#0x1B4]
MOV             R1, #0
ADD             R0, R4, #0xF8
BL              sub_194BC0
NOP
NOP
B               loc_19D204
ADD             R0, R4, #0xF8
BL              sub_5C63A4
CMP             R0, #0
NOP
BEQ             loc_19D270
MOV             R1, #0
ADD             R0, R4, #0xF8
BL              sub_194BC0
LDR             R0, [R6]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x14400
ADD             R0, R0, #8
LDR             R0, [R0]
LDRB            R0, [R0,#0xC0A]
CMP             R0, #0
BEQ             loc_19D3AC
LDR             R0, [R4,#0x90]
CMP             R0, #0
BEQ             loc_19D3BC
LDR             R1, [R0,#0x120]
TST             R1, #1
LDRBNE          R0, [R0,#0xB4]
CMPNE           R0, #0xC
BEQ             loc_19D3BC
LDR             R1, [R4,#0x1B4]
MOV             R1, R1,LSL#18
CMP             R7, R1,LSR#30
CMPNE           R0, #5
BEQ             loc_19D31C
LDR             R0, [R6]
LDR             R0, [R0,#0xBC]
NOP
NOP
MOV             R0, #1
CMP             R0, #0
NOP
BEQ             loc_19D31C
LDR             R0, [R4,#0x90]
LDR             R1, [R0]
LDR             R1, [R1,#0x58]
BLX             R1
CMP             R0, #0
BEQ             loc_19D31C
LDR             R0, [R4,#0x1B4]
MOV             R2, #1
MOV             R1, #0
BIC             R0, R0, #0x3000
ORR             R0, R0, #0x2000
STR             R0, [R4,#0x1B4]
MOV             R0, R4
BL              sub_19AB88
LDR             R0, [R4,#0x1B4]
MOV             R0, R0,LSL#16
CMP             R7, R0,LSR#30
LDRNE           R0, [R4,#0x90]
CMPNE           R0, #0
BEQ             loc_19D51C
LDR             R0, [R6]
LDR             R0, [R0,#0xBC]
NOP
NOP
MOV             R0, #1
CMP             R0, #0
NOP
BEQ             loc_19D51C
LDR             R0, [R4,#0x90]
LDR             R1, [R0]
LDR             R1, [R1,#0x58]
BLX             R1
CMP             R0, #0
BEQ             loc_19D51C
LDR             R0, [R4,#0x1B4]
BIC             R0, R0, #0xC000
ORR             R0, R0, #0x8000
STR             R0, [R4,#0x1B4]
LDR             R0, [R6]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x14400
ADD             R0, R0, #8
MOV             R3, #1
LDR             R0, [R0]
MOV             R2, R3
MOV             R1, #0
BL              sub_2FBB34
NOP
NOP
B               loc_19D51C
LDR             R0, [R4,#0x1B4]
BIC             R0, R0, #0xF000
STR             R0, [R4,#0x1B4]
B               loc_19D51C
LDR             R0, [R4,#0x1B4]
MOV             R1, R0,LSL#18
CMP             R5, R1,LSR#30
BEQ             loc_19D3E4
ORR             R0, R0, #0x3000
MOV             R2, #1
STR             R0, [R4,#0x1B4]
MOV             R1, R2
MOV             R0, R4
BL              sub_19AB88
LDR             R0, [R4,#0x1B4]
MOV             R1, R0,LSL#16
CMP             R8, R1,LSR#30
BEQ             loc_19D51C
BIC             R0, R0, #0xC000
ORR             R0, R0, #0x4000
STR             R0, [R4,#0x1B4]
LDR             R0, [R6]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x14400
ADD             R0, R0, #8
MOV             R2, #0
LDR             R0, [R0]
MOV             R3, #1
MOV             R1, R2
BL              sub_2FBB34
NOP
NOP
B               loc_19D51C
ADD             R0, R4, #0xF8
BL              sub_5C63A4
CMP             R0, #0
NOP
BEQ             loc_19D450
MOV             R1, #0
ADD             R0, R4, #0xF8
BL              sub_194BC0
LDR             R0, [R6]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x14400
ADD             R0, R0, #8
LDR             R0, [R0]
LDRB            R0, [R0,#0xC0A]
CMP             R0, #0
LDREQ           R0, [R4,#0x1B4]
BICEQ           R0, R0, #0x3000
BEQ             loc_19D3B4
LDR             R0, [R4,#0x90]
CMP             R0, #0
BEQ             loc_19D504
LDR             R1, [R0,#0x120]
TST             R1, #1
LDRBNE          R0, [R0,#0xB4]
CMPNE           R0, #0xC
BEQ             loc_19D504
LDR             R1, [R4,#0x1B4]
MOV             R1, R1,LSL#18
CMP             R7, R1,LSR#30
CMPNE           R0, #5
BEQ             loc_19D51C
LDR             R0, [R6]
LDR             R0, [R0,#0xBC]
NOP
NOP
MOV             R0, #1
CMP             R0, #0
NOP
BEQ             loc_19D51C
LDR             R0, [R4,#0x90]
LDR             R1, [R0]
LDR             R1, [R1,#0x58]
BLX             R1
CMP             R0, #0
BEQ             loc_19D51C
LDR             R0, [R4,#0x1B4]
BIC             R0, R0, #0x3000
ORR             R0, R0, #0x2000
STR             R0, [R4,#0x1B4]
B               loc_19D118
DCD off_6D1648
DCFS 1.5
DCFS 1.0
LDR             R0, [R4,#0x1B4]
MOV             R1, R0,LSL#18
CMP             R5, R1,LSR#30
ORRNE           R0, R0, #0x3000
STRNE           R0, [R4,#0x1B4]
BNE             loc_19D204
LDR             R0, [R4,#0x1B4]
MOV             R2, #0x20000
MOV             R1, #0x80000
BIC             R3, R0, #0x20000
AND             R0, R2, R0,LSL#1
ORR             R0, R0, R3
AND             R1, R1, R0,LSL#1
BIC             R0, R0, #0x80000
ORR             R0, R0, R1
TST             R0, #0x40000
STR             R0, [R4,#0x1B4]
BEQ             loc_19D55C
ADD             R1, R4, #0xE0
ADD             R5, R4, #0xEC
LDM             R1, {R1-R3}
STM             R5, {R1-R3}
BIC             R0, R0, #0x50000
STR             R0, [R4,#0x1B4]
ADD             SP, SP, #0x40 ; '@'
POP             {R4-R8,PC}
