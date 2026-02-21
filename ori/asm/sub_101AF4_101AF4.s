PUSH            {R0-R7,LR}
MOVS            R6, R0
SUB             SP, SP, #0x2C
LDRB            R0, [R1]
CMP             R0, #0xFF
BEQ             loc_101B0C
ADDS            R1, R1, #1
CMP             R0, #0x2D ; '-'
BEQ             loc_101B10
MOVS            R3, #0
MOVS            R0, #0
B               loc_101B1E
MOVS            R0, #0
B               loc_101B2E
MOVS            R3, #1
B               loc_101B08
LDR             R2, [SP,#0x50+var_50]
MOVS            R4, #0xA
ADDS            R1, R1, #1
MULS            R2, R4
ADDS            R0, R0, R2
STR             R0, [SP,#0x50+var_50]
LDRB            R0, [R1]
CMP             R0, #0xFF
BNE             loc_101B14
CMP             R3, #0
BEQ             loc_101B30
LDR             R0, [SP,#0x50+var_50]
NEGS            R0, R0
STR             R0, [SP,#0x50+var_50]
MOVS            R5, #0
STR             R5, [SP,#0x50+var_44]
LDR             R0, [SP,#0x50+var_1C]
MOVS            R4, R5
LDRB            R0, [R0]
CMP             R0, #0x2D ; '-'
BEQ             loc_101B42
CMP             R0, #0x2B ; '+'
BNE             loc_101B70
LDR             R1, [SP,#0x50+var_1C]
ADDS            R1, R1, #1
CMP             R0, #0x2D ; '-'
STR             R1, [SP,#0x50+var_1C]
BEQ             loc_101B52
MOVS            R0, #0
STR             R0, [SP,#0x50+var_44]
B               loc_101B70
MOVS            R0, #1
B               loc_101B4E
ADDS            R0, R0, #1
MOVS            R2, #0
STR             R2, [SP,#0x50+var_4C]
STR             R0, [SP,#0x50+var_1C]
MOVS            R0, R5
MOVS            R1, R4
MOVS            R2, #0xA
MOVS            R3, #0
BLX             sub_2FFB04
LDR             R4, [SP,#0x50+var_4C]
ADDS            R5, R7, R0
ADCS            R4, R1
LDR             R0, [SP,#0x50+var_1C]
LDRB            R7, [R0]
CMP             R7, #0xFF
BNE             loc_101B56
MOVS            R1, #0
MOVS            R0, R1
BLX             sub_2FE5B8
LDR             R1, [SP,#0x50+var_44]
CMP             R1, #0
BEQ             loc_101B8C
LSLS            R1, R0, #2
ADDS            R0, R0, R1
LSRS            R0, R0, #1
LSLS            R0, R0, #8
LSRS            R0, R0, #0x1E
CMP             R0, #1
STR             R0, [SP,#0x50+var_40]
BLE             loc_101B9C
MOVS            R0, #0
MVNS            R0, R0
STR             R0, [SP,#0x50+var_40]
LDR             R1, [SP,#0x50+var_18]
LDR             R0, [SP,#0x50+var_50]
ADDS            R7, R0, R1
MOVS            R0, R5
ORRS            R0, R4
BNE             loc_101BB6
LDR             R0, [SP,#0x50+var_44]
LSLS            R0, R0, #0x1F
STR             R0, [R6,#4]
MOVS            R0, #0
STR             R0, [R6]
ADD             SP, SP, #0x3C ; '<'
POP             {R4-R7,PC}
LDR             R0, =0xFFFFFE0C
CMP             R7, R0
BGE             loc_101BC8
LDR             R0, [SP,#0x50+var_44]
LSLS            R0, R0, #0x1F
STR             R0, [R6,#4]
MOVS            R0, #0
STR             R0, [R6]
B               loc_101BE4
MOVS            R0, #0x1F4
CMP             R7, R0
BLE             loc_101BEE
LDR             R0, =(dword_6C74A4 - 0x101BD6)
ADD             R0, PC; dword_6C74A4
LDR             R1, [R0]
LDR             R0, [R0,#(dword_6C74A8 - 0x6C74A4)]
STR             R1, [R6]
STR             R0, [R6,#4]
LDR             R1, [SP,#0x50+var_44]
LSLS            R1, R1, #0x1F
ORRS            R0, R1
STR             R0, [R6,#4]
BLX             sub_2FF1F8
MOVS            R1, #2
STR             R1, [R0]
B               loc_101BB2
SUBS            R1, R7, #0
BGE             loc_101BF8
LDR             R0, [SP,#0x50+var_40]
NEGS            R2, R0
B               loc_101BFA
LDR             R2, [SP,#0x50+var_40]
CMP             R1, #0
BGE             loc_101C00
NEGS            R1, R7
ADD             R0, SP, #0x50+var_30
BL              sub_2FE5C0
ADD             R0, SP, #0x50+var_30
ADD             R3, SP, #0x50+var_3C
LDM             R0, {R0-R2}
STM             R3!, {R0-R2}
LDR             R0, =0x403E
STR             R0, [SP,#0x50+var_50]
MOVS            R0, #0
MOVS            R1, R0
ORRS            R1, R4
BNE             loc_101C24
LDR             R1, =0x403E
MOVS            R4, R5
MOVS            R5, R0
SUBS            R1, #0x20 ; ' '
STR             R1, [SP,#0x50+var_50]
LSRS            R1, R4, #0x10
LSLS            R1, R1, #0x10
ORRS            R1, R0
BNE             loc_101C3A
LSRS            R1, R5, #0x10
LSLS            R4, R4, #0x10
ORRS            R4, R1
LDR             R1, [SP,#0x50+var_50]
LSLS            R5, R5, #0x10
SUBS            R1, #0x10
STR             R1, [SP,#0x50+var_50]
LSRS            R1, R4, #0x18
LSLS            R1, R1, #0x18
ORRS            R1, R0
BNE             loc_101C50
LSRS            R1, R5, #0x18
LSLS            R4, R4, #8
ORRS            R4, R1
LDR             R1, [SP,#0x50+var_50]
LSLS            R5, R5, #8
SUBS            R1, #8
STR             R1, [SP,#0x50+var_50]
LSRS            R1, R4, #0x1C
LSLS            R1, R1, #0x1C
ORRS            R1, R0
BNE             loc_101C66
LSRS            R1, R5, #0x1C
LSLS            R4, R4, #4
ORRS            R4, R1
LDR             R1, [SP,#0x50+var_50]
LSLS            R5, R5, #4
SUBS            R1, R1, #4
STR             R1, [SP,#0x50+var_50]
LSRS            R1, R4, #0x1E
LSLS            R1, R1, #0x1E
ORRS            R1, R0
BNE             loc_101C7C
LSRS            R1, R5, #0x1E
LSLS            R4, R4, #2
ORRS            R4, R1
LDR             R1, [SP,#0x50+var_50]
LSLS            R5, R5, #2
SUBS            R1, R1, #2
STR             R1, [SP,#0x50+var_50]
LSRS            R1, R4, #0x1F
LSLS            R1, R1, #0x1F
ORRS            R0, R1
BNE             loc_101C8E
LDR             R0, [SP,#0x50+var_50]
ADDS            R5, R5, R5
ADCS            R4, R4
SUBS            R0, R0, #1
STR             R0, [SP,#0x50+var_50]
MOV             R0, SP
LDR             R2, [SP,#0x50+var_40]
CMP             R7, #0
ADD             R1, SP, #0x50+var_3C
STR             R5, [SP,#0x50+var_48]
STR             R4, [SP,#0x50+var_4C]
BLE             loc_101CA2
BLX             sub_143670
B               loc_101CA6
BLX             sub_143640
MOVS            R4, R0
LDR             R0, [SP,#0x50+var_44]
MOVS            R5, R1
CMP             R0, #0
BEQ             loc_101CB6
MOVS            R0, #0x80000000
EORS            R4, R0
LDR             R7, =0x7FF
LSLS            R0, R4, #1
LSRS            R0, R0, #1
ORRS            R0, R5
BEQ             loc_101CC8
LSLS            R0, R4, #1
LSRS            R0, R0, #0x15
CMP             R0, R7
BNE             loc_101CEC
BLX             sub_2FF1F8
MOVS            R1, #2
STR             R1, [R0]
LSLS            R0, R4, #1
LSRS            R0, R0, #0x15
CMP             R0, R7
BNE             loc_101CEC
LDR             R0, =(dword_6C74A4 - 0x101CDE)
ADD             R0, PC; dword_6C74A4
LDR             R1, [R0]
LDR             R0, [R0,#(dword_6C74A8 - 0x6C74A4)]
STR             R1, [R6]
LSRS            R1, R4, #0x1F
LSLS            R1, R1, #0x1F
ORRS            R0, R1
STR             R0, [R6,#4]
B               loc_101BB2
STR             R5, [R6]
STR             R4, [R6,#4]
B               loc_101BB2
