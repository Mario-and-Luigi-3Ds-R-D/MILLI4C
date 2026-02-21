PUSH            {R4-R11,LR}
SUB             SP, SP, #0x64
MOV             R4, R0
ADD             R0, SP, #0x88+var_78
MOV             R11, #0x28 ; '('
LDR             R6, [SP,#0x88+arg_0]
LDR             R10, [SP,#0x88+arg_8]
STMEA           SP, {R0,R11}
LDR             R0, [R1]
MOV             R5, R1
MOV             R7, R2
MOV             R8, R3
LDR             R12, [R0]
MOV             R2, #0
MOV             R3, R2
ADD             R1, SP, #0x88+var_7C
MOV             R0, R5
BLX             R12
MOVS            R1, R0,LSR#31
BNE             loc_120934
LDR             R9, [SP,#0x88+var_7C]
CMP             R9, #0x28 ; '('
LDRNE           R0, =0xC8A04554
BNE             loc_120934
CMP             R10, #0
MOV             R0, #0
MOV             R7, R7,LSL#5
BEQ             loc_120640
ADD             R1, SP, #0x88+var_50
STMEA           SP, {R1,R11}
LDR             R1, [R5]
MOV             R2, #0
MOV             R0, R5
MOV             R3, R2
LDR             R12, [R1]
ADD             R1, SP, #0x88+var_80
BLX             R12
ANDS            R0, R0, #0x80000000
MOV             R1, #0xFFFFFFFF
BMI             loc_12064C
LDR             R0, [SP,#0x88+var_80]
CMP             R0, #0x28 ; '('
BNE             loc_12064C
LDR             R3, [SP,#0x88+var_48]
LDR             R12, [SP,#0x88+var_40]
LDR             R0, [SP,#0x88+var_38]
LDR             R2, [SP,#0x88+var_30]
ADD             R3, R3, R12
ADD             R0, R0, R2
ADDS            R0, R0, R3
BMI             loc_12064C
ADD             R1, R8, R8,LSL#1
ADD             R1, R7, R1,LSL#3
ADD             R1, R1, R0
LDR             R0, [SP,#0x88+arg_4]
CMP             R1, R0
LDRHI           R0, =0xD8604659
BHI             loc_120934
CMP             R10, #0
BEQ             loc_1207C0
LDR             R0, [SP,#0x88+var_70]
STR             R6, [SP,#0x88+var_88]
MOV             R2, R9
STR             R0, [SP,#0x88+var_84]
LDR             R0, [R5]
MOV             R3, R9,ASR#31
ADD             R1, SP, #0x88+var_7C
LDR             R12, [R0]
MOV             R0, R5
BLX             R12
MOVS            R1, R0,LSR#31
BNE             loc_120934
LDR             R0, [SP,#0x88+var_70]
STR             R6, [SP,#0x88+var_80]
ADD             R1, SP, #0x88+var_7C
ADD             R10, R0, R6
LDR             R0, [SP,#0x88+var_7C]
STR             R10, [SP,#0x88+var_88]
ADD             R6, R9, R0
LDR             R0, [SP,#0x88+var_68]
MOV             R2, R6
MOV             R3, R6,ASR#31
STR             R0, [SP,#0x88+var_84]
LDR             R0, [R5]
LDR             R12, [R0]
MOV             R0, R5
BLX             R12
MOVS            R1, R0,LSR#31
BNE             loc_120934
LDR             R0, [SP,#0x88+var_68]
ADD             R1, SP, #0x88+var_7C
ADD             R9, R0, R10
LDR             R0, [SP,#0x88+var_7C]
ADD             R6, R6, R0
LDR             R0, [SP,#0x88+var_60]
STR             R9, [SP,#0x88+var_88]
MOV             R2, R6
STR             R0, [SP,#0x88+var_84]
LDR             R0, [R5]
MOV             R3, R6,ASR#31
LDR             R12, [R0]
MOV             R0, R5
BLX             R12
MOVS            R1, R0,LSR#31
BNE             loc_120934
LDR             R0, [SP,#0x88+var_60]
ADD             R1, SP, #0x88+var_7C
ADD             R11, R0, R9
LDR             R0, [SP,#0x88+var_7C]
STR             R11, [SP,#0x88+var_88]
ADD             R2, R6, R0
LDR             R0, [SP,#0x88+var_58]
MOV             R3, R2,ASR#31
STR             R0, [SP,#0x88+var_84]
LDR             R0, [R5]
LDR             R12, [R0]
MOV             R0, R5
BLX             R12
MOVS            R1, R0,LSR#31
BNE             loc_120934
LDR             R0, [SP,#0x88+var_58]
LDR             R1, [SP,#0x88+var_80]
LDR             R2, [SP,#0x88+var_70]
ADD             R6, R0, R11
MOV             R0, #0
ADD             R12, R4, #0x70 ; 'p'
STR             R0, [R4,#0x78]
STM             R12, {R1,R2}
MOV             R3, R4
STR             R4, [R4,#0x7C]
LDR             R1, [SP,#0x88+var_68]
STR             R0, [R4,#0x88]
MOV             R2, R4
STR             R1, [R4,#0x84]
STR             R10, [R4,#0x80]
STR             R4, [R4,#0x8C]
LDR             R1, [SP,#0x88+var_60]
STR             R0, [R4,#0x98]
STR             R1, [R4,#0x94]
STR             R9, [R4,#0x90]
STR             R4, [R4,#0x9C]
LDR             R1, [SP,#0x88+var_58]
STR             R0, [R4,#0xA8]
STR             R1, [R4,#0xA4]
STR             R11, [R4,#0xA0]
STR             R4, [R4,#0xAC]
B               loc_120814
ADD             R3, SP, #0x88+var_74
MOV             R0, #0
LDM             R3, {R1,R2}
ADD             R3, R4, #0x70 ; 'p'
STR             R1, [R4,#0x7C]
STM             R3, {R0,R2,R4}
ADD             R3, SP, #0x88+var_6C
LDM             R3, {R1,R2}
ADD             R3, R4, #0x80
STR             R1, [R4,#0x8C]
STM             R3, {R0,R2,R4}
ADD             R3, SP, #0x88+var_64
LDM             R3, {R1,R2}
ADD             R3, R4, #0x90
STR             R1, [R4,#0x9C]
STM             R3, {R0,R2,R4}
ADD             R3, SP, #0x88+var_5C
LDM             R3, {R1,R2}
ADD             R3, R4, #0xA0
STR             R1, [R4,#0xAC]
STM             R3, {R0,R2,R4}
ADD             R0, R4, #0x70 ; 'p'
LDR             R11, [SP,#0x88+var_70]
LDR             R3, [SP,#0x88+var_60]
LDR             R10, [SP,#0x88+var_68]
LDR             LR, [SP,#0x88+var_58]
STR             R0, [R4,#0x2C]
MOV             R0, #0
MOV             R11, R11,LSR#2
STR             R0, [R4,#0x20]
STR             R11, [R4,#0x28]
ADD             R9, R4, #0x80
STR             R0, [R4,#0x24]
STR             R9, [R4,#0x3C]
STR             R10, [R4,#0x38]
ADD             R1, R4, #0x20 ; ' '
STR             R0, [R4,#0x30]
STR             R0, [R4,#0x34]
ADD             R2, R4, #0x90
STR             R0, [R1,#0x28]
STR             R2, [R1,#0x34]
ADD             R12, R4, #0xA0
ADD             R9, R1, #0x2C ; ','
MOV             R3, R3,LSR#2
STR             R12, [R1,#0x44]
STM             R9, {R0,R3}
ADD             R9, R1, #0x3C ; '<'
STR             R0, [R1,#0x38]
STM             R9, {R0,LR}
ADD             R0, R8, R8,LSL#1
MOV             R3, #0
MOV             R8, R0,LSL#3
MOV             R0, #4
STMEA           SP, {R0,R3}
ADD             R9, R4, #0xB8
MOV             R2, R6
MOV             R1, #0x20 ; ' '
MOV             R3, R7
MOV             R0, R9
BL              sub_128840
ADD             R0, R9, #0x30 ; '0'
NOP
BL              sub_118AE8
MOV             R3, R8
MOV             R0, #4
MOV             R12, #0
ADD             R8, R4, #0xF4
STMEA           SP, {R0,R12}
MOV             R1, #0x18
ADD             R2, R6, R7
MOV             R0, R8
BL              sub_128840
ADD             R0, R8, #0x30 ; '0'
NOP
BL              sub_118AE8
LDR             R0, [SP,#0x88+var_54]
STR             R0, [R4,#0xB0]
ADD             R0, R4, #4
BL              sub_128120
MOV             R1, PC
MOVS            R2, R0,LSR#31
BLNE            sub_10E1F8
LDR             R0, [R4,#4]
CMP             R0, #0
MOVEQ           R0, #2
BGE             loc_12093C
CMN             R0, #8
MOVGE           R0, #1
MOVLT           R0, #0
ADD             R0, R4, R0,LSL#2
STR             R5, [R0,#0xC]
MOV             R0, #0
STR             R5, [R4,#8]
ADD             SP, SP, #0x64 ; 'd'
POP             {R4-R11,PC}
NOP
BLE             loc_120924
CMP             R0, #8
MOVLE           R0, #3
MOVGT           R0, #4
B               loc_120924
