PUSH            {R0-R11,LR}
SUB             SP, SP, #4
MOV             R4, R0
MOV             R8, R1
BL              sub_13FED4
STR             R0, [SP,#0x38+var_38]
BL              sub_13273C
BL              sub_13FED4
MOV             R6, R0
BL              sub_13273C
LDR             R0, [R4,#0x14]
LDR             R5, [R4,#0x10]
CMP             R5, R0
BEQ             loc_124B3C
LDR             R1, [R5]
LDR             R3, [R1]
CMP             R3, R8
LDRNE           R2, [R1,#4]
CMPNE           R2, R8
ADDNE           R5, R5, #4
BNE             loc_124B18
CMP             R0, R5
MOV             R9, #1
BEQ             loc_124B80
LDR             R0, [R5]
LDR             R0, [R0,#8]
CMP             R0, #1
BLE             loc_124B6C
MOV             R1, #0
MOV             R0, R4
BL              sub_1401CC
LDR             R0, [R5]
STR             R9, [R0,#8]
MOV             R0, R6
BL              sub_1327BC
MOV             R0, R9
NOP
B               loc_124B8C
MOV             R0, R6
BL              sub_1327BC
MOV             R0, #0
AND             R1, R8, #3
ORRS            R1, R1, R0
MOVEQ           R5, R8
BEQ             loc_124BAC
CMP             R0, #0
MOVEQ           R0, R8
BEQ             loc_1250B0
B               loc_1250B4
MOV             R2, #8
ADR             R1, aRedspark_0; "RedSpark"
MOV             R0, R8
BLX             sub_1004FC
CMP             R0, #0
NOP
BNE             loc_1250AC
LDR             R0, [R5,#8]
CMP             R0, #0
BLE             loc_1250AC
LDR             R0, [R5,#0x10]
CMP             R0, #0
BNE             loc_124C90
MOV             R6, R5
BL              sub_13FED4
MOV             R7, R0
NOP
BL              sub_13273C
LDR             R2, [R6,#0x50]
ADD             R1, R6, #0x30 ; '0'
ADD             R0, R6, #0x50 ; 'P'
CMP             R2, #0
BNE             loc_124C14
LDR             R2, [R0,#4]!
CMP             R2, #0
BEQ             loc_124C08
LDRH            R1, [R1,#0xE]
LDR             R3, [R6,#0x18]
RSB             R0, R1, R1,LSL#3
ADD             R1, R2, R6
ADD             R0, R1, R0,LSL#4
SUB             R2, R0, R1
CMP             R2, #0x6F ; 'o'
ADD             R3, R3, R6
BLE             loc_124C7C
LDR             R6, =0x92492493
MOV             R12, #0
ADD             R0, R1, #4
ADD             R1, R1, #0x10
SMLAL           R12, R2, R6, R2
MOV             R12, R2,ASR#6
SUB             R2, R12, R2,ASR#31
LDR             R12, [R0]
CMP             R12, #0
BLE             loc_124C6C
LDR             R12, [R1]
ADD             R12, R12, R3
STR             R12, [R1]
SUBS            R2, R2, #1
ADD             R0, R0, #0x70 ; 'p'
ADD             R1, R1, #0x70 ; 'p'
BNE             loc_124C54
MOV             R0, R7
BL              sub_1327BC
LDR             R1, [R5,#8]
MOV             R0, R5
BL              sub_13298C
LDR             R0, [R5,#0x10]
LDR             R7, [R4,#0x10]
CMP             R0, #0x12C
SUBNE           R0, R0, #0x100
SUBSNE          R0, R0, #0x2D ; '-'
CMPNE           R0, #1
LDREQ           R2, [R4,#0x14]
MOVEQ           R0, R5
BEQ             loc_124CFC
LDR             R3, [R4,#0x14]
LDR             R0, [R5,#0x14]
LDR             R2, [R5,#0x10]
LDRH            R12, [R5,#0x1C]
CMP             R7, R3
BEQ             loc_124D20
LDR             R1, [R7]
LDR             R1, [R1,#4]
LDR             R6, [R1,#0x10]
CMP             R6, R2
BNE             loc_124CF4
LDR             R6, [R1,#0x14]
CMP             R6, R0
LDRHEQ          R1, [R1,#0x1C]
CMPEQ           R1, R12
BEQ             loc_124D20
ADD             R7, R7, #4
B               loc_124CC4
CMP             R7, R2
BEQ             loc_124D20
LDR             R1, [R7]
LDR             R3, [R1]
CMP             R3, R0
LDRNE           R1, [R1,#4]
CMPNE           R1, R0
ADDNE           R7, R7, #4
BNE             loc_124CFC
LDR             R0, [R4,#0x14]
CMP             R0, R7
BNE             loc_125014
ADD             R0, R4, #4
LDR             R2, [R4,#0xC]
LDM             R0, {R0,R3}
MOV             R7, #0
ADD             R1, R3, R0,LSL#4
LDR             R0, [R4,#0xC]
LDR             R12, [R0,#4]
CMP             R12, #0
MOVEQ           R7, R0
ADD             R0, R0, #0x10
CMP             R1, R0
STR             R0, [R4,#0xC]
STREQ           R3, [R4,#0xC]
CMP             R7, #0
BEQ             loc_124E20
MOV             R6, #0
BL              sub_13FED4
MOV             R9, R0
NOP
BL              sub_13273C
LDR             R1, [R4,#0x14]
LDR             R2, [R4,#0x10]
MOV             R0, #1
SUB             R3, R1, R2
MOV             R1, R0
ADD             R12, R0, R3,ASR#2
CMP             R12, #1
ADDGT           R3, R0, R3,ASR#2
BLE             loc_124DC4
LDR             R0, [R2]
ADD             R1, R1, #1
ADD             R2, R2, #4
LDR             R12, [R0,#8]
CMP             R12, R6
ADDGT           R12, R12, #1
STRGT           R12, [R0,#8]
CMP             R3, R1
BGT             loc_124DA0
MOV             R0, R9
BL              sub_1327BC
MOVS            R0, R7
NOP
BEQ             loc_124DEC
MOV             R1, #0
STR             R1, [R0,#8]
STR             R5, [R0,#4]
STR             R8, [R0]
STR             R1, [R7,#0xC]
LDR             R0, [SP,#0x38+var_28]
CMN             R0, #1
MOVNE           R0, #1
STR             R0, [R7,#8]
LDR             R1, [R4,#0x18]
LDR             R5, [R4,#0x14]
CMP             R5, R1
BEQ             loc_124ED8
MOVS            R1, R5
ADD             R0, R5, #4
STR             R0, [R4,#0x14]
STRNE           R7, [R1]
B               loc_1250B4
LDR             R0, [R4,#0xC]
CMP             R0, R2
BNE             loc_124D40
BL              sub_13FED4
MOV             R6, R0
NOP
BL              sub_13273C
ADD             R0, R4, #0x10
MOV             R9, #1
LDM             R0, {R0,R2}
MOV             R7, #0
MOV             R1, R7
MOV             R12, R7
SUB             R10, R2, R0
MOV             R2, R9
ADD             R11, R9, R10,ASR#2
CMP             R11, #1
ADDGT           R11, R9, R10,ASR#2
BLE             loc_124EB0
LDR             R9, [R0]
ADD             R2, R2, #1
ADD             R0, R0, #4
LDR             R10, [R9,#8]
CMP             R10, R1
MOVGT           R12, R9
MOVGT           R1, R10
CMP             R11, R2
BGT             loc_124E6C
CMP             R12, #0
BEQ             loc_124EB0
MOV             R3, #0xFFFFFFFF
LDR             R1, [R12]
MOV             R2, R3
MOV             R0, R4
BL              sub_136438
MOV             R7, #1
MOV             R0, R6
BL              sub_1327BC
CMP             R7, #0
NOP
BNE             loc_124D2C
B               loc_1250B4
DCB "RedSpark",0
DCB 0, 0, 0
DCD 0x92492493
LDR             R0, [R4,#0x10]
SUB             R1, R1, R0
SUB             R0, R5, R0
MOV             R1, R1,ASR#2
CMP             R1, R0,ASR#2
BLS             loc_124F44
MOVS            R2, R5
ADD             R0, R5, #4
STR             R0, [R4,#0x14]
LDRNE           R1, [R2,#-4]
STRNE           R1, [R2]
SUB             R1, R2, #4
SUB             R0, R1, R5
MOV             R3, R0,ASR#2
CMP             R3, #0
MOVGT           R3, #0
MOVGT           R0, R0,ASR#2
BLE             loc_124F3C
ADD             R4, R1, R3,LSL#2
ADD             R12, R2, R3,LSL#2
LDR             R4, [R4,#-4]
SUBS            R0, R0, #1
SUB             R3, R3, #1
STR             R4, [R12,#-4]
BNE             loc_124F20
STR             R7, [R5]
B               loc_1250B4
MOV             R0, R0,ASR#2
MOV             R2, #1
ADD             R1, R0, R0,LSR#1
ADD             R8, R1, R0,LSR#3
ADD             R0, R0, #0x20 ; ' '
CMP             R8, R0
MOVCC           R8, R0
MOV             R1, #2
MOV             R0, R8,LSL#2
BL              sub_12477C
LDR             R1, [R4,#0x10]
MOV             R6, R0
CMP             R1, R5
BEQ             loc_124F98
CMP             R0, #0
LDRNE           R3, [R1]
ADD             R1, R1, #4
STRNE           R3, [R0]
CMP             R1, R5
ADD             R0, R0, #4
BNE             loc_124F7C
LDR             R0, [R4,#0x10]
SUB             R0, R5, R0
BIC             R0, R0, #3
ADDS            R0, R0, R6
STRNE           R7, [R0]
LDR             R0, [R4,#0x10]
LDR             R1, [R4,#0x14]
SUB             R0, R5, R0
BIC             R0, R0, #3
ADD             R0, R0, R6
CMP             R5, R1
ADD             R0, R0, #4
BEQ             loc_124FE8
CMP             R0, #0
LDRNE           R3, [R5]
ADD             R5, R5, #4
STRNE           R3, [R0]
CMP             R5, R1
ADD             R0, R0, #4
BNE             loc_124FCC
LDRD            R0, R1, [R4,#0x10]
SUB             R1, R1, R0
MOV             R5, R1,ASR#2
BL              sub_1361A4
ADD             R1, R6, R5,LSL#2
STR             R6, [R4,#0x10]!
ADD             R1, R1, #4
ADD             R0, R6, R8,LSL#2
STR             R1, [R4,#4]
STR             R0, [R4,#8]
B               loc_1250B4
LDR             R0, [R7]
LDR             R6, [R0,#8]
BL              sub_13FED4
MOV             R8, R0
NOP
BL              sub_13273C
LDRD            R0, R1, [R4,#0x10]
SUB             R2, R1, R0
MOV             R1, #1
ADD             R3, R9, R2,ASR#2
CMP             R3, #1
ADDGT           R12, R9, R2,ASR#2
BLE             loc_12506C
LDR             R3, [R0]
ADD             R1, R1, #1
ADD             R0, R0, #4
LDR             R2, [R3,#8]
CMP             R2, R6
ADDGT           R2, R2, #1
STRGT           R2, [R3,#8]
CMP             R12, R1
BGT             loc_125048
MOV             R0, R8
BL              sub_1327BC
LDR             R0, [R7]
STR             R9, [R0,#8]
LDR             R0, [R5,#0x10]
CMP             R0, #0x12C
SUBNE           R0, R0, #0x100
SUBSNE          R0, R0, #0x2D ; '-'
CMPNE           R0, #1
BEQ             loc_1250B4
LDR             R0, [R7]
LDR             R1, [R0]
CMP             R1, R5
LDRNE           R0, [R0,#4]
CMPNE           R0, R5
BEQ             loc_1250B4
MOV             R0, R5
BL              sub_1361A4
LDR             R0, [SP,#0x38+var_38]
ADD             SP, SP, #0x14
POP             {R4-R11,LR}
B               sub_1327BC
