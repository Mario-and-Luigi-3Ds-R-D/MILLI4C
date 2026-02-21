PUSH            {R0,R1,R4-R11,LR}
VPUSH           {D8-D11}
SUB             SP, SP, #0x800
SUB             SP, SP, #0x34
LDR             R0, [SP,#0x880+var_28]
TST             R0, #0x1000
MOV             R0, #0
STR             R0, [SP,#0x880+var_68]
LDR             R0, =off_6D48F8
LDR             R5, [R0]
BEQ             loc_12D394
LDR             R0, [SP,#0x880+var_2C]
LDR             R0, [R0]
TST             R0, #0x200
BEQ             loc_12D394
LDRB            R0, [R5,#0x648]
CMP             R0, #0
BEQ             loc_12D470
ADD             R0, R5, #0x400
ADD             R0, R0, #0x1E4
ADD             R1, R5, #0x400
LDM             R0, {R0,R4}
ADD             R1, R1, #0x1EC
LDR             R3, [R5,#0x698]
LDM             R1, {R1,R2}
SUB             R12, R0, #1
CMP             R3, R0
SUB             R6, R4, #1
ADD             R1, R1, R12
ADD             R2, R2, R6
SUBLE           R0, R3, #1
BLE             loc_12D2E0
CMP             R0, #0
MOVLT           R0, #0
LDR             R12, [R5,#0x69C]
CMP             R12, R4
SUBLE           R4, R12, #1
BLE             loc_12D2F8
CMP             R4, #0
MOVLT           R4, #0
CMP             R3, R1
SUBLT           R1, R3, #1
BLT             loc_12D30C
CMP             R1, #0
MOVLT           R1, #0
CMP             R12, R2
SUBLT           R2, R12, #1
BLT             loc_12D320
CMP             R2, #0
MOVLT           R2, #0
MOV             R3, #3
LDR             R12, =dword_6D2418
LDR             R7, =dword_6D241C
LDR             R8, [R12]
LDR             R6, [R7]
CMP             R8, R6
BCS             loc_12D34C
LDR             R9, =0xF0065
ADD             R10, R8, #8
STM             R8, {R3,R9}
STR             R10, [R12]
LDR             R3, [R12]
LDR             R6, [R7]
CMP             R3, R6
BCS             loc_12D370
LDR             R8, =0xF0066
ORR             R0, R0, R4,LSL#16
ADD             R4, R3, #8
STM             R3, {R0,R8}
STR             R4, [R12]
LDR             R0, [R7]
LDR             R3, [R12]
CMP             R3, R0
BCS             loc_12D394
LDR             R4, =0xF0067
ORR             R2, R1, R2,LSL#16
ADD             R1, R3, #8
STM             R3, {R2,R4}
STR             R1, [R12]
LDR             R0, =dword_6D45E4
LDR             R1, [R0,#(dword_6D45EC - 0x6D45E4)]
LDR             R4, [R1]
CMP             R4, #0
BEQ             loc_130A88
LDR             R1, [SP,#0x880+var_28]
TST             R1, #4
BEQ             loc_12D4B0
LDRB            R0, [R4,#0x424]
LDR             R9, =dword_6D45E4
MOVS            R6, R0
MOVNE           R6, #1
LDR             R0, [R9,#(dword_6D45F0 - 0x6D45E4)]
CMP             R6, R0
BNE             loc_12D3DC
LDR             R0, [R5,#4]
TST             R0, #4
BEQ             loc_12D4B0
LDR             R0, =0x251
MOV             R1, #0xA
BL              sub_1377A0
MOV             R1, #0x1E
MOV             R0, #0x200
BL              sub_1377A0
LDR             R7, =dword_6D2418
LDR             R8, =dword_6D241C
LDR             R1, [R7]
LDR             R0, [R8]
CMP             R1, R0
BCS             loc_12D42C
LDR             R2, =0x10229
CMP             R6, #0
MOVNE           R3, #2
MOVEQ           R3, #0
STR             R2, [R1,#4]
ADD             R12, R1, #8
STR             R3, [R1]
STR             R12, [R7]
MOV             R1, #0x1E
MOV             R0, #0x200
BL              sub_1377A0
STR             R6, [R9,#(dword_6D45F0 - 0x6D45E4)]
LDR             R2, =0x10244
LDR             R0, [R8]
LDR             R1, [R7]
CMP             R6, #0
BEQ             loc_12D494
CMP             R1, R0
BCS             loc_12D4B0
MOV             R3, #1
STR             R2, [R1,#4]
ADD             R12, R1, #8
STR             R3, [R1]
STR             R12, [R7]
B               loc_12D4B0
ADD             R1, R5, #0x400
ADD             R1, R1, #0x298
MOV             R4, #0
LDM             R1, {R1,R2}
MOV             R0, R4
MOV             R3, R4
SUB             R1, R1, #1
SUB             R2, R2, #1
B               loc_12D324
CMP             R1, R0
BCS             loc_12D4B0
MOV             R3, #0
STR             R2, [R1,#4]
ADD             R12, R1, #8
STR             R3, [R1]
STR             R12, [R7]
LDR             R0, [SP,#0x880+var_28]
TST             R0, #1
BEQ             loc_12D6A4
LDR             R0, [SP,#0x880+var_2C]
LDR             R0, [R0]
TST             R0, #0x100000
BEQ             loc_12D6A4
LDRB            R0, [R4,#0x424]
LDR             R2, =0xF029B
CMP             R0, #0
SUB             R7, R2, #0xC
BEQ             loc_12D584
LDR             R6, =dword_6D2418
LDR             R8, =dword_6D241C
LDR             R1, [R6]
LDR             R0, [R8]
CMP             R0, R1
BLS             loc_12D50C
MOV             R3, #0
STR             R2, [R1,#4]
ADD             R12, R1, #8
STR             R3, [R1]
STR             R12, [R6]
LDR             R0, [R4,#0x414]
LDR             R1, [R0,#4]
LDR             R2, [R0]
MOV             R0, #0x29C
BL              sub_1378C8
LDR             R1, [R8]
LDR             R0, [R6]
CMP             R0, R1
BCS             loc_12D540
MOV             R2, #1
STM             R0, {R2,R7}
ADD             R3, R0, #8
STR             R3, [R6]
LDR             R0, [R8]
LDR             R1, [R6]
CMP             R1, R0
BCS             loc_12D564
LDR             R3, =0xF02A5
MOV             R2, #0
ADD             R12, R1, #8
STRD            R2, R3, [R1]
STR             R12, [R6]
LDR             R0, [R4,#0x414]
LDR             R2, [R0,#8]!
LDR             R1, [R0,#4]
LDR             R0, =0x2A6
BL              sub_1378C8
NOP
NOP
B               loc_12D5FC
LDR             R0, [R4,#0x414]
LDR             R0, [R0,#4]
CMP             R0, #0x200
BLS             loc_12D5FC
LDR             R6, =dword_6D2418
LDR             R8, =dword_6D241C
LDR             R1, [R6]
LDR             R0, [R8]
CMP             R1, R0
BCS             loc_12D5C0
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
BCS             loc_12D5FC
MOV             R2, #1
STM             R1, {R2,R7}
ADD             R3, R1, #8
STR             R3, [R6]
LDR             R7, =dword_6D2418
LDR             R6, =dword_6D241C
LDR             R1, [R7]
LDR             R0, [R6]
CMP             R1, R0
BCS             loc_12D62C
LDR             R2, =0xF02CB
MOV             R12, #0
ADD             R3, R1, #8
STR             R2, [R1,#4]
STR             R12, [R1]
STR             R3, [R7]
LDR             R0, [R4,#0x414]
LDR             R1, [R0,#4]
LDR             R2, [R0]
MOV             R0, #0x2CC
CMP             R1, #0x200
MOVHI           R1, #0x200
BL              sub_1378C8
LDR             R0, [R6]
LDR             R1, [R7]
CMP             R1, R0
BCS             loc_12D66C
LDR             R3, =0xF02BF
MOV             R2, #1
ADD             R12, R1, #8
STRD            R2, R3, [R1]
STR             R12, [R7]
LDR             R1, [R6]
LDR             R0, [R7]
CMP             R0, R1
BCS             loc_12D690
LDR             R3, =0xF02D5
MOV             R2, #0
ADD             R12, R0, #8
STRD            R2, R3, [R0]
STR             R12, [R7]
LDR             R0, [R4,#0x414]
LDR             R2, [R0,#8]!
LDR             R1, [R0,#4]
LDR             R0, =0x2D6
BL              sub_1378C8
LDR             R0, [SP,#0x880+var_28]
TST             R0, #4
BEQ             loc_12D73C
LDRB            R0, [R4,#0x424]
CMP             R0, #0
BEQ             loc_12D6FC
LDR             R0, [SP,#0x880+var_2C]
LDR             R0, [R0]
TST             R0, #0x800000
BEQ             loc_12D6FC
LDR             R1, =dword_6D45E4
MOV             R0, #1
LDR             R1, [R1,#(dword_6D45EC - 0x6D45E4)]
ADD             R3, R4, R0,LSL#2
LDR             R3, [R3,#0x4E4]
ADD             R2, R1, R0,LSL#2
ADD             R2, R2, #0x1000
ADD             R0, R0, #1
MVN             R3, R3
CMP             R0, #8
STR             R3, [R2,#0xC]
BLS             loc_12D6D8
LDR             R0, [SP,#0x880+var_2C]
LDR             R0, [R0]
TST             R0, #0x1000000
BEQ             loc_12D73C
LDR             R1, =dword_6D45E4
MOV             R0, #9
LDR             R2, [R1,#(dword_6D45EC - 0x6D45E4)]
ADD             R3, R4, R0,LSL#2
LDR             R3, [R3,#0x4E4]
ADD             R1, R2, R0,LSL#2
ADD             R1, R1, #0x1000
ADD             R0, R0, #1
MVN             R3, R3
CMP             R0, #0x10
STR             R3, [R1,#0xC]
BLS             loc_12D718
LDR             R0, [SP,#0x880+var_28]
TST             R0, #8
BEQ             loc_12D810
LDR             R0, [SP,#0x880+var_2C]
LDR             R0, [R0]
TST             R0, #0x600000
BEQ             loc_12D810
LDRB            R1, [R4,#0x424]
CMP             R1, #0
TSTNE           R0, #0x400000
BEQ             loc_12D7B4
LDR             R0, [R4,#0x41C]
LDR             R1, [R4,#0x414]
MOV             R6, #0
ADD             R2, R0, R0,LSL#1
LDR             R1, [R1,#0x10]
RSB             R0, R2, R0,LSL#5
ADD             R7, R1, R0,LSL#3
LDR             R0, [R7,#0x34]
CMP             R0, #0
BLS             loc_12D7B4
LDR             R0, [R7,#0x30]
MOV             R1, #4
ADD             R2, R0, R6,LSL#4
MOV             R0, #0x290
BL              sub_1406F0
LDR             R0, [R7,#0x34]
ADD             R6, R6, #1
CMP             R0, R6
BHI             loc_12D790
LDR             R0, [SP,#0x880+var_2C]
LDR             R0, [R0]
TST             R0, #0x200000
BEQ             loc_12D810
LDR             R0, [R4,#0x418]
LDR             R1, [R4,#0x414]
MOV             R6, #0
ADD             R2, R0, R0,LSL#1
LDR             R1, [R1,#0x10]
RSB             R0, R2, R0,LSL#5
ADD             R7, R1, R0,LSL#3
LDR             R0, [R7,#0x34]
CMP             R0, #0
BLS             loc_12D810
LDR             R0, [R7,#0x30]
MOV             R1, #4
ADD             R2, R0, R6,LSL#4
MOV             R0, #0x2C0
BL              sub_1406F0
LDR             R0, [R7,#0x34]
ADD             R6, R6, #1
CMP             R0, R6
BHI             loc_12D7EC
LDR             R0, [SP,#0x880+var_28]
TST             R0, #0x200
BEQ             loc_12E700
LDR             R0, [SP,#0x880+var_2C]
LDR             R1, =0x8042
LDR             R0, [R0]
TST             R0, R1
BEQ             loc_12E608
LDR             R0, =dword_6D45E4
MOV             R3, #1
ADD             R10, SP, #0x880+var_858
LDR             R2, [R0,#(dword_6D45EC - 0x6D45E4)]
MOV             R0, R10
LDR             R1, [R2,#4]
CMP             R1, R4
MOVEQ           R12, #1
MOVNE           R12, #0
MOV             R1, #0
STR             R12, [SP,#0x880+var_860]
STR             R4, [R2,#4]
STRB            R3, [R5,#0x81C]
MOV             R6, R1
MOV             R7, R1
MOV             R8, R1
MOV             R12, #0xF
STR             R1, [SP,#0x880+var_854]
ADD             R1, R12, R12,LSL#1
ADD             R2, R4, R1,LSL#2
LDR             R2, [R2,#0x358]
CMN             R2, #1
BEQ             loc_12D95C
ADD             R1, R5, R1,LSL#3
LDRB            R2, [R1,#0x46D]
CMP             R2, #0
BEQ             loc_12D92C
LDR             R1, [R1,#0x468]
CMP             R1, #0
MOVEQ           R1, #0
STRBEQ          R1, [R5,#0x81C]
BEQ             loc_12D8C0
ADD             R1, R5, R12,LSL#2
LDR             R1, [R1,#0x6A4]
CMP             R1, R8
MOVHI           R8, R1
ADD             R9, R10, R6,LSL#3
CMP             R6, #0
STR             R12, [R9]
BEQ             loc_12D958
LDR             R1, [R0]
ADD             R2, R5, R12,LSL#2
LDR             R3, [R2,#0x6A4]
ADD             R1, R5, R1,LSL#2
LDR             R1, [R1,#0x6A4]
CMP             R3, R1
STRLE           R0, [R9,#4]
MOVLE           R0, R9
BLE             loc_12D958
LDR             R1, [R0,#4]
MOV             R2, R0
CMP             R1, #0
BEQ             loc_12D94C
LDR             R11, [R1]
ADD             R11, R5, R11,LSL#2
LDR             R11, [R11,#0x6A4]
CMP             R3, R11
BGT             loc_12D93C
STR             R9, [R2,#4]
CMP             R1, #0
STR             R1, [R9,#4]
BNE             loc_12D958
B               loc_12D94C
ADD             R1, SP, #0x880+var_7D0
STR             R12, [R1,R7,LSL#2]
ADD             R7, R7, #1
B               loc_12D95C
MOV             R2, R1
LDR             R1, [R1,#4]
CMP             R1, #0
BNE             loc_12D904
MOV             R1, #0
STR             R9, [R2,#4]
STR             R1, [R9,#4]
ADD             R6, R6, #1
SUBS            R12, R12, #1
BPL             loc_12D878
LDRB            R1, [R5,#0x76C]
CMP             R1, #0
BNE             loc_12D97C
ADD             R1, R6, R7
CMP             R1, #0xC
BLE             loc_12D984
MOV             R1, #0
STRB            R1, [R5,#0x81C]
CMP             R6, #0
BEQ             loc_12D9D8
LDR             R1, [R0]
ADD             R1, R5, R1,LSL#2
LDR             R1, [R1,#0x6A4]
BIC             R1, R1, #0xF
STR             R1, [R5,#0x6E4]
LDRB            R2, [R5,#0x81C]
CMP             R2, #0
BEQ             loc_12D9E0
LDRB            R2, [R5,#0x19]
CMP             R2, #0
BNE             loc_12D9CC
LDR             R2, [R5,#0x6A0]
CMP             R2, R1
MOVCC           R1, R2
CMP             R2, R8
MOVHI           R8, R2
SUB             R1, R8, R1
CMP             R1, #0x10000000
BCC             loc_12D9E0
MOV             R1, #0
STRB            R1, [R5,#0x81C]
LDR             R1, [R4,#0x8F4]
CMP             R1, R6
MOV             R1, #1
STR             R1, [SP,#0x880+var_868]
LDREQ           R1, [R4,#0x938]
CMPEQ           R1, R7
BNE             loc_12DD9C
LDR             R1, [R5,#4]
TST             R1, #0x200
BNE             loc_12DD9C
LDR             R2, [R4,#0x870]
CMP             R6, #0
MOV             R9, R0
MOV             R1, #0
BLE             loc_12DB0C
LDR             R3, [R9]
LDR             R12, [R2]
CMP             R3, R12
BNE             loc_12DA74
LDR             R8, [R0]
ADD             R12, R4, R1,LSL#2
ADD             R10, R5, R3,LSL#2
LDR             R11, [R4,#0x874]
ADD             R8, R5, R8,LSL#2
LDR             R10, [R10,#0x6A4]
LDR             LR, [R12,#0x874]
LDR             R8, [R8,#0x6A4]
SUB             R11, LR, R11
SUB             R8, R10, R8
CMP             R8, R11
BNE             loc_12DA74
ADD             R3, R3, R3,LSL#1
LDR             R8, [R12,#0x8B4]
ADD             R3, R5, R3,LSL#3
LDR             R12, [R3,#0x464]
CMP             R12, R8
BEQ             loc_12DA80
MOV             R1, #0
STR             R1, [SP,#0x880+var_868]
B               loc_12DB0C
LDR             R12, [R3,#0x460]
SUB             R12, R12, #0x1400
SUBS            R12, R12, #1
MOVEQ           R12, #1
BEQ             loc_12DAAC
CMP             R12, #1
MOVEQ           R12, #2
BEQ             loc_12DAAC
CMP             R12, #5
MOVNE           R12, #0
MOVEQ           R12, #3
LDR             R8, [R3,#0x45C]
MOV             R3, #0xFFFFFFFC
CMP             R1, #8
ADD             R3, R3, R8,LSL#2
ORR             R3, R3, R12
AND             R12, R3, #0xFF
BGE             loc_12DADC
LDR             R3, [R4,#0x944]
MOV             R8, R1,LSL#2
MOV             R3, R3,LSR R8
AND             R3, R3, #0xF
B               loc_12DAF0
LDR             R3, [R4,#0x948]
MOV             R8, R1,LSL#2
SUB             R8, R8, #0x20 ; ' '
MOV             R3, R3,LSR R8
AND             R3, R3, #0xF
CMP             R12, R3
BNE             loc_12DA74
LDR             R9, [R9,#4]
LDR             R2, [R2,#4]
ADD             R1, R1, #1
CMP             R1, R6
BLT             loc_12DA1C
CMP             R7, #0
MOV             R1, #0
ADDGT           R3, SP, #0x880+var_7D0
BLE             loc_12DB3C
ADD             R2, R4, R1,LSL#2
LDR             R12, [R3,R1,LSL#2]
LDR             R2, [R2,#0x8F8]
CMP             R12, R2
BNE             loc_12DD9C
ADD             R1, R1, #1
CMP             R1, R7
BLT             loc_12DB1C
LDR             R1, [SP,#0x880+var_868]
CMP             R1, #0
LDRBNE          R1, [R5,#0x81C]
CMPNE           R1, #0
BEQ             loc_12DD9C
LDRB            R2, [R5,#0x19]
LDR             R1, [SP,#0x880+var_860]
CMP             R2, #0
LDRNE           R3, [R5,#0x6E4]
BNE             loc_12DB74
LDR             R2, [R5,#0x6A0]
LDR             R3, [R5,#0x6E4]
CMP             R2, R3
BICLT           R3, R2, #0xF
LDR             R2, [R5,#0x6E4]
CMP             R2, R3
LDRBEQ          R2, [R4,#0x425]
CMPEQ           R2, #0
BNE             loc_12DBA4
LDR             R12, [R0]
LDR             R2, [R4,#0x94C]
ADD             R12, R5, R12,LSL#2
LDR             R12, [R12,#0x6A4]
SUB             R12, R12, R3
CMP             R12, R2
BEQ             loc_12DC08
LDR             R2, [R0]
LDR             R1, [R4,#0x93C]
MOV             R0, #1
ADD             R2, R5, R2,LSL#2
CMP             R1, #1
LDR             R2, [R2,#0x6A4]
SUB             R2, R2, R3
BLE             loc_12DBF0
ADD             R1, R0, R0,LSL#1
LDR             R12, [R4,#0x94C]
ADD             R1, R4, R1,LSL#2
ADD             R0, R0, #1
LDR             R8, [R1,#0x94C]
SUB             R12, R8, R12
ADD             R12, R12, R2
STR             R12, [R1,#0x94C]
LDR             R1, [R4,#0x93C]
CMP             R1, R0
BGT             loc_12DBC4
STR             R2, [R4,#0x94C]
LDR             R0, [R5,#0x6E4]
MOV             R1, #0
CMP             R0, R3
MOVEQ           R0, #0
STRBEQ          R0, [R4,#0x425]
MOV             R12, R3,LSR#3
STR             R3, [R5,#0x6E4]
CMP             R1, #0
STR             R12, [R4,#0x940]
BEQ             loc_12DC4C
LDR             R0, =dword_6D241C
LDR             R2, =dword_6D2418
LDR             R1, [R0]
LDR             R0, [R2]
CMP             R0, R1
BCS             loc_12E608
LDR             R3, =0xF0200
ADD             R6, R0, #8
STR             R3, [R0,#4]
STR             R12, [R0]
STR             R6, [R2]
B               loc_12E608
LDR             R0, [SP,#0x880+var_860]
CMP             R0, #0
BEQ             loc_12DC7C
LDR             R0, [R4,#0x93C]
ADD             R2, R4, #0x940
ADD             R0, R0, R0,LSL#1
ADD             R1, R0, #1
MOV             R0, #0x200
BL              sub_1406F0
NOP
NOP
B               loc_12E608
ADD             R2, R4, #0x940
MOV             R1, #0x27 ; '''
MOV             R0, #0x200
BL              sub_1406F0
LDR             R1, =dword_6D2418
LDR             R3, =dword_6D241C
LDR             R2, [R1]
LDR             R0, [R3]
CMP             R2, R0
BCS             loc_12DCB8
LDR             R8, [R4,#0x9DC]
LDR             R12, =0xF02BB
ADD             R9, R2, #8
STM             R2, {R8,R12}
STR             R9, [R1]
LDR             R2, [R1]
LDR             R0, [R3]
CMP             R2, R0
BCS             loc_12DCDC
LDR             R8, [R4,#0x9E0]
LDR             R12, =0xF02BC
ADD             R9, R2, #8
STM             R2, {R8,R12}
STR             R9, [R1]
LDRB            R0, [R4,#0x424]
CMP             R0, #0
BEQ             loc_12DD34
LDR             R2, [R1]
LDR             R0, [R3]
CMP             R2, R0
BCS             loc_12DD0C
LDR             R8, [R4,#0x9E4]
LDR             R12, =0xF028B
ADD             R9, R2, #8
STM             R2, {R8,R12}
STR             R9, [R1]
LDR             R2, [R3]
LDR             R0, [R1]
CMP             R0, R2
BCS             loc_12DD34
LDR             R3, =0xF028C
LDR             R12, [R4,#0x9E8]
ADD             R8, R0, #8
STR             R3, [R0,#4]
STR             R12, [R0]
STR             R8, [R1]
LDR             R1, [R4,#0x870]
ADD             R2, R6, R7
STR             R2, [R5,#0x824]
CMP             R6, #0
MOV             R0, #0
STR             R6, [R5,#0x820]
BLE             loc_12DD6C
LDR             R3, [R1]
ADD             R2, R5, R0,LSL#2
ADD             R0, R0, #1
STR             R3, [R2,#0x828]
LDR             R1, [R1,#4]
CMP             R6, R0
BGT             loc_12DD50
CMP             R7, #0
MOV             R1, #0
ADDGT           R3, SP, #0x880+var_7D0
BLE             loc_12E608
LDR             R2, [R3,R1,LSL#2]
ADD             R12, R5, R0,LSL#2
ADD             R1, R1, #1
CMP             R7, R1
ADD             R0, R0, #1
STR             R2, [R12,#0x828]
BGT             loc_12DD7C
B               loc_12E608
CMP             R6, #0
MOV             R2, R0
MOV             R1, #0
MOVGT           R10, #0
SUBGT           R12, R6, #1
BLE             loc_12DE10
LDR             R9, [R2]
ADD             R3, R4, R1,LSL#3
ADD             R8, R4, R1,LSL#2
STR             R9, [R3,#0x7F0]
LDR             R9, [R2]
CMP             R1, R12
ADD             R9, R5, R9,LSL#2
LDR             R9, [R9,#0x6A4]
STR             R9, [R8,#0x874]
LDR             R9, [R2]
ADD             R9, R9, R9,LSL#1
ADD             R9, R5, R9,LSL#3
LDR             R9, [R9,#0x464]
STR             R9, [R8,#0x8B4]
STREQ           R10, [R3,#0x7F4]
BEQ             loc_12DE04
ADD             R8, R3, #0x400
ADD             R8, R8, #0x3F8
STR             R8, [R3,#0x7F4]
LDR             R2, [R2,#4]
ADD             R1, R1, #1
CMP             R1, R6
BLT             loc_12DDB4
CMP             R7, #0
MOV             R1, #0
ADDGT           R3, SP, #0x880+var_7D0
BLE             loc_12DE38
LDR             R12, [R3,R1,LSL#2]
ADD             R2, R4, R1,LSL#2
ADD             R1, R1, #1
CMP             R7, R1
STR             R12, [R2,#0x8F8]
BGT             loc_12DE20
ADD             R1, R4, #0x7F0
STR             R1, [R4,#0x870]
STR             R6, [R4,#0x8F4]
STR             R7, [R4,#0x938]
LDR             R1, [R5,#0x5D8]
CMP             R1, #0
LDRB            R1, [R5,#0x19]
BEQ             loc_12DFAC
CMP             R1, #0
BEQ             loc_12DFBC
LDR             R2, [R5,#0x6E4]
MOV             R1, #0
MOV             R2, R2,ASR#3
STR             R2, [R4,#0x940]
STRB            R1, [R4,#0x425]
LDRB            R1, [R5,#0x81C]
CMP             R1, #0
BEQ             loc_12E418
MOV             R12, #0
ADD             R1, R5, #0x400
ADD             R1, R1, #0x58 ; 'X'
STR             R12, [SP,#0x880+var_790]
STR             R1, [SP,#0x880+var_77C]
ADD             R1, R5, #0x6A0
STR             R1, [SP,#0x880+var_7D4]
ADD             R1, R4, #0x800
ADD             R1, R1, #0x13C
STR             R12, [SP,#0x880+var_870]
STR             R1, [SP,#0x880+var_780]
ADD             R1, R4, #0x800
MOV             R2, R12
MOV             R3, #1
ADD             R1, R1, #0x14C
STR             R12, [R4,#0x93C]
ADD             R12, R4, R3,LSL#2
MOV             R8, #0
ADD             R3, R3, #1
CMP             R3, #0x27 ; '''
STR             R8, [R12,#0x940]
BLT             loc_12DEC0
MOV             R3, #1
CMP             R6, #0
MOV             R12, #0
STR             R3, [SP,#0x880+var_864]
BLE             loc_12E3A4
ADD             R3, R4, #0x800
ADD             R3, R3, #0x148
STR             R3, [SP,#0x880+var_774]
ADD             R3, R4, #0x800
ADD             R3, R3, #0x144
STR             R3, [SP,#0x880+var_770]
LDR             R3, [SP,#0x880+var_7D4]
LDM             R0, {R8,R11}
MOV             R9, #0
LDR             R10, [R3,#0x44]
STR             R11, [SP,#0x880+var_778]
LDR             R11, [SP,#0x880+var_7D4]
ADD             LR, R8, R8,LSL#1
MOV             R3, R9
ADD             R8, R11, R8,LSL#2
ADD             LR, R5, LR,LSL#3
LDR             R11, [R8,#4]
ADD             R8, LR, #0x400
LDR             LR, [LR,#0x460]
SUB             R10, R11, R10
ADD             R8, R8, #0x58 ; 'X'
CMP             LR, #0x1400
MOVEQ           R3, #1
STR             R10, [SP,#0x880+var_85C]
BEQ             loc_12DF80
SUB             R10, LR, #0x1400
SUBS            R10, R10, #1
MOVEQ           R9, #1
MOVEQ           R3, R9
BEQ             loc_12DF80
CMP             R10, #1
MOVEQ           R9, #2
MOVEQ           R3, R9
BEQ             loc_12DF80
CMP             R10, #5
MOVEQ           R9, #3
MOVEQ           R3, #4
LDR             R11, [R8,#4]
MOV             R10, #0xFFFFFFFC
CMP             R12, #8
ADD             R10, R10, R11,LSL#2
ORR             R9, R9, R10
BGE             loc_12DFEC
LDR             R10, [R4,#0x944]
MOV             R11, R12,LSL#2
ORR             R10, R10, R9,LSL R11
LDR             R9, [SP,#0x880+var_770]
B               loc_12E000
CMP             R1, #0
MOVEQ           R1, #0
STRBEQ          R1, [R5,#0x81C]
BNE             loc_12DE60
LDR             R1, [R5,#0x6A0]
LDR             R2, [R5,#0x6E4]
CMP             R1, R2
BICLT           R2, R1, #0xF
MOVLT           R1, #1
MOVGE           R1, #0
STRLT           R2, [R5,#0x6E4]
STRB            R1, [R4,#0x425]
LDR             R1, [R5,#0x6E4]
MOV             R1, R1,ASR#3
STR             R1, [R4,#0x940]
B               loc_12DE74
MOV             R11, R12,LSL#2
LDR             R10, [R4,#0x948]
SUB             R11, R11, #0x20 ; ' '
ORR             R10, R10, R9,LSL R11
LDR             R9, [SP,#0x880+var_774]
STR             R10, [R9]
LDR             R9, [R8,#0xC]
CMP             R9, #0
BEQ             loc_12E06C
LDR             R9, [SP,#0x880+var_864]
LDR             R11, [R8,#4]
LDR             R10, [SP,#0x880+var_870]
CMP             R3, R9
MOVLS           LR, R9
MUL             R11, R11, R3
MOVHI           LR, R3
ADD             R10, R10, R3
SUB             R9, R3, #1
SUB             R10, R10, #1
BIC             R9, R10, R9
ADD             R3, R9, R11
CMP             R2, #0
STR             R3, [SP,#0x880+var_870]
STR             LR, [SP,#0x880+var_864]
BEQ             loc_12E0B4
CMP             R2, #8
BCS             loc_12E0E0
LDR             R0, [R1,#4]
MOV             R3, R2,LSL#2
ORR             R0, R0, R12,LSL R3
STR             R0, [R1,#4]
B               loc_12E0F4
LDR             R0, [SP,#0x880+var_85C]
LDR             R8, [R8,#4]
STR             R0, [R1]
LDR             R0, [R1,#4]
ORR             R9, R0, R12
MUL             R0, R8, R3
STR             R9, [R1,#4]
LDR             R8, [R1,#8]
MOV             R3, #0x10000000
ORR             R0, R3, R0,LSL#16
ORR             R0, R0, R8
STR             R0, [R1,#8]
LDR             R0, [R4,#0x93C]
ADD             R1, R1, #0xC
ADD             R3, R0, #1
LDR             R0, [SP,#0x880+var_780]
STR             R3, [R0]
B               loc_12E394
LDR             R3, [SP,#0x880+var_85C]
STR             R3, [R1]
LDR             R9, [R0]
LDR             R3, [SP,#0x880+var_7D4]
LDR             R0, [R8,#0xC]
ADD             R3, R3, R9,LSL#2
STR             R0, [SP,#0x880+var_790]
LDR             R3, [R3,#4]
ADD             R0, R0, R3
STR             R0, [SP,#0x880+var_784]
B               loc_12E058
MOV             R3, R2,LSL#2
LDR             R0, [R1,#8]
SUB             R3, R3, #0x20 ; ' '
ORR             R0, R0, R12,LSL R3
STR             R0, [R1,#8]
ADD             R0, R12, #1
CMP             R0, R6
ADD             R2, R2, #1
BEQ             loc_12E230
LDR             R0, [SP,#0x880+var_778]
LDR             R3, [SP,#0x880+var_7D4]
LDR             R10, [SP,#0x880+var_85C]
LDR             R0, [R0]
LDR             R9, [R3,#0x44]
ADD             R3, R3, R0,LSL#2
LDR             R3, [R3,#4]
SUB             R9, R3, R9
CMP             R9, R10
BLS             loc_12E230
ADD             R10, R0, R0,LSL#1
LDR             R0, [SP,#0x880+var_77C]
LDR             R8, [R8,#0xC]
ADD             R0, R0, R10,LSL#3
LDR             R0, [R0,#0xC]
CMP             R8, R0
BNE             loc_12E230
LDR             R0, [SP,#0x880+var_784]
CMP             R3, R0
BGE             loc_12E230
CMP             R2, #0xC
MOVNE           R0, #0
STRNE           R0, [SP,#0x880+var_788]
BEQ             loc_12E230
LDR             R0, [SP,#0x880+var_85C]
RSB             R8, R2, #0xC
SUB             R3, R9, R0
SUB             R0, R3, R11
MOV             R0, R0,LSR#2
ANDS            R3, R0, #3
MOVNE           R3, #1
ADD             R3, R3, R0,LSR#2
CMP             R3, R8
BHI             loc_12E348
CMP             R0, #0
BEQ             loc_12E318
LDR             R3, [SP,#0x880+var_870]
TST             R0, #3
ADD             R3, R3, #3
BIC             R3, R3, #3
ADD             R3, R3, R0,LSL#2
STR             R3, [SP,#0x880+var_870]
BEQ             loc_12E26C
CMP             R2, #8
BCS             loc_12E248
LDR             R9, [R1,#4]
AND             R8, R0, #3
MOV             R3, R2,LSL#2
ADD             R8, R8, #0xB
ORR             R3, R9, R8,LSL R3
STR             R3, [R1,#4]
B               loc_12E264
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
MOV             R0, #1
STR             R0, [SP,#0x880+var_788]
LDR             R3, [R1]
LDR             R0, [SP,#0x880+var_790]
ADD             R9, R3, R0
B               loc_12E164
MOV             R3, R2,LSL#2
LDR             R9, [R1,#8]
AND             R8, R0, #3
SUB             R3, R3, #0x20 ; ' '
ADD             R8, R8, #0xB
ORR             R3, R9, R8,LSL R3
STR             R3, [R1,#8]
ADD             R2, R2, #1
BIC             R0, R0, #3
CMN             R0, #0x80000001
MOVHI           R3, #0xF
BLS             loc_12E2B8
CMP             R2, #8
BCS             loc_12E294
LDR             R9, [R1,#4]
MOV             R8, R2,LSL#2
ORR             R8, R9, R3,LSL R8
STR             R8, [R1,#4]
B               loc_12E2A8
MOV             R8, R2,LSL#2
LDR             R9, [R1,#8]
SUB             R8, R8, #0x20 ; ' '
ORR             R8, R9, R3,LSL R8
STR             R8, [R1,#8]
SUBS            R0, R0, #4
ADD             R2, R2, #1
BNE             loc_12E278
B               loc_12E318
MOV             R3, #0xFFFFFFFD
SUB             R0, R3, R0
LDR             R8, [R1,#4]
MOV             R3, R0,ASR#31
ADD             LR, R0, R3,LSR#30
MOV             R0, LR,ASR#2
RSB             R0, R0, #0
CMP             R0, #0
BLE             loc_12E318
LDR             R9, [R1,#8]
MOV             R3, #0
MOV             R11, #0xF
ADD             R10, R2, R3
CMP             R10, #8
MOV             R10, R10,LSL#2
SUBCS           R10, R10, #0x20 ; ' '
ADD             R3, R3, #1
MOV             R10, R11,LSL R10
ORRCC           R8, R8, R10
ORRCS           R9, R9, R10
SUBS            R0, R0, #1
BNE             loc_12E2E8
SUB             R2, R2, LR,ASR#2
STRD            R8, R9, [R1,#4]
LDR             R0, [SP,#0x880+var_788]
CMP             R0, #0
BEQ             loc_12E394
LDR             R0, [SP,#0x880+var_864]
LDR             R3, [SP,#0x880+var_870]
ADD             R3, R3, R0
SUB             R0, R0, #1
SUB             R3, R3, #1
BIC             R0, R3, R0
LDR             R3, [SP,#0x880+var_790]
CMP             R0, R3
BEQ             loc_12E354
MOV             R0, #0
STRB            R0, [R5,#0x81C]
B               loc_12E418
LDR             R0, [SP,#0x880+var_790]
LDR             R3, [R1,#8]
MOV             R8, R0,LSL#16
MOV             R0, #1
STR             R0, [SP,#0x880+var_864]
MOV             R0, #0
STR             R0, [SP,#0x880+var_870]
ORR             R0, R8, R2,LSL#28
ORR             R0, R0, R3
STR             R0, [R1,#8]!
LDR             R0, [R4,#0x93C]
MOV             R2, #0
ADD             R1, R1, #4
ADD             R3, R0, #1
LDR             R0, [SP,#0x880+var_780]
STR             R3, [R0]
LDR             R0, [SP,#0x880+var_778]
ADD             R12, R12, #1
CMP             R12, R6
BLT             loc_12DF04
LDRB            R0, [R5,#0x81C]
CMP             R0, #0
BEQ             loc_12E418
CMP             R7, #0
ADDGT           R1, R4, #0x800
MOV             R0, #0
MOVGT           R2, #0x10000
ADDGT           R1, R1, #0x148
BLE             loc_12E3E4
ADD             R3, R0, R6
LDR             R12, [R4,#0x948]
ADD             R0, R0, #1
ORR             R3, R12, R2,LSL R3
CMP             R7, R0
STR             R3, [R1]
BGT             loc_12E3C8
CMP             R6, #0
BEQ             loc_12E404
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
BEQ             loc_12E348
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
BGT             loc_12E460
B               loc_12E4CC
CMP             R0, #8
BGE             loc_12E488
LDR             R8, [R1]
LDR             R3, [R4,#0x9DC]
MOV             R9, R0,LSL#2
ADD             R8, R8, R8,LSL#1
ADD             R8, R4, R8,LSL#2
LDR             R8, [R8,#0x358]
AND             R8, R8, #0xF
ORR             R3, R3, R8,LSL R9
STR             R3, [R12]
B               loc_12E4B0
LDR             R8, [R1]
MOV             R9, R0,LSL#2
LDR             R3, [R4,#0x9E0]
SUB             R9, R9, #0x20 ; ' '
ADD             R8, R8, R8,LSL#1
ADD             R8, R4, R8,LSL#2
LDR             R8, [R8,#0x358]
AND             R8, R8, #0xF
ORR             R3, R3, R8,LSL R9
STR             R3, [R2]
LDR             R8, [R1]
ADD             R3, R5, R0,LSL#2
ADD             R0, R0, #1
STR             R8, [R3,#0x828]
LDR             R1, [R1,#4]
CMP             R0, R6
BLT             loc_12E458
CMP             R7, #0
MOV             R1, #0
ADDGT           R3, SP, #0x880+var_7D0
BLE             loc_12E54C
LDR             R6, [R3,R1,LSL#2]
CMP             R0, #8
BGE             loc_12E50C
ADD             R6, R6, R6,LSL#1
LDR             R8, [R4,#0x9DC]
ADD             R6, R4, R6,LSL#2
MOV             R9, R0,LSL#2
LDR             R6, [R6,#0x358]
AND             R6, R6, #0xF
ORR             R6, R8, R6,LSL R9
STR             R6, [R12]
B               loc_12E530
ADD             R6, R6, R6,LSL#1
MOV             R8, R0,LSL#2
ADD             R6, R4, R6,LSL#2
LDR             R9, [R4,#0x9E0]
LDR             R6, [R6,#0x358]
SUB             R8, R8, #0x20 ; ' '
AND             R6, R6, #0xF
ORR             R6, R9, R6,LSL R8
STR             R6, [R2]
LDR             R6, [R3,R1,LSL#2]
ADD             R8, R5, R0,LSL#2
ADD             R1, R1, #1
CMP             R1, R7
ADD             R0, R0, #1
STR             R6, [R8,#0x828]
BLT             loc_12E4DC
ADD             R2, R4, #0x940
MOV             R1, #0x27 ; '''
MOV             R0, #0x200
BL              sub_1406F0
LDR             R3, =dword_6D2418
LDR             R1, =dword_6D241C
LDR             R0, [R3]
LDR             R2, [R1]
CMP             R0, R2
BCS             loc_12E58C
LDR             R6, =0xF02BB
LDR             R12, [R4,#0x9DC]
ADD             R7, R0, #8
STR             R6, [R0,#4]
STR             R12, [R0]
STR             R7, [R3]
LDR             R2, [R3]
LDR             R0, [R1]
CMP             R2, R0
BCS             loc_12E5B0
LDR             R6, [R4,#0x9E0]
LDR             R12, =0xF02BC
ADD             R7, R2, #8
STM             R2, {R6,R12}
STR             R7, [R3]
LDRB            R0, [R4,#0x424]
CMP             R0, #0
BEQ             loc_12E608
LDR             R2, [R3]
LDR             R0, [R1]
CMP             R2, R0
BCS             loc_12E5E0
LDR             R6, [R4,#0x9E4]
LDR             R12, =0xF028B
ADD             R7, R2, #8
STM             R2, {R6,R12}
STR             R7, [R3]
LDR             R1, [R1]
LDR             R0, [R3]
CMP             R0, R1
BCS             loc_12E608
LDR             R2, =0xF028C
LDR             R12, [R4,#0x9E8]
ADD             R6, R0, #8
STR             R2, [R0,#4]
STR             R12, [R0]
STR             R6, [R3]
LDRB            R0, [R5,#0x81C]
CMP             R0, #0
BEQ             loc_12E700
LDR             R0, [SP,#0x880+var_2C]
LDR             R1, =0x80C2
LDR             R0, [R0]
TST             R0, R1
BEQ             loc_12E700
LDR             R0, [R5,#0x824]
LDR             R2, [R5,#0x820]
CMP             R0, R2
BLS             loc_12E700
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
BCS             loc_12E674
STM             R3, {R2,R8}
ADD             R9, R3, #8
STR             R9, [R0]
LDR             R3, [R0]
LDR             R6, [R1]
CMP             R3, R6
BCS             loc_12E6A0
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
BCS             loc_12E6C8
ADD             R9, R12, R12,LSL#1
ADD             R10, R3, #8
ADD             R9, R5, R9,LSL#2
LDR             R9, [R9,#0x39C]
STM             R3, {R9,R11}
STR             R10, [R0]
LDR             R6, [R1]
LDR             R3, [R0]
CMP             R3, R6
BCS             loc_12E6F0
ADD             R6, R12, R12,LSL#1
ADD             R9, R3, #8
ADD             R6, R5, R6,LSL#2
LDR             R6, [R6,#0x3A0]
STM             R3, {R6,LR}
STR             R9, [R0]
LDR             R3, [R5,#0x824]
ADD             R2, R2, #1
CMP             R3, R2
BHI             loc_12E650
LDR             R0, [R5,#4]
CMP             R0, #0
BEQ             loc_12E95C
LDR             R1, [SP,#0x880+var_28]
AND             R1, R1, #0x10
TST             R0, R1
BEQ             loc_12E83C
LDR             R0, =dword_6D4654
MOV             R3, #0xFFFFFFFF
STR             R3, [R4,#0x1BC]
STR             R3, [R4,#0x1B8]
STR             R3, [R4,#0x1B4]
LDR             R2, [R0]
MOV             R1, #0
CMP             R2, #0xBD
BEQ             loc_12E7A8
SUB             R2, R0, #0x70 ; 'p'
ADD             R12, R4, #0x400
LDR             R6, [R2,#(dword_6D45EC - 0x6D45E4)]
MOV             R7, #1
ADD             R12, R12, #0x26 ; '&'
LDR             R2, [R0,R1,LSL#2]
LDRB            R8, [R2,R12]
CMP             R8, #0
BEQ             loc_12E798
ADD             R8, R4, R2,LSL#2
ADD             R2, R6, R2,LSL#2
LDR             R8, [R8,#0x4E4]
ADD             R9, R2, #0x1000
MVN             R2, R8
STR             R2, [R9,#0xC]
LDR             R2, [R0,R1,LSL#2]
AND             R9, R2, #0x1F
MOV             R8, R2,ASR#5
ADD             R2, R4, R8,LSL#2
LDR             R8, [R2,#0x7D8]
ORR             R8, R8, R7,LSL R9
STR             R8, [R2,#0x7D8]
ADD             R1, R1, #1
LDR             R2, [R0,R1,LSL#2]
CMP             R2, #0xBD
BNE             loc_12E754
LDRB            R0, [R4,#0x424]
CMP             R0, #0
BEQ             loc_12E83C
LDR             R2, =dword_6D466C
STR             R3, [R4,#0x350]
STR             R3, [R4,#0x34C]
STR             R3, [R4,#0x348]
LDR             R0, [R2]
MOV             R1, #0
CMP             R0, #0xBD
BEQ             loc_12E83C
SUB             R0, R2, #0x88
ADD             R3, R4, #0x400
LDR             R12, [R0,#(dword_6D45EC - 0x6D45E4)]
MOV             R6, #1
ADD             R3, R3, #0x26 ; '&'
LDR             R0, [R2,R1,LSL#2]
LDRB            R7, [R0,R3]
CMP             R7, #0
BEQ             loc_12E82C
ADD             R7, R4, R0,LSL#2
ADD             R0, R12, R0,LSL#2
LDR             R7, [R7,#0x4E4]
ADD             R0, R0, #0x1000
MVN             R7, R7
STR             R7, [R0,#0xC]
LDR             R0, [R2,R1,LSL#2]
AND             R8, R0, #0x1F
MOV             R7, R0,ASR#5
ADD             R0, R4, R7,LSL#2
LDR             R7, [R0,#0x7D8]
ORR             R7, R7, R6,LSL R8
STR             R7, [R0,#0x7D8]
ADD             R1, R1, #1
LDR             R0, [R2,R1,LSL#2]
CMP             R0, #0xBD
BNE             loc_12E7E8
LDR             R0, [SP,#0x880+var_28]
LDR             R1, [R5,#4]
AND             R0, R0, #0x20 ; ' '
TST             R0, R1
BEQ             loc_12E8CC
LDR             R1, =dword_6D4684
MOV             R0, #0
LDR             R2, [R1]
CMP             R2, #0xBD
BEQ             loc_12E8CC
SUB             R2, R1, #0xA0
ADD             R12, R4, #0x400
LDR             R6, [R2,#(dword_6D45EC - 0x6D45E4)]
MOV             R3, #1
ADD             R12, R12, #0x26 ; '&'
LDR             R2, [R1,R0,LSL#2]
LDRB            R7, [R2,R12]
CMP             R7, #0
BEQ             loc_12E8BC
ADD             R7, R4, R2,LSL#2
ADD             R2, R6, R2,LSL#2
LDR             R7, [R7,#0x4E4]
ADD             R2, R2, #0x1000
MVN             R7, R7
STR             R7, [R2,#0xC]
LDR             R2, [R1,R0,LSL#2]
AND             R8, R2, #0x1F
MOV             R7, R2,ASR#5
ADD             R2, R4, R7,LSL#2
LDR             R7, [R2,#0x7D8]
ORR             R7, R7, R3,LSL R8
STR             R7, [R2,#0x7D8]
ADD             R0, R0, #1
LDR             R2, [R1,R0,LSL#2]
CMP             R2, #0xBD
BNE             loc_12E878
LDR             R0, [SP,#0x880+var_28]
LDR             R1, [R5,#4]
AND             R0, R0, #2
TST             R0, R1
BEQ             loc_12E95C
LDR             R1, =dword_6D45F4
MOV             R0, #0
LDR             R2, [R1]
CMP             R2, #0xBD
BEQ             loc_12E95C
SUB             R2, R1, #0x10
ADD             R12, R4, #0x400
LDR             R3, [R2,#(dword_6D45EC - 0x6D45E4)]
MOV             R6, #1
ADD             R12, R12, #0x26 ; '&'
LDR             R2, [R1,R0,LSL#2]
LDRB            R7, [R2,R12]
CMP             R7, #0
BEQ             loc_12E94C
ADD             R7, R4, R2,LSL#2
ADD             R8, R3, R2,LSL#2
LDR             R2, [R7,#0x4E4]
LDR             R7, =0x100C
MVN             R2, R2
STR             R2, [R7,R8]
LDR             R2, [R1,R0,LSL#2]
AND             R8, R2, #0x1F
MOV             R7, R2,ASR#5
ADD             R2, R4, R7,LSL#2
LDR             R7, [R2,#0x7D8]
ORR             R7, R7, R6,LSL R8
STR             R7, [R2,#0x7D8]
ADD             R0, R0, #1
LDR             R2, [R1,R0,LSL#2]
CMP             R2, #0xBD
BNE             loc_12E908
LDR             R0, [SP,#0x880+var_28]
TST             R0, #0x10
BEQ             loc_12ECC0
LDR             R0, [R4,#0x1B4]
CMP             R0, #0
LDREQ           R0, [R4,#0x1B8]
CMPEQ           R0, #0
BNE             loc_12E9A4
LDR             R0, [R4,#0x1BC]
CMP             R0, #0
LDREQ           R0, [R4,#0x348]
CMPEQ           R0, #0
BNE             loc_12E9A4
LDR             R0, [R4,#0x34C]
CMP             R0, #0
LDREQ           R0, [R4,#0x350]
CMPEQ           R0, #0
BEQ             loc_12ECC0
LDR             R9, [R4,#0x1C0]
CMP             R9, #0
BEQ             loc_12EB24
LDR             R0, [R4,#0x348]
CMP             R0, #0
LDREQ           R1, [R4,#0x34C]
CMPEQ           R1, #0
LDREQ           R1, [R4,#0x350]
CMPEQ           R1, #0
BEQ             loc_12EB24
MOV             R2, #0
TST             R0, #1
MOV             R7, #1
MOV             R12, R2
MOV             R10, R2
MOV             R6, R2
BNE             loc_12EA20
MOV             R1, R6,LSR#5
AND             R0, R6, #0x1F
ADD             R1, R4, R1,LSL#2
LDR             R1, [R1,#0x348]
MOVS            R0, R1,LSR R0
BICEQ           R0, R6, #0x1F
ADDEQ           R6, R0, #0x20 ; ' '
ADDNE           R6, R6, #1
AND             R3, R6, #0x1F
MOV             R0, R6,LSR#5
ADD             R0, R4, R0,LSL#2
LDR             R1, [R0,#0x348]
TST             R1, R7,LSL R3
BEQ             loc_12E9E8
LDR             R0, [R4,#0x344]
CMP             R0, R6
BLS             loc_12EB24
ADD             R0, R4, R6,LSL#2
CMP             R2, #0
LDR             R8, [R0,#0x1C4]
BEQ             loc_12EA8C
SUB             R0, R8, R12
CMP             R0, R10
ADDEQ           R10, R10, #1
BEQ             loc_12EA98
LDR             R0, =dword_6D241C
LDR             R3, =dword_6D2418
LDR             R1, [R0]
LDR             R0, [R3]
CMP             R0, R1
BCS             loc_12EA80
MOV             LR, R3
LDR             R3, =0xF0290
ORR             R12, R12, #0x80000000
ADD             R11, R0, #8
STR             R3, [R0,#4]
STR             R12, [R0]
STR             R11, [LR]
LDR             R0, =0x291
MOV             R1, R10,LSL#2
BL              sub_1378C8
MOV             R12, R8
MOV             R10, #1
ADD             R2, R9, R6,LSL#4
LDR             R0, [R4,#0x344]
ADD             R6, R6, #1
AND             R8, R6, #0x1F
MOV             R1, R6,LSR#5
ADD             R1, R4, R1,LSL#2
LDR             R1, [R1,#0x348]
TST             R1, R7,LSL R8
BNE             loc_12EAD8
B               loc_12EAD0
MOVS            R1, R1,LSR R8
BICEQ           R1, R6, #0x1F
ADDEQ           R6, R1, #0x20 ; ' '
ADDNE           R6, R6, #1
B               loc_12EAA0
CMP             R0, R6
BHI             loc_12EABC
CMP             R0, R6
BHI             loc_12EA2C
CMP             R2, #0
BEQ             loc_12EB24
LDR             R3, =dword_6D2418
LDR             R0, =dword_6D241C
LDR             R1, [R3]
LDR             R0, [R0]
CMP             R1, R0
BCS             loc_12EB18
LDR             R6, =0xF0290
ORR             R12, R12, #0x80000000
ADD             R7, R1, #8
STR             R6, [R1,#4]
STR             R12, [R1]
STR             R7, [R3]
LDR             R0, =0x291
MOV             R1, R10,LSL#2
BL              sub_1378C8
LDR             R9, [R4,#0x2C]
CMP             R9, #0
BEQ             loc_12ECA4
LDR             R0, [R4,#0x1B4]
CMP             R0, #0
LDREQ           R1, [R4,#0x1B8]
CMPEQ           R1, #0
LDREQ           R1, [R4,#0x1BC]
CMPEQ           R1, #0
BEQ             loc_12ECA4
MOV             R2, #0
TST             R0, #1
MOV             R8, #1
MOV             R11, R2
MOV             R12, R2
MOV             R6, R2
BNE             loc_12EBA0
MOV             R0, R6,LSR#5
AND             R1, R6, #0x1F
ADD             R0, R4, R0,LSL#2
LDR             R0, [R0,#0x1B4]
MOVS            R0, R0,LSR R1
BICEQ           R0, R6, #0x1F
ADDEQ           R6, R0, #0x20 ; ' '
ADDNE           R6, R6, #1
AND             R3, R6, #0x1F
MOV             R0, R6,LSR#5
ADD             R0, R4, R0,LSL#2
LDR             R1, [R0,#0x1B4]
TST             R1, R8,LSL R3
BEQ             loc_12EB68
LDR             R0, [R4,#0x1B0]
CMP             R0, R6
BLS             loc_12ECA4
ADD             R0, R4, R6,LSL#2
CMP             R2, #0
LDR             R7, [R0,#0x30]
BEQ             loc_12EC0C
SUB             R0, R7, R11
CMP             R0, R12
ADDEQ           R12, R12, #1
BEQ             loc_12EC18
LDR             R0, =dword_6D241C
LDR             R3, =dword_6D2418
LDR             R1, [R0]
LDR             R0, [R3]
CMP             R0, R1
BCS             loc_12EC00
MOV             LR, R3
LDR             R3, =0xF02C0
ORR             R10, R11, #0x80000000
ADD             R11, R0, #8
STR             R3, [R0,#4]
STR             R10, [R0]
STR             R11, [LR]
LDR             R0, =0x2C1
MOV             R1, R12,LSL#2
BL              sub_1378C8
MOV             R11, R7
MOV             R12, #1
ADD             R2, R9, R6,LSL#4
LDR             R1, [R4,#0x1B0]
ADD             R6, R6, #1
AND             R3, R6, #0x1F
MOV             R0, R6,LSR#5
ADD             R0, R4, R0,LSL#2
LDR             R10, [R0,#0x1B4]
TST             R10, R8,LSL R3
BNE             loc_12EC58
B               loc_12EC50
MOVS            R0, R10,LSR R3
BICEQ           R0, R6, #0x1F
ADDEQ           R6, R0, #0x20 ; ' '
ADDNE           R6, R6, #1
B               loc_12EC20
CMP             R1, R6
BHI             loc_12EC3C
CMP             R1, R6
BHI             loc_12EBAC
CMP             R2, #0
BEQ             loc_12ECA4
LDR             R1, =dword_6D2418
LDR             R0, =dword_6D241C
LDR             R3, [R1]
LDR             R0, [R0]
CMP             R3, R0
BCS             loc_12EC98
LDR             R6, =0xF02C0
ORR             R8, R11, #0x80000000
ADD             R7, R3, #8
STR             R6, [R3,#4]
STR             R8, [R3]
STR             R7, [R1]
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
LDR             R0, [SP,#0x880+var_28]
VLDR            S17, =0.0
TST             R0, #0x400
BEQ             loc_12EE98
LDR             R0, [SP,#0x880+var_2C]
LDR             R0, [R0]
TST             R0, #4
BEQ             loc_12EE98
ADD             R0, R4, #0xC00
VLDR            S1, [R0,#0x24C]
VCMP.F32        S1, S17
VMRS            APSR_nzcv, FPSCR
ADDEQ           R0, R5, #0x4C ; 'L'
VLDMEQ          R0, {S0-S1}
LDRB            R0, [R5,#0x54]
VSUBEQ.F32      S1, S0, S1
VMOVNE.F32      S0, S17
VNEGNE.F32      S1, S1
CMP             R0, #0
VLDRNE          S2, [R5,#0x44]
VCMPNE.F32      S2, S17
VMRSNE          APSR_nzcv, FPSCR
BEQ             loc_12ED30
LDR             R0, [R5,#0x68C]
CMP             R0, #0
VLDRNE          S3, =5.9605e-8
VLDREQ          S3, =0.000015259
VMLA.F32        S0, S2, S3
VMOV            R0, S1
BICS            R1, R0, #0x80000000
BEQ             loc_12ED48
MOV             R1, R0,LSL#1
MOV             R1, R1,LSR#24
SUB             R1, R1, #0x40 ; '@'
MOV             R2, R0,LSL#9
VCMP.F32        S0, S17
CMP             R1, #0
MOV             R2, R2,LSR#16
MOV             R0, R0,LSR#31
ORRGE           R1, R2, R1,LSL#16
ORRGE           R2, R1, R0,LSL#23
MOVLT           R2, R0,LSL#23
VMRS            APSR_nzcv, FPSCR
MOVEQ           R0, #0
BEQ             loc_12EDA8
VMOV            R0, S0
BICS            R1, R0, #0x80000000
BEQ             loc_12ED8C
MOV             R1, R0,LSL#1
MOV             R1, R1,LSR#24
SUB             R1, R1, #0x40 ; '@'
MOV             R3, R0,LSL#9
CMP             R1, #0
MOV             R3, R3,LSR#16
MOV             R0, R0,LSR#31
ORRGE           R1, R3, R1,LSL#16
ORRGE           R0, R1, R0,LSL#23
MOVLT           R0, R0,LSL#23
LDRB            R3, [R4,#0x43D]
ORR             R3, R3, #0xF
STRB            R3, [R4,#0x43D]
LDRB            R1, [R5,#0xC]
CMP             R1, #0
BEQ             loc_12EDF8
STR             R2, [R4,#0x540]
LDR             R3, [R4,#0x7D8]
LDR             R1, =dword_6D45E4
ORR             R3, R3, #0x800000
STR             R3, [R4,#0x7D8]
LDR             R2, [R5]
ORR             R2, R2, #0x80000
STR             R2, [R5]
LDR             R2, [R4,#0x540]
LDR             R3, [R1,#(dword_6D45EC - 0x6D45E4)]
MVN             R1, R2
LDR             R2, =0x1068
STR             R1, [R2,R3]
B               loc_12EE20
LDR             R1, [R4,#0x540]
CMP             R1, R2
BEQ             loc_12EE20
STR             R2, [R4,#0x540]
LDR             R2, [R4,#0x7D8]
ORR             R2, R2, #0x800000
STR             R2, [R4,#0x7D8]
LDR             R1, [R5]
ORR             R1, R1, #0x80000
STR             R1, [R5]
LDRB            R2, [R4,#0x43E]
ORR             R2, R2, #0xF
STRB            R2, [R4,#0x43E]
LDRB            R1, [R5,#0xC]
CMP             R1, #0
BEQ             loc_12EE70
STR             R0, [R4,#0x544]
LDR             R2, [R4,#0x7D8]
ORR             R2, R2, #0x1000000
STR             R2, [R4,#0x7D8]
LDR             R0, [R5]
ORR             R0, R0, #0x80000
STR             R0, [R5]
LDR             R0, =dword_6D45E4
LDR             R1, [R4,#0x544]
LDR             R0, [R0,#(dword_6D45EC - 0x6D45E4)]
MVN             R1, R1
ADD             R0, R0, #0x1000
STR             R1, [R0,#0x6C]
B               loc_12EE98
LDR             R1, [R4,#0x544]
CMP             R1, R0
BEQ             loc_12EE98
STR             R0, [R4,#0x544]
LDR             R1, [R4,#0x7D8]
ORR             R1, R1, #0x1000000
STR             R1, [R4,#0x7D8]
LDR             R0, [R5]
ORR             R0, R0, #0x80000
STR             R0, [R5]
LDR             R0, [SP,#0x880+var_28]
TST             R0, #0x20
BEQ             loc_12EF38
LDR             R1, [R4,#0x624]
MOV             R0, #7
BICS            R0, R0, R1
BNE             loc_12EF08
LDRB            R0, [R4,#0xE74]
CMP             R0, #0
LDR             R0, =dword_6D45E4
BEQ             loc_12EEE4
LDR             R2, [R4,#0x630]
LDR             R1, [R0,#(dword_6D45EC - 0x6D45E4)]
ADD             R0, R4, #0x7E0
ADD             R1, R1, #0x1000
STR             R2, [R1,#0x158]
LDR             R1, [R4,#0x7E0]
BIC             R1, R1, #0x80000
B               loc_12EF04
LDR             R0, [R0,#(dword_6D45EC - 0x6D45E4)]
LDR             R1, [R4,#0x630]
ADD             R0, R0, #0x1000
MVN             R1, R1
STR             R1, [R0,#0x158]
LDR             R1, [R4,#0x7E0]
ADD             R0, R4, #0x7E0
ORR             R1, R1, #0x80000
STR             R1, [R0]
LDR             R0, [R4,#0x590]
TST             R0, #1
MOVNE           R0, #0
BEQ             loc_12EF38
RSB             R1, R0, R0,LSL#3
ADD             R1, R4, R1,LSL#4
LDRB            R1, [R1,#0xA20]
CMP             R1, #0
BNE             loc_12EF38
ADD             R0, R0, #1
CMP             R0, #8
BLT             loc_12EF18
LDR             R0, [SP,#0x880+var_28]
LDR             LR, =unk_70D010
TST             R0, #0x10
BEQ             loc_12F164
LDR             R0, =dword_6D466C
MOV             R1, #0
LDR             R2, [R0]
CMP             R2, #0xBD
BEQ             loc_12F030
SUB             R2, R0, #0x88
LDR             R6, =dword_6D2418
LDR             R2, [R2,#(dword_6D45EC - 0x6D45E4)]
ADD             R9, R4, #0x400
MOV             R3, #1
ADD             R9, R9, #0x26 ; '&'
STR             R2, [SP,#0x880+var_874]
LDR             R12, [R0,R1,LSL#2]
AND             R7, R12, #0x1F
MOV             R2, R12,ASR#5
ADD             R2, R4, R2,LSL#2
LDR             R2, [R2,#0x7D8]
TST             R2, R3,LSL R7
BEQ             loc_12F020
LDR             R2, [SP,#0x880+var_874]
ADD             R7, R4, R12,LSL#2
ADD             R7, R7, #0x400
ADD             R2, R2, R12,LSL#2
LDRB            R12, [R12,R9]
ADD             R8, R2, #0x1000
ADD             R7, R7, #0xE4
CMP             R12, #0
ADD             R8, R8, #0xC
BEQ             loc_12F004
LDR             R10, [R7]
LDR             R2, [R8]
CMP             R10, R2
BEQ             loc_12F004
LDR             R2, =dword_6D241C
LDR             R11, [R2]
LDR             R2, [R6]
CMP             R11, R2
BLS             loc_12EFFC
STR             R10, [R2],#4
LDR             R10, [R0,R1,LSL#2]
ADD             R11, R2, #4
LDR             R10, [LR,R10,LSL#2]
ORR             R12, R10, R12,LSL#16
STR             R12, [R2]
STR             R11, [R6]
LDR             R2, [R7]
STR             R2, [R8]
LDR             R2, [R0,R1,LSL#2]
AND             R7, R2, #0x1F
MOV             R12, R2,ASR#5
ADD             R2, R4, R12,LSL#2
LDR             R12, [R2,#0x7D8]
BIC             R12, R12, R3,LSL R7
STR             R12, [R2,#0x7D8]
ADD             R1, R1, #1
LDR             R2, [R0,R1,LSL#2]
CMP             R2, #0xBD
BNE             loc_12EF78
LDR             R0, =dword_6D4654
MOV             R1, #0
B               loc_12F084
DCD 0x76543210
DCD 0xFEDCBA98
DCD 0x80C2
DCD 0xF0232
DCD dword_6D4654
DCD dword_6D466C
DCD dword_6D4684
DCD dword_6D45F4
DCD 0x100C
DCD 0xF0290
DCD 0x291
DCD 0xF02C0
DCD 0x2C1
DCFS 0.0
DCFS 5.9605e-8
DCFS 0.000015259
DCD 0x1068
DCD unk_70D010
LDR             R2, [R0]
CMP             R2, #0xBD
BEQ             loc_12F164
SUB             R2, R0, #0x70 ; 'p'
LDR             R6, =dword_6D2418
LDR             R2, [R2,#(dword_6D45EC - 0x6D45E4)]
ADD             R9, R4, #0x400
MOV             R3, #1
ADD             R9, R9, #0x26 ; '&'
STR             R2, [SP,#0x880+var_874]
LDR             R12, [R0,R1,LSL#2]
AND             R7, R12, #0x1F
MOV             R2, R12,ASR#5
ADD             R2, R4, R2,LSL#2
LDR             R2, [R2,#0x7D8]
TST             R2, R3,LSL R7
BEQ             loc_12F154
LDR             R2, [SP,#0x880+var_874]
ADD             R7, R4, R12,LSL#2
ADD             R7, R7, #0x400
ADD             R2, R2, R12,LSL#2
LDRB            R12, [R12,R9]
ADD             R8, R2, #0x1000
ADD             R7, R7, #0xE4
CMP             R12, #0
ADD             R8, R8, #0xC
BEQ             loc_12F138
LDR             R10, [R7]
LDR             R2, [R8]
CMP             R10, R2
BEQ             loc_12F138
LDR             R2, =dword_6D241C
LDR             R11, [R2]
LDR             R2, [R6]
CMP             R11, R2
BLS             loc_12F130
STR             R10, [R2],#4
LDR             R10, [R0,R1,LSL#2]
ADD             R11, R2, #4
LDR             R10, [LR,R10,LSL#2]
ORR             R12, R10, R12,LSL#16
STR             R12, [R2]
STR             R11, [R6]
LDR             R2, [R7]
STR             R2, [R8]
LDR             R2, [R0,R1,LSL#2]
AND             R7, R2, #0x1F
MOV             R12, R2,ASR#5
ADD             R2, R4, R12,LSL#2
LDR             R12, [R2,#0x7D8]
BIC             R12, R12, R3,LSL R7
STR             R12, [R2,#0x7D8]
ADD             R1, R1, #1
LDR             R2, [R0,R1,LSL#2]
CMP             R2, #0xBD
BNE             loc_12F0AC
LDR             R0, [SP,#0x880+var_28]
TST             R0, #2
BEQ             loc_12F258
LDR             R0, =dword_6D45F4
MOV             R1, #0
LDR             R2, [R0]
CMP             R2, #0xBD
BEQ             loc_12F258
SUB             R2, R0, #0x10
LDR             R6, =dword_6D2418
LDR             R2, [R2,#(dword_6D45EC - 0x6D45E4)]
ADD             R9, R4, #0x400
MOV             R3, #1
ADD             R9, R9, #0x26 ; '&'
STR             R2, [SP,#0x880+var_874]
LDR             R12, [R0,R1,LSL#2]
AND             R7, R12, #0x1F
MOV             R2, R12,ASR#5
ADD             R2, R4, R2,LSL#2
LDR             R2, [R2,#0x7D8]
TST             R2, R3,LSL R7
BEQ             loc_12F248
LDR             R2, [SP,#0x880+var_874]
ADD             R7, R4, R12,LSL#2
ADD             R7, R7, #0x400
ADD             R2, R2, R12,LSL#2
LDRB            R12, [R12,R9]
ADD             R8, R2, #0x1000
ADD             R7, R7, #0xE4
CMP             R12, #0
ADD             R8, R8, #0xC
BEQ             loc_12F22C
LDR             R10, [R7]
LDR             R2, [R8]
CMP             R10, R2
BEQ             loc_12F22C
LDR             R2, =dword_6D241C
LDR             R11, [R2]
LDR             R2, [R6]
CMP             R11, R2
BLS             loc_12F224
STR             R10, [R2],#4
LDR             R10, [R0,R1,LSL#2]
ADD             R11, R2, #4
LDR             R10, [LR,R10,LSL#2]
ORR             R12, R10, R12,LSL#16
STR             R12, [R2]
STR             R11, [R6]
LDR             R2, [R7]
STR             R2, [R8]
LDR             R2, [R0,R1,LSL#2]
MOV             R12, R2,ASR#5
AND             R2, R2, #0x1F
ADD             R12, R4, R12,LSL#2
LDR             R7, [R12,#0x7D8]
BIC             R2, R7, R3,LSL R2
STR             R2, [R12,#0x7D8]
ADD             R1, R1, #1
LDR             R2, [R0,R1,LSL#2]
CMP             R2, #0xBD
BNE             loc_12F1A0
LDR             R0, [SP,#0x880+var_28]
TST             R0, #0x20
BEQ             loc_12F34C
LDR             R0, =dword_6D4684
MOV             R1, #0
LDR             R2, [R0]
CMP             R2, #0xBD
BEQ             loc_12F34C
SUB             R2, R0, #0xA0
LDR             R6, =dword_6D2418
LDR             R2, [R2,#(dword_6D45EC - 0x6D45E4)]
ADD             R9, R4, #0x400
MOV             R3, #1
ADD             R9, R9, #0x26 ; '&'
STR             R2, [SP,#0x880+var_874]
LDR             R12, [R0,R1,LSL#2]
AND             R7, R12, #0x1F
MOV             R2, R12,ASR#5
ADD             R2, R4, R2,LSL#2
LDR             R2, [R2,#0x7D8]
TST             R2, R3,LSL R7
BEQ             loc_12F33C
LDR             R2, [SP,#0x880+var_874]
ADD             R7, R4, R12,LSL#2
ADD             R7, R7, #0x400
ADD             R2, R2, R12,LSL#2
LDRB            R12, [R12,R9]
ADD             R8, R2, #0x1000
ADD             R7, R7, #0xE4
CMP             R12, #0
ADD             R8, R8, #0xC
BEQ             loc_12F320
LDR             R10, [R7]
LDR             R2, [R8]
CMP             R10, R2
BEQ             loc_12F320
LDR             R2, =dword_6D241C
LDR             R11, [R2]
LDR             R2, [R6]
CMP             R11, R2
BLS             loc_12F318
STR             R10, [R2],#4
LDR             R10, [R0,R1,LSL#2]
ADD             R11, R2, #4
LDR             R10, [LR,R10,LSL#2]
ORR             R12, R10, R12,LSL#16
STR             R12, [R2]
STR             R11, [R6]
LDR             R2, [R7]
STR             R2, [R8]
LDR             R2, [R0,R1,LSL#2]
AND             R12, R2, #0x1F
MOV             R7, R2,ASR#5
ADD             R2, R4, R7,LSL#2
LDR             R7, [R2,#0x7D8]
BIC             R12, R7, R3,LSL R12
STR             R12, [R2,#0x7D8]
ADD             R1, R1, #1
LDR             R2, [R0,R1,LSL#2]
CMP             R2, #0xBD
BNE             loc_12F294
LDR             R0, [SP,#0x880+var_28]
TST             R0, #0x40
BEQ             loc_13093C
LDR             R0, [R4,#0x590]
VLDR            S21, =4096.0
VLDR            S20, =2048.0
TST             R0, #1
BEQ             loc_12FA94
LDR             R0, [SP,#0x880+var_2C]
LDR             R1, =0x4008
LDR             R0, [R0]
TST             R0, R1
BEQ             loc_12FA94
LDR             R9, =0xF01C5
LDR             R10, =0xFFF
LDR             R8, =0x45800000
VLDR            S22, =2047.0
MOV             R7, #0
LDR             R0, [R4,#0xA0C]
MOV             R0, R0,LSR R7
TST             R0, #1
BEQ             loc_12F5E4
LDR             R0, =unk_69A2A0
LDR             R1, [R0,R7,LSL#2]
LDR             R0, [R4,#0x7C0]
MOV             R0, R0,LSR R1
TST             R0, #1
BNE             loc_12F5E4
ADD             R0, R4, R7,LSL#2
LDR             R0, [R0,#0x9F4]
CMN             R0, #1
BEQ             loc_12F5F0
ADD             R1, R5, R0,LSL#2
LDR             R11, [R1,#0x74]
CMP             R11, #0
BEQ             loc_12F5F0
BL              sub_13BC04
MOVS            R6, R0
NOP
BEQ             loc_12F5F0
ADD             R0, R5, R7,LSL#2
STR             R0, [SP,#0x880+var_880]
LDR             R0, [R0,#0x10C]
CMP             R0, R11
LDR             R0, [SP,#0x880+var_880]
LDR             R0, [R0,#0x190]
BNE             loc_12F474
CMP             R0, #0
BEQ             loc_12F5E4
LDR             R1, =dword_6D2418
LDR             R0, =dword_6D241C
LDR             R2, [R1]
LDR             R0, [R0]
CMP             R2, R0
BCS             loc_12F448
LDR             R0, =unk_69A2B8
LDR             R12, [R0,R7,LSL#2]
LDR             R0, [SP,#0x880+var_880]
LDR             R3, [R0,#0x214]
ORR             R3, R3, R12,LSL#8
STM             R2, {R3,R9}
ADD             R12, R2, #8
STR             R12, [R1]
LDR             R0, [SP,#0x880+var_880]
LDR             R2, [R6,#0x804]
LDR             R1, [R0,#0x190]!
LDR             R3, [R0,#0x84]
MOV             R0, #0x1C8
ADD             R2, R2, R3,LSL#2
BL              sub_1378C8
LDR             R1, [SP,#0x880+var_880]
MOV             R0, #0
STR             R0, [R1,#0x190]
B               loc_12F5E4
CMP             R0, #0
BEQ             loc_12F488
LDR             R1, [SP,#0x880+var_880]
MOV             R0, #0
STR             R0, [R1,#0x190]
LDR             R0, [SP,#0x880+var_880]
STR             R11, [R0,#0x10C]
ADD             R0, R6, #0x800
ADD             R0, R0, #0x1C
STR             R0, [SP,#0x880+var_864]
LDR             R0, [R6,#0x81C]
TST             R0, #1
BEQ             loc_12F598
LDR             R0, [R6,#0x804]
CMP             R0, #0
BNE             loc_12F4E0
LDR             R0, =off_6D2428
LDR             R12, [R0]
CMP             R12, #0
MOVEQ           R0, #0
BEQ             loc_12F4DC
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
BLS             loc_12F510
MOV             R0, R0,LSL#1
CMP             R3, R0,LSR#24
BNE             loc_12F65C
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
BEQ             loc_12F570
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
BLT             loc_12F4EC
LDR             R0, [R6,#0x81C]
BIC             R1, R0, #1
LDR             R0, [SP,#0x880+var_864]
STR             R1, [R0]
LDR             R2, =dword_6D2418
LDR             R0, =dword_6D241C
LDR             R1, [R2]
LDR             R0, [R0]
CMP             R1, R0
BCS             loc_12F5CC
LDR             R0, =unk_69A2B8
LDR             R3, [R0,R7,LSL#2]
STR             R9, [R1,#4]
MOV             R12, R3,LSL#8
ADD             R3, R1, #8
STR             R12, [R1]
STR             R3, [R2]
LDR             R2, [R6,#0x804]
MOV             R1, #0x100
MOV             R0, #0x1C8
BL              sub_1378C8
MOV             R0, #1
STR             R0, [SP,#0x880+var_68]
ADD             R7, R7, #1
CMP             R7, #6
BLT             loc_12F394
MOV             R7, #0
RSB             R0, R7, R7,LSL#3
ADD             R8, R4, R0,LSL#4
LDRB            R0, [R8,#0xA20]
CMP             R0, #0
BEQ             loc_12FA88
LDR             R0, [R4,#0xA0C]
MOVS            R0, R0,LSL#25
BPL             loc_12F864
LDR             R0, [R4,#0x7C0]
ADD             R1, R7, #8
MOV             R0, R0,LSR R1
TST             R0, #1
BNE             loc_12F864
B               loc_12F678
DCD dword_6D241C
DCD dword_6D2418
DCFS 4096.0
DCFS 2048.0
DCD 0x4008
DCFS 2047.0
DCD 0xF01C5
DCD 0xFFF
DCD 0x45800000
DCD unk_69A2A0
DCD unk_69A2B8
DCD off_6D2428
VMUL.F32        S0, S0, S21
VMOV            R0, S0
CMP             R8, R0
VCVTGT.U32.F32  S0, S0
MOVLE           R0, R12
VMOVGT          R0, S0
B               loc_12F514
LDR             R0, [R8,#0xA80]
ADD             R1, R5, R0,LSL#2
LDR             R10, [R1,#0x74]
BL              sub_13BC04
ADD             R9, R5, R7,LSL#2
MOV             R6, R0
LDR             R0, [R9,#0x124]
CMP             R0, R10
LDR             R0, [R9,#0x1A8]
BNE             loc_12F704
CMP             R0, #0
BEQ             loc_12F864
LDR             R1, =dword_6D2418
LDR             R0, =dword_6D241C
LDR             R2, [R1]
LDR             R0, [R0]
CMP             R2, R0
BCS             loc_12F6E0
LDR             R3, [R9,#0x22C]
MOV             R12, R7,LSL#8
LDR             R10, =0xF01C5
ADD             R11, R12, #0x800
ORR             R3, R3, R11
STM             R2, {R3,R10}
ADD             R12, R2, #8
STR             R12, [R1]
LDR             R2, [R9,#0x22C]
LDR             R0, [R6,#0x804]
LDR             R1, [R9,#0x1A8]
ADD             R2, R0, R2,LSL#2
MOV             R0, #0x1C8
BL              sub_1378C8
MOV             R0, #0
STR             R0, [R9,#0x1A8]
B               loc_12F864
CMP             R0, #0
MOVNE           R0, #0
STRNE           R0, [R9,#0x1A8]
STR             R10, [R9,#0x124]
LDR             R0, [R6,#0x81C]
ADD             R10, R6, #0x800
ADD             R10, R10, #0x1C
TST             R0, #1
BEQ             loc_12F818
LDR             R0, [R6,#0x804]
CMP             R0, #0
BNE             loc_12F760
LDR             R0, =off_6D2428
LDR             R12, [R0]
CMP             R12, #0
MOVEQ           R0, #0
BEQ             loc_12F75C
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
BLS             loc_12F794
MOV             R0, R0,LSL#1
CMP             R3, R0,LSR#24
BNE             loc_12F87C
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
BEQ             loc_12F7F4
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
ORR             R2, R0, R2,LSL#12
LDR             R0, [R6,#0x804]
STR             R2, [R0,R1,LSL#2]
ADD             R1, R1, #1
CMP             R1, #0x100
BLT             loc_12F770
LDR             R0, [R6,#0x81C]
BIC             R0, R0, #1
STR             R0, [R10]
LDR             R2, =dword_6D2418
LDR             R0, =dword_6D241C
LDR             R1, [R2]
LDR             R0, [R0]
CMP             R1, R0
BCS             loc_12F84C
MOV             R3, R7,LSL#8
ADD             R12, R3, #0x800
LDR             R3, =0xF01C5
ADD             R9, R1, #8
STR             R3, [R1,#4]
STR             R12, [R1]
STR             R9, [R2]
LDR             R2, [R6,#0x804]
MOV             R1, #0x100
MOV             R0, #0x1C8
BL              sub_1378C8
MOV             R0, #1
STR             R0, [SP,#0x880+var_68]
LDR             R0, [R4,#0x7C0]
ADD             R1, R7, #0x18
MOV             R0, R0,LSR R1
TST             R0, #1
BEQ             loc_12F898
B               loc_12FA88
VMUL.F32        S0, S0, S21
VMOV            R0, S0
CMP             R12, R0
VCVTGT.U32.F32  S0, S0
MOVLE           R0, R9
VMOVGT          R0, S0
B               loc_12F798
LDR             R0, [R8,#0xA8C]
ADD             R1, R5, R0,LSL#2
LDR             R9, [R1,#0x74]
BL              sub_13BC04
ADD             R8, R5, R7,LSL#2
MOV             R6, R0
LDR             R0, [R8,#0x144]
CMP             R0, R9
LDR             R0, [R8,#0x1C8]
BNE             loc_12F928
CMP             R0, #0
BEQ             loc_12FA88
LDR             R0, =dword_6D241C
LDR             R2, =dword_6D2418
LDR             R1, [R0]
LDR             R0, [R2]
CMP             R0, R1
BCS             loc_12F904
LDR             R12, [R8,#0x24C]
LDR             R3, =0xF01C5
MOV             R9, R7,LSL#8
ADD             R10, R9, #0x1000
ORR             R12, R12, R10
STR             R3, [R0,#4]
ADD             R9, R0, #8
STR             R12, [R0]
STR             R9, [R2]
LDR             R2, [R8,#0x24C]
LDR             R0, [R6,#0x804]
LDR             R1, [R8,#0x1C8]
ADD             R2, R0, R2,LSL#2
MOV             R0, #0x1C8
BL              sub_1378C8
MOV             R0, #0
STR             R0, [R8,#0x1C8]
B               loc_12FA88
CMP             R0, #0
MOVNE           R0, #0
STRNE           R0, [R8,#0x1C8]
STR             R9, [R8,#0x144]
LDR             R0, [R6,#0x81C]
ADD             R9, R6, #0x800
ADD             R9, R9, #0x1C
TST             R0, #1
BEQ             loc_12FA3C
LDR             R0, [R6,#0x804]
CMP             R0, #0
BNE             loc_12F984
LDR             R0, =off_6D2428
LDR             R12, [R0]
CMP             R12, #0
MOVEQ           R0, #0
BEQ             loc_12F980
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
BLS             loc_12F9B8
MOV             R0, R0,LSL#1
CMP             R3, R0,LSR#24
BNE             loc_12FAE0
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
BEQ             loc_12FA18
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
BLT             loc_12F994
LDR             R0, [R6,#0x81C]
BIC             R0, R0, #1
STR             R0, [R9]
LDR             R0, =dword_6D241C
LDR             R2, =dword_6D2418
LDR             R1, [R0]
LDR             R0, [R2]
CMP             R0, R1
BCS             loc_12FA70
MOV             R3, R7,LSL#8
ADD             R12, R3, #0x1000
LDR             R3, =0xF01C5
ADD             R8, R0, #8
STR             R3, [R0,#4]
STR             R12, [R0]
STR             R8, [R2]
LDR             R2, [R6,#0x804]
MOV             R1, #0x100
MOV             R0, #0x1C8
BL              sub_1378C8
MOV             R0, #1
STR             R0, [SP,#0x880+var_68]
ADD             R7, R7, #1
CMP             R7, #8
BLT             loc_12F5F4
LDR             R0, [R4,#0xE0C]
VLDR            S18, =255.0
CMP             R0, #0
BEQ             loc_13040C
LDR             R0, [SP,#0x880+var_2C]
LDR             R1, =0x4020
LDR             R0, [R0]
TST             R0, R1
BEQ             loc_13040C
LDR             R1, =dword_6989B0
ADD             R2, SP, #0x880+var_60
LDR             R8, =0x45800000
MOV             R7, #0
LDRD            R0, R1, [R1,#(dword_6989B8 - 0x6989B0)]
ADD             R10, SP, #0x880+var_60
VLDR            S22, =4095.0
VLDR            S19, =1.0
STM             R2, {R0,R1}
B               loc_12FB10
VMUL.F32        S0, S0, S21
VMOV            R0, S0
CMP             R12, R0
VCVTGT.U32.F32  S0, S0
MOVLE           R0, R8
VMOVGT          R0, S0
B               loc_12F9BC
CMP             R7, #1
BNE             loc_12FB10
LDR             R0, [R4,#0x594]
TST             R0, #0x4000
BEQ             loc_12FD3C
ADD             R0, R4, R7,LSL#2
LDR             R0, [R0,#0xDF0]
ADD             R1, R5, R0,LSL#2
LDR             R11, [R1,#0x74]
BL              sub_13BC04
ADD             R9, R5, R7,LSL#2
MOV             R6, R0
LDR             R0, [R9,#0x164]
CMP             R0, R11
LDR             R0, [R9,#0x1E8]
BNE             loc_12FBA0
CMP             R0, #0
BEQ             loc_12FD30
LDR             R0, =dword_6D241C
LDR             R1, =dword_6D2418
LDR             R2, [R0]
LDR             R0, [R1]
CMP             R0, R2
BCS             loc_12FB7C
LDR             R11, [R10,R7,LSL#2]
LDR             R12, [R9,#0x26C]
LDR             R3, =0xF00AF
ORR             R12, R12, R11,LSL#8
STR             R3, [R0,#4]
ADD             R11, R0, #8
STR             R12, [R0]
STR             R11, [R1]
LDR             R0, [R9,#0x26C]
LDR             R2, [R6,#0x810]
LDR             R1, [R9,#0x1E8]
ADD             R2, R2, R0,LSL#2
MOV             R0, #0xB0
BL              sub_1378C8
MOV             R0, #0
STR             R0, [R9,#0x1E8]
B               loc_12FD30
CMP             R0, #0
MOVNE           R0, #0
STRNE           R0, [R9,#0x1E8]
STR             R11, [R9,#0x164]
LDR             R0, [R6,#0x81C]
ADD             R9, R6, #0x800
ADD             R9, R9, #0x1C
TST             R0, #8
BEQ             loc_12FCE4
LDR             R0, [R6,#0x810]
CMP             R0, #0
BNE             loc_12FBFC
LDR             R0, =off_6D2428
LDR             R12, [R0]
CMP             R12, #0
MOVEQ           R0, #0
BEQ             loc_12FBF8
MOV             R3, #0x200
MOV             R2, #0
MOV             R1, #0x100
MOV             R0, #0x10000
BLX             R12
STR             R0, [R6,#0x810]
LDR             R12, =0xFFF
MOV             R1, #0
MOV             R3, #0xFF
ADD             R2, R6, R1,LSL#2
VLDR            S0, [R2,#4]
VMOV            R0, S0
VCMPE.F32       S0, S17
VMRS            APSR_nzcv, FPSCR
BLS             loc_12FC2C
MOV             R0, R0,LSL#1
CMP             R3, R0,LSR#24
BNE             loc_12FC98
MOV             R0, #0
LDR             R11, [R6,#0x810]
STR             R0, [R11,R1,LSL#2]
VLDR            S0, [R2,#0x204]
VMOV            R2, S0
VCMP.F32        S0, S17
VMRS            APSR_nzcv, FPSCR
MOVNE           R2, R2,LSL#1
CMPNE           R3, R2,LSR#24
MOVEQ           R2, #0
BEQ             loc_12FCC0
VADD.F32        S0, S0, S19
VMUL.F32        S16, S0, S20
VCMPE.F32       S17, S16
VMRS            APSR_nzcv, FPSCR
VMOVGT.F32      S16, S17
BGT             loc_12FCB4
VMOV            R2, S16
CMP             R2, R8
VMOVLT          R2, S16
VMOVGE.F32      S16, S22
CMPLT           R2, #0x45000000
BLT             loc_12FCB4
VSUB.F32        S0, S16, S20
VCVT.U32.F32    S0, S0
VMOV            R2, S0
B               loc_12FCC0
VMUL.F32        S0, S0, S21
VMOV            R0, S0
CMP             R8, R0
VCVTGT.U32.F32  S0, S0
MOVLE           R0, R12
VMOVGT          R0, S0
B               loc_12FC30
VADD.F32        S0, S16, S20
VCVT.U32.F32    S0, S0
VMOV            R2, S0
ORR             R2, R0, R2,LSL#12
LDR             R0, [R6,#0x810]
STR             R2, [R0,R1,LSL#2]
ADD             R1, R1, #1
CMP             R1, #0x80
BLT             loc_12FC08
LDR             R0, [R6,#0x81C]
BIC             R0, R0, #8
STR             R0, [R9]
LDR             R0, =dword_6D241C
LDR             R2, =dword_6D2418
LDR             R1, [R0]
LDR             R0, [R2]
CMP             R0, R1
BCS             loc_12FD18
LDR             R12, [R10,R7,LSL#2]
LDR             R3, =0xF00AF
MOV             R9, R12,LSL#8
STR             R3, [R0,#4]
ADD             R12, R0, #8
STR             R9, [R0]
STR             R12, [R2]
LDR             R2, [R6,#0x810]
MOV             R1, #0x80
MOV             R0, #0xB0
BL              sub_1378C8
MOV             R0, #1
STR             R0, [SP,#0x880+var_68]
ADD             R7, R7, #1
CMP             R7, #2
BLT             loc_12FAFC
LDR             R0, [R4,#0x594]
TST             R0, #0x8000
BEQ             loc_12FF6C
LDR             R0, [R4,#0xDF8]
ADD             R1, R5, R0,LSL#2
LDR             R7, [R1,#0x74]
BL              sub_13BC04
MOV             R6, R0
LDR             R0, [R5,#0x16C]
CMP             R0, R7
LDR             R0, [R5,#0x1F0]
BNE             loc_12FDE0
CMP             R0, #0
BEQ             loc_12FF6C
LDR             R0, =dword_6D241C
LDR             R2, =dword_6D2418
LDR             R1, [R0]
LDR             R0, [R2]
CMP             R0, R1
BCS             loc_12FDA4
LDR             R3, =0xF00AF
LDR             R12, [R5,#0x274]
ADD             R7, R0, #8
STR             R3, [R0,#4]
STR             R12, [R0]
STR             R7, [R2]
LDR             R2, [R5,#0x274]
LDR             R0, [R6,#0x814]
LDR             R1, [R5,#0x1F0]
ADD             R2, R0, R2,LSL#2
MOV             R0, #0xB0
BL              sub_1378C8
MOV             R0, #0
STR             R0, [R5,#0x1F0]
B               loc_12FF6C
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
BEQ             loc_12FF24
LDR             R0, [R6,#0x814]
CMP             R0, #0
BNE             loc_12FE3C
LDR             R0, =off_6D2428
LDR             R12, [R0]
CMP             R12, #0
MOVEQ           R0, #0
BEQ             loc_12FE38
MOV             R3, #0x200
MOV             R2, #0
MOV             R1, #0x100
MOV             R0, #0x10000
BLX             R12
STR             R0, [R6,#0x814]
LDR             R12, =0xFFF
MOV             R1, #0
MOV             R2, #0xFF
ADD             R3, R6, R1,LSL#2
VLDR            S0, [R3,#4]
VMOV            R0, S0
VCMPE.F32       S0, S17
VMRS            APSR_nzcv, FPSCR
BLS             loc_12FE6C
MOV             R0, R0,LSL#1
CMP             R2, R0,LSR#24
BNE             loc_12FED8
MOV             R0, #0
LDR             R9, [R6,#0x814]
STR             R0, [R9,R1,LSL#2]
VLDR            S0, [R3,#0x204]
VMOV            R3, S0
VCMP.F32        S0, S17
VMRS            APSR_nzcv, FPSCR
MOVNE           R3, R3,LSL#1
CMPNE           R2, R3,LSR#24
MOVEQ           R3, #0
BEQ             loc_12FF00
VADD.F32        S0, S0, S19
VMUL.F32        S0, S0, S20
VCMPE.F32       S17, S0
VMRS            APSR_nzcv, FPSCR
VMOVGT.F32      S0, S17
BGT             loc_12FEF4
VMOV            R3, S0
CMP             R3, R8
VMOVLT          R3, S0
VMOVGE.F32      S0, S22
CMPLT           R3, #0x45000000
BLT             loc_12FEF4
VSUB.F32        S0, S0, S20
VCVT.U32.F32    S0, S0
VMOV            R3, S0
B               loc_12FF00
VMUL.F32        S0, S0, S21
VMOV            R0, S0
CMP             R8, R0
VCVTGT.U32.F32  S0, S0
MOVLE           R0, R12
VMOVGT          R0, S0
B               loc_12FE70
VADD.F32        S0, S0, S20
VCVT.U32.F32    S0, S0
VMOV            R3, S0
ORR             R3, R0, R3,LSL#12
LDR             R0, [R6,#0x814]
STR             R3, [R0,R1,LSL#2]
ADD             R1, R1, #1
CMP             R1, #0x80
BLT             loc_12FE48
LDR             R0, [R6,#0x81C]
BIC             R0, R0, #0x10
STR             R0, [R7]
LDR             R0, =dword_6D241C
LDR             R3, =dword_6D2418
LDR             R1, [R0]
LDR             R0, [R3]
CMP             R0, R1
BCS             loc_12FF54
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
STR             R0, [SP,#0x880+var_68]
MOV             R0, #0
ADD             R1, R4, R0,LSL#2
ADD             R2, R5, R0,LSL#2
LDR             R1, [R1,#0xDFC]
LDR             R2, [R2,#0x170]
ADD             R1, R5, R1,LSL#2
LDR             R1, [R1,#0x74]
CMP             R1, R2
BNE             loc_12FF9C
ADD             R0, R0, #1
CMP             R0, #4
BLT             loc_12FF70
CMP             R0, #4
ADD             R9, SP, #0x880+var_878
BEQ             loc_130004
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
BEQ             loc_13031C
LDR             R0, [R6,#0x818]
CMP             R0, #0
BEQ             loc_1301EC
B               loc_130218
LDR             R0, [R5,#0x1F4]
CMP             R0, #0
LDREQ           R0, [R5,#0x1F8]
CMPEQ           R0, #0
BNE             loc_13002C
LDR             R0, [R5,#0x1FC]
CMP             R0, #0
LDREQ           R0, [R5,#0x200]
CMPEQ           R0, #0
BEQ             loc_13040C
MOV             R8, #0
MOV             R7, #0x200
MOV             R0, R8
MOV             R12, R8
ADD             R1, R5, R0,LSL#2
LDR             R2, [R1,#0x1F4]
CMP             R2, #0
BEQ             loc_13006C
LDR             R3, [R1,#0x278]
STR             R12, [R1,#0x1F4]
CMP             R3, R7
MOVCC           R7, R3
ADD             R2, R2, R3
SUB             R3, R2, #1
CMP             R3, R8
MOVHI           R8, R3
ADD             R0, R0, #1
CMP             R0, #4
BLT             loc_13003C
MOV             R10, #0
MOV             R11, #0xFF
ADD             R0, R4, R10,LSL#2
LDR             R0, [R0,#0xDFC]
BL              sub_13BC04
CMP             R7, R8
MOVLS           R1, R10,LSL#3
MOV             R6, R7
MOVLS           R2, R11,LSL R1
BHI             loc_1300C4
LDR             R12, [R0,#0x818]
LDR             R3, [R9,R6,LSL#2]
LDRB            R12, [R12,R6]
BIC             R3, R3, R2
ORR             R3, R3, R12,LSL R1
STR             R3, [R9,R6,LSL#2]
ADD             R6, R6, #1
CMP             R6, R8
BLS             loc_1300A0
ADD             R10, R10, #1
CMP             R10, #4
BLT             loc_130080
CMP             R7, #0x100
BCS             loc_130198
CMP             R8, #0x100
BCC             loc_130164
LDR             R6, =dword_6D2418
LDR             R10, =dword_6D241C
LDR             R0, [R6]
LDR             R1, [R10]
CMP             R0, R1
BCS             loc_130110
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
LDR             R1, [R10]
LDR             R0, [R6]
CMP             R0, R1
BCS             loc_130148
LDR             R2, =0xF00AF
MOV             R3, #0x500
ADD             R12, R0, #8
STR             R2, [R0,#4]
STR             R3, [R0]
STR             R12, [R6]
ADD             R2, R9, #0x400
SUB             R1, R8, #0xFF
MOV             R0, #0xB0
BL              sub_1378C8
NOP
NOP
B               loc_13040C
LDR             R1, =dword_6D2418
LDR             R0, =dword_6D241C
LDR             R2, [R1]
LDR             R0, [R0]
CMP             R2, R0
BCS             loc_1301CC
LDR             R3, =0xF00AF
ORR             R6, R7, #0x400
ADD             R12, R2, #8
STR             R3, [R2,#4]
STR             R6, [R2]
STR             R12, [R1]
B               loc_1301CC
LDR             R2, =dword_6D2418
LDR             R0, =dword_6D241C
LDR             R1, [R2]
LDR             R0, [R0]
CMP             R0, R1
BLS             loc_1301CC
SUB             R3, R7, #0x100
ORR             R12, R3, #0x500
LDR             R3, =0xF00AF
ADD             R6, R1, #8
STR             R3, [R1,#4]
STR             R12, [R1]
STR             R6, [R2]
SUB             R0, R8, R7
ADD             R1, R0, #1
ADD             R2, R9, R7,LSL#2
MOV             R0, #0xB0
BL              sub_1378C8
NOP
NOP
B               loc_13040C
LDR             R0, =off_6D2428
LDR             R12, [R0]
CMP             R12, #0
MOVEQ           R0, #0
BEQ             loc_130214
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
BLT             loc_130220
CMP             R1, R8
VMOVLT.F32      S16, S17
LDRLT           R0, =0x43800000
BGE             loc_130308
ADD             R2, R6, R1,LSL#2
VLDR            S0, [R2,#4]
VMOV            R2, S0
VCMP.F32        S0, S16
VMRS            APSR_nzcv, FPSCR
MOVNE           R2, R2,LSL#1
CMPNE           R11, R2,LSR#24
LDREQ           R2, [R6,#0x818]
STRBEQ          R9, [R2,R1]
BEQ             loc_1302FC
VADD.F32        S0, S0, S19
VMUL.F32        S0, S0, S22
VCMPE.F32       S16, S0
VMRS            APSR_nzcv, FPSCR
VMOVGT.F32      S0, S16
BGT             loc_1302E8
VMOV            R2, S0
CMP             R2, R0
VMOVLT          R2, S0
VMOVGE.F32      S0, S1
CMPLT           R2, #0x43000000
BLT             loc_1302E8
LDR             R3, [R6,#0x818]
VSUB.F32        S0, S0, S22
VCVT.U32.F32    S0, S0
VMOV            R2, S0
STRB            R2, [R3,R1]
B               loc_1302FC
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
BLT             loc_130268
LDR             R0, [R6,#0x818]
STRB            R9, [R0,R1]
LDR             R0, [R6,#0x81C]
BIC             R0, R0, #0x20 ; ' '
STR             R0, [R10]
MOV             R3, R7,LSL#3
MOV             R0, #0
MOV             R2, R11,LSL R3
ADD             R1, SP, #0x880+var_878
LDR             R10, [R6,#0x818]
LDR             R12, [R1,R0,LSL#2]
LDRB            R10, [R10,R0]
BIC             R12, R12, R2
ORR             R12, R12, R10,LSL R3
STR             R12, [R1,R0,LSL#2]
ADD             R0, R0, #1
CMP             R0, #0x200
BLT             loc_13032C
ADD             R7, R7, #1
CMP             R7, #4
BLT             loc_12FFC0
CMP             R7, #4
BNE             loc_13040C
LDR             R6, =dword_6D2418
LDR             R8, =dword_6D241C
LDR             R0, [R6]
LDR             R1, [R8]
CMP             R0, R1
BCS             loc_130394
LDR             R2, =0xF00AF
MOV             R3, #0x400
ADD             R12, R0, #8
STR             R2, [R0,#4]
STR             R3, [R0]
STR             R12, [R6]
ADD             R7, SP, #0x880+var_878
MOV             R2, R7
MOV             R1, #0x100
MOV             R0, #0xB0
BL              sub_1378C8
LDR             R0, [R8]
LDR             R1, [R6]
CMP             R1, R0
BCS             loc_1303CC
LDR             R3, =0xF00AF
MOV             R2, #0x500
ADD             R12, R1, #8
STRD            R2, R3, [R1]
STR             R12, [R6]
ADD             R2, R7, #0x400
MOV             R1, #0x100
MOV             R0, #0xB0
BL              sub_1378C8
MOV             R0, #1
STR             R0, [SP,#0x880+var_68]
MOV             R0, #0
ADD             R1, R4, R0,LSL#2
ADD             R2, R5, R0,LSL#2
LDR             R1, [R1,#0xDFC]
ADD             R0, R0, #1
CMP             R0, #4
ADD             R1, R5, R1,LSL#2
LDR             R1, [R1,#0x74]
STR             R1, [R2,#0x170]
BLT             loc_1303E8
LDR             R0, [R4,#0x624]
TST             R0, #7
BEQ             loc_130634
LDR             R0, [SP,#0x880+var_2C]
LDR             R1, =0x4010
LDR             R0, [R0]
TST             R0, R1
BEQ             loc_130634
LDR             R0, [R4,#0xE64]
ADD             R1, R5, R0,LSL#2
LDR             R7, [R1,#0x74]
BL              sub_13BC04
MOV             R6, R0
LDR             R0, [R5,#0x180]
LDR             R8, =0xF00E6
CMP             R0, R7
LDR             R0, [R5,#0x204]
BNE             loc_1304A8
CMP             R0, #0
BEQ             loc_130634
LDR             R2, =dword_6D2418
LDR             R0, =dword_6D241C
LDR             R1, [R2]
LDR             R0, [R0]
CMP             R1, R0
BCS             loc_130484
LDR             R3, [R5,#0x288]
ADD             R12, R1, #8
STM             R1, {R3,R8}
STR             R12, [R2]
LDR             R0, [R5,#0x288]
LDR             R2, [R6,#0x808]
LDR             R1, [R5,#0x204]
ADD             R2, R2, R0,LSL#2
MOV             R0, #0xE8
BL              sub_1378C8
MOV             R0, #0
STR             R0, [R5,#0x204]
B               loc_130634
CMP             R0, #0
MOVNE           R0, #0
STRNE           R0, [R5,#0x204]
STR             R7, [R5,#0x180]
LDR             R0, [R6,#0x81C]
ADD             R7, R6, #0x800
ADD             R7, R7, #0x1C
TST             R0, #2
BEQ             loc_1305F4
LDR             R0, [R6,#0x808]
CMP             R0, #0
BNE             loc_130504
LDR             R0, =off_6D2428
LDR             R12, [R0]
CMP             R12, #0
MOVEQ           R0, #0
BEQ             loc_130500
MOV             R3, #0x200
MOV             R2, #0
MOV             R1, #0x100
MOV             R0, #0x10000
BLX             R12
STR             R0, [R6,#0x808]
LDR             R9, =0x45800000
LDR             R12, =0x7FF
MOV             R1, #0
VLDR            S2, =2.0
VLDR            S3, =8191.0
MOV             R2, #0xFF
MOV             R3, R1
ADD             R0, R6, R1,LSL#2
VLDR            S0, [R0,#0x204]
VMOV            R10, S0
VCMP.F32        S0, S17
VMRS            APSR_nzcv, FPSCR
MOVNE           R10, R10,LSL#1
CMPNE           R2, R10,LSR#24
LDREQ           R10, [R6,#0x808]
STREQ           R3, [R10,R1,LSL#2]
BEQ             loc_1305A4
VADD.F32        S0, S0, S2
VMUL.F32        S1, S0, S20
VCMPE.F32       S17, S1
VMRS            APSR_nzcv, FPSCR
VMOVGT.F32      S1, S17
BGT             loc_130590
VMOV            R10, S1
CMP             R10, #0x46000000
VMOVLT          R10, S1
VMOVGE.F32      S1, S3
CMPLT           R10, R9
BLT             loc_130590
LDR             R11, [R6,#0x808]
VSUB.F32        S0, S1, S21
VCVT.U32.F32    S0, S0
VMOV            R10, S0
STR             R10, [R11,R1,LSL#2]
B               loc_1305A4
VADD.F32        S0, S1, S21
LDR             R11, [R6,#0x808]
VCVT.U32.F32    S0, S0
VMOV            R10, S0
STR             R10, [R11,R1,LSL#2]
VLDR            S0, [R0,#4]
VMOV            R0, S0
VCMPE.F32       S0, S17
VMRS            APSR_nzcv, FPSCR
BLS             loc_1305C4
MOV             R0, R0,LSL#1
CMP             R2, R0,LSR#24
BNE             loc_130648
MOV             R0, #0
MOV             R10, R0
LDR             R0, [R6,#0x808]
LDR             R11, [R0,R1,LSL#2]
ORR             R10, R11, R10,LSL#13
STR             R10, [R0,R1,LSL#2]
ADD             R1, R1, #1
CMP             R1, #0x80
BLT             loc_130520
LDR             R0, [R6,#0x81C]
BIC             R0, R0, #2
STR             R0, [R7]
LDR             R0, =dword_6D241C
LDR             R2, =dword_6D2418
LDR             R1, [R0]
LDR             R0, [R2]
CMP             R0, R1
BCS             loc_13061C
MOV             R3, #0
STM             R0, {R3,R8}
ADD             R12, R0, #8
STR             R12, [R2]
LDR             R2, [R6,#0x808]
MOV             R1, #0x80
MOV             R0, #0xE8
BL              sub_1378C8
MOV             R0, #1
STR             R0, [SP,#0x880+var_68]
LDR             R1, [R4,#0x624]
MOV             R0, #7
BICS            R0, R0, R1
BNE             loc_13093C
B               loc_130664
VMUL.F32        S0, S0, S20
VMOV            R0, S0
CMP             R0, #0x45000000
VCVTLT.U32.F32  S0, S0
MOVGE           R0, R12
VMOVLT          R0, S0
B               loc_1305C8
LDR             R0, [SP,#0x880+var_2C]
LDR             R1, =0x2004000
LDR             R0, [R0]
TST             R0, R1
MOVNE           R0, #0
BEQ             loc_13093C
ADD             R2, R4, R0,LSL#2
ADD             R1, R5, R0,LSL#2
LDR             R2, [R2,#0xE78]
LDR             R3, [R1,#0x184]
ADD             R2, R5, R2,LSL#2
LDR             R1, [R2,#0x74]
CMP             R1, R3
BNE             loc_1306A8
ADD             R0, R0, #1
CMP             R0, #3
BLT             loc_13067C
CMP             R0, #3
BEQ             loc_13093C
MOV             R8, #0
VMOV.F32        S16, S17
STR             R8, [SP,#0x880+var_870]
STR             R8, [SP,#0x880+var_86C]
STR             R8, [SP,#0x880+var_868]
STR             R8, [SP,#0x880+var_864]
STR             R8, [SP,#0x880+var_860]
STR             R8, [SP,#0x880+var_85C]
VLDR            S19, =127.0
STR             R8, [SP,#0x880+var_858]
STR             R8, [SP,#0x880+var_854]
STR             R8, [SP,#0x880+var_850]
STR             R8, [SP,#0x880+var_84C]
STR             R8, [SP,#0x880+var_848]
MOV             R9, #0x20 ; ' '
STR             R8, [SP,#0x880+var_844]
STR             R8, [SP,#0x880+var_840]
STR             R8, [SP,#0x880+var_83C]
STR             R8, [SP,#0x880+var_838]
STR             R8, [SP,#0x880+var_834]
ADD             R0, R4, R8,LSL#2
LDR             R0, [R0,#0xE78]
BL              sub_13BC04
MOV             R6, R0
ADD             R10, R0, #0x800
LDR             R0, [R0,#0x81C]
ADD             R10, R10, #0x1C
TST             R0, #4
BEQ             loc_1307FC
LDR             R0, [R6,#0x80C]
ADD             R7, R6, #0x800
ADD             R7, R7, #0xC
CMP             R0, #0
BNE             loc_130764
LDR             R0, =off_6D2428
LDR             R12, [R0]
CMP             R12, #0
MOVEQ           R0, #0
BEQ             loc_130760
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
VCMPE.F32       S0, S16
VMRS            APSR_nzcv, FPSCR
BLS             loc_130798
MOV             R3, R3,LSL#1
CMP             R2, R3,LSR#24
BNE             loc_130884
MOV             R3, #0
LDR             R12, [R6,#0x80C]
STR             R3, [R12,R0,LSL#2]
VLDR            S0, [R1,#0x24]
LDR             R11, [R7]
ADD             R12, R9, R0,LSL#2
VMUL.F32        S0, S0, S19
VABS.F32        S0, S0
VCVT.U32.F32    S0, S0
VMOV            R3, S0
AND             R3, R3, #0x7F
STR             R3, [R11,R12]
VLDR            S0, [R1,#0x24]
VCMPE.F32       S0, S16
VMRS            APSR_nzcv, FPSCR
BCS             loc_1307E4
LDR             R1, [R6,#0x80C]
ORR             R3, R3, #0x80
STR             R3, [R1,R12]
ADD             R0, R0, #1
CMP             R0, #8
BLT             loc_130770
LDR             R0, [R6,#0x81C]
BIC             R0, R0, #4
STR             R0, [R10]
ADD             R3, R6, #0x800
MOV             R0, #0
ADD             R1, SP, #0x880+var_870
MOV             R2, R8,LSL#3
ADD             R3, R3, #0xC
LDR             R12, [R6,#0x80C]
ADD             R7, R9, R0,LSL#2
LDR             R10, [R1,R0,LSL#2]
LDR             R7, [R12,R7]
ADD             R12, R1, R0,LSL#2
ORR             R7, R10, R7,LSL R2
STR             R7, [R1,R0,LSL#2]
LDR             R7, [R3]
LDR             R10, [R12,#0x20]
LDR             R7, [R7,R0,LSL#2]
ADD             R0, R0, #1
CMP             R0, #8
ORR             R7, R10, R7,LSL R2
STR             R7, [R12,#0x20]
BLT             loc_130810
ADD             R8, R8, #1
CMP             R8, #3
BLT             loc_130700
CMP             R8, #3
BNE             loc_13093C
B               loc_13089C
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
B               loc_13079C
LDR             R0, [SP,#0x880+var_68]
CMP             R0, #0
BNE             loc_1308B4
MOV             R1, #0x2D ; '-'
MOV             R0, #0xC0
BL              sub_1377A0
LDR             R6, =dword_6D2418
LDR             R7, =dword_6D241C
LDR             R1, [R6]
LDR             R0, [R7]
CMP             R1, R0
BCS             loc_1308E0
LDR             R3, =0xF0123
MOV             R2, #0
ADD             R12, R1, #8
STRD            R2, R3, [R1]
STR             R12, [R6]
ADD             R2, SP, #0x880+var_870
MOV             R1, #0x10
MOV             R0, #0x124
BL              sub_1378C8
LDR             R0, [R7]
LDR             R1, [R6]
CMP             R1, R0
BCS             loc_130914
MOV             R2, #0
MOV             R12, #0x100
STM             R1, {R2,R12}
ADD             R3, R1, #8
STR             R3, [R6]
MOV             R0, #0
ADD             R1, R4, R0,LSL#2
ADD             R2, R5, R0,LSL#2
LDR             R1, [R1,#0xE78]
ADD             R0, R0, #1
CMP             R0, #3
ADD             R1, R5, R1,LSL#2
LDR             R1, [R1,#0x74]
STR             R1, [R2,#0x184]
BLT             loc_130918
LDR             R0, [SP,#0x880+var_28]
TST             R0, #0x800
BEQ             loc_130A88
LDR             R0, [SP,#0x880+var_2C]
LDR             R0, [R0]
TST             R0, #0x100
BNE             loc_130968
LDR             R0, [R4,#0xE38]
LDR             R1, [R5,#0x644]
CMP             R0, R1
BEQ             loc_130A88
LDRB            R0, [R5,#0x656]
LDR             R1, [R4,#0xE38]
LDRB            R2, [R5,#0x654]
LDRB            R4, [R5,#0x655]
LDRB            R3, [R5,#0x657]
LDR             R12, =dword_6D2418
LDR             R6, =dword_6D241C
STR             R1, [R5,#0x644]
MOV             R0, R0,LSL#2
LDR             R1, [R12]
LDR             R7, [R6]
ORR             R2, R2, R4,LSL#1
ORR             R0, R0, R3,LSL#3
CMP             R1, R7
ORR             R0, R0, R2
BCS             loc_1309BC
LDR             R4, =0xF0111
MOV             R3, #1
ADD             R7, R1, #8
STM             R1, {R3,R4}
STR             R7, [R12]
LDR             R2, [R12]
LDR             R1, [R6]
CMP             R2, R1
BCS             loc_1309E0
LDR             R4, =0xF0110
MOV             R3, #1
ADD             R7, R2, #8
STM             R2, {R3,R4}
STR             R7, [R12]
LDR             R3, =0xF0112
LDR             R1, [R5,#0x644]
ADD             R2, R3, #2
SUB             R1, R1, #0x6000
SUBS            R1, R1, #0x30 ; '0'
ORR             R7, R3, R3,ASR#18
ORR             R4, R2, R2,ASR#19
BEQ             loc_130A9C
CMP             R1, #0x18
BEQ             loc_130BF0
CMP             R1, #0x21 ; '!'
BNE             loc_130A88
LDR             R1, [R12]
LDR             R0, [R6]
CMP             R1, R0
BCS             loc_130A30
MOV             R5, #0xF
STM             R1, {R5,R7}
ADD             R8, R1, #8
STR             R8, [R12]
LDR             R0, [R12]
LDR             R1, [R6]
CMP             R0, R1
BCS             loc_130A54
MOV             R5, #0xF
STR             R3, [R0,#4]
ADD             R7, R0, #8
STR             R5, [R0]
STR             R7, [R12]
LDR             R1, [R12]
LDR             R0, [R6]
CMP             R1, R0
BCS             loc_130A78
MOV             R3, #3
STR             R2, [R1,#4]
ADD             R5, R1, #8
STR             R3, [R1]
STR             R5, [R12]
LDR             R1, [R6]
LDR             R0, [R12]
CMP             R0, R1
BCC             loc_130C68
ADD             SP, SP, #0x800
ADD             SP, SP, #0x34 ; '4'
VPOP            {D8-D11}
ADD             SP, SP, #8
POP             {R4-R11,PC}
CMP             R0, #0
MOVEQ           R1, #0
BEQ             loc_130AD8
LDR             R1, [R5,#0x688]
CMP             R1, #1
BEQ             loc_130AD0
LDRB            R1, [R5,#0x64C]
CMP             R1, #0
BNE             loc_130AD0
CMP             R0, #0xF
LDRBEQ          R0, [R5,#0x64D]
CMPEQ           R0, #0
BEQ             loc_130AD4
MOV             R0, #1
MOV             R1, #2
LDRB            R8, [R5,#0x64B]
ORR             R0, R0, R1
CMP             R8, #0
MOVNE           R1, #4
MOVEQ           R1, #0
ORR             R0, R0, R1
LDRBNE          R1, [R5,#0x658]
LDRB            R8, [R5,#0x64A]
CMPNE           R1, #0
MOVEQ           R1, #0
MOVNE           R1, #8
CMP             R8, #0
ORR             R0, R0, R1
MOVNE           R1, #0x10
MOVEQ           R1, #0
ORR             R0, R0, R1
LDRNE           R1, [R5,#0x65C]
LDR             R5, [R12]
CMPNE           R1, #0
MOVEQ           R1, #0
MOVNE           R1, #0x20 ; ' '
ORR             R0, R0, R1
LDR             R1, [R6]
CMP             R5, R1
BCS             loc_130B58
TST             R0, #1
MOVNE           R8, #0xF
MOVEQ           R8, #0
STR             R3, [R5,#4]
ADD             R9, R5, #8
STR             R8, [R5]
STR             R9, [R12]
LDR             R3, [R12]
LDR             R1, [R6]
CMP             R3, R1
BCS             loc_130B80
TST             R0, #2
MOVNE           R5, #0xF
MOVEQ           R5, #0
STM             R3, {R5,R7}
ADD             R8, R3, #8
STR             R8, [R12]
LDR             R3, [R12]
LDR             R1, [R6]
CMP             R3, R1
BCS             loc_130BC4
TST             R0, #4
TSTNE           R0, #0xA
MOVEQ           R5, #0
MOVNE           R5, #2
TST             R0, #0x10
TSTNE           R0, #0x22
MOVEQ           R7, #0
MOVNE           R7, #1
ORR             R5, R5, R7
STR             R2, [R3,#4]
ADD             R7, R3, #8
STR             R5, [R3]
STR             R7, [R12]
LDR             R2, [R6]
LDR             R1, [R12]
CMP             R1, R2
BCS             loc_130A88
ANDS            R2, R0, #8
AND             R3, R0, #0x20 ; ' '
MOVNE           R2, #2
ORR             R2, R2, R3,LSR#5
ADD             R3, R1, #8
STM             R1, {R2,R4}
B               loc_130C74
LDR             R0, [R12]
LDR             R1, [R6]
CMP             R0, R1
BCS             loc_130C10
MOV             R5, #0xF
STM             R0, {R5,R7}
ADD             R8, R0, #8
STR             R8, [R12]
LDR             R1, [R12]
LDR             R0, [R6]
CMP             R1, R0
BCS             loc_130C34
MOV             R5, #0xF
STR             R3, [R1,#4]
ADD             R7, R1, #8
STR             R5, [R1]
STR             R7, [R12]
LDR             R1, [R12]
LDR             R0, [R6]
CMP             R1, R0
BCS             loc_130C58
MOV             R3, #0
STR             R2, [R1,#4]
ADD             R5, R1, #8
STR             R3, [R1]
STR             R5, [R12]
LDR             R1, [R6]
LDR             R0, [R12]
CMP             R0, R1
BCS             loc_130A88
MOV             R2, #0
STM             R0, {R2,R4}
ADD             R3, R0, #8
STR             R3, [R12]
B               loc_130A88
