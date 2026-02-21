PUSH            {R0-R7,LR}
SUB             SP, SP, #0x1C
MOVS            R5, R3
LDR             R0, [SP,#0x40+arg_4]
LDR             R2, =0x7FF00000
LDR             R4, [SP,#0x40+arg_0]
LDR             R6, [SP,#0x40+arg_8]
LSLS            R0, R0, #0x15
LDR             R1, [SP,#0x40+arg_C]
LSRS            R0, R0, #0x1F
SUBS            R6, R6, #1
LSLS            R0, R0, #0x1F
ORRS            R2, R0
STR             R2, [SP,#0x40+var_3C]
MOVS            R2, #0
STR             R2, [SP,#0x40+var_40]
MOVS            R2, #0x7F800000
ORRS            R0, R2
MOVS            R2, #0x20 ; ' '
BICS            R1, R2
CMP             R1, #0x49 ; 'I'
STR             R0, [SP,#0x40+var_2C]
BEQ             loc_102624
MOVS            R7, R2
CMP             R1, #0x4E ; 'N'
BEQ             loc_102674
B               loc_1026C6
ADR             R3, aInfinity; "INFINITY"
ADD             R2, SP, #0x40+var_38
LDM             R3, {R0,R1,R3}; "INFINITY"
MOVS            R7, #1
STM             R2!, {R0,R1,R3}
LDR             R1, [R5,#0x18]
LDR             R0, [SP,#0x40+var_20]
ADDS            R4, R4, #1
BLX             R1
MOVS            R1, R0
SUBS            R6, R6, #1
BMI             loc_10264C
ADD             R0, SP, #0x40+var_38
LDRB            R0, [R0,R7]
CMP             R0, #0
BEQ             loc_10264C
MOVS            R2, #0x20 ; ' '
BICS            R1, R2
CMP             R1, R0
BEQ             loc_102662
LDR             R1, [R5,#0x1C]
LDR             R0, [SP,#0x40+var_20]
BLX             R1
CMP             R7, #3
BEQ             loc_1026C6
CMP             R7, #8
BEQ             loc_1026C6
MOVS            R0, #1
MVNS            R0, R0
ADD             SP, SP, #0x2C ; ','
POP             {R4-R7,PC}
ADDS            R7, R7, #1
CMP             R7, #3
BEQ             loc_10266C
CMP             R7, #8
BNE             loc_10262E
LDR             R1, [SP,#0x40+var_1C]
ADDS            R0, R4, #1
STR             R0, [R1]
B               loc_10262E
LDR             R1, [R5,#0x18]
LDR             R0, [SP,#0x40+var_20]
ADDS            R4, R4, #1
BLX             R1
SUBS            R6, R6, #1
BMI             loc_1026DE
BICS            R0, R7
CMP             R0, #0x41 ; 'A'
BNE             loc_1026DE
LDR             R1, [R5,#0x18]
LDR             R0, [SP,#0x40+var_20]
ADDS            R4, R4, #1
BLX             R1
SUBS            R6, R6, #1
BMI             loc_1026DE
BICS            R0, R7
CMP             R0, #0x4E ; 'N'
BNE             loc_1026DE
LDR             R1, [R5,#0x18]
LDR             R0, [SP,#0x40+var_20]
ADDS            R4, R4, #1
BLX             R1
LDR             R1, [SP,#0x40+var_3C]
MOVS            R2, #1
SUBS            R6, R6, #1
LSLS            R2, R2, #0x13
ORRS            R1, R2
STR             R1, [SP,#0x40+var_3C]
LDR             R1, [SP,#0x40+var_2C]
LSLS            R2, R2, #3
ORRS            R1, R2
STR             R1, [SP,#0x40+var_2C]
LDR             R1, [SP,#0x40+var_1C]
CMP             R6, #0
STR             R4, [R1]
BLT             loc_1026C0
CMP             R0, #0x28 ; '('
BEQ             loc_1026CE
LDR             R1, [R5,#0x1C]
LDR             R0, [SP,#0x40+var_20]
BLX             R1
LDR             R0, [SP,#0x40+arg_4]
LSLS            R0, R0, #0x1F
BEQ             loc_1026F2
B               loc_102716
LDR             R1, [R5,#0x18]
LDR             R0, [SP,#0x40+var_20]
ADDS            R4, R4, #1
BLX             R1
SUBS            R6, R6, #1
BMI             loc_1026DE
CMP             R0, #0
BGE             loc_1026E6
LDR             R1, [R5,#0x1C]
LDR             R0, [SP,#0x40+var_20]
BLX             R1
B               loc_10265A
CMP             R0, #0x29 ; ')'
BNE             loc_1026CE
LDR             R0, [SP,#0x40+var_1C]
ADDS            R4, R4, #1
STR             R4, [R0]
B               loc_1026C6
LDR             R0, [SP,#0x40+arg_4]
MOVS            R1, #0x24 ; '$'
TST             R0, R1
BEQ             loc_10270A
LDR             R0, [R5]
LDR             R2, [SP,#0x40+var_3C]
LDR             R1, [SP,#0x40+var_40]
ADDS            R3, R0, #4
STR             R3, [R5]
LDR             R0, [R0]
STM             R0!, {R1,R2}
B               loc_102716
LDR             R0, [R5]
LDR             R1, [SP,#0x40+var_2C]
ADDS            R2, R0, #4
STR             R2, [R5]
LDR             R0, [R0]
STR             R1, [R0]
MOVS            R0, R4
B               loc_10265E
