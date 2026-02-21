PUSH            {R0,R4-R11,LR}
VPUSH           {D8-D11}
SUB             SP, SP, #0x830
LDR             R0, [SP,#0x878+var_28]
LDR             R1, [R0]
MOV             R0, #0
STR             R0, [SP,#0x878+var_778]
TST             R1, #0x200
LDR             R1, =off_6D48F8
STR             R0, [SP,#0x878+var_60]
LDR             R5, [R1]
BEQ             loc_138328
LDR             R0, [R5,#8]
TST             R0, #0x1000
BNE             loc_138328
LDRB            R0, [R5,#0x648]
CMP             R0, #0
BEQ             loc_13834C
ADD             R0, R5, #0x400
LDR             R3, [R5,#0x5E4]
ADD             R0, R0, #0x1EC
LDR             R2, [R5,#0x5E8]
LDR             R12, [R5,#0x698]
LDM             R0, {R0,R6}
SUB             R4, R3, #1
CMP             R12, R3
SUB             R1, R2, #1
ADD             R4, R4, R0
ADD             R1, R1, R6
SUBLE           R3, R12, #1
BLE             loc_13826C
CMP             R3, #0
MOVLT           R3, #0
LDR             R0, [R5,#0x69C]
CMP             R0, R2
SUBLE           R2, R0, #1
BLE             loc_138284
CMP             R2, #0
MOVLT           R2, #0
CMP             R12, R4
SUBLT           R4, R12, #1
BLT             loc_138298
CMP             R4, #0
MOVLT           R4, #0
CMP             R0, R1
SUBLT           R1, R0, #1
BLT             loc_1382AC
CMP             R1, #0
MOVLT           R1, #0
MOV             R12, #3
LDR             R7, =dword_6D2418
LDR             R6, =dword_6D241C
LDR             R0, [R7]
LDR             R8, [R6]
CMP             R0, R8
BCS             loc_1382DC
LDR             R9, =0xF0065
ADD             R10, R0, #8
STR             R9, [R0,#4]
STR             R12, [R0]
STR             R10, [R7]
LDR             R12, [R7]
LDR             R0, [R6]
CMP             R12, R0
BCS             loc_138300
LDR             R8, =0xF0066
ORR             R3, R3, R2,LSL#16
ADD             R2, R12, #8
STM             R12, {R3,R8}
STR             R2, [R7]
LDR             R0, [R6]
LDR             R2, [R7]
CMP             R2, R0
BCS             loc_138328
LDR             R3, =0xF0067
ORR             R12, R4, R1,LSL#16
ADD             R1, R2, #8
STR             R3, [R2,#4]
STR             R12, [R2]
STR             R1, [R7]
LDR             R0, =dword_6D45E4
LDR             R1, [R0,#(dword_6D45EC - 0x6D45E4)]
LDR             R4, [R1]
CMP             R4, #0
BEQ             loc_13B9F0
LDR             R1, [R5,#8]
TST             R1, #4
BEQ             loc_13836C
B               loc_138444
LDR             R1, [R5,#0x698]
LDR             R0, [R5,#0x69C]
MOV             R2, #0
SUB             R4, R1, #1
MOV             R3, R2
MOV             R12, R2
SUB             R1, R0, #1
B               loc_1382B0
LDRB            R0, [R4,#0x424]
LDR             R9, =dword_6D45E4
CMP             R0, #0
MOVNE           R6, #1
LDR             R0, [R9,#(dword_6D45F0 - 0x6D45E4)]
MOVEQ           R6, #0
CMP             R6, R0
BNE             loc_138398
LDR             R0, [R5,#4]
TST             R0, #4
BEQ             loc_138444
LDR             R0, =0x251
MOV             R1, #0xA
BL              sub_1377A0
MOV             R1, #0x1E
MOV             R0, #0x200
BL              sub_1377A0
LDR             R7, =dword_6D2418
LDR             R8, =dword_6D241C
LDR             R0, [R7]
LDR             R1, [R8]
CMP             R0, R1
BCS             loc_1383E4
LDR             R3, =0x10229
CMP             R6, #0
MOVNE           R2, #2
MOVEQ           R2, #0
ADD             R12, R0, #8
STRD            R2, R3, [R0]
STR             R12, [R7]
MOV             R1, #0x1E
MOV             R0, #0x200
BL              sub_1377A0
STR             R6, [R9,#(dword_6D45F0 - 0x6D45E4)]
LDR             R2, =0x10244
LDR             R1, [R8]
LDR             R0, [R7]
CMP             R6, #0
BEQ             loc_138428
CMP             R0, R1
BCS             loc_138444
MOV             R3, #1
STR             R2, [R0,#4]
ADD             R12, R0, #8
STR             R3, [R0]
STR             R12, [R7]
B               loc_138444
CMP             R0, R1
BCS             loc_138444
MOV             R3, #0
STR             R2, [R0,#4]
ADD             R12, R0, #8
STR             R3, [R0]
STR             R12, [R7]
LDRB            R0, [R4,#0x424]
CMP             R0, #0
BEQ             loc_1384D0
LDR             R12, [R4,#0x4E8]
LDR             R1, =dword_6D45E4
BIC             R12, R12, #0x8000
STR             R12, [R4,#0x4E8]
LDR             R1, [R1,#(dword_6D45EC - 0x6D45E4)]
ADD             R0, R1, #0x1000
LDR             R12, [R0,#0x10]
ORR             R12, R12, #0x8000
STR             R12, [R0,#0x10]
LDRB            R0, [R4,#0x427]
ORR             R0, R0, #2
STRB            R0, [R4,#0x427]
LDR             R0, [R4,#0x7D8]
ORR             R0, R0, #2
STR             R0, [R4,#0x7D8]
LDR             R0, [SP,#0x878+var_28]
LDR             R0, [R0]
TST             R0, #0x800000
BEQ             loc_1384D0
LDR             R0, [R5,#8]
TST             R0, #4
MOVEQ           R0, #1
BNE             loc_1384D0
ADD             R2, R4, R0,LSL#2
ADD             R3, R1, R0,LSL#2
LDR             R2, [R2,#0x4E4]
ADD             R3, R3, #0x1000
ADD             R0, R0, #1
MVN             R2, R2
CMP             R0, #8
STR             R2, [R3,#0xC]
BLS             loc_1384AC
LDR             R0, [SP,#0x878+var_28]
LDR             R0, [R0]
TST             R0, #0x100000
BEQ             loc_1386C0
LDR             R0, [R5,#8]
TST             R0, #1
BNE             loc_1386C0
LDRB            R0, [R4,#0x424]
LDR             R2, =0xF029B
CMP             R0, #0
SUB             R7, R2, #0xC
BEQ             loc_1385A4
LDR             R6, =dword_6D2418
LDR             R8, =dword_6D241C
LDR             R0, [R6]
LDR             R1, [R8]
CMP             R0, R1
BCS             loc_13852C
MOV             R3, #0
STR             R2, [R0,#4]
ADD             R12, R0, #8
STR             R3, [R0]
STR             R12, [R6]
LDR             R0, [R4,#0x414]
LDR             R1, [R0,#4]
LDR             R2, [R0]
MOV             R0, #0x29C
BL              sub_1378C8
LDR             R0, [R8]
LDR             R1, [R6]
CMP             R1, R0
BCS             loc_138560
MOV             R2, #1
STM             R1, {R2,R7}
ADD             R3, R1, #8
STR             R3, [R6]
LDR             R1, [R8]
LDR             R0, [R6]
CMP             R0, R1
BCS             loc_138584
LDR             R3, =0xF02A5
MOV             R2, #0
ADD             R12, R0, #8
STRD            R2, R3, [R0]
STR             R12, [R6]
LDR             R0, [R4,#0x414]
LDR             R2, [R0,#8]!
LDR             R1, [R0,#4]
LDR             R0, =0x2A6
BL              sub_1378C8
NOP
NOP
B               loc_13861C
LDR             R0, [R4,#0x414]
LDR             R0, [R0,#4]
CMP             R0, #0x200
BLS             loc_13861C
LDR             R6, =dword_6D2418
LDR             R8, =dword_6D241C
LDR             R1, [R6]
LDR             R0, [R8]
CMP             R1, R0
BCS             loc_1385E0
MOV             R3, #0x200
STR             R2, [R1,#4]
ADD             R12, R1, #8
STR             R3, [R1]
STR             R12, [R6]
LDR             R0, [R4,#0x414]
LDR             R1, [R0]
LDR             R0, [R0,#4]
ADD             R2, R1, #0x800
SUB             R1, R0, #0x200
MOV             R0, #0x29C
BL              sub_1378C8
LDR             R0, [R8]
LDR             R1, [R6]
CMP             R1, R0
BCS             loc_13861C
MOV             R2, #1
STM             R1, {R2,R7}
ADD             R3, R1, #8
STR             R3, [R6]
LDR             R6, =dword_6D2418
LDR             R7, =dword_6D241C
LDR             R1, [R6]
LDR             R0, [R7]
CMP             R1, R0
BCS             loc_138648
LDR             R3, =0xF02CB
MOV             R2, #0
ADD             R12, R1, #8
STRD            R2, R3, [R1]
STR             R12, [R6]
LDR             R0, [R4,#0x414]
LDR             R1, [R0,#4]
LDR             R2, [R0]
MOV             R0, #0x2CC
CMP             R1, #0x200
MOVHI           R1, #0x200
BL              sub_1378C8
LDR             R0, [R7]
LDR             R1, [R6]
CMP             R1, R0
BCS             loc_138688
LDR             R3, =0xF02BF
MOV             R2, #1
ADD             R12, R1, #8
STRD            R2, R3, [R1]
STR             R12, [R6]
LDR             R0, [R7]
LDR             R2, [R6]
CMP             R2, R0
BCS             loc_1386AC
LDR             R3, =0xF02D5
MOV             R1, #0
ADD             R12, R2, #8
STM             R2, {R1,R3}
STR             R12, [R6]
LDR             R0, [R4,#0x414]
LDR             R2, [R0,#8]!
LDR             R1, [R0,#4]
LDR             R0, =0x2D6
BL              sub_1378C8
LDR             R0, [SP,#0x878+var_28]
LDR             R0, [R0]
TST             R0, #0x1000000
BEQ             loc_13870C
LDR             R0, [R5,#8]
TST             R0, #4
BNE             loc_13870C
LDR             R1, =dword_6D45E4
MOV             R0, #9
LDR             R1, [R1,#(dword_6D45EC - 0x6D45E4)]
ADD             R2, R4, R0,LSL#2
LDR             R2, [R2,#0x4E4]
ADD             R3, R1, R0,LSL#2
ADD             R3, R3, #0x1000
ADD             R0, R0, #1
MVN             R2, R2
CMP             R0, #0x10
STR             R2, [R3,#0xC]
BLS             loc_1386E8
LDR             R0, [SP,#0x878+var_28]
LDR             R0, [R0]
TST             R0, #0x600000
BEQ             loc_1387E0
LDR             R1, [R5,#8]
TST             R1, #8
BNE             loc_1387E0
LDRB            R1, [R4,#0x424]
CMP             R1, #0
TSTNE           R0, #0x400000
BEQ             loc_138784
LDR             R0, [R4,#0x41C]
LDR             R1, [R4,#0x414]
MOV             R6, #0
ADD             R2, R0, R0,LSL#1
LDR             R1, [R1,#0x10]
RSB             R0, R2, R0,LSL#5
ADD             R7, R1, R0,LSL#3
LDR             R0, [R7,#0x34]
CMP             R0, #0
BLS             loc_138784
LDR             R0, [R7,#0x30]
MOV             R1, #4
ADD             R2, R0, R6,LSL#4
MOV             R0, #0x290
BL              sub_1406F0
LDR             R0, [R7,#0x34]
ADD             R6, R6, #1
CMP             R0, R6
BHI             loc_138760
LDR             R0, [SP,#0x878+var_28]
LDR             R0, [R0]
TST             R0, #0x200000
BEQ             loc_1387E0
LDR             R0, [R4,#0x418]
LDR             R1, [R4,#0x414]
MOV             R6, #0
ADD             R2, R0, R0,LSL#1
LDR             R1, [R1,#0x10]
RSB             R0, R2, R0,LSL#5
ADD             R7, R1, R0,LSL#3
LDR             R0, [R7,#0x34]
CMP             R0, #0
BLS             loc_1387E0
LDR             R0, [R7,#0x30]
MOV             R1, #4
ADD             R2, R0, R6,LSL#4
MOV             R0, #0x2C0
BL              sub_1406F0
LDR             R0, [R7,#0x34]
ADD             R6, R6, #1
CMP             R0, R6
BHI             loc_1387BC
LDR             R0, [R5,#8]
TST             R0, #0x200
BNE             loc_1396D0
LDR             R0, [SP,#0x878+var_28]
LDR             R1, =0x8042
LDR             R0, [R0]
TST             R0, R1
BEQ             loc_1395D8
LDR             R0, =dword_6D45E4
MOV             R12, #0
ADD             R2, SP, #0x878+var_810
MOV             R6, R12
LDR             R1, [R0,#(dword_6D45EC - 0x6D45E4)]
MOV             R7, R12
MOV             R8, #0xF
MOV             R10, R2
LDR             R0, [R1,#4]
CMP             R0, R4
MOVEQ           R3, #1
MOVNE           R3, #0
STR             R3, [SP,#0x878+var_814]
MOV             R0, #1
STR             R4, [R1,#4]
STRB            R0, [R5,#0x81C]
MOV             R3, R12
STR             R12, [SP,#0x878+var_80C]
ADD             R0, R8, R8,LSL#1
ADD             R1, R4, R0,LSL#2
LDR             R1, [R1,#0x358]
CMN             R1, #1
BEQ             loc_13892C
ADD             R0, R5, R0,LSL#3
LDRB            R1, [R0,#0x46D]
CMP             R1, #0
BEQ             loc_1388FC
LDR             R0, [R0,#0x468]
CMP             R0, #0
MOVEQ           R0, #0
STRBEQ          R0, [R5,#0x81C]
BEQ             loc_138890
ADD             R0, R5, R8,LSL#2
LDR             R0, [R0,#0x6A4]
CMP             R0, R3
MOVHI           R3, R0
ADD             R12, R10, R6,LSL#3
CMP             R6, #0
STR             R8, [R12]
BEQ             loc_138928
LDR             R0, [R2]
ADD             R1, R5, R8,LSL#2
LDR             R9, [R1,#0x6A4]
ADD             R0, R5, R0,LSL#2
LDR             R0, [R0,#0x6A4]
CMP             R9, R0
STRLE           R2, [R12,#4]
MOVLE           R2, R12
BLE             loc_138928
LDR             R0, [R2,#4]
MOV             R1, R2
CMP             R0, #0
BEQ             loc_13891C
LDR             R11, [R0]
ADD             R11, R5, R11,LSL#2
LDR             R11, [R11,#0x6A4]
CMP             R9, R11
BGT             loc_13890C
STR             R12, [R1,#4]
CMP             R0, #0
STR             R0, [R12,#4]
BNE             loc_138928
B               loc_13891C
ADD             R0, SP, #0x878+var_860
STR             R8, [R0,R7,LSL#2]
ADD             R7, R7, #1
B               loc_13892C
MOV             R1, R0
LDR             R0, [R0,#4]
CMP             R0, #0
BNE             loc_1388D4
MOV             R0, #0
STR             R12, [R1,#4]
STR             R0, [R12,#4]
ADD             R6, R6, #1
SUBS            R8, R8, #1
BPL             loc_138848
LDRB            R0, [R5,#0x76C]
CMP             R0, #0
BNE             loc_13894C
ADD             R0, R6, R7
CMP             R0, #0xC
BLE             loc_138954
MOV             R0, #0
STRB            R0, [R5,#0x81C]
CMP             R6, #0
BEQ             loc_1389AC
LDR             R0, [R2]
ADD             R0, R5, R0,LSL#2
LDR             R0, [R0,#0x6A4]
BIC             R0, R0, #0xF
STR             R0, [R5,#0x6E4]
LDRB            R1, [R5,#0x81C]
CMP             R1, #0
BEQ             loc_1389B4
LDRB            R1, [R5,#0x19]
CMP             R1, #0
BNE             loc_1389A0
LDR             R1, [R5,#0x6A0]
CMP             R1, R0
MOVCC           R0, R1
CMP             R1, R3
MOVLS           R1, R3
MOV             R3, R1
SUB             R0, R3, R0
CMP             R0, #0x10000000
BCC             loc_1389B4
MOV             R0, #0
STRB            R0, [R5,#0x81C]
LDR             R0, [R4,#0x8F4]
CMP             R0, R6
MOV             R0, #1
STR             R0, [SP,#0x878+var_820]
LDREQ           R0, [R4,#0x938]
CMPEQ           R0, R7
BNE             loc_138D6C
LDR             R0, [R5,#4]
TST             R0, #0x200
BNE             loc_138D6C
LDR             R12, [R4,#0x870]
CMP             R6, #0
MOV             R1, R2
MOV             R0, #0
BLE             loc_138AD4
LDR             R3, [R1]
LDR             R8, [R12]
CMP             R3, R8
BNE             loc_138A48
LDR             R9, [R2]
ADD             R8, R4, R0,LSL#2
ADD             R10, R5, R3,LSL#2
LDR             R11, [R4,#0x874]
ADD             R9, R5, R9,LSL#2
LDR             R10, [R10,#0x6A4]
LDR             LR, [R8,#0x874]
LDR             R9, [R9,#0x6A4]
SUB             R11, LR, R11
SUB             R9, R10, R9
CMP             R9, R11
BNE             loc_138A48
ADD             R3, R3, R3,LSL#1
LDR             R8, [R8,#0x8B4]
ADD             R3, R5, R3,LSL#3
LDR             R9, [R3,#0x464]
CMP             R9, R8
BEQ             loc_138A54
MOV             R0, #0
STR             R0, [SP,#0x878+var_820]
B               loc_138AD4
LDR             R8, [R3,#0x460]
SUB             R8, R8, #0x1400
SUBS            R8, R8, #1
MOVEQ           R8, #1
BEQ             loc_138A80
CMP             R8, #1
MOVEQ           R8, #2
BEQ             loc_138A80
CMP             R8, #5
MOVNE           R8, #0
MOVEQ           R8, #3
LDR             R9, [R3,#0x45C]
MOV             R3, #0xFFFFFFFC
CMP             R0, #8
ADD             R3, R3, R9,LSL#2
ORR             R3, R3, R8
LDRLT           R9, [R4,#0x944]
AND             R8, R3, #0xFF
MOVLT           R3, R0,LSL#2
MOVLT           R3, R9,LSR R3
LDRGE           R3, [R4,#0x948]
MOVGE           R9, R0,LSL#2
SUBGE           R9, R9, #0x20 ; ' '
MOVGE           R3, R3,LSR R9
AND             R3, R3, #0xF
CMP             R8, R3
BNE             loc_138A48
LDR             R1, [R1,#4]
LDR             R12, [R12,#4]
ADD             R0, R0, #1
CMP             R0, R6
BLT             loc_1389F0
CMP             R7, #0
MOV             R0, #0
ADDGT           R1, SP, #0x878+var_860
BLE             loc_138B04
ADD             R12, R4, R0,LSL#2
LDR             R3, [R1,R0,LSL#2]
LDR             R12, [R12,#0x8F8]
CMP             R3, R12
BNE             loc_138D6C
ADD             R0, R0, #1
CMP             R0, R7
BLT             loc_138AE4
LDR             R0, [SP,#0x878+var_820]
CMP             R0, #0
LDRBNE          R0, [R5,#0x81C]
CMPNE           R0, #0
BEQ             loc_138D6C
LDRB            R1, [R5,#0x19]
LDR             R0, [SP,#0x878+var_814]
CMP             R1, #0
LDRNE           R3, [R5,#0x6E4]
BNE             loc_138B3C
LDR             R1, [R5,#0x6A0]
LDR             R3, [R5,#0x6E4]
CMP             R1, R3
BICLT           R3, R1, #0xF
LDR             R1, [R5,#0x6E4]
CMP             R1, R3
LDRBEQ          R1, [R4,#0x425]
CMPEQ           R1, #0
BNE             loc_138B6C
LDR             R1, [R2]
LDR             R12, [R4,#0x94C]
ADD             R1, R5, R1,LSL#2
LDR             R1, [R1,#0x6A4]
SUB             R1, R1, R3
CMP             R1, R12
BEQ             loc_138BD0
LDR             R0, [R2]
LDR             R2, [R4,#0x93C]
MOV             R1, #1
ADD             R0, R5, R0,LSL#2
CMP             R2, #1
LDR             R0, [R0,#0x6A4]
SUB             R2, R0, R3
BLE             loc_138BB8
ADD             R0, R1, R1,LSL#1
LDR             R12, [R4,#0x94C]
ADD             R0, R4, R0,LSL#2
ADD             R1, R1, #1
LDR             R8, [R0,#0x94C]
SUB             R12, R8, R12
ADD             R12, R12, R2
STR             R12, [R0,#0x94C]
LDR             R0, [R4,#0x93C]
CMP             R0, R1
BGT             loc_138B8C
STR             R2, [R4,#0x94C]
LDR             R1, [R5,#0x6E4]
MOV             R0, #0
CMP             R1, R3
MOVEQ           R1, #0
STRBEQ          R1, [R4,#0x425]
MOV             R12, R3,LSR#3
STR             R3, [R5,#0x6E4]
CMP             R0, #0
STR             R12, [R4,#0x940]
BEQ             loc_138C14
LDR             R0, =dword_6D241C
LDR             R2, =dword_6D2418
LDR             R1, [R0]
LDR             R0, [R2]
CMP             R0, R1
BCS             loc_1395D8
LDR             R3, =0xF0200
ADD             R6, R0, #8
STR             R3, [R0,#4]
STR             R12, [R0]
STR             R6, [R2]
B               loc_1395D8
LDR             R0, [SP,#0x878+var_814]
CMP             R0, #0
BEQ             loc_138C44
LDR             R0, [R4,#0x93C]
ADD             R2, R4, #0x940
ADD             R0, R0, R0,LSL#1
ADD             R1, R0, #1
MOV             R0, #0x200
BL              sub_1406F0
NOP
NOP
B               loc_1395D8
ADD             R2, R4, #0x940
MOV             R1, #0x27 ; '''
MOV             R0, #0x200
BL              sub_1406F0
LDR             R1, =dword_6D2418
LDR             R3, =dword_6D241C
LDR             R2, [R1]
LDR             R0, [R3]
CMP             R2, R0
BCS             loc_138C80
LDR             R8, [R4,#0x9DC]
LDR             R12, =0xF02BB
ADD             R9, R2, #8
STM             R2, {R8,R12}
STR             R9, [R1]
LDR             R2, [R1]
LDR             R0, [R3]
CMP             R2, R0
BCS             loc_138CA8
LDR             R8, =0xF02BC
LDR             R12, [R4,#0x9E0]
ADD             R9, R2, #8
STR             R8, [R2,#4]
STR             R12, [R2]
STR             R9, [R1]
LDRB            R0, [R4,#0x424]
CMP             R0, #0
BEQ             loc_138D04
LDR             R12, [R1]
LDR             R0, [R3]
CMP             R12, R0
BCS             loc_138CDC
LDR             R8, =0xF028B
LDR             R9, [R4,#0x9E4]
ADD             R2, R12, #8
STR             R8, [R12,#4]
STR             R9, [R12]
STR             R2, [R1]
LDR             R0, [R3]
LDR             R2, [R1]
CMP             R2, R0
BCS             loc_138D04
LDR             R3, =0xF028C
LDR             R12, [R4,#0x9E8]
ADD             R8, R2, #8
STR             R3, [R2,#4]
STR             R12, [R2]
STR             R8, [R1]
LDR             R1, [R4,#0x870]
ADD             R2, R6, R7
STR             R2, [R5,#0x824]
CMP             R6, #0
MOV             R0, #0
STR             R6, [R5,#0x820]
BLE             loc_138D3C
LDR             R3, [R1]
ADD             R2, R5, R0,LSL#2
ADD             R0, R0, #1
STR             R3, [R2,#0x828]
LDR             R1, [R1,#4]
CMP             R6, R0
BGT             loc_138D20
CMP             R7, #0
MOV             R1, #0
ADDGT           R12, SP, #0x878+var_860
BLE             loc_1395D8
LDR             R3, [R12,R1,LSL#2]
ADD             R2, R5, R0,LSL#2
ADD             R1, R1, #1
CMP             R7, R1
ADD             R0, R0, #1
STR             R3, [R2,#0x828]
BGT             loc_138D4C
B               loc_1395D8
CMP             R6, #0
MOV             R1, R2
MOV             R0, #0
MOVGT           R10, #0
SUBGT           R12, R6, #1
BLE             loc_138DE0
LDR             R9, [R1]
ADD             R3, R4, R0,LSL#3
ADD             R8, R4, R0,LSL#2
STR             R9, [R3,#0x7F0]
LDR             R9, [R1]
CMP             R0, R12
ADD             R9, R5, R9,LSL#2
LDR             R9, [R9,#0x6A4]
STR             R9, [R8,#0x874]
LDR             R9, [R1]
ADD             R9, R9, R9,LSL#1
ADD             R9, R5, R9,LSL#3
LDR             R9, [R9,#0x464]
STR             R9, [R8,#0x8B4]
STREQ           R10, [R3,#0x7F4]
BEQ             loc_138DD4
ADD             R8, R3, #0x400
ADD             R8, R8, #0x3F8
STR             R8, [R3,#0x7F4]
LDR             R1, [R1,#4]
ADD             R0, R0, #1
CMP             R0, R6
BLT             loc_138D84
CMP             R7, #0
MOV             R0, #0
ADDGT           R1, SP, #0x878+var_860
BLE             loc_138E08
LDR             R3, [R1,R0,LSL#2]
ADD             R12, R4, R0,LSL#2
ADD             R0, R0, #1
CMP             R7, R0
STR             R3, [R12,#0x8F8]
BGT             loc_138DF0
ADD             R0, R4, #0x7F0
STR             R0, [R4,#0x870]
STR             R6, [R4,#0x8F4]
STR             R7, [R4,#0x938]
LDR             R0, [R5,#0x5D8]
CMP             R0, #0
LDRB            R0, [R5,#0x19]
BEQ             loc_138F80
CMP             R0, #0
BEQ             loc_138F90
LDR             R1, [R5,#0x6E4]
MOV             R0, #0
MOV             R1, R1,ASR#3
STR             R1, [R4,#0x940]
STRB            R0, [R4,#0x425]
LDRB            R0, [R5,#0x81C]
CMP             R0, #0
BEQ             loc_1393E4
ADD             R0, R5, #0x400
ADD             R0, R0, #0x58 ; 'X'
STR             R0, [SP,#0x878+var_770]
MOV             R12, #0
ADD             R0, R5, #0x6A0
STR             R0, [SP,#0x878+var_78C]
ADD             R0, R4, #0x800
ADD             R0, R0, #0x13C
STR             R12, [SP,#0x878+var_864]
STR             R0, [SP,#0x878+var_774]
ADD             R0, R4, #0x800
STR             R12, [SP,#0x878+var_790]
MOV             R1, R12
MOV             R3, #1
ADD             R0, R0, #0x14C
STR             R12, [R4,#0x93C]
ADD             R8, R4, R3,LSL#2
MOV             R12, #0
ADD             R3, R3, #1
CMP             R3, #0x27 ; '''
STR             R12, [R8,#0x940]
BLT             loc_138E90
MOV             R3, #1
STR             R3, [SP,#0x878+var_81C]
CMP             R6, #0
MOV             R3, #0
BLE             loc_139370
ADD             R12, R4, #0x800
ADD             R12, R12, #0x148
STR             R12, [SP,#0x878+var_768]
ADD             R12, R4, #0x800
ADD             R12, R12, #0x144
STR             R12, [SP,#0x878+var_764]
LDR             R12, [SP,#0x878+var_78C]
LDR             R8, [R2,#4]
LDR             R11, [R2]
MOV             R10, #0
LDR             R9, [R12,#0x44]
STR             R8, [SP,#0x878+var_76C]
LDR             R8, [SP,#0x878+var_78C]
ADD             LR, R11, R11,LSL#1
MOV             R12, R10
ADD             R8, R8, R11,LSL#2
ADD             LR, R5, LR,LSL#3
LDR             R11, [R8,#4]
ADD             R8, LR, #0x400
LDR             LR, [LR,#0x460]
SUB             R9, R11, R9
ADD             R8, R8, #0x58 ; 'X'
CMP             LR, #0x1400
MOVEQ           R12, #1
STR             R9, [SP,#0x878+var_788]
BEQ             loc_138F54
SUB             R9, LR, #0x1400
SUBS            R9, R9, #1
MOVEQ           R10, #1
MOVEQ           R12, R10
BEQ             loc_138F54
CMP             R9, #1
MOVEQ           R10, #2
MOVEQ           R12, R10
BEQ             loc_138F54
CMP             R9, #5
MOVEQ           R10, #3
MOVEQ           R12, #4
LDR             R11, [R8,#4]
MOV             R9, #0xFFFFFFFC
CMP             R3, #8
ADD             R9, R9, R11,LSL#2
ORR             R9, R9, R10
BGE             loc_138FC0
LDR             R10, [R4,#0x944]
MOV             R11, R3,LSL#2
ORR             R10, R10, R9,LSL R11
LDR             R9, [SP,#0x878+var_764]
B               loc_138FD4
CMP             R0, #0
MOVEQ           R0, #0
STRBEQ          R0, [R5,#0x81C]
BNE             loc_138E30
LDR             R0, [R5,#0x6A0]
LDR             R1, [R5,#0x6E4]
CMP             R0, R1
BICLT           R1, R0, #0xF
MOVLT           R0, #1
MOVGE           R0, #0
STRLT           R1, [R5,#0x6E4]
STRB            R0, [R4,#0x425]
LDR             R0, [R5,#0x6E4]
MOV             R0, R0,ASR#3
STR             R0, [R4,#0x940]
B               loc_138E44
MOV             R11, R3,LSL#2
LDR             R10, [R4,#0x948]
SUB             R11, R11, #0x20 ; ' '
ORR             R10, R10, R9,LSL R11
LDR             R9, [SP,#0x878+var_768]
STR             R10, [R9]
LDR             R9, [R8,#0xC]
CMP             R9, #0
BEQ             loc_13903C
LDR             R9, [SP,#0x878+var_81C]
LDR             LR, [R8,#4]
LDR             R10, [SP,#0x878+var_864]
CMP             R12, R9
MOVHI           R9, R12
SUB             R11, R12, #1
ADD             R10, R10, R12
MUL             R12, LR, R12
STR             R9, [SP,#0x878+var_81C]
SUB             R9, R10, #1
BIC             R9, R9, R11
ADD             R9, R9, R12
CMP             R1, #0
STR             R9, [SP,#0x878+var_864]
BEQ             loc_139084
CMP             R1, #8
BCS             loc_1390B0
LDR             R2, [R0,#4]
MOV             R9, R1,LSL#2
ORR             R2, R2, R3,LSL R9
STR             R2, [R0,#4]
B               loc_1390C4
LDR             R2, [SP,#0x878+var_788]
LDR             R8, [R8,#4]
STR             R2, [R0]
LDR             R2, [R0,#4]
ORR             R9, R2, R3
MUL             R2, R8, R12
STR             R9, [R0,#4]
LDR             R8, [R0,#8]
MOV             R12, #0x10000000
ORR             R2, R12, R2,LSL#16
ORR             R2, R2, R8
STR             R2, [R0,#8]
LDR             R2, [R4,#0x93C]
ADD             R0, R0, #0xC
ADD             R12, R2, #1
LDR             R2, [SP,#0x878+var_774]
STR             R12, [R2]
B               loc_139360
LDR             R9, [SP,#0x878+var_788]
STR             R9, [R0]
LDR             R10, [R2]
LDR             R9, [SP,#0x878+var_78C]
LDR             R2, [R8,#0xC]
ADD             R9, R9, R10,LSL#2
STR             R2, [SP,#0x878+var_790]
LDR             R9, [R9,#4]
ADD             R2, R2, R9
STR             R2, [SP,#0x878+var_77C]
B               loc_139028
MOV             R9, R1,LSL#2
LDR             R2, [R0,#8]
SUB             R9, R9, #0x20 ; ' '
ORR             R2, R2, R3,LSL R9
STR             R2, [R0,#8]
ADD             R2, R3, #1
CMP             R2, R6
ADD             R1, R1, #1
BEQ             loc_1391FC
LDR             R2, [SP,#0x878+var_76C]
LDR             R9, [SP,#0x878+var_78C]
LDR             R11, [SP,#0x878+var_788]
LDR             R2, [R2]
LDR             R10, [R9,#0x44]
ADD             R9, R9, R2,LSL#2
LDR             R9, [R9,#4]
SUB             R10, R9, R10
CMP             R10, R11
BLS             loc_1391FC
ADD             R11, R2, R2,LSL#1
LDR             R2, [SP,#0x878+var_770]
LDR             R8, [R8,#0xC]
ADD             R2, R2, R11,LSL#3
LDR             R2, [R2,#0xC]
CMP             R8, R2
BNE             loc_1391FC
LDR             R2, [SP,#0x878+var_77C]
CMP             R9, R2
BGE             loc_1391FC
CMP             R1, #0xC
MOVNE           LR, #0
BEQ             loc_1391FC
LDR             R2, [SP,#0x878+var_788]
SUB             R2, R10, R2
SUB             R2, R2, R12
MOV             R2, R2,LSR#2
ANDS            R12, R2, #3
MOVNE           R12, #1
ADD             R8, R12, R2,LSR#2
RSB             R12, R1, #0xC
CMP             R8, R12
BHI             loc_139314
CMP             R2, #0
BEQ             loc_1392E8
LDR             R12, [SP,#0x878+var_864]
TST             R2, #3
ADD             R12, R12, #3
BIC             R12, R12, #3
ADD             R12, R12, R2,LSL#2
STR             R12, [SP,#0x878+var_864]
BEQ             loc_139234
CMP             R1, #8
BCS             loc_139210
LDR             R8, [R0,#4]
AND             R12, R2, #3
MOV             R9, R1,LSL#2
ADD             R12, R12, #0xB
ORR             R12, R8, R12,LSL R9
STR             R12, [R0,#4]
B               loc_13922C
DCD off_6D48F8
DCD dword_6D2418
DCD dword_6D241C
DCD 0xF0065
DCD 0xF0066
DCD 0xF0067
DCD dword_6D45E4
DCD 0x251
DCD 0x10229
DCD 0x10244
DCD 0xF029B
DCD 0xF02A5
DCD 0x2A6
DCD 0xF02CB
DCD 0xF02BF
DCD 0xF02D5
DCD 0x2D6
DCD 0x8042
DCD 0xF0200
DCD 0xF02BB
DCD 0xF02BC
DCD 0xF028B
DCD 0xF028C
LDR             R8, [R0]
LDR             R2, [SP,#0x878+var_790]
MOV             LR, #1
ADD             R10, R8, R2
B               loc_139130
MOV             R12, R1,LSL#2
LDR             R9, [R0,#8]
AND             R8, R2, #3
SUB             R10, R12, #0x20 ; ' '
ADD             R12, R8, #0xB
ORR             R12, R9, R12,LSL R10
STR             R12, [R0,#8]
ADD             R1, R1, #1
BIC             R2, R2, #3
CMN             R2, #0x80000001
MOVHI           R12, #0xF
BLS             loc_139280
CMP             R1, #8
BCS             loc_13925C
LDR             R9, [R0,#4]
MOV             R8, R1,LSL#2
ORR             R8, R9, R12,LSL R8
STR             R8, [R0,#4]
B               loc_139270
MOV             R8, R1,LSL#2
LDR             R9, [R0,#8]
SUB             R8, R8, #0x20 ; ' '
ORR             R8, R9, R12,LSL R8
STR             R8, [R0,#8]
SUBS            R2, R2, #4
ADD             R1, R1, #1
BNE             loc_139240
B               loc_1392E8
MOV             R12, #0xFFFFFFFD
SUB             R2, R12, R2
LDR             R8, [R0,#4]
MOV             R12, R2,ASR#31
ADD             R2, R2, R12,LSR#30
STR             R2, [SP,#0x878+var_820]
MOV             R2, R2,ASR#2
RSB             R12, R2, #0
CMP             R12, #0
BLE             loc_1392E8
LDR             R9, [R0,#8]
MOV             R2, #0
MOV             R11, #0xF
ADD             R10, R1, R2
CMP             R10, #8
MOV             R10, R10,LSL#2
SUBCS           R10, R10, #0x20 ; ' '
ADD             R2, R2, #1
MOV             R10, R11,LSL R10
ORRCC           R8, R8, R10
ORRCS           R9, R9, R10
SUBS            R12, R12, #1
BNE             loc_1392B4
STRD            R8, R9, [R0,#4]
LDR             R2, [SP,#0x878+var_820]
SUB             R1, R1, R2,ASR#2
CMP             LR, #0
BEQ             loc_139360
LDR             R2, [SP,#0x878+var_81C]
LDR             R12, [SP,#0x878+var_864]
ADD             R12, R12, R2
SUB             R2, R2, #1
SUB             R12, R12, #1
BIC             R2, R12, R2
LDR             R12, [SP,#0x878+var_790]
CMP             R2, R12
BEQ             loc_139320
MOV             R0, #0
STRB            R0, [R5,#0x81C]
B               loc_1393E4
LDR             R2, [SP,#0x878+var_790]
LDR             R12, [R0,#8]
MOV             R8, R2,LSL#16
MOV             R2, #1
STR             R2, [SP,#0x878+var_81C]
MOV             R2, #0
STR             R2, [SP,#0x878+var_864]
ORR             R2, R8, R1,LSL#28
ORR             R2, R2, R12
STR             R2, [R0,#8]!
LDR             R2, [R4,#0x93C]
MOV             R1, #0
ADD             R0, R0, #4
ADD             R12, R2, #1
LDR             R2, [SP,#0x878+var_774]
STR             R12, [R2]
LDR             R2, [SP,#0x878+var_76C]
ADD             R3, R3, #1
CMP             R3, R6
BLT             loc_138ED4
LDRB            R0, [R5,#0x81C]
CMP             R0, #0
BEQ             loc_1393E4
CMP             R7, #0
ADDGT           R1, R4, #0x800
MOV             R0, #0
MOVGT           R2, #0x10000
ADDGT           R1, R1, #0x148
BLE             loc_1393B0
ADD             R12, R0, R6
LDR             R3, [R4,#0x948]
ADD             R0, R0, #1
ORR             R3, R3, R2,LSL R12
CMP             R7, R0
STR             R3, [R1]
BGT             loc_139394
CMP             R6, #0
BEQ             loc_1393D0
LDR             R1, [R4,#0x948]
ADD             R2, R6, R7
MOV             R3, #0xF0000000
ADD             R2, R3, R2,LSL#28
ORR             R1, R1, R2
STR             R1, [R4,#0x948]
LDRB            R0, [R5,#0x19]
CMP             R0, #0
LDREQ           R0, [R4,#0x93C]
CMPEQ           R0, #0xC
BEQ             loc_139314
ADD             R0, R6, R7
STR             R6, [R5,#0x820]
LDR             R8, =0x76543210
LDR             R9, =0xFEDCBA98
STR             R0, [R5,#0x824]
LDR             R1, [R4,#0x870]
MOV             R3, #0
ADD             R2, R4, #0x9E0
STR             R3, [R4,#0x9DC]
ADD             R12, R4, #0x800
STM             R2, {R3,R8,R9}
CMP             R6, #0
MOV             R0, R3
ADD             R12, R12, #0x1DC
BGT             loc_13942C
B               loc_139498
CMP             R0, #8
BGE             loc_139454
LDR             R3, [R1]
LDR             R8, [R4,#0x9DC]
MOV             R9, R0,LSL#2
ADD             R3, R3, R3,LSL#1
ADD             R3, R4, R3,LSL#2
LDR             R3, [R3,#0x358]
AND             R3, R3, #0xF
ORR             R3, R8, R3,LSL R9
STR             R3, [R12]
B               loc_13947C
LDR             R3, [R1]
MOV             R9, R0,LSL#2
LDR             R8, [R4,#0x9E0]
SUB             R9, R9, #0x20 ; ' '
ADD             R3, R3, R3,LSL#1
ADD             R3, R4, R3,LSL#2
LDR             R3, [R3,#0x358]
AND             R3, R3, #0xF
ORR             R3, R8, R3,LSL R9
STR             R3, [R2]
LDR             R3, [R1]
ADD             R8, R5, R0,LSL#2
ADD             R0, R0, #1
STR             R3, [R8,#0x828]
LDR             R1, [R1,#4]
CMP             R0, R6
BLT             loc_139424
CMP             R7, #0
MOV             R1, #0
ADDGT           R3, SP, #0x878+var_860
BLE             loc_139518
LDR             R6, [R3,R1,LSL#2]
CMP             R0, #8
BGE             loc_1394D8
ADD             R6, R6, R6,LSL#1
LDR             R8, [R4,#0x9DC]
ADD             R6, R4, R6,LSL#2
MOV             R9, R0,LSL#2
LDR             R6, [R6,#0x358]
AND             R6, R6, #0xF
ORR             R6, R8, R6,LSL R9
STR             R6, [R12]
B               loc_1394FC
MOV             R9, R0,LSL#2
ADD             R10, R6, R6,LSL#1
SUB             R6, R9, #0x20 ; ' '
ADD             R9, R4, R10,LSL#2
LDR             R8, [R4,#0x9E0]
LDR             R9, [R9,#0x358]
AND             R9, R9, #0xF
ORR             R6, R8, R9,LSL R6
STR             R6, [R2]
LDR             R6, [R3,R1,LSL#2]
ADD             R8, R5, R0,LSL#2
ADD             R1, R1, #1
CMP             R1, R7
ADD             R0, R0, #1
STR             R6, [R8,#0x828]
BLT             loc_1394A8
ADD             R2, R4, #0x940
MOV             R1, #0x27 ; '''
MOV             R0, #0x200
BL              sub_1406F0
LDR             R0, =dword_6D2418
LDR             R2, =dword_6D241C
LDR             R12, [R0]
LDR             R1, [R2]
CMP             R12, R1
BCS             loc_139558
LDR             R3, =0xF02BB
LDR             R6, [R4,#0x9DC]
ADD             R7, R12, #8
STR             R3, [R12,#4]
STR             R6, [R12]
STR             R7, [R0]
LDR             R12, [R0]
LDR             R1, [R2]
CMP             R12, R1
BCS             loc_139580
LDR             R3, =0xF02BC
LDR             R6, [R4,#0x9E0]
ADD             R7, R12, #8
STR             R3, [R12,#4]
STR             R6, [R12]
STR             R7, [R0]
LDRB            R1, [R4,#0x424]
CMP             R1, #0
BEQ             loc_1395D8
LDR             R3, [R0]
LDR             R1, [R2]
CMP             R3, R1
BCS             loc_1395B0
LDR             R6, [R4,#0x9E4]
LDR             R12, =0xF028B
ADD             R7, R3, #8
STM             R3, {R6,R12}
STR             R7, [R0]
LDR             R1, [R2]
LDR             R2, [R0]
CMP             R2, R1
BCS             loc_1395D8
LDR             R3, =0xF028C
LDR             R12, [R4,#0x9E8]
ADD             R6, R2, #8
STR             R3, [R2,#4]
STR             R12, [R2]
STR             R6, [R0]
LDRB            R0, [R5,#0x81C]
CMP             R0, #0
BEQ             loc_1396D0
LDR             R0, [SP,#0x878+var_28]
LDR             R1, =0x80C2
LDR             R0, [R0]
TST             R0, R1
BEQ             loc_1396D0
LDR             R0, [R5,#0x824]
LDR             R2, [R5,#0x820]
CMP             R0, R2
BLS             loc_1396D0
LDR             R8, =0xF0232
LDR             R0, =dword_6D2418
ORR             R7, R8, R1,ASR#6
ADD             R11, R8, R1,ASR#14
ADD             LR, R7, R1,ASR#14
LDR             R1, =dword_6D241C
ADD             R12, R5, R2,LSL#2
LDR             R3, [R0]
LDR             R12, [R12,#0x828]
LDR             R6, [R1]
CMP             R3, R6
BCS             loc_139644
STM             R3, {R2,R8}
ADD             R9, R3, #8
STR             R9, [R0]
LDR             R3, [R0]
LDR             R6, [R1]
CMP             R3, R6
BCS             loc_139670
ADD             R9, R12, R12,LSL#1
ADD             R10, R3, #8
ADD             R9, R5, R9,LSL#2
LDR             R9, [R9,#0x398]
STR             R7, [R3,#4]
STR             R9, [R3]
STR             R10, [R0]
LDR             R3, [R0]
LDR             R6, [R1]
CMP             R3, R6
BCS             loc_139698
ADD             R9, R12, R12,LSL#1
ADD             R10, R3, #8
ADD             R9, R5, R9,LSL#2
LDR             R9, [R9,#0x39C]
STM             R3, {R9,R11}
STR             R10, [R0]
LDR             R6, [R1]
LDR             R3, [R0]
CMP             R3, R6
BCS             loc_1396C0
ADD             R6, R12, R12,LSL#1
ADD             R9, R3, #8
ADD             R6, R5, R6,LSL#2
LDR             R6, [R6,#0x3A0]
STM             R3, {R6,LR}
STR             R9, [R0]
LDR             R3, [R5,#0x824]
ADD             R2, R2, #1
CMP             R3, R2
BHI             loc_139620
LDR             R0, [R5,#4]
CMP             R0, #0
BEQ             loc_139914
TST             R0, #0x10
BEQ             loc_139804
LDR             R3, =dword_6D4654
MOV             R7, #0xFFFFFFFF
STR             R7, [R4,#0x1BC]
STR             R7, [R4,#0x1B8]
STR             R7, [R4,#0x1B4]
LDR             R1, [R3]
MOV             R0, #0
CMP             R1, #0xBD
BEQ             loc_139770
SUB             R1, R3, #0x70 ; 'p'
ADD             R12, R4, #0x400
LDR             R6, [R1,#(dword_6D45EC - 0x6D45E4)]
MOV             R1, #1
ADD             R12, R12, #0x26 ; '&'
LDR             R2, [R3,R0,LSL#2]
LDRB            R8, [R2,R12]
CMP             R8, #0
BEQ             loc_139760
ADD             R8, R4, R2,LSL#2
ADD             R9, R6, R2,LSL#2
LDR             R2, [R8,#0x4E4]
LDR             R8, =0x100C
MVN             R2, R2
STR             R2, [R8,R9]
LDR             R2, [R3,R0,LSL#2]
AND             R9, R2, #0x1F
MOV             R8, R2,ASR#5
ADD             R2, R4, R8,LSL#2
LDR             R10, [R2,#0x7D8]
ORR             R8, R10, R1,LSL R9
STR             R8, [R2,#0x7D8]
ADD             R0, R0, #1
LDR             R2, [R3,R0,LSL#2]
CMP             R2, #0xBD
BNE             loc_13971C
LDRB            R0, [R4,#0x424]
CMP             R0, #0
BEQ             loc_139804
LDR             R3, =dword_6D466C
STR             R7, [R4,#0x350]
STR             R7, [R4,#0x34C]
STR             R7, [R4,#0x348]
LDR             R0, [R3]
MOV             R1, #0
CMP             R0, #0xBD
BEQ             loc_139804
SUB             R0, R3, #0x88
ADD             R2, R4, #0x400
LDR             R12, [R0,#(dword_6D45EC - 0x6D45E4)]
MOV             R6, #1
ADD             R2, R2, #0x26 ; '&'
LDR             R0, [R3,R1,LSL#2]
LDRB            R7, [R0,R2]
CMP             R7, #0
BEQ             loc_1397F4
ADD             R7, R4, R0,LSL#2
ADD             R8, R12, R0,LSL#2
LDR             R0, [R7,#0x4E4]
LDR             R7, =0x100C
MVN             R0, R0
STR             R0, [R7,R8]
LDR             R0, [R3,R1,LSL#2]
AND             R7, R0, #0x1F
MOV             R8, R0,ASR#5
ADD             R0, R4, R8,LSL#2
LDR             R8, [R0,#0x7D8]
ORR             R7, R8, R6,LSL R7
STR             R7, [R0,#0x7D8]
ADD             R1, R1, #1
LDR             R0, [R3,R1,LSL#2]
CMP             R0, #0xBD
BNE             loc_1397B0
LDR             R0, [R5,#4]
TST             R0, #0x20
BEQ             loc_13988C
LDR             R2, =dword_6D4684
MOV             R0, #0
LDR             R1, [R2]
CMP             R1, #0xBD
BEQ             loc_13988C
SUB             R1, R2, #0xA0
MOV             R12, #1
LDR             R3, [R1,#(dword_6D45EC - 0x6D45E4)]
ADD             R1, R4, #0x400
ADD             R1, R1, #0x26 ; '&'
LDR             R6, [R2,R0,LSL#2]
LDRB            R7, [R6,R1]
CMP             R7, #0
BEQ             loc_13987C
ADD             R7, R4, R6,LSL#2
ADD             R8, R3, R6,LSL#2
LDR             R6, [R7,#0x4E4]
LDR             R7, =0x100C
MVN             R6, R6
STR             R6, [R7,R8]
LDR             R6, [R2,R0,LSL#2]
AND             R7, R6, #0x1F
MOV             R8, R6,ASR#5
ADD             R6, R4, R8,LSL#2
LDR             R8, [R6,#0x7D8]
ORR             R7, R8, R12,LSL R7
STR             R7, [R6,#0x7D8]
ADD             R0, R0, #1
LDR             R6, [R2,R0,LSL#2]
CMP             R6, #0xBD
BNE             loc_139838
LDR             R0, [R5,#4]
TST             R0, #2
BEQ             loc_139914
LDR             R12, =dword_6D45F4
MOV             R0, #0
LDR             R1, [R12]
CMP             R1, #0xBD
BEQ             loc_139914
SUB             R1, R12, #0x10
ADD             R3, R4, #0x400
LDR             R2, [R1,#(dword_6D45EC - 0x6D45E4)]
MOV             R7, #1
ADD             R3, R3, #0x26 ; '&'
LDR             R1, [R12,R0,LSL#2]
LDRB            R6, [R1,R3]
CMP             R6, #0
BEQ             loc_139904
ADD             R6, R4, R1,LSL#2
ADD             R8, R2, R1,LSL#2
LDR             R1, [R6,#0x4E4]
LDR             R6, =0x100C
MVN             R1, R1
STR             R1, [R6,R8]
LDR             R1, [R12,R0,LSL#2]
AND             R6, R1, #0x1F
MOV             R8, R1,ASR#5
ADD             R1, R4, R8,LSL#2
LDR             R8, [R1,#0x7D8]
ORR             R6, R8, R7,LSL R6
STR             R6, [R1,#0x7D8]
ADD             R0, R0, #1
LDR             R1, [R12,R0,LSL#2]
CMP             R1, #0xBD
BNE             loc_1398C0
LDR             R0, [R5,#8]
TST             R0, #0x10
BNE             loc_139C78
LDR             R0, [R4,#0x1B4]
CMP             R0, #0
LDREQ           R0, [R4,#0x1B8]
CMPEQ           R0, #0
BNE             loc_13995C
LDR             R0, [R4,#0x1BC]
CMP             R0, #0
LDREQ           R0, [R4,#0x348]
CMPEQ           R0, #0
BNE             loc_13995C
LDR             R0, [R4,#0x34C]
CMP             R0, #0
LDREQ           R0, [R4,#0x350]
CMPEQ           R0, #0
BEQ             loc_139C78
LDR             R9, [R4,#0x1C0]
CMP             R9, #0
BEQ             loc_139ADC
LDR             R0, [R4,#0x348]
CMP             R0, #0
LDREQ           R1, [R4,#0x34C]
CMPEQ           R1, #0
LDREQ           R1, [R4,#0x350]
CMPEQ           R1, #0
BEQ             loc_139ADC
MOV             R2, #0
TST             R0, #1
MOV             R8, #1
MOV             R10, R2
MOV             R12, R2
MOV             R6, R2
BNE             loc_1399D8
MOV             R0, R6,LSR#5
AND             R1, R6, #0x1F
ADD             R0, R4, R0,LSL#2
LDR             R0, [R0,#0x348]
MOVS            R0, R0,LSR R1
BICEQ           R0, R6, #0x1F
ADDEQ           R6, R0, #0x20 ; ' '
ADDNE           R6, R6, #1
MOV             R0, R6,LSR#5
ADD             R1, R4, R0,LSL#2
AND             R0, R6, #0x1F
LDR             R1, [R1,#0x348]
TST             R1, R8,LSL R0
BEQ             loc_1399A0
LDR             R0, [R4,#0x344]
CMP             R0, R6
BLS             loc_139ADC
ADD             R0, R4, R6,LSL#2
CMP             R2, #0
LDR             R7, [R0,#0x1C4]
BEQ             loc_139A44
SUB             R0, R7, R10
CMP             R0, R12
ADDEQ           R12, R12, #1
BEQ             loc_139A50
LDR             R0, =dword_6D241C
LDR             R3, =dword_6D2418
LDR             R1, [R0]
LDR             R0, [R3]
CMP             R0, R1
BCS             loc_139A38
MOV             LR, R3
LDR             R3, =0xF0290
ORR             R11, R10, #0x80000000
ADD             R10, R0, #8
STR             R3, [R0,#4]
STR             R11, [R0]
STR             R10, [LR]
LDR             R0, =0x291
MOV             R1, R12,LSL#2
BL              sub_1378C8
MOV             R10, R7
MOV             R12, #1
ADD             R2, R9, R6,LSL#4
LDR             R3, [R4,#0x344]
ADD             R6, R6, #1
AND             R1, R6, #0x1F
MOV             R0, R6,LSR#5
ADD             R0, R4, R0,LSL#2
LDR             R0, [R0,#0x348]
TST             R0, R8,LSL R1
BNE             loc_139A90
B               loc_139A88
MOVS            R0, R0,LSR R1
BICEQ           R0, R6, #0x1F
ADDEQ           R6, R0, #0x20 ; ' '
ADDNE           R6, R6, #1
B               loc_139A58
CMP             R3, R6
BHI             loc_139A74
CMP             R3, R6
BHI             loc_1399E4
CMP             R2, #0
BEQ             loc_139ADC
LDR             R6, =dword_6D2418
LDR             R0, =dword_6D241C
LDR             R1, [R6]
LDR             R0, [R0]
CMP             R1, R0
BCS             loc_139AD0
LDR             R0, =0xF0290
ORR             R8, R10, #0x80000000
ADD             R7, R1, #8
STR             R0, [R1,#4]
STR             R8, [R1]
STR             R7, [R6]
LDR             R0, =0x291
MOV             R1, R12,LSL#2
BL              sub_1378C8
LDR             R9, [R4,#0x2C]
CMP             R9, #0
BEQ             loc_139C5C
LDR             R0, [R4,#0x1B4]
CMP             R0, #0
LDREQ           R1, [R4,#0x1B8]
CMPEQ           R1, #0
LDREQ           R1, [R4,#0x1BC]
CMPEQ           R1, #0
BEQ             loc_139C5C
MOV             R2, #0
TST             R0, #1
MOV             R8, #1
MOV             R10, R2
MOV             R12, R2
MOV             R6, R2
BNE             loc_139B58
MOV             R0, R6,LSR#5
AND             R1, R6, #0x1F
ADD             R0, R4, R0,LSL#2
LDR             R0, [R0,#0x1B4]
MOVS            R0, R0,LSR R1
BICEQ           R0, R6, #0x1F
ADDEQ           R6, R0, #0x20 ; ' '
ADDNE           R6, R6, #1
AND             R1, R6, #0x1F
MOV             R0, R6,LSR#5
ADD             R0, R4, R0,LSL#2
LDR             R0, [R0,#0x1B4]
TST             R0, R8,LSL R1
BEQ             loc_139B20
LDR             R0, [R4,#0x1B0]
CMP             R0, R6
BLS             loc_139C5C
ADD             R0, R4, R6,LSL#2
CMP             R2, #0
LDR             R7, [R0,#0x30]
BEQ             loc_139BC4
SUB             R0, R7, R10
CMP             R0, R12
ADDEQ           R12, R12, #1
BEQ             loc_139BD0
LDR             R0, =dword_6D241C
LDR             R3, =dword_6D2418
LDR             R1, [R0]
LDR             R0, [R3]
CMP             R0, R1
BCS             loc_139BB8
MOV             LR, R3
LDR             R3, =0xF02C0
ORR             R11, R10, #0x80000000
ADD             R10, R0, #8
STR             R3, [R0,#4]
STR             R11, [R0]
STR             R10, [LR]
LDR             R0, =0x2C1
MOV             R1, R12,LSL#2
BL              sub_1378C8
MOV             R10, R7
MOV             R12, #1
ADD             R2, R9, R6,LSL#4
LDR             R3, [R4,#0x1B0]
ADD             R6, R6, #1
MOV             R0, R6,LSR#5
ADD             R1, R4, R0,LSL#2
AND             R0, R6, #0x1F
LDR             R1, [R1,#0x1B4]
TST             R1, R8,LSL R0
BNE             loc_139C10
B               loc_139C08
MOVS            R0, R1,LSR R0
BICEQ           R0, R6, #0x1F
ADDEQ           R6, R0, #0x20 ; ' '
ADDNE           R6, R6, #1
B               loc_139BD8
CMP             R3, R6
BHI             loc_139BF4
CMP             R3, R6
BHI             loc_139B64
CMP             R2, #0
BEQ             loc_139C5C
LDR             R6, =dword_6D2418
LDR             R0, =dword_6D241C
LDR             R3, [R6]
LDR             R0, [R0]
CMP             R3, R0
BCS             loc_139C50
LDR             R1, =0xF02C0
ORR             R8, R10, #0x80000000
ADD             R7, R3, #8
STR             R1, [R3,#4]
STR             R8, [R3]
STR             R7, [R6]
LDR             R0, =0x2C1
MOV             R1, R12,LSL#2
BL              sub_1378C8
MOV             R0, #0
STR             R0, [R4,#0x1B4]
STR             R0, [R4,#0x1B8]
STR             R0, [R4,#0x1BC]
STR             R0, [R4,#0x348]
STR             R0, [R4,#0x34C]
STR             R0, [R4,#0x350]
LDR             R0, [SP,#0x878+var_28]
VLDR            S17, =0.0
LDR             R0, [R0]
TST             R0, #4
BEQ             loc_139E1C
LDR             R0, [R5,#8]
TST             R0, #0x400
BNE             loc_139E1C
ADD             R0, R4, #0xC00
VLDR            S1, [R0,#0x24C]
VCMP.F32        S1, S17
VMRS            APSR_nzcv, FPSCR
ADDEQ           R0, R5, #0x4C ; 'L'
VNEGNE.F32      S1, S1
VLDMEQ          R0, {S0-S1}
VMOVNE.F32      S0, S17
LDRB            R0, [R5,#0x54]
VSUBEQ.F32      S1, S0, S1
CMP             R0, #0
VLDRNE          S2, [R5,#0x44]
VCMPNE.F32      S2, S17
VMRSNE          APSR_nzcv, FPSCR
BEQ             loc_139CE8
LDR             R0, [R5,#0x68C]
CMP             R0, #0
VLDRNE          S3, =5.9605e-8
VLDREQ          S3, =0.000015259
VMLA.F32        S0, S2, S3
VMOV            R0, S1
BICS            R1, R0, #0x80000000
BEQ             loc_139D00
MOV             R1, R0,LSL#1
MOV             R1, R1,LSR#24
SUB             R1, R1, #0x40 ; '@'
MOV             R2, R0,LSL#9
CMP             R1, #0
MOV             R2, R2,LSR#16
MOV             R0, R0,LSR#31
VCMP.F32        S0, S17
ORRGE           R1, R2, R1,LSL#16
ORRGE           R0, R1, R0,LSL#23
MOVLT           R0, R0,LSL#23
VMRS            APSR_nzcv, FPSCR
MOVEQ           R1, #0
BEQ             loc_139D60
VMOV            R1, S0
BICS            R2, R1, #0x80000000
BEQ             loc_139D44
MOV             R2, R1,LSL#1
MOV             R2, R2,LSR#24
SUB             R2, R2, #0x40 ; '@'
MOV             R3, R1,LSL#9
CMP             R2, #0
MOV             R3, R3,LSR#16
MOV             R1, R1,LSR#31
ORRGE           R2, R3, R2,LSL#16
ORRGE           R1, R2, R1,LSL#23
MOVLT           R1, R1,LSL#23
LDRB            R3, [R4,#0x43D]
ORR             R3, R3, #0xF
STRB            R3, [R4,#0x43D]
LDRB            R2, [R5,#0xC]
CMP             R2, #0
BEQ             loc_139DA4
STR             R0, [R4,#0x540]
LDR             R3, [R4,#0x7D8]
MOV             R2, R0
LDR             R0, =dword_6D45E4
ORR             R3, R3, #0x800000
STR             R3, [R4,#0x7D8]
MVN             R2, R2
LDR             R0, [R0,#(dword_6D45EC - 0x6D45E4)]
ADD             R0, R0, #0x1000
STR             R2, [R0,#0x68]
B               loc_139DC0
LDR             R2, [R4,#0x540]
CMP             R2, R0
BEQ             loc_139DC0
STR             R0, [R4,#0x540]
LDR             R2, [R4,#0x7D8]
ORR             R2, R2, #0x800000
STR             R2, [R4,#0x7D8]
LDRB            R2, [R4,#0x43E]
ORR             R2, R2, #0xF
STRB            R2, [R4,#0x43E]
LDRB            R0, [R5,#0xC]
CMP             R0, #0
BEQ             loc_139E00
STR             R1, [R4,#0x544]
LDR             R2, [R4,#0x7D8]
LDR             R0, =dword_6D45E4
MVN             R1, R1
ORR             R2, R2, #0x1000000
STR             R2, [R4,#0x7D8]
LDR             R0, [R0,#(dword_6D45EC - 0x6D45E4)]
ADD             R0, R0, #0x1000
STR             R1, [R0,#0x6C]
B               loc_139E1C
LDR             R0, [R4,#0x544]
CMP             R0, R1
BEQ             loc_139E1C
STR             R1, [R4,#0x544]
LDR             R1, [R4,#0x7D8]
ORR             R1, R1, #0x1000000
STR             R1, [R4,#0x7D8]
LDR             R1, [R4,#0x624]
MOV             R0, #7
BICS            R0, R0, R1
BNE             loc_139E80
LDRB            R0, [R4,#0xE74]
CMP             R0, #0
LDR             R0, =dword_6D45E4
BEQ             loc_139E5C
LDR             R1, [R4,#0x630]
LDR             R2, [R0,#(dword_6D45EC - 0x6D45E4)]
ADD             R0, R4, #0x7E0
ADD             R2, R2, #0x1000
STR             R1, [R2,#0x158]
LDR             R1, [R4,#0x7E0]
BIC             R1, R1, #0x80000
B               loc_139E7C
LDR             R1, [R0,#(dword_6D45EC - 0x6D45E4)]
LDR             R0, [R4,#0x630]
ADD             R1, R1, #0x1000
MVN             R0, R0
STR             R0, [R1,#0x158]
LDR             R1, [R4,#0x7E0]
ADD             R0, R4, #0x7E0
ORR             R1, R1, #0x80000
STR             R1, [R0]
LDR             R0, [R5,#8]
MOV             R6, #0
MOV             R7, R6
CMP             R0, #0
STR             R6, [SP,#0x878+var_868]
STR             R6, [SP,#0x878+var_860]
BEQ             loc_139F34
TST             R0, #0x20
LDRNE           R3, =dword_70D334
MOVNE           R0, #0
BEQ             loc_139ECC
ADD             R1, R4, R0,LSL#2
LDR             R2, [R3,R0,LSL#2]
LDR             R12, [R1,#0x7D8]
ADD             R0, R0, #1
CMP             R0, #6
BIC             R2, R12, R2
STR             R2, [R1,#0x7D8]
BLT             loc_139EAC
LDR             R0, [R5,#8]
TST             R0, #2
LDRNE           R2, =dword_70D304
MOVNE           R0, #0
BEQ             loc_139F00
ADD             R1, R4, R0,LSL#2
LDR             R3, [R2,R0,LSL#2]
LDR             R12, [R1,#0x7D8]
ADD             R0, R0, #1
CMP             R0, #6
BIC             R3, R12, R3
STR             R3, [R1,#0x7D8]
BLT             loc_139EE0
LDR             R0, [R5,#8]
TST             R0, #0x10
LDRNE           R2, =dword_70D31C
MOVNE           R0, #0
BEQ             loc_139F34
ADD             R1, R4, R0,LSL#2
LDR             R12, [R2,R0,LSL#2]
LDR             R3, [R1,#0x7D8]
ADD             R0, R0, #1
CMP             R0, #6
BIC             R3, R3, R12
STR             R3, [R1,#0x7D8]
BLT             loc_139F14
LDR             R0, [R4,#0x590]
TST             R0, #1
BEQ             loc_13A058
LDR             R0, [R5,#8]
ANDS            R0, R0, #0x20 ; ' '
BNE             loc_13A058
RSB             R1, R0, R0,LSL#3
ADD             R1, R4, R1,LSL#4
LDRB            R1, [R1,#0xA20]
CMP             R1, #0
BNE             loc_139F6C
ADD             R0, R0, #1
CMP             R0, #8
BLT             loc_139F4C
CMP             R0, #8
BNE             loc_13A058
LDR             R1, [R4,#0x7E0]
LDR             R8, =dword_6D45E4
BIC             R1, R1, #0xF0000000
STR             R1, [R4,#0x7E0]
LDR             R0, [R8,#(dword_6D45EC - 0x6D45E4)]
MOV             R1, #0
MOV             R2, R1
ADD             R0, R0, #0x1000
STR             R1, [R0,#0x17C]
STR             R1, [R0,#0x180]
STR             R1, [R0,#0x184]
STR             R1, [R0,#0x188]
MOV             R1, #4
MOV             R0, #0x140
BL              sub_137800
LDR             R0, [R4,#0x7BC]
MOV             R1, #1
STR             R1, [SP,#0x878+var_778]
TST             R0, #0xF0
BEQ             loc_13A058
LDR             R2, [R4,#0x7EC]
BIC             R2, R2, #0x400000
STR             R2, [R4,#0x7EC]
LDR             R1, [R8,#(dword_6D45EC - 0x6D45E4)]
BIC             R2, R0, #0xF0
ADD             R0, R1, #0x1000
LDR             R1, =dword_6D2418
STR             R2, [R0,#0x2E4]
LDR             R0, =dword_6D241C
B               loc_13A038
DCD 0x76543210
DCD 0xFEDCBA98
DCD 0x80C2
DCD 0xF0232
DCD dword_6D4654
DCD 0x100C
DCD dword_6D466C
DCD dword_6D4684
DCD dword_6D45F4
DCD 0xF0290
DCD 0x291
DCD 0xF02C0
DCD 0x2C1
DCFS 0.0
DCFS 5.9605e-8
DCFS 0.000015259
DCD dword_70D334
DCD dword_70D304
DCD dword_70D31C
LDR             R3, [R1]
LDR             R0, [R0]
CMP             R0, R3
BLS             loc_13A058
LDR             R12, =0xF01C3
ADD             R8, R3, #8
STM             R3, {R2,R12}
STR             R8, [R1]
MOV             R0, #0
ADD             R1, R4, R0,LSL#2
LDR             R1, [R1,#0x7D8]
CMP             R1, #0
BEQ             loc_13A088
MOV             R0, #0
MOV             R2, #1
TST             R1, R2,LSL R0
ADDEQ           R0, R0, #1
BEQ             loc_13A074
ADD             R6, R6, R0
B               loc_13A098
ADD             R0, R0, #1
CMP             R0, #5
ADD             R6, R6, #0x20 ; ' '
BLE             loc_13A05C
CMP             R6, #0xBD
BCS             loc_13A280
ADD             R0, R4, R6
LDR             R1, =dword_6D45E4
LDRB            R8, [R0,#0x426]
LDR             R0, =unk_70D010
ADD             R2, R4, R6,LSL#2
LDR             R1, [R1,#(dword_6D45EC - 0x6D45E4)]
ADD             R11, R2, #0x400
LDR             R9, [R0,R6,LSL#2]
ADD             R0, R1, R6,LSL#2
ADD             R10, R0, #0x1000
CMP             R8, #0
ADD             R11, R11, #0xE4
ADD             R10, R10, #0xC
BEQ             loc_13A190
LDR             R1, [R11]
LDR             R0, [R10]
CMP             R1, R0
BEQ             loc_13A190
CMP             R8, #0xF
BEQ             loc_13A144
CMP             R7, #0
BEQ             loc_13A10C
LDR             R0, [SP,#0x878+var_868]
LDR             R1, [SP,#0x878+var_860]
MOV             R2, R7
BL              sub_1406F0
MOV             R7, #0
LDR             R2, =dword_6D2418
LDR             R0, =dword_6D241C
LDR             R1, [R2]
LDR             R0, [R0]
CMP             R1, R0
BCS             loc_13A184
LDR             R3, [R11]
MOV             LR, R2
ORR             R2, R9, R8,LSL#16
STR             R2, [R1,#4]
ADD             R12, R1, #8
STR             R3, [R1]
STR             R12, [LR]
B               loc_13A184
CMP             R7, #0
BEQ             loc_13A174
LDR             R0, [SP,#0x878+var_868]
SUB             R1, R9, R0
LDR             R0, [SP,#0x878+var_860]
CMP             R1, R0
ADDEQ           R0, R0, #1
BEQ             loc_13A180
MOV             R1, R0
LDR             R0, [SP,#0x878+var_868]
MOV             R2, R7
BL              sub_1406F0
MOV             R7, R11
MOV             R0, #1
STR             R9, [SP,#0x878+var_868]
STR             R0, [SP,#0x878+var_860]
LDR             R0, [R11]
STR             R0, [R10]
B               loc_13A1AC
CMP             R7, #0
BEQ             loc_13A1AC
LDR             R0, [SP,#0x878+var_868]
LDR             R1, [SP,#0x878+var_860]
MOV             R2, R7
BL              sub_1406F0
MOV             R7, #0
ADD             R6, R6, #1
CMP             R6, #0xBD
BCS             loc_13A24C
MOV             R1, R6,LSR#5
AND             R0, R6, #0x1F
ADD             R1, R4, R1,LSL#2
LDR             R1, [R1,#0x7D8]
MOVS            R0, R1,LSR R0
MOVNE           R0, #1
BEQ             loc_13A1F4
MOV             R1, R6,LSR#5
AND             R2, R6, #0x1F
ADD             R1, R4, R1,LSL#2
LDR             R3, [R1,#0x7D8]
TST             R3, R0,LSL R2
ADDEQ           R6, R6, #1
BEQ             loc_13A1D4
B               loc_13A244
BIC             R0, R6, #0x1F
ADD             R6, R0, #0x20 ; ' '
MOV             R0, R6,LSR#5
CMP             R0, #5
BGT             loc_13A244
ADD             R1, R4, R0,LSL#2
LDR             R1, [R1,#0x7D8]
CMP             R1, #0
BEQ             loc_13A234
MOV             R0, #0
MOV             R2, #1
TST             R1, R2,LSL R0
ADDEQ           R0, R0, #1
BEQ             loc_13A220
ADD             R6, R6, R0
B               loc_13A244
ADD             R0, R0, #1
CMP             R0, #5
ADD             R6, R6, #0x20 ; ' '
BLE             loc_13A208
CMP             R6, #0xBD
BCC             loc_13A0A0
CMP             R7, #0
BEQ             loc_13A264
LDR             R0, [SP,#0x878+var_868]
LDR             R1, [SP,#0x878+var_860]
MOV             R2, R7
BL              sub_1406F0
MOV             R0, #0
MOV             R1, R0
ADD             R2, R4, R0,LSL#2
ADD             R0, R0, #1
CMP             R0, #6
STR             R1, [R2,#0x7D8]
BLT             loc_13A26C
LDR             R0, [SP,#0x878+var_778]
CMP             R0, #0
BEQ             loc_13A2B0
LDR             R0, [R4,#0x7E0]
ORR             R0, R0, #0xF0000000
STR             R0, [R4,#0x7E0]
LDR             R0, [R4,#0x7BC]
TST             R0, #0xF0
BEQ             loc_13A2B0
LDR             R1, [R4,#0x7EC]
ORR             R1, R1, #0x400000
STR             R1, [R4,#0x7EC]
LDR             R0, [R5,#8]
TST             R0, #0x40
BNE             loc_13B8A0
LDR             R0, [R4,#0x590]
VLDR            S21, =4096.0
VLDR            S20, =2048.0
TST             R0, #1
BEQ             loc_13AA00
LDR             R0, [SP,#0x878+var_28]
LDR             R1, =0x4008
LDR             R0, [R0]
TST             R0, R1
BEQ             loc_13AA00
LDR             R9, =0xF01C5
LDR             R10, =0xFFF
LDR             R8, =0x45800000
VLDR            S22, =2047.0
MOV             R7, #0
LDR             R0, [R4,#0xA0C]
MOV             R0, R0,LSR R7
TST             R0, #1
BEQ             loc_13A548
LDR             R0, =unk_69A270
LDR             R1, [R4,#0x7C0]
LDR             R0, [R0,R7,LSL#2]
MOV             R0, R1,LSR R0
TST             R0, #1
BNE             loc_13A548
ADD             R0, R4, R7,LSL#2
LDR             R0, [R0,#0x9F4]
CMN             R0, #1
BEQ             loc_13A554
ADD             R1, R5, R0,LSL#2
LDR             R11, [R1,#0x74]
CMP             R11, #0
BEQ             loc_13A554
BL              sub_13BC04
MOVS            R6, R0
NOP
BEQ             loc_13A554
ADD             R0, R5, R7,LSL#2
STR             R0, [SP,#0x878+var_878]
LDR             R0, [R0,#0x10C]
CMP             R0, R11
LDR             R0, [SP,#0x878+var_878]
LDR             R0, [R0,#0x190]
BNE             loc_13A3D8
CMP             R0, #0
BEQ             loc_13A548
LDR             R2, =dword_6D2418
LDR             R0, =dword_6D241C
LDR             R1, [R2]
LDR             R0, [R0]
CMP             R1, R0
BCS             loc_13A3AC
LDR             R0, =unk_69A288
LDR             R12, [R0,R7,LSL#2]
LDR             R0, [SP,#0x878+var_878]
LDR             R3, [R0,#0x214]
ORR             R3, R3, R12,LSL#8
STM             R1, {R3,R9}
ADD             R12, R1, #8
STR             R12, [R2]
LDR             R0, [SP,#0x878+var_878]
LDR             R2, [R6,#0x804]
LDR             R1, [R0,#0x190]!
LDR             R3, [R0,#0x84]
MOV             R0, #0x1C8
ADD             R2, R2, R3,LSL#2
BL              sub_1378C8
LDR             R1, [SP,#0x878+var_878]
MOV             R0, #0
STR             R0, [R1,#0x190]
B               loc_13A548
CMP             R0, #0
BEQ             loc_13A3EC
LDR             R1, [SP,#0x878+var_878]
MOV             R0, #0
STR             R0, [R1,#0x190]
LDR             R0, [SP,#0x878+var_878]
STR             R11, [R0,#0x10C]
ADD             R0, R6, #0x800
ADD             R0, R0, #0x1C
STR             R0, [SP,#0x878+var_85C]
LDR             R0, [R6,#0x81C]
TST             R0, #1
BEQ             loc_13A4FC
LDR             R0, [R6,#0x804]
CMP             R0, #0
BNE             loc_13A444
LDR             R0, =off_6D2428
LDR             R12, [R0]
CMP             R12, #0
MOVEQ           R0, #0
BEQ             loc_13A440
MOV             R3, #0x400
MOV             R2, #0
MOV             R1, #0x100
MOV             R0, #0x10000
BLX             R12
STR             R0, [R6,#0x804]
MOV             R1, #0
MOV             R12, R10
MOV             R3, #0xFF
ADD             R2, R6, R1,LSL#2
VLDR            S0, [R2,#4]
VMOV            R0, S0
VCMPE.F32       S0, S17
VMRS            APSR_nzcv, FPSCR
BLS             loc_13A474
MOV             R0, R0,LSL#1
CMP             R3, R0,LSR#24
BNE             loc_13A5C8
MOV             R0, #0
LDR             R11, [R6,#0x804]
ADD             R2, R2, #0x400
STR             R0, [R11,R1,LSL#2]
VLDR            S0, [R2,#4]
VMOV            R2, S0
VCMP.F32        S0, S17
VMRS            APSR_nzcv, FPSCR
MOVNE           R2, R2,LSL#1
CMPNE           R3, R2,LSR#24
MOVEQ           R2, #0
BEQ             loc_13A4D4
VMUL.F32        S16, S0, S20
VCMPE.F32       S16, S17
VMRS            APSR_nzcv, FPSCR
VNEGCC.F32      S16, S16
MOVCC           R2, #0x800
MOVCS           R2, #0
VMOV            R11, S16
CMP             R11, #0x45000000
VMOVGE.F32      S16, S22
VCVT.U32.F32    S0, S16
VMOV            R11, S0
ORR             R2, R2, R11
ORR             R0, R0, R2,LSL#12
LDR             R2, [R6,#0x804]
STR             R0, [R2,R1,LSL#2]
ADD             R1, R1, #1
CMP             R1, #0x100
BLT             loc_13A450
LDR             R0, [R6,#0x81C]
BIC             R1, R0, #1
LDR             R0, [SP,#0x878+var_85C]
STR             R1, [R0]
LDR             R0, =dword_6D241C
LDR             R2, =dword_6D2418
LDR             R1, [R0]
LDR             R0, [R2]
CMP             R0, R1
BCS             loc_13A530
LDR             R1, =unk_69A288
LDR             R3, [R1,R7,LSL#2]
STR             R9, [R0,#4]
MOV             R12, R3,LSL#8
ADD             R3, R0, #8
STR             R12, [R0]
STR             R3, [R2]
LDR             R2, [R6,#0x804]
MOV             R1, #0x100
MOV             R0, #0x1C8
BL              sub_1378C8
MOV             R0, #1
STR             R0, [SP,#0x878+var_60]
ADD             R7, R7, #1
CMP             R7, #6
BLT             loc_13A2F8
MOV             R7, #0
RSB             R0, R7, R7,LSL#3
ADD             R8, R4, R0,LSL#4
LDRB            R0, [R8,#0xA20]
CMP             R0, #0
BEQ             loc_13A9F4
LDR             R0, [R4,#0xA0C]
MOVS            R0, R0,LSL#25
BPL             loc_13A7D0
LDR             R0, [R4,#0x7C0]
ADD             R1, R7, #8
MOV             R0, R0,LSR R1
TST             R0, #1
BNE             loc_13A7D0
B               loc_13A5E4
DCD 0xF01C3
DCD unk_70D010
DCFS 4096.0
DCFS 2048.0
DCD 0x4008
DCFS 2047.0
DCD 0xF01C5
DCD 0xFFF
DCD 0x45800000
DCD unk_69A270
DCD dword_6D2418
DCD dword_6D241C
DCD unk_69A288
DCD off_6D2428
VMUL.F32        S0, S0, S21
VMOV            R0, S0
CMP             R8, R0
VCVTGT.U32.F32  S0, S0
MOVLE           R0, R12
VMOVGT          R0, S0
B               loc_13A478
LDR             R0, [R8,#0xA80]
ADD             R1, R5, R0,LSL#2
LDR             R10, [R1,#0x74]
BL              sub_13BC04
ADD             R9, R5, R7,LSL#2
MOV             R6, R0
LDR             R0, [R9,#0x124]
CMP             R0, R10
LDR             R0, [R9,#0x1A8]
BNE             loc_13A670
CMP             R0, #0
BEQ             loc_13A7D0
LDR             R0, =dword_6D241C
LDR             R1, =dword_6D2418
LDR             R2, [R0]
LDR             R0, [R1]
CMP             R0, R2
BCS             loc_13A64C
LDR             R3, [R9,#0x22C]
MOV             R12, R7,LSL#8
LDR             R10, =0xF01C5
ADD             R11, R12, #0x800
ORR             R3, R3, R11
STM             R0, {R3,R10}
ADD             R12, R0, #8
STR             R12, [R1]
LDR             R2, [R9,#0x22C]
LDR             R0, [R6,#0x804]
LDR             R1, [R9,#0x1A8]
ADD             R2, R0, R2,LSL#2
MOV             R0, #0x1C8
BL              sub_1378C8
MOV             R0, #0
STR             R0, [R9,#0x1A8]
B               loc_13A7D0
CMP             R0, #0
MOVNE           R0, #0
STRNE           R0, [R9,#0x1A8]
STR             R10, [R9,#0x124]
LDR             R0, [R6,#0x81C]
ADD             R10, R6, #0x800
ADD             R10, R10, #0x1C
TST             R0, #1
BEQ             loc_13A784
LDR             R0, [R6,#0x804]
CMP             R0, #0
BNE             loc_13A6CC
LDR             R0, =off_6D2428
LDR             R12, [R0]
CMP             R12, #0
MOVEQ           R0, #0
BEQ             loc_13A6C8
MOV             R3, #0x400
MOV             R2, #0
MOV             R1, #0x100
MOV             R0, #0x10000
BLX             R12
STR             R0, [R6,#0x804]
LDR             R9, =0xFFF
LDR             R12, =0x45800000
MOV             R1, #0
MOV             R3, #0xFF
ADD             R2, R6, R1,LSL#2
VLDR            S0, [R2,#4]
VMOV            R0, S0
VCMPE.F32       S0, S17
VMRS            APSR_nzcv, FPSCR
BLS             loc_13A700
MOV             R0, R0,LSL#1
CMP             R3, R0,LSR#24
BNE             loc_13A7E8
MOV             R0, #0
LDR             R11, [R6,#0x804]
ADD             R2, R2, #0x400
STR             R0, [R11,R1,LSL#2]
VLDR            S0, [R2,#4]
VMOV            R2, S0
VCMP.F32        S0, S17
VMRS            APSR_nzcv, FPSCR
MOVNE           R2, R2,LSL#1
CMPNE           R3, R2,LSR#24
MOVEQ           R2, #0
BEQ             loc_13A760
VMUL.F32        S18, S0, S20
VCMPE.F32       S18, S17
VMRS            APSR_nzcv, FPSCR
VNEGCC.F32      S18, S18
MOVCC           R2, #0x800
MOVCS           R2, #0
VMOV            R11, S18
CMP             R11, #0x45000000
VMOVGE.F32      S18, S22
VCVT.U32.F32    S0, S18
VMOV            R11, S0
ORR             R2, R2, R11
ORR             R2, R0, R2,LSL#12
LDR             R0, [R6,#0x804]
STR             R2, [R0,R1,LSL#2]
ADD             R1, R1, #1
CMP             R1, #0x100
BLT             loc_13A6DC
LDR             R0, [R6,#0x81C]
BIC             R0, R0, #1
STR             R0, [R10]
LDR             R0, =dword_6D241C
LDR             R2, =dword_6D2418
LDR             R1, [R0]
LDR             R0, [R2]
CMP             R0, R1
BCS             loc_13A7B8
MOV             R3, R7,LSL#8
ADD             R12, R3, #0x800
LDR             R3, =0xF01C5
ADD             R9, R0, #8
STR             R3, [R0,#4]
STR             R12, [R0]
STR             R9, [R2]
LDR             R2, [R6,#0x804]
MOV             R1, #0x100
MOV             R0, #0x1C8
BL              sub_1378C8
MOV             R0, #1
STR             R0, [SP,#0x878+var_60]
LDR             R0, [R4,#0x7C0]
ADD             R1, R7, #0x18
MOV             R0, R0,LSR R1
TST             R0, #1
BEQ             loc_13A804
B               loc_13A9F4
VMUL.F32        S0, S0, S21
VMOV            R0, S0
CMP             R12, R0
VCVTGT.U32.F32  S0, S0
MOVLE           R0, R9
VMOVGT          R0, S0
B               loc_13A704
LDR             R0, [R8,#0xA8C]
ADD             R1, R5, R0,LSL#2
LDR             R8, [R1,#0x74]
BL              sub_13BC04
ADD             R9, R5, R7,LSL#2
MOV             R6, R0
LDR             R0, [R9,#0x144]
CMP             R0, R8
LDR             R0, [R9,#0x1C8]
BNE             loc_13A894
CMP             R0, #0
BEQ             loc_13A9F4
LDR             R1, =dword_6D2418
LDR             R0, =dword_6D241C
LDR             R2, [R1]
LDR             R0, [R0]
CMP             R2, R0
BCS             loc_13A870
LDR             R12, [R9,#0x24C]
LDR             R3, =0xF01C5
MOV             R8, R7,LSL#8
ADD             R10, R8, #0x1000
ORR             R12, R12, R10
STR             R3, [R2,#4]
ADD             R8, R2, #8
STR             R12, [R2]
STR             R8, [R1]
LDR             R2, [R9,#0x24C]
LDR             R0, [R6,#0x804]
LDR             R1, [R9,#0x1C8]
ADD             R2, R0, R2,LSL#2
MOV             R0, #0x1C8
BL              sub_1378C8
MOV             R0, #0
STR             R0, [R9,#0x1C8]
B               loc_13A9F4
CMP             R0, #0
MOVNE           R0, #0
STRNE           R0, [R9,#0x1C8]
STR             R8, [R9,#0x144]
LDR             R0, [R6,#0x81C]
ADD             R9, R6, #0x800
ADD             R9, R9, #0x1C
TST             R0, #1
BEQ             loc_13A9A8
LDR             R0, [R6,#0x804]
CMP             R0, #0
BNE             loc_13A8F0
LDR             R0, =off_6D2428
LDR             R12, [R0]
CMP             R12, #0
MOVEQ           R0, #0
BEQ             loc_13A8EC
MOV             R3, #0x400
MOV             R2, #0
MOV             R1, #0x100
MOV             R0, #0x10000
BLX             R12
STR             R0, [R6,#0x804]
LDR             R8, =0xFFF
LDR             R12, =0x45800000
MOV             R1, #0
MOV             R3, #0xFF
ADD             R2, R6, R1,LSL#2
VLDR            S0, [R2,#4]
VMOV            R0, S0
VCMPE.F32       S0, S17
VMRS            APSR_nzcv, FPSCR
BLS             loc_13A924
MOV             R0, R0,LSL#1
CMP             R3, R0,LSR#24
BNE             loc_13AA4C
MOV             R0, #0
LDR             R10, [R6,#0x804]
ADD             R2, R2, #0x400
STR             R0, [R10,R1,LSL#2]
VLDR            S0, [R2,#4]
VMOV            R2, S0
VCMP.F32        S0, S17
VMRS            APSR_nzcv, FPSCR
MOVNE           R2, R2,LSL#1
CMPNE           R3, R2,LSR#24
MOVEQ           R2, #0
BEQ             loc_13A984
VMUL.F32        S19, S0, S20
VCMPE.F32       S19, S17
VMRS            APSR_nzcv, FPSCR
VNEGCC.F32      S19, S19
MOVCC           R2, #0x800
MOVCS           R2, #0
VMOV            R10, S19
CMP             R10, #0x45000000
VMOVGE.F32      S19, S22
VCVT.U32.F32    S0, S19
VMOV            R10, S0
ORR             R2, R2, R10
ORR             R0, R0, R2,LSL#12
LDR             R2, [R6,#0x804]
STR             R0, [R2,R1,LSL#2]
ADD             R1, R1, #1
CMP             R1, #0x100
BLT             loc_13A900
LDR             R0, [R6,#0x81C]
BIC             R0, R0, #1
STR             R0, [R9]
LDR             R0, =dword_6D241C
LDR             R1, =dword_6D2418
LDR             R2, [R0]
LDR             R0, [R1]
CMP             R0, R2
BCS             loc_13A9DC
MOV             R3, R7,LSL#8
ADD             R12, R3, #0x1000
LDR             R3, =0xF01C5
ADD             R8, R0, #8
STR             R3, [R0,#4]
STR             R12, [R0]
STR             R8, [R1]
LDR             R2, [R6,#0x804]
MOV             R1, #0x100
MOV             R0, #0x1C8
BL              sub_1378C8
MOV             R0, #1
STR             R0, [SP,#0x878+var_60]
ADD             R7, R7, #1
CMP             R7, #8
BLT             loc_13A558
LDR             R0, [R4,#0xE0C]
VLDR            S18, =255.0
CMP             R0, #0
BEQ             loc_13B378
LDR             R0, [SP,#0x878+var_28]
LDR             R1, =0x4020
LDR             R0, [R0]
TST             R0, R1
BEQ             loc_13B378
LDR             R1, =dword_6989B0
ADD             R2, SP, #0x878+var_58
LDR             R9, =0xFFF
LDR             R10, =0x45800000
LDRD            R0, R1, [R1]
MOV             R8, #0
VLDR            S22, =4095.0
VLDR            S19, =1.0
STM             R2, {R0,R1}
B               loc_13AA7C
VMUL.F32        S0, S0, S21
VMOV            R0, S0
CMP             R12, R0
VCVTGT.U32.F32  S0, S0
MOVLE           R0, R8
VMOVGT          R0, S0
B               loc_13A928
CMP             R8, #1
BNE             loc_13AA7C
LDR             R0, [R4,#0x594]
TST             R0, #0x4000
BEQ             loc_13ACAC
ADD             R0, R4, R8,LSL#2
LDR             R0, [R0,#0xDF0]
ADD             R1, R5, R0,LSL#2
LDR             R11, [R1,#0x74]
BL              sub_13BC04
ADD             R7, R5, R8,LSL#2
MOV             R6, R0
LDR             R0, [R7,#0x164]
CMP             R0, R11
LDR             R0, [R7,#0x1E8]
BNE             loc_13AB0C
CMP             R0, #0
BEQ             loc_13ACA0
LDR             R0, =dword_6D2418
LDR             R1, =dword_6D241C
LDR             R12, [R0]
LDR             R1, [R1]
CMP             R12, R1
BCS             loc_13AAE8
ADD             R1, SP, #0x878+var_58
LDR             R2, [R7,#0x26C]
LDR             R3, [R1,R8,LSL#2]
LDR             R11, =0xF00AF
ORR             R2, R2, R3,LSL#8
STM             R12, {R2,R11}
ADD             R3, R12, #8
STR             R3, [R0]
LDR             R2, [R7,#0x26C]
LDR             R0, [R6,#0x810]
LDR             R1, [R7,#0x1E8]
ADD             R2, R0, R2,LSL#2
MOV             R0, #0xB0
BL              sub_1378C8
MOV             R0, #0
STR             R0, [R7,#0x1E8]
B               loc_13ACA0
CMP             R0, #0
MOVNE           R0, #0
STRNE           R0, [R7,#0x1E8]
STR             R11, [R7,#0x164]
LDR             R0, [R6,#0x81C]
ADD             R11, R6, #0x800
ADD             R11, R11, #0x1C
TST             R0, #8
BEQ             loc_13AC50
LDR             R0, [R6,#0x810]
CMP             R0, #0
BNE             loc_13AB68
LDR             R0, =off_6D2428
LDR             R12, [R0]
CMP             R12, #0
MOVEQ           R0, #0
BEQ             loc_13AB64
MOV             R3, #0x200
MOV             R2, #0
MOV             R1, #0x100
MOV             R0, #0x10000
BLX             R12
STR             R0, [R6,#0x810]
MOV             R1, #0
MOV             R2, #0xFF
VMOV.F32        S0, S17
ADD             R0, R6, R1,LSL#2
VLDR            S1, [R0,#4]
VMOV            R3, S1
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
BLS             loc_13AB98
MOV             R3, R3,LSL#1
CMP             R2, R3,LSR#24
BNE             loc_13AC04
MOV             R7, #0
LDR             R3, [R6,#0x810]
STR             R7, [R3,R1,LSL#2]
VLDR            S1, [R0,#0x204]
VMOV            R0, S1
VCMP.F32        S1, S0
VMRS            APSR_nzcv, FPSCR
MOVNE           R0, R0,LSL#1
CMPNE           R2, R0,LSR#24
MOVEQ           R0, #0
BEQ             loc_13AC2C
VADD.F32        S1, S1, S19
VMUL.F32        S16, S1, S20
VCMPE.F32       S0, S16
VMRS            APSR_nzcv, FPSCR
VMOVGT.F32      S16, S0
BGT             loc_13AC20
VMOV            R0, S16
CMP             R0, R10
VMOVLT          R0, S16
VMOVGE.F32      S16, S22
CMPLT           R0, #0x45000000
BLT             loc_13AC20
VSUB.F32        S0, S16, S20
VCVT.U32.F32    S0, S0
VMOV            R0, S0
B               loc_13AC2C
VMUL.F32        S1, S1, S21
VMOV            R3, S1
CMP             R10, R3
VCVTGT.U32.F32  S1, S1
MOVLE           R7, R9
VMOVGT          R7, S1
B               loc_13AB9C
VADD.F32        S0, S16, S20
VCVT.U32.F32    S0, S0
VMOV            R0, S0
ORR             R3, R7, R0,LSL#12
LDR             R0, [R6,#0x810]
STR             R3, [R0,R1,LSL#2]
ADD             R1, R1, #1
CMP             R1, #0x80
BLT             loc_13AB70
LDR             R0, [R6,#0x81C]
BIC             R0, R0, #8
STR             R0, [R11]
LDR             R0, =dword_6D241C
LDR             R2, =dword_6D2418
LDR             R1, [R0]
LDR             R0, [R2]
CMP             R0, R1
BCS             loc_13AC88
ADD             R1, SP, #0x878+var_58
LDR             R3, =0xF00AF
LDR             R12, [R1,R8,LSL#2]
STR             R3, [R0,#4]
MOV             R7, R12,LSL#8
ADD             R12, R0, #8
STR             R7, [R0]
STR             R12, [R2]
LDR             R2, [R6,#0x810]
MOV             R1, #0x80
MOV             R0, #0xB0
BL              sub_1378C8
MOV             R0, #1
STR             R0, [SP,#0x878+var_60]
ADD             R8, R8, #1
CMP             R8, #2
BLT             loc_13AA68
LDR             R0, [R4,#0x594]
TST             R0, #0x8000
BEQ             loc_13AEDC
LDR             R0, [R4,#0xDF8]
ADD             R1, R5, R0,LSL#2
LDR             R7, [R1,#0x74]
BL              sub_13BC04
MOV             R6, R0
LDR             R0, [R5,#0x16C]
CMP             R0, R7
LDR             R0, [R5,#0x1F0]
BNE             loc_13AD50
CMP             R0, #0
BEQ             loc_13AEDC
LDR             R0, =dword_6D241C
LDR             R1, =dword_6D2418
LDR             R2, [R0]
LDR             R0, [R1]
CMP             R0, R2
BCS             loc_13AD14
LDR             R3, =0xF00AF
LDR             R12, [R5,#0x274]
ADD             R7, R0, #8
STR             R3, [R0,#4]
STR             R12, [R0]
STR             R7, [R1]
LDR             R0, [R5,#0x274]
LDR             R2, [R6,#0x814]
LDR             R1, [R5,#0x1F0]
ADD             R2, R2, R0,LSL#2
MOV             R0, #0xB0
BL              sub_1378C8
MOV             R0, #0
STR             R0, [R5,#0x1F0]
B               loc_13AEDC
DCFS 255.0
DCD 0x4020
DCD dword_6989B0
DCFS 4095.0
DCFS 1.0
DCD 0xF00AF
CMP             R0, #0
MOVNE           R0, #0
STRNE           R0, [R5,#0x1F0]
STR             R7, [R5,#0x16C]
LDR             R0, [R6,#0x81C]
ADD             R7, R6, #0x800
ADD             R7, R7, #0x1C
TST             R0, #0x10
BEQ             loc_13AE94
LDR             R0, [R6,#0x814]
CMP             R0, #0
BNE             loc_13ADAC
LDR             R0, =off_6D2428
LDR             R12, [R0]
CMP             R12, #0
MOVEQ           R0, #0
BEQ             loc_13ADA8
MOV             R3, #0x200
MOV             R2, #0
MOV             R1, #0x100
MOV             R0, #0x10000
BLX             R12
STR             R0, [R6,#0x814]
MOV             R1, #0
MOV             R3, R9
MOV             R0, #0xFF
ADD             R2, R6, R1,LSL#2
VLDR            S0, [R2,#4]
VMOV            R12, S0
VCMPE.F32       S0, S17
VMRS            APSR_nzcv, FPSCR
BLS             loc_13ADDC
MOV             R12, R12,LSL#1
CMP             R0, R12,LSR#24
BNE             loc_13AE48
MOV             R9, #0
LDR             R12, [R6,#0x814]
STR             R9, [R12,R1,LSL#2]
VLDR            S0, [R2,#0x204]
VMOV            R2, S0
VCMP.F32        S0, S17
VMRS            APSR_nzcv, FPSCR
MOVNE           R2, R2,LSL#1
CMPNE           R0, R2,LSR#24
MOVEQ           R2, #0
BEQ             loc_13AE70
VADD.F32        S0, S0, S19
VMUL.F32        S0, S0, S20
VCMPE.F32       S17, S0
VMRS            APSR_nzcv, FPSCR
VMOVGT.F32      S0, S17
BGT             loc_13AE64
VMOV            R2, S0
CMP             R2, R10
VMOVLT          R2, S0
VMOVGE.F32      S0, S22
CMPLT           R2, #0x45000000
BLT             loc_13AE64
VSUB.F32        S0, S0, S20
VCVT.U32.F32    S0, S0
VMOV            R2, S0
B               loc_13AE70
VMUL.F32        S0, S0, S21
VMOV            R12, S0
CMP             R10, R12
VCVTGT.U32.F32  S0, S0
MOVLE           R9, R3
VMOVGT          R9, S0
B               loc_13ADE0
VADD.F32        S0, S0, S20
VCVT.U32.F32    S0, S0
VMOV            R2, S0
ORR             R12, R9, R2,LSL#12
LDR             R2, [R6,#0x814]
STR             R12, [R2,R1,LSL#2]
ADD             R1, R1, #1
CMP             R1, #0x80
BLT             loc_13ADB8
LDR             R0, [R6,#0x81C]
BIC             R0, R0, #0x10
STR             R0, [R7]
LDR             R0, =dword_6D241C
LDR             R3, =dword_6D2418
LDR             R1, [R0]
LDR             R0, [R3]
CMP             R0, R1
BCS             loc_13AEC4
LDR             R2, =0xF00AF
MOV             R12, #0
ADD             R7, R0, #8
STR             R2, [R0,#4]
STR             R12, [R0]
STR             R7, [R3]
LDR             R2, [R6,#0x814]
MOV             R1, #0x80
MOV             R0, #0xB0
BL              sub_1378C8
MOV             R0, #1
STR             R0, [SP,#0x878+var_60]
MOV             R0, #0
ADD             R2, R4, R0,LSL#2
ADD             R1, R5, R0,LSL#2
LDR             R2, [R2,#0xDFC]
ADD             R3, R5, R2,LSL#2
LDR             R2, [R1,#0x170]
LDR             R1, [R3,#0x74]
CMP             R1, R2
BNE             loc_13AF0C
ADD             R0, R0, #1
CMP             R0, #4
BLT             loc_13AEE0
CMP             R0, #4
ADD             R9, SP, #0x878+var_870
BEQ             loc_13AF74
LDR             R8, =0x1FF
MOV             R7, #0
VLDR            S23, =0.5
VLDR            S22, =128.0
MOV             R11, #0xFF
MOV             R9, R7
ADD             R0, R4, R7,LSL#2
LDR             R0, [R0,#0xDFC]
BL              sub_13BC04
MOV             R6, R0
ADD             R0, R5, R7,LSL#2
ADD             R10, R6, #0x800
LDR             R1, [R0,#0x1F4]
ADD             R10, R10, #0x1C
CMP             R1, #0
STRNE           R9, [R0,#0x1F4]
LDR             R0, [R6,#0x81C]
TST             R0, #0x20
BEQ             loc_13B288
LDR             R0, [R6,#0x818]
CMP             R0, #0
BEQ             loc_13B158
B               loc_13B184
LDR             R0, [R5,#0x1F4]
CMP             R0, #0
LDREQ           R0, [R5,#0x1F8]
CMPEQ           R0, #0
BNE             loc_13AF9C
LDR             R0, [R5,#0x1FC]
CMP             R0, #0
LDREQ           R0, [R5,#0x200]
CMPEQ           R0, #0
BEQ             loc_13B378
MOV             R8, #0
MOV             R7, #0x200
MOV             R0, R8
MOV             R12, R8
ADD             R1, R5, R0,LSL#2
LDR             R3, [R1,#0x1F4]
CMP             R3, #0
BEQ             loc_13AFDC
LDR             R2, [R1,#0x278]
STR             R12, [R1,#0x1F4]
CMP             R2, R7
MOVCC           R7, R2
ADD             R2, R2, R3
SUB             R3, R2, #1
CMP             R3, R8
MOVHI           R8, R3
ADD             R0, R0, #1
CMP             R0, #4
BLT             loc_13AFAC
MOV             R10, #0
MOV             R11, #0xFF
ADD             R0, R4, R10,LSL#2
LDR             R0, [R0,#0xDFC]
BL              sub_13BC04
CMP             R7, R8
MOVLS           R1, R10,LSL#3
MOV             R6, R7
MOVLS           R2, R11,LSL R1
BHI             loc_13B034
LDR             R12, [R0,#0x818]
LDR             R3, [R9,R6,LSL#2]
LDRB            R12, [R12,R6]
BIC             R3, R3, R2
ORR             R3, R3, R12,LSL R1
STR             R3, [R9,R6,LSL#2]
ADD             R6, R6, #1
CMP             R6, R8
BLS             loc_13B010
ADD             R10, R10, #1
CMP             R10, #4
BLT             loc_13AFF0
CMP             R7, #0x100
BCS             loc_13B104
CMP             R8, #0x100
BCC             loc_13B0D0
LDR             R6, =dword_6D2418
LDR             R10, =dword_6D241C
LDR             R0, [R6]
LDR             R1, [R10]
CMP             R0, R1
BCS             loc_13B080
LDR             R2, =0xF00AF
ORR             R12, R7, #0x400
ADD             R3, R0, #8
STR             R2, [R0,#4]
STR             R12, [R0]
STR             R3, [R6]
RSB             R1, R7, #0x100
ADD             R2, R9, R7,LSL#2
MOV             R0, #0xB0
BL              sub_1378C8
LDR             R0, [R10]
LDR             R1, [R6]
CMP             R1, R0
BCS             loc_13B0B4
LDR             R3, =0xF00AF
MOV             R2, #0x500
ADD             R12, R1, #8
STRD            R2, R3, [R1]
STR             R12, [R6]
ADD             R2, R9, #0x400
SUB             R1, R8, #0xFF
MOV             R0, #0xB0
BL              sub_1378C8
NOP
NOP
B               loc_13B378
LDR             R2, =dword_6D2418
LDR             R0, =dword_6D241C
LDR             R1, [R2]
LDR             R0, [R0]
CMP             R1, R0
BCS             loc_13B138
LDR             R3, =0xF00AF
ORR             R6, R7, #0x400
ADD             R12, R1, #8
STR             R3, [R1,#4]
STR             R6, [R1]
STR             R12, [R2]
B               loc_13B138
LDR             R1, =dword_6D2418
LDR             R0, =dword_6D241C
LDR             R2, [R1]
LDR             R0, [R0]
CMP             R0, R2
BLS             loc_13B138
SUB             R3, R7, #0x100
ORR             R12, R3, #0x500
LDR             R3, =0xF00AF
ADD             R6, R2, #8
STR             R3, [R2,#4]
STR             R12, [R2]
STR             R6, [R1]
SUB             R0, R8, R7
ADD             R1, R0, #1
ADD             R2, R9, R7,LSL#2
MOV             R0, #0xB0
BL              sub_1378C8
NOP
NOP
B               loc_13B378
LDR             R0, =off_6D2428
LDR             R12, [R0]
CMP             R12, #0
MOVEQ           R0, #0
BEQ             loc_13B180
MOV             R3, #0x200
MOV             R2, #0
MOV             R1, #0x100
MOV             R0, #0x10000
BLX             R12
STR             R0, [R6,#0x818]
VMOV.F32        S1, S18
MOV             R1, #0
VMOV.F32        S2, S23
ADD             R0, R6, R1,LSL#2
LDR             R2, [R6,#0x818]
VLDR            S0, [R0,#4]
VMOV            R0, S0
CMP             R0, #0x3F800000
VMOVGT.F32      S0, S19
VMLA.F32        S2, S0, S1
VCVT.U32.F32    S0, S2
VMOV            R0, S0
STRB            R0, [R2,R1]
ADD             R1, R1, #1
CMP             R1, #0x100
BLT             loc_13B18C
CMP             R1, R8
VMOVLT.F32      S16, S17
LDRLT           R0, =0x43800000
BGE             loc_13B274
ADD             R2, R6, R1,LSL#2
VLDR            S0, [R2,#4]
VMOV            R2, S0
VCMP.F32        S0, S16
VMRS            APSR_nzcv, FPSCR
MOVNE           R2, R2,LSL#1
CMPNE           R11, R2,LSR#24
LDREQ           R2, [R6,#0x818]
STRBEQ          R9, [R2,R1]
BEQ             loc_13B268
VADD.F32        S0, S0, S19
VMUL.F32        S0, S0, S22
VCMPE.F32       S16, S0
VMRS            APSR_nzcv, FPSCR
VMOVGT.F32      S0, S16
BGT             loc_13B254
VMOV            R2, S0
CMP             R2, R0
VMOVLT          R2, S0
VMOVGE.F32      S0, S1
CMPLT           R2, #0x43000000
BLT             loc_13B254
LDR             R3, [R6,#0x818]
VSUB.F32        S0, S0, S22
VCVT.U32.F32    S0, S0
VMOV            R2, S0
STRB            R2, [R3,R1]
B               loc_13B268
DCFS 0.5
DCFS 128.0
DCD 0x1FF
DCD 0x43800000
VADD.F32        S0, S0, S22
LDR             R3, [R6,#0x818]
VCVT.U32.F32    S0, S0
VMOV            R2, S0
STRB            R2, [R3,R1]
ADD             R1, R1, #1
CMP             R1, R8
BLT             loc_13B1D4
LDR             R0, [R6,#0x818]
STRB            R9, [R0,R1]
LDR             R0, [R6,#0x81C]
BIC             R0, R0, #0x20 ; ' '
STR             R0, [R10]
MOV             R12, R7,LSL#3
MOV             R0, #0
MOV             R2, R11,LSL R12
ADD             R1, SP, #0x878+var_870
LDR             R10, [R6,#0x818]
LDR             R3, [R1,R0,LSL#2]
LDRB            R10, [R10,R0]
BIC             R3, R3, R2
ORR             R3, R3, R10,LSL R12
STR             R3, [R1,R0,LSL#2]
ADD             R0, R0, #1
CMP             R0, #0x200
BLT             loc_13B298
ADD             R7, R7, #1
CMP             R7, #4
BLT             loc_13AF30
CMP             R7, #4
BNE             loc_13B378
LDR             R6, =dword_6D2418
LDR             R7, =dword_6D241C
LDR             R0, [R6]
LDR             R1, [R7]
CMP             R0, R1
BCS             loc_13B300
LDR             R2, =0xF00AF
MOV             R12, #0x400
ADD             R3, R0, #8
STR             R2, [R0,#4]
STR             R12, [R0]
STR             R3, [R6]
ADD             R8, SP, #0x878+var_870
MOV             R2, R8
MOV             R1, #0x100
MOV             R0, #0xB0
BL              sub_1378C8
LDR             R1, [R7]
LDR             R0, [R6]
CMP             R0, R1
BCS             loc_13B338
LDR             R3, =0xF00AF
MOV             R2, #0x500
ADD             R12, R0, #8
STRD            R2, R3, [R0]
STR             R12, [R6]
ADD             R2, R8, #0x400
MOV             R1, #0x100
MOV             R0, #0xB0
BL              sub_1378C8
MOV             R0, #1
STR             R0, [SP,#0x878+var_60]
MOV             R0, #0
ADD             R1, R4, R0,LSL#2
ADD             R2, R5, R0,LSL#2
LDR             R1, [R1,#0xDFC]
ADD             R0, R0, #1
CMP             R0, #4
ADD             R1, R5, R1,LSL#2
LDR             R1, [R1,#0x74]
STR             R1, [R2,#0x170]
BLT             loc_13B354
LDR             R0, [R4,#0x624]
TST             R0, #7
BEQ             loc_13B59C
LDR             R0, [SP,#0x878+var_28]
LDR             R1, =0x4010
LDR             R0, [R0]
TST             R0, R1
BEQ             loc_13B59C
LDR             R0, [R4,#0xE64]
ADD             R1, R5, R0,LSL#2
LDR             R7, [R1,#0x74]
BL              sub_13BC04
MOV             R6, R0
LDR             R0, [R5,#0x180]
LDR             R8, =0xF00E6
CMP             R0, R7
LDR             R0, [R5,#0x204]
BNE             loc_13B414
CMP             R0, #0
BEQ             loc_13B59C
LDR             R2, =dword_6D2418
LDR             R0, =dword_6D241C
LDR             R1, [R2]
LDR             R0, [R0]
CMP             R1, R0
BCS             loc_13B3F0
LDR             R3, [R5,#0x288]
ADD             R12, R1, #8
STM             R1, {R3,R8}
STR             R12, [R2]
LDR             R2, [R5,#0x288]
LDR             R0, [R6,#0x808]
LDR             R1, [R5,#0x204]
ADD             R2, R0, R2,LSL#2
MOV             R0, #0xE8
BL              sub_1378C8
MOV             R0, #0
STR             R0, [R5,#0x204]
B               loc_13B59C
CMP             R0, #0
MOVNE           R0, #0
STRNE           R0, [R5,#0x204]
STR             R7, [R5,#0x180]
LDR             R0, [R6,#0x81C]
ADD             R7, R6, #0x800
ADD             R7, R7, #0x1C
TST             R0, #2
BEQ             loc_13B55C
LDR             R0, [R6,#0x808]
CMP             R0, #0
BNE             loc_13B470
LDR             R0, =off_6D2428
LDR             R12, [R0]
CMP             R12, #0
MOVEQ           R0, #0
BEQ             loc_13B46C
MOV             R3, #0x200
MOV             R2, #0
MOV             R1, #0x100
MOV             R0, #0x10000
BLX             R12
STR             R0, [R6,#0x808]
LDR             R9, =0x45800000
LDR             R12, =0x7FF
MOV             R1, #0
VLDR            S3, =2.0
VLDR            S2, =8191.0
MOV             R2, #0xFF
MOV             R3, R1
ADD             R0, R6, R1,LSL#2
VLDR            S1, [R0,#0x204]
VMOV            R10, S1
VCMP.F32        S1, S17
VMRS            APSR_nzcv, FPSCR
MOVNE           R10, R10,LSL#1
CMPNE           R2, R10,LSR#24
LDREQ           R10, [R6,#0x808]
STREQ           R3, [R10,R1,LSL#2]
BEQ             loc_13B510
VADD.F32        S1, S1, S3
VMUL.F32        S0, S1, S20
VCMPE.F32       S17, S0
VMRS            APSR_nzcv, FPSCR
VMOVGT.F32      S0, S17
BGT             loc_13B4FC
VMOV            R10, S0
CMP             R10, #0x46000000
VMOVLT          R10, S0
VMOVGE.F32      S0, S2
CMPLT           R10, R9
BLT             loc_13B4FC
LDR             R10, [R6,#0x808]
VSUB.F32        S0, S0, S21
VCVT.U32.F32    S0, S0
VMOV            R11, S0
STR             R11, [R10,R1,LSL#2]
B               loc_13B510
VADD.F32        S0, S0, S21
LDR             R11, [R6,#0x808]
VCVT.U32.F32    S0, S0
VMOV            R10, S0
STR             R10, [R11,R1,LSL#2]
VLDR            S0, [R0,#4]
VMOV            R0, S0
VCMPE.F32       S0, S17
VMRS            APSR_nzcv, FPSCR
BLS             loc_13B530
MOV             R0, R0,LSL#1
CMP             R2, R0,LSR#24
BNE             loc_13B5B0
MOV             R0, #0
LDR             R10, [R6,#0x808]
LDR             R11, [R10,R1,LSL#2]
ORR             R0, R11, R0,LSL#13
STR             R0, [R10,R1,LSL#2]
ADD             R1, R1, #1
CMP             R1, #0x80
BLT             loc_13B48C
LDR             R0, [R6,#0x81C]
BIC             R0, R0, #2
STR             R0, [R7]
LDR             R1, =dword_6D241C
LDR             R0, =dword_6D2418
LDR             R2, [R1]
LDR             R1, [R0]
CMP             R1, R2
BCS             loc_13B584
MOV             R3, #0
STM             R1, {R3,R8}
ADD             R12, R1, #8
STR             R12, [R0]
LDR             R2, [R6,#0x808]
MOV             R1, #0x80
MOV             R0, #0xE8
BL              sub_1378C8
MOV             R0, #1
STR             R0, [SP,#0x878+var_60]
LDR             R1, [R4,#0x624]
MOV             R0, #7
BICS            R0, R0, R1
BNE             loc_13B8A0
B               loc_13B5CC
VMUL.F32        S0, S0, S20
VMOV            R0, S0
CMP             R0, #0x45000000
VCVTLT.U32.F32  S0, S0
MOVGE           R0, R12
VMOVLT          R0, S0
B               loc_13B534
LDR             R0, [SP,#0x878+var_28]
LDR             R1, =0x2004000
LDR             R0, [R0]
TST             R0, R1
MOVNE           R0, #0
BEQ             loc_13B8A0
ADD             R1, R4, R0,LSL#2
ADD             R2, R5, R0,LSL#2
LDR             R1, [R1,#0xE78]
LDR             R2, [R2,#0x184]
ADD             R1, R5, R1,LSL#2
LDR             R1, [R1,#0x74]
CMP             R1, R2
BNE             loc_13B610
ADD             R0, R0, #1
CMP             R0, #3
BLT             loc_13B5E4
CMP             R0, #3
BEQ             loc_13B8A0
MOV             R8, #0
STR             R8, [SP,#0x878+var_868]
STR             R8, [SP,#0x878+var_864]
STR             R8, [SP,#0x878+var_860]
STR             R8, [SP,#0x878+var_85C]
STR             R8, [SP,#0x878+var_858]
STR             R8, [SP,#0x878+var_854]
VLDR            S16, =127.0
STR             R8, [SP,#0x878+var_850]
STR             R8, [SP,#0x878+var_84C]
STR             R8, [SP,#0x878+var_848]
STR             R8, [SP,#0x878+var_844]
STR             R8, [SP,#0x878+var_840]
MOV             R9, #0x20 ; ' '
STR             R8, [SP,#0x878+var_83C]
STR             R8, [SP,#0x878+var_838]
STR             R8, [SP,#0x878+var_834]
STR             R8, [SP,#0x878+var_830]
STR             R8, [SP,#0x878+var_82C]
ADD             R0, R4, R8,LSL#2
LDR             R0, [R0,#0xE78]
BL              sub_13BC04
MOV             R6, R0
ADD             R10, R0, #0x800
LDR             R0, [R0,#0x81C]
ADD             R10, R10, #0x1C
TST             R0, #4
BEQ             loc_13B760
LDR             R0, [R6,#0x80C]
ADD             R7, R6, #0x800
ADD             R7, R7, #0xC
CMP             R0, #0
BNE             loc_13B6C8
LDR             R0, =off_6D2428
LDR             R12, [R0]
CMP             R12, #0
MOVEQ           R0, #0
BEQ             loc_13B6C4
MOV             R3, #0x40 ; '@'
MOV             R2, #0
MOV             R1, #0x100
MOV             R0, #0x10000
BLX             R12
STR             R0, [R6,#0x80C]
LDR             LR, =0x43800000
MOV             R0, #0
MOV             R2, #0xFF
ADD             R1, R6, R0,LSL#2
VLDR            S0, [R1,#4]
VMUL.F32        S0, S0, S18
VMOV            R3, S0
VCMPE.F32       S0, S17
VMRS            APSR_nzcv, FPSCR
BLS             loc_13B6FC
MOV             R3, R3,LSL#1
CMP             R2, R3,LSR#24
BNE             loc_13B7E8
MOV             R3, #0
LDR             R12, [R6,#0x80C]
STR             R3, [R12,R0,LSL#2]
VLDR            S0, [R1,#0x24]
LDR             R11, [R7]
ADD             R12, R9, R0,LSL#2
VMUL.F32        S0, S0, S16
VABS.F32        S0, S0
VCVT.U32.F32    S0, S0
VMOV            R3, S0
AND             R3, R3, #0x7F
STR             R3, [R11,R12]
VLDR            S0, [R1,#0x24]
VCMPE.F32       S0, S17
VMRS            APSR_nzcv, FPSCR
BCS             loc_13B748
LDR             R1, [R6,#0x80C]
ORR             R3, R3, #0x80
STR             R3, [R1,R12]
ADD             R0, R0, #1
CMP             R0, #8
BLT             loc_13B6D4
LDR             R0, [R6,#0x81C]
BIC             R0, R0, #4
STR             R0, [R10]
ADD             R3, R6, #0x800
MOV             R0, #0
ADD             R1, SP, #0x878+var_868
MOV             R2, R8,LSL#3
ADD             R3, R3, #0xC
LDR             R12, [R6,#0x80C]
ADD             R7, R9, R0,LSL#2
LDR             R10, [R1,R0,LSL#2]
LDR             R7, [R12,R7]
ADD             R12, R1, R0,LSL#2
ORR             R7, R10, R7,LSL R2
STR             R7, [R1,R0,LSL#2]
LDR             R10, [R3]
LDR             R7, [R12,#0x20]
LDR             R10, [R10,R0,LSL#2]
ADD             R0, R0, #1
CMP             R0, #8
ORR             R7, R7, R10,LSL R2
STR             R7, [R12,#0x20]
BLT             loc_13B774
ADD             R8, R8, #1
CMP             R8, #3
BLT             loc_13B664
CMP             R8, #3
BNE             loc_13B8A0
B               loc_13B800
DCD 0x4010
DCD 0xF00E6
DCFS 2.0
DCFS 8191.0
DCD 0x7FF
DCD 0x2004000
DCFS 127.0
DCD off_6D2428
VMOV            R3, S0
CMP             LR, R3
VCVTGT.U32.F32  S0, S0
MOVLE           R3, #0xFF
VMOVGT          R3, S0
B               loc_13B700
LDR             R0, [SP,#0x878+var_60]
CMP             R0, #0
BNE             loc_13B818
MOV             R1, #0x2D ; '-'
MOV             R0, #0xC0
BL              sub_1377A0
LDR             R6, =dword_6D2418
LDR             R7, =dword_6D241C
LDR             R1, [R6]
LDR             R0, [R7]
CMP             R1, R0
BCS             loc_13B844
LDR             R3, =0xF0123
MOV             R2, #0
ADD             R12, R1, #8
STRD            R2, R3, [R1]
STR             R12, [R6]
ADD             R2, SP, #0x878+var_868
MOV             R1, #0x10
MOV             R0, #0x124
BL              sub_1378C8
LDR             R0, [R7]
LDR             R1, [R6]
CMP             R1, R0
BCS             loc_13B878
MOV             R2, #0
MOV             R3, #0x100
ADD             R12, R1, #8
STRD            R2, R3, [R1]
STR             R12, [R6]
MOV             R0, #0
ADD             R1, R4, R0,LSL#2
ADD             R2, R5, R0,LSL#2
LDR             R1, [R1,#0xE78]
ADD             R0, R0, #1
CMP             R0, #3
ADD             R1, R5, R1,LSL#2
LDR             R1, [R1,#0x74]
STR             R1, [R2,#0x184]
BLT             loc_13B87C
LDR             R0, [R5,#8]
TST             R0, #0x800
BNE             loc_13B9F0
LDR             R0, [SP,#0x878+var_28]
LDR             R0, [R0]
TST             R0, #0x100
BNE             loc_13B8CC
LDR             R0, [R4,#0xE38]
LDR             R1, [R5,#0x644]
CMP             R0, R1
BEQ             loc_13B9F0
LDRB            R2, [R5,#0x656]
LDRB            R12, [R5,#0x654]
LDRB            R6, [R5,#0x655]
LDR             R0, [R4,#0xE38]
LDRB            R7, [R5,#0x657]
LDR             R3, =dword_6D2418
LDR             R1, =dword_6D241C
STR             R0, [R5,#0x644]
MOV             R8, R2,LSL#2
LDR             R0, [R3]
LDR             R4, [R1]
ORR             R2, R12, R6,LSL#1
ORR             R12, R8, R7,LSL#3
CMP             R0, R4
ORR             R8, R2, R12
BCS             loc_13B924
LDR             R4, =0xF0111
MOV             R12, #1
ADD             R6, R0, #8
STR             R4, [R0,#4]
STR             R12, [R0]
STR             R6, [R3]
LDR             R2, [R3]
LDR             R0, [R1]
CMP             R2, R0
BCS             loc_13B94C
LDR             R4, =0xF0110
MOV             R12, #1
ADD             R6, R2, #8
STR             R4, [R2,#4]
STR             R12, [R2]
STR             R6, [R3]
LDR             R6, =0xF0112
LDR             R0, [R5,#0x644]
ADD             R4, R6, #2
SUB             R0, R0, #0x6000
SUBS            R0, R0, #0x30 ; '0'
ORR             R7, R6, R6,ASR#18
ORR             R12, R4, R4,ASR#19
BEQ             loc_13B9FC
CMP             R0, #0x18
BEQ             loc_13BB5C
CMP             R0, #0x21 ; '!'
BNE             loc_13B9F0
LDR             R0, [R3]
LDR             R2, [R1]
CMP             R0, R2
BCS             loc_13B99C
MOV             R5, #0xF
STM             R0, {R5,R7}
ADD             R8, R0, #8
STR             R8, [R3]
LDR             R2, [R3]
LDR             R0, [R1]
CMP             R2, R0
BCS             loc_13B9BC
MOV             R5, #0xF
STM             R2, {R5,R6}
ADD             R7, R2, #8
STR             R7, [R3]
LDR             R0, [R3]
LDR             R2, [R1]
CMP             R0, R2
BCS             loc_13B9E0
MOV             R5, #3
STR             R4, [R0,#4]
ADD             R6, R0, #8
STR             R5, [R0]
STR             R6, [R3]
LDR             R0, [R1]
LDR             R1, [R3]
CMP             R1, R0
BCC             loc_13BBD0
ADD             SP, SP, #0x830
VPOP            {D8-D11}
POP             {R3-R11,PC}
CMP             R8, #0
MOVEQ           R2, #0
MOVEQ           R0, R2
BEQ             loc_13BA40
LDR             R0, [R5,#0x688]
CMP             R0, #1
BEQ             loc_13BA38
LDRB            R0, [R5,#0x64C]
CMP             R0, #0
BNE             loc_13BA38
CMP             R8, #0xF
LDRBEQ          R0, [R5,#0x64D]
CMPEQ           R0, #0
MOVEQ           R2, #0
BEQ             loc_13BA3C
MOV             R2, #1
MOV             R0, #2
LDRB            R8, [R5,#0x64B]
ORR             R0, R0, R2
CMP             R8, #0
MOVNE           R2, #4
MOVEQ           R2, #0
ORR             R0, R0, R2
LDRBNE          R2, [R5,#0x658]
LDRB            R8, [R5,#0x64A]
CMPNE           R2, #0
MOVEQ           R2, #0
MOVNE           R2, #8
CMP             R8, #0
ORR             R0, R0, R2
MOVNE           R2, #0x10
MOVEQ           R2, #0
ORR             R0, R0, R2
LDRNE           R2, [R5,#0x65C]
LDR             R5, [R3]
CMPNE           R2, #0
MOVEQ           R2, #0
MOVNE           R2, #0x20 ; ' '
ORR             R0, R0, R2
LDR             R2, [R1]
CMP             R5, R2
BCS             loc_13BAC0
TST             R0, #1
MOVNE           R8, #0xF
MOVEQ           R8, #0
STR             R6, [R5,#4]
ADD             R9, R5, #8
STR             R8, [R5]
STR             R9, [R3]
LDR             R5, [R3]
LDR             R2, [R1]
CMP             R5, R2
BCS             loc_13BAE8
TST             R0, #2
MOVNE           R6, #0xF
MOVEQ           R6, #0
ADD             R8, R5, #8
STRD            R6, R7, [R5]
STR             R8, [R3]
LDR             R5, [R3]
LDR             R2, [R1]
CMP             R5, R2
BCS             loc_13BB2C
TST             R0, #4
TSTNE           R0, #0xA
MOVEQ           R6, #0
MOVNE           R6, #2
TST             R0, #0x10
TSTNE           R0, #0x22
MOVEQ           R7, #0
MOVNE           R7, #1
ORR             R6, R6, R7
STR             R4, [R5,#4]
ADD             R7, R5, #8
STR             R6, [R5]
STR             R7, [R3]
LDR             R1, [R1]
LDR             R2, [R3]
CMP             R2, R1
BCS             loc_13B9F0
TST             R0, #8
AND             R0, R0, #0x20 ; ' '
MOVNE           R4, #2
MOVEQ           R4, #0
ORR             R0, R4, R0,LSR#5
ADD             R4, R2, #8
STM             R2, {R0,R12}
B               loc_13BBDC
LDR             R0, [R3]
LDR             R2, [R1]
CMP             R0, R2
BCS             loc_13BB7C
MOV             R5, #0xF
STM             R0, {R5,R7}
ADD             R8, R0, #8
STR             R8, [R3]
LDR             R2, [R3]
LDR             R0, [R1]
CMP             R2, R0
BCS             loc_13BB9C
MOV             R5, #0xF
STM             R2, {R5,R6}
ADD             R7, R2, #8
STR             R7, [R3]
LDR             R2, [R3]
LDR             R0, [R1]
CMP             R2, R0
BCS             loc_13BBC0
MOV             R5, #0
STR             R4, [R2,#4]
ADD             R6, R2, #8
STR             R5, [R2]
STR             R6, [R3]
LDR             R0, [R1]
LDR             R1, [R3]
CMP             R1, R0
BCS             loc_13B9F0
MOV             R2, #0
STM             R1, {R2,R12}
ADD             R4, R1, #8
STR             R4, [R3]
ADD             SP, SP, #0x830
VPOP            {D8-D11}
POP             {R3-R11,PC}
