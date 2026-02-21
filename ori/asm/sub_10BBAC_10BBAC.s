PUSH            {R4-R11,LR}
SUB             SP, SP, #0xC
MOVS            R5, R0
MOV             R8, R1
MOV             R7, #1
CMPNE           R8, #0
STR             R7, [SP,#0x30+var_28]
BEQ             loc_10BBDC
LDR             R4, =dword_700750
LDRB            R0, [R4,#(byte_700760 - 0x700750)]
CMP             R0, #0
BEQ             loc_10BBE8
ADD             SP, SP, #0xC
MOV             R0, #0
POP             {R4-R11,PC}
LDR             R0, =dword_700750
MOV             R1, #0x180
BL              sub_2FFE8C
MOV             R1, #0xF0
ADD             R9, R4, #4
MOV             R2, #0x190
MOV             R3, #0x140
STR             R1, [R4]
STM             R9, {R1-R3}
MOV             R0, #0x700
LDR             R6, =off_6D2428
LDR             R3, =0x30FC
MOV             R2, #0
MOV             R1, #0x100
STR             R7, [R6,#(dword_6D2434 - 0x6D2428)]
STR             R7, [R6,#(dword_6D2430 - 0x6D2428)]
STM             R6, {R5,R8}
STR             R0, [R4,#(dword_7008B4 - 0x700750)]
MOV             R0, #0x10000
BLX             R5
CMP             R0, #0
STR             R0, [R6,#(dword_6D2438 - 0x6D2428)]
BEQ             loc_10C838
ADD             R1, R0, #0x3000
ADD             R5, R0, #0x800
ADD             R8, R0, #0x800
ADD             R9, R0, #0x1000
ADD             R1, R1, #0xEC
ADD             R5, R5, #0x68 ; 'h'
ADD             R8, R8, #0x78 ; 'x'
ADD             R9, R9, #0xCC
ADD             R10, R0, #0x2840
STR             R1, [SP,#0x30+var_30]
BL              sub_115600
CMP             R0, #0
NOP
BLT             loc_10C838
MOV             R0, R5
BL              sub_114520
CMP             R0, #0
NOP
BLT             loc_10C838
MOV             R0, R8
BL              sub_1160C8
CMP             R0, #0
NOP
BLT             loc_10C838
MOV             R0, R9
BL              sub_114860
CMP             R0, #0
NOP
BLT             loc_10C838
MOV             R0, R10
BL              sub_115DE0
CMP             R0, #0
NOP
BLT             loc_10C838
BL              sub_126B44
LDR             R0, [SP,#0x30+var_28]
NOP
BL              sub_10AEA0
LDR             R8, [R4,#(off_7007EC - 0x700750)]
LDR             R11, =dword_6D2418
MOV             R9, #0x10000
CMP             R8, #0
MOV             R10, #0x10
MOV             R5, #0
BEQ             loc_10BD94
LDR             R3, [R8,#4]
CMP             R3, #0
LDRNE           R12, [R6,#(off_6D242C - 0x6D2428)]
CMPNE           R12, #0
BEQ             loc_10BD1C
LDR             R2, [R8]
LDR             R1, =0x105
MOV             R0, #0x10000
BLX             R12
LDR             R12, [R6]
CMP             R12, #0
MOVEQ           R0, #0
BEQ             loc_10BD40
LDR             R3, =0x101C0
LDR             R2, [R8]
LDR             R1, =0x105
MOV             R0, #0x10000
BLX             R12
STR             R5, [R8,#0xC]
STR             R5, [R8,#0x20]
STR             R5, [R8,#0x10]
STR             R5, [R8,#0x28]
STR             R5, [R8,#0x24]
ADD             R3, R8, #4
STR             R5, [R8,#0x34]
STR             R5, [R8,#0x30]
STM             R3, {R0,R9}
ADD             R2, R0, #0x10000
ADD             R3, R8, #0x18
MOV             R1, #0x1C0
MOV             R0, R2
STM             R3, {R2,R10}
BL              sub_2FFE8C
LDR             R0, [R8,#4]
STR             R0, [R11]
LDR             R1, [R8,#8]
ADD             R1, R1, R0
LDR             R0, =dword_6D241C
STR             R1, [R0]
LDR             R0, [R4,#(off_7007EC - 0x700750)]
MOV             R1, #0x300
CMP             R0, #0
STRNE           R1, [R0,#0x2C]
BL              sub_126B44
CMP             R0, #0
NOP
BNE             loc_10C838
LDR             R0, [SP,#0x30+var_30]
BL              sub_116158
CMP             R0, #0
NOP
BLT             loc_10C838
LDR             R0, [R4,#(off_7007EC - 0x700750)]
LDR             R3, [R11]
LDR             R2, =dword_6D243C
MOV             R8, #2
LDR             R1, [R0,#4]
SUB             R1, R3, R1
STR             R1, [R0,#0xC]
STR             R1, [R2]
BL              sub_119DF0
NOP
NOP
BL              sub_119FC0
MOV             R11, R0
NOP
BL              sub_11A024
STR             R0, [R4,#(dword_700764 - 0x700750)]
LDR             R0, =sub_116838
MOV             R1, #0
BL              sub_119FD8
LDR             R0, =sub_11683C
MOV             R1, #1
BL              sub_119FD8
LDR             R0, =sub_1167A8
MOV             R1, #2
BL              sub_119FD8
LDR             R0, =sub_1167EC
MOV             R1, #3
BL              sub_119FD8
LDR             R0, =sub_116834
MOV             R1, #4
BL              sub_119FD8
LDR             R0, =sub_116768
MOV             R1, #5
BL              sub_119FD8
LDR             R0, =loc_11F868
MOV             R1, #6
BL              sub_119FD8
CMP             R11, #0
NOP
BEQ             loc_10C6D4
LDR             R0, =sub_401000
MOV             R2, #4
MOV             R1, SP
STR             R5, [SP,#0x30+var_30]
BL              sub_119F24
LDR             R0, =0x12345678
MOV             R2, #4
MOV             R1, SP
STR             R0, [SP,#0x30+var_30]
LDR             R0, =0x401080
BL              sub_119F24
MOV             R0, #0xFFFFFFF0
STR             R0, [SP,#0x30+var_30]
LDR             R0, =0x4010C0
MOV             R2, #4
MOV             R1, SP
BL              sub_119F24
LDR             R0, =0x4010D0
MOV             R2, #4
MOV             R1, SP
STR             R7, [SP,#0x30+var_30]
BL              sub_119F24
ADD             R0, R8, #0x1C0
STR             R0, [SP,#0x30+var_30]
LDR             R0, =0x400400
MOV             R2, #4
MOV             R1, SP
BL              sub_119F24
MOV             R9, #0xD1
LDR             R0, =0x400404
MOV             R2, #4
MOV             R1, SP
STR             R9, [SP,#0x30+var_30]
BL              sub_119F24
ADD             R10, R9, #0xF0
LDR             R0, =0x400408
MOV             R2, #4
MOV             R1, SP
STR             R10, [SP,#0x30+var_30]
BL              sub_119F24
LDR             R0, =0x40040C
MOV             R2, #4
MOV             R1, SP
STR             R10, [SP,#0x30+var_30]
BL              sub_119F24
LDR             R0, =0x400410
MOV             R2, #4
MOV             R1, SP
STR             R5, [SP,#0x30+var_30]
BL              sub_119F24
MOV             R0, #0xCF
STR             R0, [SP,#0x30+var_30]
LDR             R0, =0x400414
MOV             R2, #4
MOV             R1, SP
BL              sub_119F24
LDR             R0, =0x400418
MOV             R2, #4
MOV             R1, SP
STR             R9, [SP,#0x30+var_30]
BL              sub_119F24
LDR             R0, =0x1C501C1
MOV             R2, #4
MOV             R1, SP
STR             R0, [SP,#0x30+var_30]
LDR             R0, =0x40041C
BL              sub_119F24
MOV             R0, #0x10000
STR             R0, [SP,#0x30+var_30]
LDR             R0, =0x400420
MOV             R2, #4
MOV             R1, SP
BL              sub_119F24
ADD             R0, R9, #0xCC
STR             R0, [SP,#0x30+var_30]
LDR             R0, =0x400424
MOV             R2, #4
MOV             R1, SP
BL              sub_119F24
MOV             R0, #2
STR             R0, [SP,#0x30+var_30]
LDR             R0, =0x400428
MOV             R2, #4
MOV             R1, SP
BL              sub_119F24
ADD             R8, R8, #0x190
LDR             R0, =0x40042C
MOV             R2, #4
MOV             R1, SP
STR             R8, [SP,#0x30+var_30]
BL              sub_119F24
LDR             R0, =0x400430
MOV             R2, #4
MOV             R1, SP
STR             R8, [SP,#0x30+var_30]
BL              sub_119F24
LDR             R0, =0x400434
MOV             R2, #4
MOV             R1, SP
STR             R8, [SP,#0x30+var_30]
BL              sub_119F24
LDR             R0, =0x400438
MOV             R2, #4
MOV             R1, SP
STR             R7, [SP,#0x30+var_30]
BL              sub_119F24
MOV             R0, #2
STR             R0, [SP,#0x30+var_30]
LDR             R0, =0x40043C
MOV             R2, #4
MOV             R1, SP
BL              sub_119F24
LDR             R0, =0x1960192
MOV             R2, #4
MOV             R1, SP
STR             R0, [SP,#0x30+var_30]
LDR             R0, =0x400440
BL              sub_119F24
LDR             R0, =0x400444
MOV             R2, #4
MOV             R1, SP
STR             R5, [SP,#0x30+var_30]
BL              sub_119F24
LDR             R0, =0x400448
MOV             R2, #4
MOV             R1, SP
STR             R5, [SP,#0x30+var_30]
BL              sub_119F24
LDR             R0, =0x19000F0
MOV             R2, #4
MOV             R1, SP
STR             R0, [SP,#0x30+var_30]
LDR             R0, =0x40045C
BL              sub_119F24
ORR             R0, R9, R10,LSL#16
STR             R0, [SP,#0x30+var_30]
LDR             R0, =0x400460
MOV             R2, #4
MOV             R1, SP
BL              sub_119F24
LDR             R0, =0x1920002
MOV             R2, #4
MOV             R1, SP
STR             R0, [SP,#0x30+var_30]
LDR             R0, =0x400464
BL              sub_119F24
LDR             R0, =0x80340
MOV             R2, #4
MOV             R1, SP
STR             R0, [SP,#0x30+var_30]
LDR             R0, =0x400470
BL              sub_119F24
LDR             R0, =0x40049C
MOV             R2, #4
MOV             R1, SP
STR             R5, [SP,#0x30+var_30]
BL              sub_119F24
ADD             R0, R8, #0x30 ; '0'
STR             R0, [SP,#0x30+var_30]
LDR             R0, =0x400500
MOV             R2, #4
MOV             R1, SP
BL              sub_119F24
LDR             R0, =0x400504
MOV             R2, #4
MOV             R1, SP
STR             R9, [SP,#0x30+var_30]
BL              sub_119F24
LDR             R0, =0x400508
MOV             R2, #4
MOV             R1, SP
STR             R10, [SP,#0x30+var_30]
BL              sub_119F24
LDR             R0, =0x40050C
MOV             R2, #4
MOV             R1, SP
STR             R10, [SP,#0x30+var_30]
BL              sub_119F24
MOV             R0, #0xCD
STR             R0, [SP,#0x30+var_30]
LDR             R0, =0x400510
MOV             R2, #4
MOV             R1, SP
BL              sub_119F24
MOV             R0, #0xCF
STR             R0, [SP,#0x30+var_30]
LDR             R0, =0x400514
MOV             R2, #4
MOV             R1, SP
BL              sub_119F24
LDR             R0, =0x400518
MOV             R2, #4
MOV             R1, SP
STR             R9, [SP,#0x30+var_30]
BL              sub_119F24
LDR             R0, =0x1C501C1
MOV             R2, #4
MOV             R1, SP
STR             R0, [SP,#0x30+var_30]
LDR             R0, =0x40051C
BL              sub_119F24
MOV             R0, #0x10000
STR             R0, [SP,#0x30+var_30]
LDR             R0, =0x400520
MOV             R2, #4
MOV             R1, SP
BL              sub_119F24
ADD             R0, R8, #0xB
STR             R0, [SP,#0x30+var_30]
LDR             R0, =0x400524
MOV             R2, #4
MOV             R1, SP
BL              sub_119F24
MOV             R9, #0x52 ; 'R'
LDR             R0, =0x400528
MOV             R2, #4
MOV             R1, SP
STR             R9, [SP,#0x30+var_30]
BL              sub_119F24
LDR             R0, =0x40052C
MOV             R2, #4
MOV             R1, SP
STR             R8, [SP,#0x30+var_30]
BL              sub_119F24
LDR             R0, =0x400530
MOV             R2, #4
MOV             R1, SP
STR             R8, [SP,#0x30+var_30]
BL              sub_119F24
MOV             R0, #0x4F ; 'O'
STR             R0, [SP,#0x30+var_30]
LDR             R0, =0x400534
MOV             R2, #4
MOV             R1, SP
BL              sub_119F24
MOV             R0, #0x50 ; 'P'
STR             R0, [SP,#0x30+var_30]
LDR             R0, =0x400538
MOV             R2, #4
MOV             R1, SP
BL              sub_119F24
LDR             R0, =0x40053C
MOV             R2, #4
MOV             R1, SP
STR             R9, [SP,#0x30+var_30]
BL              sub_119F24
LDR             R0, =0x1980194
MOV             R2, #4
MOV             R1, SP
STR             R0, [SP,#0x30+var_30]
LDR             R0, =0x400540
BL              sub_119F24
LDR             R0, =0x400544
MOV             R2, #4
MOV             R1, SP
STR             R5, [SP,#0x30+var_30]
BL              sub_119F24
MOV             R0, #0x11
STR             R0, [SP,#0x30+var_30]
LDR             R0, =0x400548
MOV             R2, #4
MOV             R1, SP
BL              sub_119F24
LDR             R0, =0x14000F0
MOV             R2, #4
MOV             R1, SP
STR             R0, [SP,#0x30+var_30]
LDR             R0, =0x40055C
BL              sub_119F24
LDR             R0, =0x1C100D1
MOV             R2, #4
MOV             R1, SP
STR             R0, [SP,#0x30+var_30]
LDR             R0, =0x400560
BL              sub_119F24
ORR             R0, R9, R8,LSL#16
STR             R0, [SP,#0x30+var_30]
LDR             R0, =0x400564
MOV             R2, #4
MOV             R1, SP
BL              sub_119F24
LDR             R0, =0x80300
MOV             R2, #4
MOV             R1, SP
STR             R0, [SP,#0x30+var_30]
LDR             R0, =0x400570
BL              sub_119F24
LDR             R0, =0x40059C
MOV             R2, #4
MOV             R1, SP
STR             R5, [SP,#0x30+var_30]
BL              sub_119F24
LDR             R8, =0x18300000
LDR             R0, =0x400468
MOV             R2, #4
MOV             R1, SP
STR             R8, [SP,#0x30+var_30]
BL              sub_119F24
LDR             R0, =0x40046C
MOV             R2, #4
MOV             R1, SP
STR             R8, [SP,#0x30+var_30]
BL              sub_119F24
LDR             R0, =0x400568
MOV             R2, #4
MOV             R1, SP
STR             R8, [SP,#0x30+var_30]
BL              sub_119F24
LDR             R0, =0x40056C
MOV             R2, #4
MOV             R1, SP
STR             R8, [SP,#0x30+var_30]
BL              sub_119F24
LDR             R0, =0x400494
MOV             R2, #4
MOV             R1, SP
STR             R8, [SP,#0x30+var_30]
BL              sub_119F24
LDR             R0, =0x400498
MOV             R2, #4
MOV             R1, SP
STR             R8, [SP,#0x30+var_30]
BL              sub_119F24
LDR             R0, =0x400478
MOV             R2, #4
MOV             R1, SP
STR             R7, [SP,#0x30+var_30]
BL              sub_119F24
LDR             R0, =0x400578
MOV             R2, #4
MOV             R1, SP
STR             R7, [SP,#0x30+var_30]
BL              sub_119F24
MOV             R0, #0xFF00
STR             R0, [SP,#0x30+var_2C]
LDR             R0, =loc_400C18
MOV             R3, #4
ADD             R2, SP, #0x30+var_2C
MOV             R1, SP
STR             R5, [SP,#0x30+var_30]
BL              sub_119F8C
LDR             R0, =0x70100
MOV             R2, #4
MOV             R1, SP
STR             R0, [SP,#0x30+var_30]
ORR             R0, R2, R2,LSL#20
BL              sub_119F24
MOV             R8, #0xFF
LDR             R0, =sub_40001C
MOV             R3, #4
ADD             R2, SP, #0x30+var_2C
MOV             R1, SP
STMEA           SP, {R5,R8}
BL              sub_119F8C
LDR             R0, =0x40002C
MOV             R3, #4
ADD             R2, SP, #0x30+var_2C
MOV             R1, SP
STMEA           SP, {R5,R8}
BL              sub_119F8C
LDR             R0, =0x22221200
MOV             R2, #4
MOV             R1, SP
STR             R0, [SP,#0x30+var_30]
LDR             R0, =0x400050
BL              sub_119F24
ORR             R0, R9, R8,LSL#4
STR             R0, [SP,#0x30+var_30]
ORR             R0, R8, R0,LSL#4
STR             R0, [SP,#0x30+var_2C]
LDR             R0, =0x400054
MOV             R3, #4
ADD             R2, SP, #0x30+var_2C
MOV             R1, SP
BL              sub_119F8C
LDR             R8, =0x10501
LDR             R0, =0x400474
MOV             R2, #4
MOV             R1, SP
STR             R8, [SP,#0x30+var_30]
BL              sub_119F24
LDR             R0, =0x400574
MOV             R2, #4
MOV             R1, SP
STR             R8, [SP,#0x30+var_30]
BL              sub_119F24
NOP
NOP
BL              sub_1164E4
LDR             R10, [R4,#(off_7007EC - 0x700750)]
MOV             R0, #3
LDR             R1, [R10,#0x20]
LDR             R2, [R10,#0x18]
RSB             R1, R1, R1,LSL#3
ADD             R9, R2, R1,LSL#2
STRB            R0, [R9]
LDR             R0, [R9,#0x14]
BIC             R0, R0, #7
ORR             R0, R0, #4
STR             R0, [R9,#0x14]
MOV             R0, #0x30000
BL              sub_10BB20
SUB             R0, R0, #0x7F00
SUB             R0, R0, #0xFF
STR             R0, [R9,#4]
LDR             R12, [R6]
CMP             R12, #0
BEQ             loc_10C838
LDR             R3, =0x8010
MOV             R2, #0
MOV             R1, #0x100
MOV             R0, #0x10000
BLX             R12
MOVS            R8, R0
BEQ             loc_10C838
TST             R8, #0xF
STR             R8, [R9,#8]
BEQ             loc_10C500
AND             R1, R8, #0xF
RSB             R1, R1, #0x10
ADD             R0, R8, R1
STR             R0, [R9,#8]
LDR             R1, [R9,#0x14]
MOV             R0, #0x80
STRH            R0, [R9,#0xC]
BIC             R1, R1, #0xC00
STRH            R0, [R9,#0xE]
BIC             R1, R1, #0x3F8
STRH            R0, [R9,#0x10]
ORR             R1, R1, #0x20 ; ' '
STRH            R0, [R9,#0x12]
STR             R1, [R9,#0x14]
LDR             R0, [R10,#0x20]
ADD             R0, R0, #1
STR             R0, [R10,#0x20]
LDR             R0, [R4,#(off_7007EC - 0x700750)]
CMP             R0, #0
BEQ             loc_10C72C
LDRB            R1, [R4,#(byte_700761 - 0x700750)]
CMP             R1, #0
BEQ             loc_10C6E8
B               loc_10C72C
DCD dword_700750
DCD off_6D2428
DCD 0x30FC
DCD dword_6D2418
DCD 0x105
DCD 0x101C0
DCD dword_6D241C
DCD dword_6D243C
DCD sub_116838
DCD sub_11683C
DCD sub_1167A8
DCD sub_1167EC
DCD sub_116834
DCD sub_116768
DCD loc_11F868
DCD sub_401000
DCD 0x12345678
DCD 0x401080
DCD 0x4010C0
DCD 0x4010D0
DCD 0x400400
DCD 0x400404
DCD 0x400408
DCD 0x40040C
DCD 0x400410
DCD 0x400414
DCD 0x400418
DCD 0x1C501C1
DCD 0x40041C
DCD 0x400420
DCD 0x400424
DCD 0x400428
DCD 0x40042C
DCD 0x400430
DCD 0x400434
DCD 0x400438
DCD 0x40043C
DCD 0x1960192
DCD 0x400440
DCD 0x400444
DCD 0x400448
DCD 0x19000F0
DCD 0x40045C
DCD 0x400460
DCD 0x1920002
DCD 0x400464
DCD 0x80340
DCD 0x400470
DCD 0x40049C
DCD 0x400500
DCD 0x400504
DCD 0x400508
DCD 0x40050C
DCD 0x400510
DCD 0x400514
DCD 0x400518
DCD 0x40051C
DCD 0x400520
DCD 0x400524
DCD 0x400528
DCD 0x40052C
DCD 0x400530
DCD 0x400534
DCD 0x400538
DCD 0x40053C
DCD 0x1980194
DCD 0x400540
DCD 0x400544
DCD 0x400548
DCD 0x14000F0
DCD 0x40055C
DCD 0x1C100D1
DCD 0x400560
DCD 0x400564
DCD 0x80300
DCD 0x400570
DCD 0x40059C
DCD 0x18300000
DCD 0x400468
DCD 0x40046C
DCD 0x400568
DCD 0x40056C
DCD 0x400494
DCD 0x400498
DCD 0x400478
DCD 0x400578
DCD loc_400C18
DCD 0x70100
DCD sub_40001C
DCD 0x40002C
DCD 0x22221200
DCD 0x400050
DCD 0x400054
DCD 0x10501
DCD 0x400474
DCD 0x400574
DCD 0x8010
NOP
BL              sub_1164E4
NOP
NOP
B               loc_10C534
STR             R0, [R4,#(dword_7007F0 - 0x700750)]
STRB            R7, [R4,#(byte_700762 - 0x700750)]
LDR             R1, [R0,#0x28]
LDR             R2, [R0,#0x20]
CMP             R1, R2
BGE             loc_10C72C
STRB            R7, [R4,#(byte_700761 - 0x700750)]
LDR             R0, [R0,#0x2C]
CMP             R0, #0x300
BNE             loc_10C72C
BL              sub_11A070
NOP
NOP
BL              sub_11F990
NOP
NOP
BL              sub_11A080
LDR             R0, [R4,#(dword_7008CC - 0x700750)]
LDR             R1, [R4,#(dword_7008C8 - 0x700750)]
MOV             R9, #0
MOV             R10, R9
ORRS            R0, R0, R1
BEQ             loc_10C750
BL              sub_116AB4
MOV             R9, R0
MOV             R10, R1
LDRB            R0, [R4,#(byte_700761 - 0x700750)]
CMP             R0, #0
BEQ             loc_10C798
ADD             R0, R4, #0x178
LDM             R0, {R0,R1}
ORRS            R0, R0, R1
BEQ             loc_10C824
BL              sub_116AB4
ADD             R2, R4, #0x178
SUBS            R0, R0, R9
LDM             R2, {R2,R3}
SBC             R1, R1, R10
SUBS            R0, R2, R0
SBCS            R0, R3, R1
BGE             loc_10C824
LDR             R0, [R4,#(off_7008C0 - 0x700750)]
CMP             R0, #0
BLXNE           R0
CMP             R11, #0
LDRNE           R12, [R6,#(off_6D242C - 0x6D2428)]
CMPNE           R12, #0
BEQ             loc_10C7BC
MOV             R3, R8
MOV             R2, #0
MOV             R1, #0x100
MOV             R0, #0x10000
BLX             R12
LDR             R6, [R4,#(dword_7007F0 - 0x700750)]
CMP             R6, #0
BEQ             loc_10C800
BL              sub_11A070
LDRB            R0, [R4,#(byte_700761 - 0x700750)]
CMP             R0, #0
STRBEQ          R5, [R4,#(byte_700762 - 0x700750)]
BEQ             loc_10C7F8
LDR             R1, [R6,#0x18]!
MOV             R2, #0xFFFFFFE6
LDR             R0, [R6,#0xC]
RSB             R0, R0, R0,LSL#3
ADD             R0, R2, R0,LSL#2
STRB            R7, [R1,R0]
STRB            R7, [R4,#(byte_700768 - 0x700750)]
NOP
BL              sub_11A080
MOV             R0, #0
BL              sub_10AEA0
ADD             R1, SP, #0x30+var_28
MOV             R0, #1
BL              sub_10B1F8
STRB            R7, [R4,#(byte_700760 - 0x700750)]
ADD             SP, SP, #0xC
MOV             R0, #1
POP             {R4-R11,PC}
NOP
BL              sub_119F50
NOP
NOP
B               loc_10C750
ADD             R1, SP, #0x30+var_28
MOV             R0, #1
BL              sub_10B1F8
ADD             SP, SP, #0xC
MOV             R0, #0
POP             {R4-R11,PC}
