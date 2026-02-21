PUSH            {R0-R11,LR}
SUB             SP, SP, #0x274
LDR             R0, [SP,#0x2A8+var_34]
LDR             R1, [R0,#4]
MOV             R0, R2
CMP             R1, #0
MOV             R1, #0
STR             R1, [SP,#0x2A8+var_64]
BLT             loc_117994
LDR             R0, [SP,#0x2A8+var_28]
MOV             R1, #1
STR             R1, [SP,#0x2A8+var_64]
MOV             R1, #0
STR             R1, [SP,#0x2A8+var_A4]
MOV             R4, R1
STR             R1, [SP,#0x2A8+var_68]
STR             R1, [SP,#0x2A8+var_60]
LDR             R1, [SP,#0x2A8+var_34]
MOV             R11, #0
ADD             R1, R1, R0,LSL#2
LDR             R0, [SP,#0x2A8+var_64]
CMP             R0, #0
LDR             R0, [SP,#0x2A8+var_34]
ADD             R0, R0, R2,LSL#2
STR             R0, [SP,#0x2A8+var_5C]
LDR             R0, [R1,#0xC]
STR             R0, [SP,#0x2A8+var_74]
BEQ             loc_117BCC
LDRB            R0, [R0,#7]
CMP             R0, #0
LDR             R0, [SP,#0x2A8+var_74]
BEQ             loc_117BCC
MOV             R12, #0
LDR             R1, [R0,#0x28]
LDR             R0, [SP,#0x2A8+var_5C]
MOV             LR, R12
LDR             R0, [R0,#0xC]
STR             R0, [SP,#0x2A8+var_58]
LDR             R0, [SP,#0x2A8+var_74]
ADD             R0, R0, R1
STR             R0, [SP,#0x2A8+var_A0]
LDR             R0, [SP,#0x2A8+var_58]
LDR             R1, [R0,#0x28]
ADD             R0, R0, R1
STR             R0, [SP,#0x2A8+var_98]
LDR             R0, [SP,#0x2A8+var_74]
MOV             R1, R12
LDR             R0, [R0,#0x2C]
CMP             R0, #0
BLS             loc_117AE8
LDR             R0, [SP,#0x2A8+var_A0]
ADD             R5, R0, R1,LSL#3
LDRH            R0, [R5]
CMP             R0, #9
BCS             loc_117AD4
CMP             R0, #7
BEQ             loc_117AD4
LDR             R0, [SP,#0x2A8+var_58]
LDR             R2, [R0,#0x2C]
CMP             R2, #0
BEQ             loc_117AD4
LDR             R0, [SP,#0x2A8+var_98]
MOV             R6, #1
MOV             R6, R6,LSL R1
MOV             R3, #0
ADD             R7, R0, R1,LSL#3
STR             R6, [SP,#0x2A8+var_6C]
LDRH            R6, [R7]
CMP             R6, #9
BCS             loc_117AC4
CMP             R6, #7
BEQ             loc_117AC4
LDRH            R8, [R5]
LDRH            R6, [R0]
CMP             R8, R6
BNE             loc_117AC4
MOV             R6, SP
ADD             R6, R6, R11,LSL#3
MOV             R9, #1
STRH            R8, [R6]
MOV             R10, R9,LSL R3
STRH            R11, [R6,#2]
LDRH            R8, [R5,#4]
LDR             R9, [SP,#0x2A8+var_6C]
ADD             R11, R11, #1
ORR             LR, LR, R10
ORR             R12, R12, R9
STRH            R8, [R6,#4]
SUBS            R2, R2, #1
ADD             R0, R0, #8
ADD             R3, R3, #1
BNE             loc_117A70
LDR             R0, [SP,#0x2A8+var_74]
ADD             R1, R1, #1
LDR             R0, [R0,#0x2C]
CMP             R0, R1
BHI             loc_117A2C
LDR             R0, [SP,#0x2A8+var_74]
LDR             R2, [R0,#0x2C]
CMP             R2, #0
BEQ             loc_117B58
LDR             R0, [SP,#0x2A8+var_A0]
MOV             R3, #0
MOV             R7, SP
ADD             R5, R0, #4
MOV             R8, #1
TST             R12, R8,LSL R3
BNE             loc_117B44
LDRH            R1, [R0]
CMP             R1, #9
BCS             loc_117B44
CMP             R1, #7
BEQ             loc_117B44
ADD             R9, R7, R11,LSL#3
MOV             R6, R11
STRH            R1, [R9]
STRH            R6, [R9,#2]
LDRH            R1, [R5]
ADD             R11, R11, #1
STRH            R1, [R9,#4]
SUBS            R2, R2, #1
ADD             R0, R0, #8
ADD             R5, R5, #8
ADD             R3, R3, #1
BNE             loc_117B0C
LDR             R0, [SP,#0x2A8+var_58]
LDR             R3, [R0,#0x2C]
CMP             R3, #0
BEQ             loc_117C48
LDR             R2, [SP,#0x2A8+var_98]
MOV             R0, #0
MOV             R6, SP
ADD             R1, R2, #4
MOV             R7, #1
TST             LR, R7,LSL R0
BNE             loc_117BB4
LDRH            R12, [R2]
CMP             R12, #9
BCS             loc_117BB4
CMP             R12, #7
BEQ             loc_117BB4
ADD             R5, R6, R11,LSL#3
MOV             R8, R11
STRH            R12, [R5]
STRH            R8, [R5,#2]
LDRH            R12, [R1]
ADD             R11, R11, #1
STRH            R12, [R5,#4]
SUBS            R3, R3, #1
ADD             R2, R2, #8
ADD             R1, R1, #8
ADD             R0, R0, #1
BNE             loc_117B7C
B               loc_117C48
LDR             R1, [R0,#0x28]
ADD             R1, R1, R0
LDR             R0, [R0,#0x2C]
CMP             R0, #0
BEQ             loc_117C40
TST             R0, #1
SUB             R6, R1, #8
SUB             R5, SP, #8
BEQ             loc_117C04
ADD             R0, R5, #8
ADD             R1, R6, #8
MOV             R5, R0
MOV             R6, R1
BL              sub_1257F4
LDR             R0, [SP,#0x2A8+var_74]
LDR             R0, [R0,#0x2C]
MOVS            R7, R0,LSR#1
BEQ             loc_117C40
ADD             R0, R5, #8
ADD             R1, R6, #8
BL              sub_1257F4
ADD             R0, R5, #0x10
ADD             R1, R6, #0x10
MOV             R5, R0
MOV             R6, R1
BL              sub_1257F4
SUBS            R7, R7, #1
NOP
BNE             loc_117C14
LDR             R0, [SP,#0x2A8+var_74]
LDR             R11, [R0,#0x2C]
MOV             R1, #0
MOV             R12, #1
LDR             R0, =0x1F1F1F1F
ADD             LR, SP, #0x2A8+var_94
CMP             R11, #0
MOV             R5, #0
STR             R0, [LR,R1,LSL#2]
BLE             loc_117DD0
MOV             R3, SP
ADD             R6, R3, R5,LSL#3
MOV             R0, #0
LDRH            R7, [R6,#2]
MOV             R2, R0
B               loc_117D8C
LDRH            R3, [R6,#4]
TST             R3, R12,LSL R2
BEQ             loc_117D88
LDRH            R8, [R6]
MOV             R3, #0x1F
CMP             R8, #9; switch 9 cases
LDRCC           PC, [PC,R8,LSL#2]; switch jump
B               def_117C98; jumptable 00117C98 default case, case 7
DCD loc_117CC4; jump table for switch statement
MOV             R3, R0; jumptable 00117C98 case 0
ADD             R0, R0, #1
CMP             R0, #2
ORREQ           R4, R4, #1
B               def_117C98; jumptable 00117C98 default case, case 7
ORR             R4, R4, #0x1000000; jumptable 00117C98 case 1
ADD             R3, R0, #4
B               loc_117CEC
ORR             R4, R4, #2; jumptable 00117C98 case 2
ADD             R3, R0, #8
ADD             R0, R0, #1
B               def_117C98; jumptable 00117C98 default case, case 7
CMP             R0, #2; jumptable 00117C98 case 3
ADDCC           R3, R0, #0xC
MOV             R8, #1
ADDCC           R0, R0, #1
ORR             R4, R4, #0x100
STR             R8, [SP,#0x2A8+var_68]
B               def_117C98; jumptable 00117C98 default case, case 7
MOV             R8, #1; jumptable 00117C98 case 4
MOV             R3, #0x10
ORR             R4, R4, #0x10000
STR             R8, [SP,#0x2A8+var_68]
B               def_117C98; jumptable 00117C98 default case, case 7
CMP             R0, #2; jumptable 00117C98 case 5
ADDCC           R3, R0, #0xE
MOV             R8, #1
ADDCC           R0, R0, #1
ORR             R4, R4, #0x200
STR             R8, [SP,#0x2A8+var_68]
B               def_117C98; jumptable 00117C98 default case, case 7
CMP             R0, #2; jumptable 00117C98 case 6
ADDCC           R3, R0, #0x16
MOV             R8, #1
ADDCC           R0, R0, #1
ORR             R4, R4, #0x400
STR             R8, [SP,#0x2A8+var_68]
B               def_117C98; jumptable 00117C98 default case, case 7
CMP             R0, #3; jumptable 00117C98 case 8
ADDCC           R3, R0, #0x12
ADDCC           R0, R0, #1
ORR             R4, R4, #0x1000000
MOV             R8, R2,LSL#3; jumptable 00117C98 default case, case 7
LDR             R10, [LR,R1,LSL#2]
MOV             R3, R3,LSL R8
MOV             R9, #0xFF
BIC             R8, R10, R9,LSL R8
ORR             R3, R3, R8
STR             R3, [LR,R1,LSL#2]
ADD             R2, R2, #1
CMP             R7, R1
BNE             loc_117D9C
CMP             R2, #4
BLT             loc_117C80
ADD             R5, R5, #1
CMP             R11, R5
BGT             loc_117C68
LDR             R0, =0x1F1F1F1F
LDR             R2, [LR,R1,LSL#2]
CMP             R2, R0
BEQ             loc_117DD0
LDR             R0, [SP,#0x2A8+var_A4]
ADD             R0, R0, #1
STR             R0, [SP,#0x2A8+var_A4]
LDR             R0, [SP,#0x2A8+var_60]
ORR             R0, R0, R12,LSL R1
STR             R0, [SP,#0x2A8+var_60]
ADD             R1, R1, #1
CMP             R1, #7
BLT             loc_117C50
LDR             R0, [SP,#0x2A8+var_64]
CMP             R0, #0
BEQ             loc_118130
LDR             R0, [SP,#0x2A8+var_5C]
MOV             R1, #0
MOV             R3, #0
ADD             R5, SP, #0x2A8+var_298
LDR             R0, [R0,#0xC]
STR             R1, [SP,#0x2A8+var_258]
STR             R1, [SP,#0x2A8+var_244]
LDR             R1, [R0,#0x28]
ADD             R11, R1, R0
LDR             R0, [R0,#0x2C]
STR             R0, [SP,#0x2A8+var_254]
LDR             R0, =0x1F1F1F1F
MOV             R6, #0
STR             R0, [R5,R3,LSL#2]
LDR             R0, [SP,#0x2A8+var_254]
CMP             R0, #0
BLS             loc_117F5C
ADD             R7, R11, R6,LSL#3
MOV             R0, #0
LDRH            LR, [R7,#2]
MOV             R1, R0
B               loc_117F14
LDRH            R2, [R7,#4]
TST             R2, R12,LSL R1
BEQ             loc_117F10
LDRH            R8, [R7]
MOV             R2, #0x1F
CMP             R8, #0xA; switch 10 cases
LDRCC           PC, [PC,R8,LSL#2]; switch jump
B               def_117E58; jumptable 00117E58 default case, case 7
DCD loc_117E88; jump table for switch statement
MOV             R2, R0; jumptable 00117E58 case 0
ADD             R0, R0, #1
B               def_117E58; jumptable 00117E58 default case, case 7
ADD             R2, R0, #4; jumptable 00117E58 case 1
B               loc_117EA0
ADD             R2, R0, #8; jumptable 00117E58 case 2
ADD             R0, R0, #1
B               def_117E58; jumptable 00117E58 default case, case 7
CMP             R0, #2; jumptable 00117E58 case 3
ADDCC           R2, R0, #0xC
BCS             def_117E58; jumptable 00117E58 default case, case 7
B               loc_117EA0
MOV             R2, #0x10; jumptable 00117E58 case 4
B               def_117E58; jumptable 00117E58 default case, case 7
CMP             R0, #2; jumptable 00117E58 case 5
ADDCC           R2, R0, #0xE
BCS             def_117E58; jumptable 00117E58 default case, case 7
B               loc_117EA0
CMP             R0, #2; jumptable 00117E58 case 6
ADDCC           R2, R0, #0x16
BCS             def_117E58; jumptable 00117E58 default case, case 7
B               loc_117EA0
CMP             R0, #3; jumptable 00117E58 case 8
ADDCC           R2, R0, #0x12
BCS             def_117E58; jumptable 00117E58 default case, case 7
B               loc_117EA0
MOV             R2, #0xFF; jumptable 00117E58 case 9
MOV             R8, R1,LSL#3; jumptable 00117E58 default case, case 7
LDR             R10, [R5,R3,LSL#2]
MOV             R2, R2,LSL R8
MOV             R9, #0xFF
BIC             R8, R10, R9,LSL R8
ORR             R2, R2, R8
STR             R2, [R5,R3,LSL#2]
ADD             R1, R1, #1
CMP             LR, R3
BNE             loc_117F24
CMP             R1, #4
BLT             loc_117E40
LDR             R0, [SP,#0x2A8+var_254]
ADD             R6, R6, #1
CMP             R0, R6
BHI             loc_117E2C
LDR             R0, =0x1F1F1F1F
LDR             R1, [R5,R3,LSL#2]
CMP             R1, R0
BEQ             loc_117F5C
LDR             R0, [SP,#0x2A8+var_258]
ADD             R0, R0, #1
STR             R0, [SP,#0x2A8+var_258]
LDR             R0, [SP,#0x2A8+var_244]
ORR             R0, R0, R12,LSL R3
STR             R0, [SP,#0x2A8+var_244]
ADD             R3, R3, #1
CMP             R3, #0x10
BLT             loc_117E14
LDR             R1, [SP,#0x2A8+var_28]
LDR             R0, [SP,#0x2A8+var_34]
ADD             R3, R0, R1,LSL#2
LDR             R0, [R3,#0xC]
LDRB            R1, [R0,#0x14]
CMP             R1, #1
BEQ             loc_11806C
LDR             R2, [SP,#0x2A8+var_30]
MOV             R0, #0
STR             R0, [R2]
LDR             R0, [SP,#0x2A8+var_30]
ADD             R0, R0, #4
LDR             R12, =0xA0229
MOV             R2, #0
CMP             R1, #0
STR             R12, [R0],#4
LDR             R12, =0x30253
STM             R0!, {R2,R12}
MOVEQ           R12, #0
LDR             R2, [SP,#0x2A8+var_258]
MOVNE           R12, #0x100
CMP             R1, #1
SUB             R2, R2, #1
ORR             R12, R12, R2
ORR             LR, R12, #0x8000000
LDR             R12, =0xB0289
STR             LR, [R0],#4
STR             R12, [R0],#4
LDR             R12, [R3,#0xC]
LDR             R12, [R12,#8]
ORR             LR, R12, #0x7F000000
LDR             R12, =0xF028A
ORR             LR, LR, #0xFF0000
STR             LR, [R0],#4
ADD             LR, R12, #3
STR             R12, [R0],#4
LDR             R12, [SP,#0x2A8+var_60]
STM             R0!, {R12,LR}
LDR             R12, [SP,#0x2A8+var_5C]
LDR             R12, [R12,#0xC]
LDR             R12, [R12,#8]
ORR             LR, R12, #0x7F000000
LDR             R12, =0xF02BA
ORR             LR, LR, #0xFF0000
STR             LR, [R0],#4
STR             R12, [R0],#4
LDR             LR, [SP,#0x2A8+var_244]
ADD             R12, R12, #3
STR             LR, [R0],#4
LDR             LR, =0x76543210
STR             R12, [R0],#4
SUB             R12, R12, #0x6C ; 'l'
STR             R2, [R0],#4
STR             R12, [R0],#4
ADD             R12, R12, #0x3A ; ':'
STR             LR, [R0],#4
LDR             LR, =0xFEDCBA98
STR             R12, [R0],#4
ADD             R12, R12, #1
STR             LR, [R0],#4
STR             R12, [R0],#4
BEQ             loc_118084
CMP             R1, #2
BEQ             loc_1180A8
B               loc_1180D8
LDR             R0, [SP,#0x2A8+var_30]
MOV             R2, #0x80000000
STR             R2, [R0]
LDR             R0, [SP,#0x2A8+var_30]
ADD             R0, R0, #4
B               loc_117F98
LDR             R3, [R3,#0xC]
LDRB            R3, [R3,#0x16]
CMP             R3, #0
BEQ             loc_1180D8
SUB             R12, R3, #1
LDR             R3, =0x10254
STR             R12, [R0],#4
STR             R3, [R0],#4
B               loc_1180D8
LDR             R1, [R3,#0xC]
LDR             R3, [SP,#0x2A8+var_258]
LDR             R5, =0xFFFFF000
LDR             R12, =0x1000002
LDRB            R6, [R1,#0x17]
ADD             R3, R5, R3,LSL#12
LDRB            R5, [R1,#0x15]
MOV             LR, #0xFFFFFF00
ORR             R1, R12, R5,LSL#16
ADD             R12, LR, R6,LSL#8
ORR             R1, R1, R3
ORR             R1, R1, R12
STR             R1, [R0],#4
LDR             R1, =0xF0252
STR             R1, [R0],#4
SUB             R1, R1, #8
STR             R2, [R0],#4
STR             R1, [R0]
LDR             R1, [SP,#0x2A8+var_A4]
LDR             R3, =0xF004F
ADD             R6, SP, #0x2A8+var_94
SUB             R2, R1, #1
LDR             R1, =0x1025E
STR             R2, [R0,#4]!
MOV             R2, #0
STR             R1, [R0,#4]!
LDR             R1, [SP,#0x2A8+var_A4]
MOV             R5, #3
STMIB           R0!, {R1,R3}
ADD             R0, R0, #4
LDR             R12, [SP,#0x2A8+var_94]
LDR             R1, =0x1F1F1F1F
ADD             R3, SP, #0x2A8+var_98
B               loc_1181B8
LDR             R0, [SP,#0x2A8+var_30]
MOV             R1, #0
LDR             R2, =0x80229
LDR             R12, =0x10253
STR             R1, [R0]
LDR             R0, [SP,#0x2A8+var_30]
LDR             R7, =0xB0289
MOV             R3, #0xA0000000
LDR             R6, =0xF02BA
STR             R2, [R0,#4]!
STR             R1, [R0,#4]!
LDR             R2, [SP,#0x2A8+var_A4]
STR             R12, [R0,#4]!
SUB             R5, R6, R3,ASR#29
STR             R3, [R0,#4]!
SUB             R2, R2, #1
STR             R7, [R0,#4]!
LDR             R7, [SP,#0x2A8+var_5C]
SUB             LR, R5, #0x6C ; 'l'
SUB             R3, LR, R3,ASR#31
SUB             R12, R3, #8
LDR             R7, [R7,#0xC]
LDR             R7, [R7,#8]
ORR             R7, R7, #0x7F000000
ORR             R7, R7, #0xFF0000
STR             R7, [R0,#4]!
STR             R6, [R0,#4]!
LDR             R6, [SP,#0x2A8+var_60]
STR             R6, [R0,#4]!
STR             R5, [R0,#4]!
STMIB           R0!, {R2,LR}
STMIB           R0!, {R1,R3}
STMIB           R0!, {R2,R12}
B               loc_1180F0
LDR             LR, [R3,#8]!
CMP             R12, R1
BEQ             loc_1181D8
ADD             R7, R2, #0x50 ; 'P'
STR             R12, [R0],#4
ORR             R12, R7, #0xF0000
ADD             R2, R2, #1
STR             R12, [R0],#4
LDR             R12, [R3,#4]
CMP             LR, R1
BEQ             loc_1181F8
ADD             R7, R2, #0x50 ; 'P'
STR             LR, [R0],#4
ORR             LR, R7, #0xF0000
ADD             R2, R2, #1
STR             LR, [R0],#4
SUBS            R5, R5, #1
BNE             loc_1181B8
LDR             R3, [SP,#0x2A8+var_7C]
CMP             R3, R1
BEQ             loc_118220
ADD             R1, R2, #0x50 ; 'P'
STR             R3, [R0],#4
ORR             R1, R1, #0xF0000
ADD             R2, R2, #1
STR             R1, [R0],#4
RSB             LR, R2, #7
CMP             LR, #0
BLE             loc_1182B0
ADD             R3, R6, R2,LSL#2
TST             LR, #1
MOV             R12, #0
SUB             R3, R3, #4
SUB             R1, R0, #8
BEQ             loc_118260
LDR             R5, [R3,#4]!
ADD             R7, R1, #8
ADD             R6, R2, #0x50 ; 'P'
ORR             R6, R6, #0xF0000
STM             R7, {R5,R6}
MOV             R12, #1
ADD             R1, R1, #8
MOVS            LR, LR,ASR#1
BEQ             loc_1182A4
ADD             R5, R2, R12
LDR             R6, [R3,#4]
ADD             R7, R5, #0x50 ; 'P'
ADD             R8, R5, #0x51 ; 'Q'
ORR             R5, R7, #0xF0000
STR             R6, [R1,#8]
STR             R5, [R1,#0xC]
LDR             R5, [R3,#8]!
ADD             R7, R1, #0x10
ORR             R6, R8, #0xF0000
STM             R7, {R5,R6}
SUBS            LR, LR, #1
ADD             R12, R12, #2
ADD             R1, R1, #0x10
BNE             loc_118268
RSB             R1, R2, #0
ADD             R0, R0, R1,LSL#3
ADD             R0, R0, #0x38 ; '8'
LDR             R3, =0xF0064
LDR             R1, [SP,#0x2A8+var_68]
STM             R0!, {R1,R3}
ORR             R2, R3, R3,ASR#16
LDR             R1, [SP,#0x2A8+var_64]
STR             R4, [R0],#4
CMP             R1, #0
STR             R2, [R0],#4
BEQ             loc_1182E0
LDR             R2, =0x8025E
MOV             R1, #0
STM             R0!, {R1,R2}
ADD             SP, SP, #0x284
POP             {R4-R11,PC}
