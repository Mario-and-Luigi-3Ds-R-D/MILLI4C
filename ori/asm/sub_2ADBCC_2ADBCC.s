PUSH            {R4-R11,LR}
MOV             R6, R0
ADD             R5, R6, #0x14000
MOV             R9, #0
LDR             R0, =off_6D1648
VPUSH           {D8}
SUB             SP, SP, #0x14
LDR             R1, [R0]
ADD             R0, R6, #0x13C00
ADD             R0, R0, #0x5C ; '\'
STR             R0, [SP,#0x40+var_38]
LDR             R0, [R1,#0xC8]
TST             R0, #7
BEQ             loc_2ADFD8
LDRB            R0, [R5,#0x28E]
MOV             R7, #0
CMP             R0, #0
BLE             loc_2ADFCC
ADD             R4, R6, R7,LSL#2
ADD             R4, R4, #0x14000
ADD             R4, R4, #0x184
LDR             R0, [R4]
LDR             R1, [R0]
LDR             R1, [R1,#8]
BLX             R1
CMP             R0, #0xA; switch 10 cases
LDRCC           PC, [PC,R0,LSL#2]; switch jump
B               def_2ADC34; jumptable 002ADC34 default case, cases 0-2
DCD def_2ADC34; jump table for switch statement
MOV             R3, #0; jumptable 002ADC34 case 3
LDR             R8, [R4]
LDR             R1, [SP,#0x40+var_38]
MOV             R2, R3
MOV             R0, #0xE0
BL              sub_10A358
CMP             R0, #0
NOP
BEQ             loc_2ADCA0
MOV             R1, #1
STR             R1, [SP,#0x40+var_40]
LDRB            R2, [R5,#0x28E]
MOV             R3, #0
MOV             R1, R6
BL              sub_22CF58
MOV             R2, #0xE0
MOV             R1, R8
STR             R0, [R4]
BL              sub_1103A4
CMP             R8, #0
NOP
BEQ             def_2ADC34; jumptable 002ADC34 default case, cases 0-2
B               loc_2ADEAC
LDR             R0, [R4]; jumptable 002ADC34 case 4
MOV             R8, R0
LDR             R1, [R0]
LDR             R1, [R1,#0xC]
BLX             R1
CMP             R0, #0
BEQ             loc_2ADD28
LDR             R10, =0x588
MOV             R3, #0
LDR             R1, [SP,#0x40+var_38]
MOV             R2, R3
MOV             R0, R10
BL              sub_10A358
CMP             R0, #0
NOP
BEQ             loc_2ADD18
MOV             R1, #1
STR             R1, [SP,#0x40+var_40]
LDRB            R2, [R5,#0x28E]
MOV             R3, #0
MOV             R1, R6
BL              sub_2D29CC
MOV             R2, R10
MOV             R1, R8
STR             R0, [R4]
BL              sub_1103A4
CMP             R8, #0
BEQ             def_2ADC34; jumptable 002ADC34 default case, cases 0-2
B               loc_2ADEAC
LDR             R0, [R4]; jumptable 002ADC34 case 5
MOV             R8, R0
LDR             R1, [R0]
LDR             R1, [R1,#0xC]
BLX             R1
LDR             R1, [SP,#0x40+var_38]
MOV             R3, #0
CMP             R0, #0
MOV             R2, R3
BEQ             loc_2ADD98
LDR             R10, =0x828
MOV             R0, R10
BL              sub_10A358
CMP             R0, #0
NOP
BEQ             loc_2ADDC8
MOV             R1, #1
STR             R1, [SP,#0x40+var_40]
LDRB            R2, [R5,#0x28E]
MOV             R3, #0
MOV             R1, R6
BL              sub_1757C4
NOP
NOP
B               loc_2ADDC8
LDR             R10, =0xAA8
MOV             R0, R10
BL              sub_10A358
CMP             R0, #0
NOP
BEQ             loc_2ADDC8
MOV             R1, #1
STR             R1, [SP,#0x40+var_40]
LDRB            R2, [R5,#0x28E]
MOV             R3, #0
MOV             R1, R6
BL              sub_1E7DC4
MOV             R2, R10
MOV             R1, R8
STR             R0, [R4]
BL              sub_1103A4
CMP             R8, #0
NOP
BEQ             def_2ADC34; jumptable 002ADC34 default case, cases 0-2
B               loc_2ADEAC
LDR             R0, [R4]; jumptable 002ADC34 case 6
MOV             R8, R0
LDR             R1, [R0]
LDR             R1, [R1,#0xC]
BLX             R1
CMP             R0, #0
BEQ             loc_2ADE4C
MOV             R3, #0
LDR             R1, [SP,#0x40+var_38]
MOV             R2, R3
MOV             R0, #0x840
BL              sub_10A358
CMP             R0, #0
NOP
BEQ             loc_2ADE3C
MOV             R1, #1
STR             R1, [SP,#0x40+var_40]
LDRB            R2, [R5,#0x28E]
MOV             R3, #0
MOV             R1, R6
BL              sub_231EA4
MOV             R2, #0x840
MOV             R1, R8
STR             R0, [R4]
BL              sub_1103A4
CMP             R8, #0
BEQ             def_2ADC34; jumptable 002ADC34 default case, cases 0-2
B               loc_2ADEAC
LDR             R8, [R4]; jumptable 002ADC34 case 7
MOV             R0, #1
STR             R0, [SP,#0x40+var_3C]
STR             R9, [SP,#0x40+var_40]
LDR             R0, [R6]
MOV             R2, R6
LDRB            R3, [R5,#0x28E]
LDR             R1, [SP,#0x40+var_38]
LDR             R12, [R0,#0x124]
MOV             R0, R2
BLX             R12
LDR             R2, =0x1218
MOV             R1, R8
STR             R0, [R4]
BL              sub_1103A4
LDR             R0, [R4]
LDR             R1, [R0]
LDR             R1, [R1,#0x18]
BLX             R1
CMP             R8, #0
BEQ             def_2ADC34; jumptable 002ADC34 default case, cases 0-2
LDR             R0, [R8]
LDR             R1, [R0,#4]
MOV             R0, R8
BLX             R1
B               def_2ADC34; jumptable 002ADC34 default case, cases 0-2
LDR             R8, [R4]; jumptable 002ADC34 case 8
MOV             R0, #1
STR             R0, [SP,#0x40+var_3C]
STR             R9, [SP,#0x40+var_40]
LDR             R0, [R6]
MOV             R2, R6
LDRB            R3, [R5,#0x28E]
LDR             R1, [SP,#0x40+var_38]
LDR             R12, [R0,#0x12C]
MOV             R0, R2
BLX             R12
MOV             R2, #0xAB0
MOV             R1, R8
STR             R0, [R4]
BL              sub_1103A4
CMP             R8, #0
NOP
BEQ             def_2ADC34; jumptable 002ADC34 default case, cases 0-2
B               loc_2ADEAC
LDR             R0, [R4]; jumptable 002ADC34 case 9
MOV             R8, R0
LDR             R1, [R0]
LDR             R1, [R1,#0xC]
BLX             R1
LDR             R1, [SP,#0x40+var_38]
MOV             R3, #0
CMP             R0, #0
MOV             R2, R3
BEQ             loc_2ADF70
LDR             R10, =0x828
MOV             R0, R10
BL              sub_10A358
CMP             R0, #0
NOP
BEQ             loc_2ADFA0
MOV             R1, #1
STR             R1, [SP,#0x40+var_40]; float
LDRB            R2, [R5,#0x28E]; int
MOV             R3, #0; int
MOV             R1, R6; int
BL              sub_22CE70
NOP
NOP
B               loc_2ADFA0
LDR             R10, =0xAA8
MOV             R0, R10
BL              sub_10A358
CMP             R0, #0
NOP
BEQ             loc_2ADFA0
MOV             R1, #1
STR             R1, [SP,#0x40+var_40]; float
LDRB            R2, [R5,#0x28E]; int
MOV             R3, #0; int
MOV             R1, R6; int
BL              sub_2AACAC
MOV             R2, R10
MOV             R1, R8
STR             R0, [R4]
BL              sub_1103A4
CMP             R8, #0
NOP
BNE             loc_2ADEAC
LDRB            R0, [R5,#0x28E]; jumptable 002ADC34 default case, cases 0-2
ADD             R7, R7, #1
CMP             R0, R7
BGT             loc_2ADC14
ADD             SP, SP, #0x14
VPOP            {D8}
POP             {R4-R11,PC}
LDR             R11, =0xFFFF
MOV             R0, #0
VLDR            S16, =0.0
STRB            R9, [R5,#0x28D]
STR             R0, [SP,#0x40+var_34]
LDR             R1, =0x13C70
ADD             R2, R6, R0,LSL#2
LDR             R0, [R1,R2]
CMP             R0, #0
BEQ             loc_2AE3AC
LDR             R1, [R0,#0x10]
MOV             R9, #0
ADD             R4, R0, R1
LDR             R10, [R4],#4
CMP             R10, #0
BLS             loc_2AE3AC
LDR             R1, [SP,#0x40+var_34]
MOV             R0, #2
ADD             R8, R2, #0x13C00
ADD             R8, R8, #0x8C
AND             R0, R0, R1,LSL#1
STR             R0, [SP,#0x40+var_30]
LDRH            R0, [R4,#0xC]
CMP             R0, R11
BEQ             loc_2AE058
MOV             R2, #0
MOV             R1, R2
BL              sub_116B34
VCMP.F32        S0, S16
VMRS            APSR_nzcv, FPSCR
MOVNE           R7, #0
BNE             loc_2AE05C
MOV             R7, #1
LDR             R1, [R4,#0x14]
LDRH            R2, [R4,#8]
LDR             R0, [R8]
MOV             R1, R1,LSL#8
ADD             R0, R0, R2,LSL#1
MOV             R1, R1,LSR#28
CMP             R1, #0xA; switch 10 cases
LDRCC           PC, [PC,R1,LSL#2]; switch jump
B               def_2AE078; jumptable 002AE078 default case, case 2
DCD loc_2AE0A8; jump table for switch statement
LDR             R0, [R6]; jumptable 002AE078 case 0
LDR             R1, [R0,#0x134]
MOV             R0, R6
BLX             R1
MOV             R7, R0
LDR             R0, [R0]
LDRB            R2, [R5,#0x28D]
MOV             R1, R6
LDR             R3, [R0,#0x1CC]
MOV             R0, R7
BLX             R3
LDRB            R0, [R5,#0x28D]
ADD             R0, R6, R0,LSL#2
ADD             R0, R0, #0x14000
STR             R7, [R0,#0x184]
B               def_2AE078; jumptable 002AE078 default case, case 2
LDR             R0, [R6]; jumptable 002AE078 case 1
LDR             R1, [R0,#0x138]
MOV             R0, R6
BLX             R1
MOV             R7, R0
LDR             R0, [R0]
LDRB            R2, [R5,#0x28D]
MOV             R1, R6
LDR             R3, [R0,#0x1CC]
MOV             R0, R7
BLX             R3
LDRB            R0, [R5,#0x28D]
ADD             R0, R6, R0,LSL#2
ADD             R0, R0, #0x14000
STR             R7, [R0,#0x184]
B               def_2AE078; jumptable 002AE078 default case, case 2
MOV             R3, #0; jumptable 002AE078 case 3
LDR             R1, [SP,#0x40+var_38]
MOV             R2, R3
MOV             R0, #0xE0
BL              sub_10A358
CMP             R0, #0
NOP
BEQ             loc_2AE35C
STR             R7, [SP,#0x40+var_40]
LDRB            R2, [R5,#0x28D]
MOV             R3, R4
MOV             R1, R6
BL              sub_22CF58
NOP
NOP
B               loc_2AE35C
LDRB            R0, [R0]; jumptable 002AE078 case 4
CMP             R0, #0
BNE             def_2AE078; jumptable 002AE078 default case, case 2
MOV             R3, #0
LDR             R1, [SP,#0x40+var_38]
LDR             R0, =0x588
MOV             R2, R3
BL              sub_10A358
CMP             R0, #0
NOP
BEQ             loc_2AE35C
STR             R7, [SP,#0x40+var_40]
LDRB            R2, [R5,#0x28D]
MOV             R3, R4
MOV             R1, R6
BL              sub_2D29CC
NOP
NOP
B               loc_2AE35C
LDRB            R0, [R0]; jumptable 002AE078 case 5
LDR             R1, [SP,#0x40+var_38]
MOV             R3, #0
CMP             R0, #0
MOV             R2, R3
BEQ             loc_2AE200
LDR             R0, =0xAA8
BL              sub_10A358
CMP             R0, #0
NOP
BEQ             loc_2AE35C
STR             R7, [SP,#0x40+var_40]
LDRB            R2, [R5,#0x28D]
MOV             R3, R4
MOV             R1, R6
BL              sub_1E7DC4
NOP
NOP
B               loc_2AE35C
LDR             R0, =0x828
BL              sub_10A358
CMP             R0, #0
NOP
BEQ             loc_2AE35C
STR             R7, [SP,#0x40+var_40]
LDRB            R2, [R5,#0x28D]
MOV             R3, R4
MOV             R1, R6
BL              sub_1757C4
NOP
NOP
B               loc_2AE35C
LDRB            R0, [R0]; jumptable 002AE078 case 6
CMP             R0, #0
BNE             def_2AE078; jumptable 002AE078 default case, case 2
MOV             R3, #0
LDR             R1, [SP,#0x40+var_38]
MOV             R2, R3
MOV             R0, #0x840
BL              sub_10A358
CMP             R0, #0
NOP
BEQ             loc_2AE35C
STR             R7, [SP,#0x40+var_40]
LDRB            R2, [R5,#0x28D]
MOV             R3, R4
MOV             R1, R6
BL              sub_231EA4
NOP
NOP
B               loc_2AE35C
STMEA           SP, {R4,R7}; jumptable 002AE078 case 7
LDR             R0, [R6]
MOV             R2, R6
LDRB            R3, [R5,#0x28D]
LDR             R1, [SP,#0x40+var_38]
LDR             R12, [R0,#0x124]
MOV             R0, R2
BLX             R12
B               loc_2AE35C
STMEA           SP, {R4,R7}; jumptable 002AE078 case 8
LDR             R0, [R6]
MOV             R2, R6
LDRB            R3, [R5,#0x28D]
LDR             R1, [SP,#0x40+var_38]
LDR             R12, [R0,#0x12C]
MOV             R0, R2
BLX             R12
B               loc_2AE35C
DCD off_6D1648
DCD 0x588
DCD 0x828
DCD 0xAA8
DCD 0x1218
DCD 0xFFFF
DCFS 0.0
DCD 0x13C70
LDRB            R0, [R0]; jumptable 002AE078 case 9
LDR             R1, [SP,#0x40+var_38]
MOV             R3, #0
CMP             R0, #0
MOV             R2, R3
BEQ             loc_2AE334
LDR             R0, =0xAA8
BL              sub_10A358
CMP             R0, #0
NOP
BEQ             loc_2AE35C
STR             R7, [SP,#0x40+var_40]; float
LDRB            R2, [R5,#0x28D]; int
MOV             R3, R4; int
MOV             R1, R6; int
BL              sub_2AACAC
NOP
NOP
B               loc_2AE35C
LDR             R0, =0x828
BL              sub_10A358
CMP             R0, #0
NOP
BEQ             loc_2AE35C
STR             R7, [SP,#0x40+var_40]; float
LDRB            R2, [R5,#0x28D]; int
MOV             R3, R4; int
MOV             R1, R6; int
BL              sub_22CE70
LDRB            R1, [R5,#0x28D]
ADD             R1, R6, R1,LSL#2
ADD             R1, R1, #0x14000
STR             R0, [R1,#0x184]
LDRB            R0, [R5,#0x28D]; jumptable 002AE078 default case, case 2
ADD             R9, R9, #1
CMP             R9, R10
ADD             R4, R4, #0x18
ADD             R0, R6, R0,LSL#2
ADD             R0, R0, #0x14000
LDR             R0, [R0,#0x184]
LDRB            R1, [R0,#0xDE]
BIC             R2, R1, #2
LDR             R1, [SP,#0x40+var_30]
ORR             R1, R1, R2
STRB            R1, [R0,#0xDE]
LDRB            R0, [R5,#0x28D]
ADD             R0, R0, #1
STRB            R0, [R5,#0x28D]
BCC             loc_2AE030
LDR             R0, [SP,#0x40+var_34]
ADD             R0, R0, #1
CMP             R0, #2
STR             R0, [SP,#0x40+var_34]
BLT             loc_2ADFEC
LDR             R0, =0x13D00
LDR             R4, [R0,R6]
CMP             R4, #0
BEQ             loc_2AE44C
LDR             R0, [R4]
MOV             R0, R0,LSL#28
MOV             R0, R0,LSR#29
CMP             R0, #5; switch 5 cases
LDRCC           PC, [PC,R0,LSL#2]; switch jump
B               def_2AE3E0; jumptable 002AE3E0 default case, cases 1,3
DCD loc_2AE3FC; jump table for switch statement
STR             R4, [SP,#0x40+var_40]; jumptable 002AE3E0 cases 0,2,4
LDR             R0, [R6]
MOV             R2, R6
LDRB            R3, [R5,#0x28D]
LDR             R1, [SP,#0x40+var_38]
LDR             R12, [R0,#0x128]
MOV             R0, R2
BLX             R12
MOV             R1, R0
LDRB            R0, [R5,#0x28D]
ADD             R0, R6, R0,LSL#2
ADD             R0, R0, #0x14000
STR             R1, [R0,#0x184]
LDRB            R0, [R5,#0x28D]
ADD             R0, R0, #1
STRB            R0, [R5,#0x28D]
LDR             R0, [R4]; jumptable 002AE3E0 default case, cases 1,3
TST             R0, #1
ADDEQ           R4, R4, #0xC
BEQ             loc_2AE3D0
LDRB            R0, [R5,#0x28D]
STRB            R0, [R5,#0x28E]
ADD             SP, SP, #0x14
VPOP            {D8}
POP             {R4-R11,PC}
