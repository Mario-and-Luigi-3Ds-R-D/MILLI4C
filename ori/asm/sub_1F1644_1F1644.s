PUSH            {R4-R12,LR}
MOV             R4, R0
LDR             R0, [R0,#0xA0]
CMP             R0, #0
BEQ             loc_1F16A0
B               loc_1F1688
MOV             R0, R1
BL              sub_221A40
LDR             R0, [R4,#0xA0]
NOP
BL              sub_2D4074
LDRB            R0, [R4,#0x3E]
CMP             R0, #0
MOVNE           R0, #0x10
ORR             R1, R0, #1
LDR             R0, =dword_6E9820
BL              sub_485B94
LDR             R1, [R4,#0xA0]
LDR             R0, =0x1462C
LDR             R0, [R0,R1]
LDRB            R0, [R0,#0x38]
CMP             R0, #3
BNE             loc_1F165C
LDR             R7, =off_6D1648
MOV             R9, #0
LDR             R0, [R7,#(off_6D164C - 0x6D1648)]
CMP             R0, #0
BNE             loc_1F1700
BL              sub_59D118
MOV             R5, #0
ADD             R6, R4, R5,LSL#2
LDR             R0, [R6,#0xBC]
CMP             R0, #0
BEQ             loc_1F16F4
LDR             R1, [R0]
LDR             R1, [R1,#8]
BLX             R1
LDR             R0, [R6,#0xBC]
CMP             R0, #0
BEQ             loc_1F16F0
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
STR             R9, [R6,#0xBC]
ADD             R5, R5, #1
CMP             R5, #2
BLT             loc_1F16BC
ADD             R0, R4, #0x4000
ADD             R0, R0, #0x180
BL              sub_1E8648
LDR             R0, [R4,#0x9C]
CMP             R0, #0
BEQ             loc_1F173C
NOP
LDR             R0, [R4,#0x9C]
CMP             R0, #0
BEQ             loc_1F1738
BL              sub_32166C
NOP
NOP
BL              sub_300FD4
STR             R9, [R4,#0x9C]
LDR             R0, [R4,#0xA4]
CMP             R0, #0
BEQ             loc_1F176C
BL              sub_1C799C
LDR             R0, [R4,#0xA4]
CMP             R0, #0
BEQ             loc_1F1768
BL              sub_37D8AC
NOP
NOP
BL              sub_300FD4
STR             R9, [R4,#0xA4]
LDR             R0, [R4,#0x144]
CMP             R0, #0
BEQ             loc_1F178C
NOP
LDR             R0, [R4,#0x144]
NOP
BL              sub_300FD4
STR             R9, [R4,#0x144]
LDR             R0, [R4,#0xAC]
CMP             R0, #0
BEQ             loc_1F17A0
BL              sub_2FF5D4
STR             R9, [R4,#0xAC]
LDR             R0, [R4,#0xB0]
CMP             R0, #0
BEQ             loc_1F17CC
BL              sub_1961D8
LDR             R0, [R4,#0xB0]
CMP             R0, #0
BEQ             loc_1F17C8
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
STR             R9, [R4,#0xB0]
LDR             R0, [R4,#0xB4]
CMP             R0, #0
BEQ             loc_1F184C
BL              sub_2D2F8C
LDR             R5, [R4,#0xB4]
CMP             R5, #0
BEQ             loc_1F1848
LDR             R1, =sub_4E6A14
MOV             R3, #1
MOV             R2, #0x34 ; '4'
ADD             R0, R5, #0x3DC
BLX             sub_1009D8
LDR             R1, =sub_4E6A84
ADD             R6, R5, #8
MOV             R3, #1
MOV             R2, #0x58 ; 'X'
ADD             R0, R5, #0x35C
BLX             sub_1009D8
LDR             R1, =sub_4E6A14
MOV             R3, #3
MOV             R2, #0x34 ; '4'
ADD             R0, R6, #0x2B8
BLX             sub_1009D8
LDR             R1, =sub_536FF4
MOV             R3, #2
MOV             R2, #0x154
ADD             R0, R6, #0xC
BLX             sub_1009D8
MOV             R0, R5
NOP
BL              sub_300FD4
STR             R9, [R4,#0xB4]
LDR             R0, [R4,#0xA0]
CMP             R0, #0
BEQ             loc_1F187C
BL              sub_2D326C
LDR             R0, [R4,#0xA0]
CMP             R0, #0
BEQ             loc_1F1878
BL              sub_2D425C
NOP
NOP
BL              sub_300FD4
STR             R9, [R4,#0xA0]
LDR             R0, [R7,#(off_6D164C - 0x6D1648)]
CMP             R0, #0
BNE             loc_1F18E8
LDR             R0, [R4,#0xC4]
CMP             R0, #0
BEQ             loc_1F18BC
LDR             R1, [R0]
LDR             R1, [R1,#0x10]
BLX             R1
LDR             R0, [R4,#0xC4]
CMP             R0, #0
BEQ             loc_1F18B8
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
STR             R9, [R4,#0xC4]
LDR             R5, [R4,#0x88]
CMP             R5, #0
BEQ             loc_1F18E8
LDR             R0, [R5]
CMP             R0, #0
BEQ             loc_1F18DC
BL              sub_2FF5D4
STR             R9, [R5]
LDR             R0, [R4,#0x88]
BL              sub_300FD4
STR             R9, [R4,#0x88]
LDR             R0, [R4,#0x60]
CMP             R0, #0
LDRNE           R0, [R4,#0x8C]
CMPNE           R0, #0
BEQ             loc_1F1A00
LDRH            R0, [R4,#0x64]
MOV             R5, #0
CMP             R0, #0
BLE             loc_1F1A00
LDR             R1, [R4,#0x60]
LDR             R2, [R4,#0x5C]
ADD             R0, R5, R5,LSL#1
CMP             R2, #0
ADD             R6, R1, R0,LSL#5
LDRHI           R1, [R4,#0x58]
MOV             R0, #0
BLS             loc_1F19E8
ADD             R3, R0, R0,LSL#1
ADD             R3, R1, R3,LSL#2
LDR             R3, [R3,#8]
CMP             R3, R5
BNE             loc_1F19DC
LDR             R1, [R4,#0x8C]
ADD             R0, R0, R0,LSL#3
ADD             R7, R1, R0,LSL#2
LDR             R0, [R7]
CMP             R0, #0
BNE             loc_1F196C
LDR             R0, [R6]
CMP             R0, #0
BEQ             loc_1F196C
BL              sub_2FF5D4
STR             R9, [R6]
LDR             R0, [R7,#8]
CMP             R0, #0
BNE             loc_1F1990
LDR             R0, [R6,#8]
ADD             R8, R6, #8
CMP             R0, #0
BEQ             loc_1F1990
BL              sub_2FF5D4
STR             R9, [R8]
LDR             R0, [R7,#0x10]
CMP             R0, #0
BNE             loc_1F19B4
LDR             R0, [R6,#0x10]
ADD             R8, R6, #0x10
CMP             R0, #0
BEQ             loc_1F19B4
BL              sub_2FF5D4
STR             R9, [R8]
LDR             R0, [R7,#0x18]
CMP             R0, #0
BNE             loc_1F19F0
LDR             R0, [R6,#0x18]!
CMP             R0, #0
BEQ             loc_1F19F0
BL              sub_2FF5D4
STR             R9, [R6]
NOP
B               loc_1F19F0
ADD             R0, R0, #1
CMP             R2, R0
BHI             loc_1F192C
MOV             R0, R6
BL              sub_1E4D0C
LDRH            R0, [R4,#0x64]
ADD             R5, R5, #1
CMP             R0, R5
BGT             loc_1F190C
LDR             R0, [R4,#0x68]
CMP             R0, #0
BEQ             loc_1F1A4C
LDRH            R0, [R4,#0x6C]
MOV             R5, #0
CMP             R0, #0
BLE             loc_1F1A3C
LDR             R0, [R4,#0x68]
ADD             R1, R5, R5,LSL#1
ADD             R0, R0, R1,LSL#5
BL              sub_1E4D0C
LDRH            R0, [R4,#0x6C]
ADD             R5, R5, #1
CMP             R0, R5
BGT             loc_1F1A1C
LDR             R1, =sub_1E4E50
LDR             R0, [R4,#0x68]
BLX             sub_3016C8
STR             R9, [R4,#0x68]
LDR             R0, [R4,#0x78]
CMP             R0, #0
LDRNE           R0, [R4,#0x90]
CMPNE           R0, #0
BEQ             loc_1F1AE8
LDR             R0, [R4,#0x74]
MOV             R5, #0
CMP             R0, #0
BLS             loc_1F1AE8
LDR             R12, [R4,#0x70]
ADD             R0, R5, R5,LSL#1
LDR             R3, [R4,#0x78]
ADD             R0, R12, R0,LSL#2
LDR             R1, [R4,#0x90]
LDR             R0, [R0,#8]
ADD             R2, R5, R5,LSL#2
ADD             R7, R1, R2,LSL#2
ADD             R6, R3, R0,LSL#6
LDR             R0, [R6,#0x38]
CMP             R0, #0
ADDNE           R0, R6, #0x38 ; '8'
BLNE            sub_4BE0F8
LDR             R0, [R6]
CMP             R0, #0
BEQ             loc_1F1AB8
BL              sub_2FF5D4
STR             R9, [R6]
LDR             R0, [R7,#8]
CMP             R0, #0
BNE             loc_1F1AD8
LDR             R0, [R6,#8]!
CMP             R0, #0
BEQ             loc_1F1AD8
BL              sub_2FF5D4
STR             R9, [R6]
LDR             R0, [R4,#0x74]
ADD             R5, R5, #1
CMP             R0, R5
BHI             loc_1F1A70
ADD             R1, R4, #0x34 ; '4'
MOV             R0, #2
BL              sub_10B1F8
LDR             R0, [R4,#0x54]
CMP             R0, #0
BEQ             loc_1F1B10
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
STR             R9, [R4,#0x54]
LDR             R0, [R4,#0x10]
CMP             R0, #0
BEQ             loc_1F1B3C
BL              sub_53294C
LDR             R0, [R4,#0x10]
CMP             R0, #0
BEQ             loc_1F1B38
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
STR             R9, [R4,#0x10]
LDR             R0, [R4,#0xC]
CMP             R0, #0
BEQ             loc_1F1B70
LDR             R1, [R0]
LDR             R1, [R1,#0x10]
BLX             R1
LDR             R0, [R4,#0xC]
CMP             R0, #0
BEQ             loc_1F1B6C
LDR             R1, [R0]
LDR             R1, [R1,#0x20]
BLX             R1
STR             R9, [R4,#0xC]
STR             R9, [R4,#0x18]
LDR             R0, [R4,#0x2C]
CMP             R0, #0
BEQ             loc_1F1B88
BL              sub_110D10
STR             R9, [R4,#0x2C]
LDR             R10, =off_6CED48
MOV             R7, #0
MOV             R11, #0xFFFFFFFF
ADD             R8, R4, R7
ADD             R6, R8, #0x100
LDRSB           R0, [R6,#0x74]
CMN             R0, #1
BEQ             loc_1F1BF0
RSB             R1, R7, R7,LSL#3
LDR             R2, [R10]
ADD             R5, R1, R1,LSL#2
ADD             R1, R2, R5,LSL#2
LDRB            R1, [R1,#0x98]
CMP             R1, R0
BLE             loc_1F1BEC
LDR             R0, [R10]
ADD             R0, R0, R5,LSL#2
ADD             R0, R0, #0x14
BL              loc_106C3C
LDR             R0, [R10]
LDRSB           R1, [R6,#0x74]
ADD             R0, R0, R5,LSL#2
LDRB            R0, [R0,#0x98]
CMP             R0, R1
BGT             loc_1F1BC4
STRB            R11, [R8,#0x174]
ADD             R7, R7, #1
CMP             R7, #2
BLT             loc_1F1B94
ADD             R5, R4, #0x4000
ADD             R5, R5, #0x178
LDR             R0, [R5]
CMP             R0, #0
BEQ             loc_1F1C18
BL              sub_300FD4
STR             R9, [R5]
ADD             R4, R4, #0x4000
ADD             R4, R4, #0x17C
LDR             R0, [R4]
CMP             R0, #0
BEQ             locret_1F1C34
BL              sub_2FF5D4
STR             R9, [R4]
POP             {R4-R12,PC}
