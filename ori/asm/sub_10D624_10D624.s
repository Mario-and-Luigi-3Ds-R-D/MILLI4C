PUSH            {R4-R8,LR}
SUB             SP, SP, #0x50
MOV             R6, R2
LDR             R8, =byte_6D2578
MOV             R4, R0
MOV             R5, R1
MOV             R2, #0
MOV             R0, #1
ADD             R1, SP, #0x50+var_28
STR             R2, [SP,#0x50+var_30]
STRD            R0, R1, [SP,#0x50+var_2C]
STR             R0, [SP,#0x50+var_24]
LDR             R8, [R8,#(dword_6D2588 - 0x6D2578)]
ADD             LR, SP, #0x50+var_38
LDR             R7, [SP,#0x50+var_28]
STR             R8, [SP,#0x50+var_20]
STM             LR, {R0,R2}
MOV             R1, #2
STMEA           SP, {R0,R7}
ADD             R7, SP, #8
MOV             R12, #0xC
STM             R7, {R0,R1,R3,R12}
MOV             R3, #3
ADD             R1, SP, #0x50+var_30
ADD             R0, SP, #0x50+var_20
BL              sub_120C04
MOV             R1, PC
MOVS            R2, R0,LSR#31
BLNE            sub_10E1F8
LDR             R0, =dword_700A70
LDR             R7, [SP,#0x50+var_30]
BL              sub_1272E4
LDR             R8, =0xF96047A2
CMP             R0, #0
MOVEQ           R7, R0
BEQ             loc_10D710
LDR             R1, =off_6BFF24
STM             R0, {R1,R7}
MOV             R7, R0
CMP             R6, #0
MOV             R0, #0
BEQ             loc_10D750
MOV             R2, #0x28 ; '('
ADD             R1, SP, #0x50+var_28
STMEA           SP, {R1,R2}
LDR             R1, [R7,#0x48+var_48]
MOV             R2, #0
MOV             R0, R7
MOV             R3, R2
LDR             R12, [R1]
ADD             R1, SP, #0x50+var_48
BLX             R12
ANDS            R0, R0, #0x80000000
MOV             R6, #0xFFFFFFFF
BMI             loc_10D760
LDR             R0, [SP,#0x50+var_48]
CMP             R0, #0x28 ; '('
BNE             loc_10D760
B               loc_10D730
LDR             R0, [SP,#0x50+var_30]
SVC             0x23 ; '#'
MOV             R0, R8
MOV             R1, PC
BL              sub_10E1F8
NOP
NOP
B               loc_10D6C0
LDR             R2, [SP,#0x50+var_20]
LDR             R3, [SP,#0x50+var_18]
LDR             R0, [SP,#0x50+var_10]
LDR             R1, [SP,#0x50+var_8]
ADD             R2, R2, R3
ADD             R0, R0, R1
ADDS            R0, R0, R2
BMI             loc_10D768
ADD             R2, R5, R5,LSL#1
MOV             R1, R4,LSL#5
ADD             R1, R1, R2,LSL#3
ADD             R6, R1, R0
CMP             R6, #0
BGT             loc_10D77C
LDR             R0, [SP,#0x50+var_30]
SVC             0x23 ; '#'
MOV             R0, R8
MOV             R1, PC
BL              sub_10E1F8
LDR             R0, [R7,#0x48+var_48]
LDR             R1, [R0,#0x2C]
MOV             R0, R7
BLX             R1
ADD             SP, SP, #0x50 ; 'P'
MOV             R0, R6
POP             {R4-R8,PC}
