PUSH            {R0-R7,LR}
SUB             SP, SP, #0x24
MOVS            R7, R3
LDR             R0, [SP,#0x48+arg_4]
LDR             R1, [SP,#0x48+arg_0]
LSLS            R0, R0, #0x15
LSRS            R0, R0, #0x1F
LSLS            R0, R0, #0x1F
STR             R0, [SP,#0x48+var_34]
MOVS            R0, #0
STR             R0, [SP,#0x48+var_2C]
MOVS            R5, R0
MOVS            R4, R0
SUBS            R6, R0, #1
STR             R0, [SP,#0x48+var_38]
STR             R0, [SP,#0x48+var_40]
MOVS            R0, #0x3C ; '<'
ADDS            R1, R1, #1
STR             R1, [SP,#0x48+arg_0]
STR             R0, [SP,#0x48+var_30]
LDR             R1, [R7,#0x18]
LDR             R0, [SP,#0x48+var_20]
BLX             R1
STR             R0, [SP,#0x48+var_3C]
LDR             R0, [SP,#0x48+arg_8]
SUBS            R0, R0, #1
STR             R0, [SP,#0x48+arg_8]
LDR             R0, [SP,#0x48+arg_8]
CMP             R0, #0
BLE             loc_10236A
LDR             R0, [SP,#0x48+var_3C]
CMP             R0, #0x2E ; '.'
BEQ             loc_102324
MOVS            R1, #0x10
BL              sub_2FFB1C
CMP             R0, #0
BLT             loc_102360
MOVS            R1, #1
STR             R1, [SP,#0x48+var_38]
LDR             R1, [SP,#0x48+var_2C]
ORRS            R1, R0
BEQ             loc_10233E
LDR             R1, [SP,#0x48+var_30]
CMP             R1, #0
BLT             loc_10232A
LDR             R2, [SP,#0x48+var_30]
ASRS            R1, R0, #0x1F
BLX             sub_300CF8
ORRS            R5, R0
LDR             R0, [SP,#0x48+var_30]
ORRS            R4, R1
SUBS            R0, R0, #4
STR             R0, [SP,#0x48+var_30]
B               loc_102332
MOVS            R0, #1
STR             R0, [SP,#0x48+var_40]
B               loc_10233E
CMP             R0, #0
BEQ             loc_102332
MOVS            R0, #1
ORRS            R5, R0
MOVS            R0, #1
STR             R0, [SP,#0x48+var_2C]
LDR             R0, [SP,#0x48+var_40]
CMP             R0, #0
BNE             loc_10233E
ADDS            R6, R6, #4
LDR             R0, [SP,#0x48+arg_0]
ADDS            R0, R0, #1
STR             R0, [SP,#0x48+arg_0]
LDR             R1, [R7,#0x18]
LDR             R0, [SP,#0x48+var_20]
BLX             R1
STR             R0, [SP,#0x48+var_3C]
LDR             R0, [SP,#0x48+arg_8]
SUBS            R0, R0, #1
STR             R0, [SP,#0x48+arg_8]
LDR             R0, [SP,#0x48+var_38]
CMP             R0, #0
BEQ             loc_1022EA
LDR             R1, [SP,#0x48+var_1C]
LDR             R0, [SP,#0x48+arg_0]
STR             R0, [R1]
B               loc_1022EA
LDR             R0, [SP,#0x48+var_3C]
CMP             R0, #0x70 ; 'p'
BEQ             loc_102378
CMP             R0, #0x50 ; 'P'
BEQ             loc_102378
LDR             R1, [R7,#0x1C]
LDR             R0, [SP,#0x48+var_20]
BLX             R1
LDR             R0, [SP,#0x48+var_38]
CMP             R0, #0
BEQ             loc_1023A2
B               loc_10241C
MOVS            R0, #0
STR             R0, [SP,#0x48+var_3C]
MOVS            R0, #1
STR             R0, [SP,#0x48+var_40]
LDR             R0, [SP,#0x48+var_38]
CMP             R0, #0
BEQ             loc_10239C
LDR             R0, [SP,#0x48+arg_0]
ADDS            R0, R0, #1
STR             R0, [SP,#0x48+arg_0]
LDR             R1, [R7,#0x18]
LDR             R0, [SP,#0x48+var_20]
BLX             R1
LDR             R1, [SP,#0x48+arg_8]
SUBS            R1, R1, #1
CMP             R1, #0
STR             R1, [SP,#0x48+arg_8]
BGT             loc_1023AA
LDR             R1, [R7,#0x1C]
LDR             R0, [SP,#0x48+var_20]
BLX             R1
MOVS            R0, #1
MVNS            R0, R0
ADD             SP, SP, #0x34 ; '4'
POP             {R4-R7,PC}
CMP             R0, #0x2B ; '+'
BEQ             loc_1023B8
CMP             R0, #0x2D ; '-'
BNE             loc_1023CE
MOVS            R0, #0
MVNS            R0, R0
STR             R0, [SP,#0x48+var_40]
LDR             R0, [SP,#0x48+arg_0]
ADDS            R0, R0, #1
STR             R0, [SP,#0x48+arg_0]
LDR             R1, [R7,#0x18]
LDR             R0, [SP,#0x48+var_20]
BLX             R1
LDR             R1, [SP,#0x48+arg_8]
SUBS            R1, R1, #1
CMP             R1, #0
STR             R1, [SP,#0x48+arg_8]
BLE             loc_10239C
ADDS            R1, R0, #1
BEQ             loc_10239C
MOVS            R1, #0xA
BL              sub_2FFB1C
CMP             R0, #0
BLT             loc_10239C
LDR             R1, [SP,#0x48+var_3C]
MOVS            R2, #0xA
MULS            R1, R2
ADDS            R0, R1, R0
STR             R0, [SP,#0x48+var_3C]
LDR             R0, [SP,#0x48+arg_0]
ADDS            R0, R0, #1
STR             R0, [SP,#0x48+arg_0]
LDR             R1, [R7,#0x18]
LDR             R0, [SP,#0x48+var_20]
BLX             R1
MOVS            R1, #0xA
BL              sub_2FFB1C
LDR             R1, [SP,#0x48+arg_8]
LDR             R2, [SP,#0x48+var_1C]
SUBS            R1, R1, #1
STR             R1, [SP,#0x48+arg_8]
LDR             R1, [SP,#0x48+arg_0]
STR             R1, [R2]
LDR             R1, [SP,#0x48+arg_8]
CMP             R1, #0
BLE             loc_10240E
CMP             R0, #0
BGE             loc_1023DC
LDR             R1, [R7,#0x1C]
LDR             R0, [SP,#0x48+var_20]
BLX             R1
LDR             R1, [SP,#0x48+var_40]
LDR             R0, [SP,#0x48+var_3C]
MULS            R0, R1
ADDS            R6, R0, R6
LDR             R0, [SP,#0x48+arg_4]
MOVS            R1, #0x24 ; '$'
ANDS            R0, R1
STR             R0, [SP,#0x48+var_38]
MOVS            R0, R5
ORRS            R0, R4
BNE             loc_10242E
LDR             R0, [SP,#0x48+var_34]
B               loc_10256E
LSRS            R1, R4, #0x1E
LSLS            R1, R1, #0x1E
MOVS            R1, R1
BNE             loc_102440
LSRS            R1, R5, #0x1E
LSLS            R4, R4, #2
ORRS            R4, R1
LSLS            R5, R5, #2
SUBS            R6, R6, #2
LSRS            R1, R4, #0x1F
LSLS            R1, R1, #0x1F
MOVS            R0, R1
BNE             loc_10244E
ADDS            R5, R5, R5
ADCS            R4, R4
SUBS            R6, R6, #1
LDR             R0, [SP,#0x48+var_38]
CMP             R0, #0
BEQ             loc_10245C
MOVS            R0, #0xB
STR             R0, [SP,#0x48+var_40]
LDR             R0, =0xFFFFFC02
B               loc_102464
MOVS            R0, #0x28 ; '('
STR             R0, [SP,#0x48+var_40]
MOVS            R0, #0x7D ; '}'
MVNS            R0, R0
CMP             R6, R0
STR             R0, [SP,#0x48+var_3C]
BGE             loc_10247A
SUBS            R1, R0, R6
LDR             R0, [SP,#0x48+var_40]
ADDS            R0, R1, R0
CMP             R0, #0x41 ; 'A'
STR             R0, [SP,#0x48+var_40]
BLE             loc_10247A
MOVS            R0, #0x41 ; 'A'
STR             R0, [SP,#0x48+var_40]
LDR             R2, [SP,#0x48+var_40]
MOVS            R0, #1
MOVS            R1, #0
SUBS            R2, R2, #1
BLX             sub_300CF8
MOVS            R2, R0
MOVS            R3, R1
ANDS            R0, R5
ANDS            R1, R4
ORRS            R0, R1
BEQ             loc_102496
MOVS            R0, #1
B               loc_102498
MOVS            R0, #0
STR             R0, [SP,#0x48+var_30]
MOVS            R0, #0
SUBS            R2, R2, #1
MVNS            R0, R0
ADCS            R3, R0
ANDS            R2, R5
ANDS            R3, R4
ORRS            R2, R3
BEQ             loc_1024AE
MOVS            R0, #1
B               loc_1024B0
MOVS            R0, #0
LDR             R1, [SP,#0x48+var_30]
STR             R0, [SP,#0x48+var_2C]
ORRS            R1, R0
BEQ             loc_10255E
MOVS            R1, #0
MOVS            R0, R1
BLX             sub_2FE5B8
MOVS            R1, #3
LDR             R2, [SP,#0x48+var_34]
LSLS            R1, R1, #0x16
ANDS            R0, R1
CMP             R2, #0
BEQ             loc_1024D8
LSLS            R2, R0, #2
ADDS            R0, R0, R2
LSRS            R2, R0, #0x1F
ADDS            R0, R2, R0
ASRS            R0, R0, #1
ANDS            R0, R1
ASRS            R0, R0, #0x16
CMP             R0, #1
BLE             loc_1024E4
MOVS            R0, #0
MVNS            R0, R0
B               loc_1024E8
CMP             R0, #1
BEQ             loc_102514
ADDS            R0, R0, #1
BEQ             loc_10255E
LDR             R0, [SP,#0x48+var_30]
CMP             R0, #0
BEQ             loc_10255E
LDR             R0, [SP,#0x48+var_2C]
CMP             R0, #0
BNE             loc_102514
LDR             R2, [SP,#0x48+var_40]
MOVS            R0, #1
MOVS            R1, #0
BLX             sub_300CF8
ANDS            R0, R5
ANDS            R1, R4
ORRS            R0, R1
BEQ             loc_10250E
MOVS            R0, #1
B               loc_102510
MOVS            R0, #0
CMP             R0, #0
BEQ             loc_10255E
LDR             R2, [SP,#0x48+var_40]
MOVS            R0, #1
MOVS            R1, #0
BLX             sub_300CF8
MOVS            R2, R0
MOV             R12, R1
ADDS            R0, R0, R5
ADCS            R1, R4
SUBS            R3, R5, R0
SBCS            R4, R1
BCC             loc_10254C
LDR             R0, [SP,#0x48+var_40]
CMP             R0, #0x40 ; '@'
BLE             loc_102542
LDR             R0, [SP,#0x48+var_38]
LDR             R6, [SP,#0x48+var_3C]
CMP             R0, #0
BEQ             loc_10253E
SUBS            R6, #0x34 ; '4'
B               loc_102544
SUBS            R6, #0x17
B               loc_102544
ADDS            R6, R6, #1
MOVS            R4, #1
MOVS            R5, #0
LSLS            R4, R4, #0x1F
B               loc_10255E
SUBS            R2, R2, #1
MOV             R3, R12
MOVS            R4, #0
MVNS            R4, R4
ADCS            R3, R4
MVNS            R5, R2
MVNS            R4, R3
ANDS            R5, R0
ANDS            R4, R1
LDR             R0, [SP,#0x48+var_3C]
MOVS            R1, #1
SUBS            R0, R1, R0
CMP             R0, R6
BGE             loc_102576
LDR             R1, =0x7FF00000
LDR             R0, [SP,#0x48+var_34]
ORRS            R0, R1
STR             R0, [SP,#0x48+var_44]
MOVS            R0, #0
STR             R0, [SP,#0x48+var_48]
B               loc_102594
LSLS            R0, R4, #1
LSLS            R2, R4, #0x15
LSRS            R1, R0, #0xC
LSRS            R0, R5, #0xB
ORRS            R0, R2
LDR             R2, [SP,#0x48+var_34]
STR             R0, [SP,#0x48+var_48]
MOV             R0, SP
ORRS            R2, R1
LDR             R1, =0x3FF00000
ORRS            R2, R1
MOVS            R1, R6
STR             R2, [SP,#0x48+var_44]
BLX             sub_30150C
LDR             R0, [SP,#0x48+var_38]
CMP             R0, #0
BEQ             loc_1025B0
LDR             R0, [SP,#0x48+arg_4]
LSLS            R0, R0, #0x1F
BNE             loc_1025CA
LDR             R0, [R7]
LDR             R2, [SP,#0x48+var_44]
LDR             R1, [SP,#0x48+var_48]
ADDS            R3, R0, #4
STR             R3, [R7]
LDR             R0, [R0]
STM             R0!, {R1,R2}
B               loc_1025CA
ADD             R0, SP, #0x48+var_40
MOV             R1, SP
BLX             sub_300910
LDR             R0, [SP,#0x48+arg_4]
LSLS            R0, R0, #0x1F
BNE             loc_1025CA
LDR             R0, [R7]
LDR             R2, [SP,#0x48+var_40]
ADDS            R1, R0, #4
STR             R1, [R7]
LDR             R0, [R0]
STR             R2, [R0]
LDR             R0, [SP,#0x48+arg_0]
B               loc_1023A6
