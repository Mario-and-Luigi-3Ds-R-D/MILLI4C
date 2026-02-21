PUSH            {R4-R10,LR}
CMP             R1, #0
SUB             SP, SP, #0x100
MOV             R7, R3
MOV             R4, R0
BEQ             loc_10CB48
CMP             R1, #1
BEQ             loc_10CB90
CMP             R1, #3
CMPNE           R1, #4
MOVEQ           R0, #1
BEQ             loc_10CBDC
B               loc_10CBD8
CMP             R3, #0
BNE             loc_10CBD8
MOV             R0, R2,LSL#16
LDR             R1, [R4,#0x38]
MOVS            R0, R0,LSR#16
ADD             R2, R4, #4
AND             R3, R0, #0x2000
BEQ             loc_10CB84
TST             R0, #1
BEQ             loc_10CB78
LDR             R12, [R1],#4
STR             R12, [R2]
MOVS            R0, R0,LSR#1
ADD             R2, R2, #4
BNE             loc_10CB68
CMP             R3, #0
STREQ           R1, [R4,#0x38]
B               loc_10CC94
MOV             R5, R2,LSR#16
CMP             R5, #0x10
UXTH            R10, R2
MOVCC           R8, #1
MOVCS           R8, #0
ADD             R0, R5, R10
CMP             R0, #0x10
MOVHI           R6, #1
MOVLS           R6, #0
CMP             R7, #1
BEQ             loc_10CBD0
CMP             R7, #5
BNE             loc_10CBD8
CMP             R0, #0x20 ; ' '
BHI             loc_10CBD8
B               loc_10CBE4
CMP             R6, #0
BEQ             loc_10CBE4
MOV             R0, #2
ADD             SP, SP, #0x100
POP             {R4-R10,PC}
CMP             R8, #0
MOV             R9, #0
BEQ             loc_10CC08
LDRB            R0, [R4]
CMP             R0, #1
BNE             loc_10CC08
ADD             R0, R4, #0x48 ; 'H'
STRB            R9, [R4]
VSTM            R0, {D0-D15}
CMP             R6, #0
BEQ             loc_10CC28
LDRB            R0, [R4,#1]
CMP             R0, #1
BNE             loc_10CC28
ADD             R0, R4, #0xC8
STRB            R9, [R4,#1]
BL              sub_116A5C
CMP             R8, #0
MOVNE           R0, SP
VSTMNE          R0, {D0-D15}
CMP             R6, #0
MOV             R9, SP
ADDNE           R0, R9, #0x80
BLNE            sub_116A5C
LDR             R0, [R4,#0x38]
SUBS            R1, R10, #1
BCC             loc_10CC68
LDM             R0!, {R3,R12}
ADD             R2, R9, R5,LSL#3
SUBS            R1, R1, #1
ADD             R5, R5, #1
STM             R2, {R3,R12}
BCS             loc_10CC50
CMP             R7, #1
MOVEQ           R1, #1
MOVNE           R1, #0
CMP             R8, #0
ADD             R0, R0, R1,LSL#2
STR             R0, [R4,#0x38]
MOVNE           R0, SP
VLDMNE          R0, {D0-D15}
CMP             R6, #0
ADDNE           R0, R9, #0x80
BLNE            sub_116A6C
ADD             SP, SP, #0x100
MOV             R0, #0
POP             {R4-R10,PC}
