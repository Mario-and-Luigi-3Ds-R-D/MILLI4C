PUSH            {R4-R11,LR}
MOV             R4, R0
SUB             SP, SP, #0x21C
MOV             R7, #0x10
MOV             R8, #0x20 ; ' '
LDR             R6, =off_6D1648
MOV             R10, #0
LDR             R0, [R6,#(off_6D164C - 0x6D1648)]
CMP             R0, #0
BEQ             def_1F1FC0; jumptable 001F1FC0 default case, cases 5,8
LDR             R1, [R0]
MOV             R3, #0x80
MOV             R2, #0x2000
STR             R1, [R4,#0x88]
LDR             R1, [R0,#4]
STR             R1, [R4,#0x8C]
LDR             R1, [R0,#8]
STR             R1, [R4,#0x90]
LDR             R1, [R0,#0x14]
STR             R1, [R4,#0xC4]
LDR             R1, [R0,#0xC]
STR             R1, [R4,#0xBC]
LDR             R1, [R0,#0x10]
STR             R1, [R4,#0xC0]
LDR             R1, [R0,#0x20]
LDRSB           R5, [R0,#0x24]
STR             R1, [R4,#0x148]
LDRB            R12, [R0,#0x25]
LDR             R1, [R4,#0xC8]
AND             R12, R7, R12,LSL#4
BIC             R1, R1, #0x10
ORR             R1, R1, R12
STR             R1, [R4,#0xC8]
LDRB            R12, [R0,#0x25]
BIC             R1, R1, #0x20 ; ' '
AND             R12, R8, R12,LSL#4
ORR             R1, R1, R12
STR             R1, [R4,#0xC8]
LDRB            R12, [R0,#0x25]
BIC             R1, R1, #0x80
AND             R3, R3, R12,LSL#5
ORR             R1, R1, R3
STR             R1, [R4,#0xC8]
LDRB            R3, [R0,#0x25]
LDR             R1, [R4,#0x14C]
AND             R2, R2, R3,LSL#10
BIC             R1, R1, #0x2000
ORR             R1, R1, R2
STR             R1, [R4,#0x14C]
LDR             R1, [R0,#0x18]
STR             R1, [R4,#0x94]
LDRB            R1, [R0,#0x26]
STRB            R1, [R4,#0x98]
LDR             R1, [R0,#0x1C]
STR             R1, [R4,#0xB8]
BL              sub_300FD4
CMP             R5, #0xA; switch 10 cases
STR             R10, [R6,#(off_6D164C - 0x6D1648)]
LDRCC           PC, [PC,R5,LSL#2]; switch jump
B               def_1F1FC0; jumptable 001F1FC0 default case, cases 5,8
DCD loc_1F1FF0; jump table for switch statement
LDR             R0, [R4,#0xC4]; jumptable 001F1FC0 case 0
LDR             R1, [R0,#4]
LDR             R0, [R1,#0x14]
BIC             R0, R0, #1
STR             R0, [R1,#0x14]
LDR             R1, [R4,#0xC4]
BIC             R0, R0, #2
BIC             R2, R0, #0x80
LDR             R1, [R1,#4]
STR             R0, [R1,#0x14]
LDR             R0, [R4,#0xC4]
LDR             R0, [R0,#4]
STR             R2, [R0,#0x14]
LDR             R0, [R4,#0xC8]
ORR             R0, R0, #1
B               loc_1F20D0
LDR             R0, [R4,#0xC4]; jumptable 001F1FC0 case 1
MOV             R5, #0
LDR             R0, [R0,#4]
LDR             R1, [R0,#0x14]
BIC             R1, R1, #1
STR             R1, [R0,#0x14]
BIC             R0, R1, #2
LDR             R1, [R4,#0xC4]
BIC             R2, R0, #0x80
LDR             R1, [R1,#4]
STR             R0, [R1,#0x14]
LDR             R0, [R4,#0xC4]
LDR             R0, [R0,#4]
STR             R2, [R0,#0x14]
LDR             R0, [R4,#0xC8]
ORR             R0, R0, #2
STR             R0, [R4,#0xC8]
LDR             R0, =byte_6ED8BC
LDRB            R1, [R0,#(byte_6ED8C0 - 0x6ED8BC)]
CMP             R1, #0
ADDEQ           R6, R0, #0x28 ; '('
ADDNE           R6, R0, #0x14
ADD             R0, R6, R5,LSL#2
LDRH            R1, [R0]
CMP             R1, #0
BEQ             loc_1F20A4
LDR             R0, =dword_6E7CD0
MOV             R2, #1
BL              sub_112928
ADD             R5, R5, #1
CMP             R5, #4
BLT             loc_1F2088
LDRH            R1, [R6,#0x10]
LDR             R0, =dword_6E7CD0
BL              sub_586D84
NOP
NOP
B               def_1F1FC0; jumptable 001F1FC0 default case, cases 5,8
LDR             R0, [R4,#0xC8]; jumptable 001F1FC0 cases 2-4,6,7,9
ORR             R0, R0, #4
STR             R0, [R4,#0xC8]
MOV             R3, #0; jumptable 001F1FC0 default case, cases 5,8
LDR             R1, =dword_6ED9B8
MOV             R2, R3
MOV             R0, #0x3C ; '<'
BL              sub_10A358
CMP             R0, #0
NOP
BLNE            sub_113A5C
MOV             R3, #0x11
MOV             R2, #0x4000
ADD             R1, R4, #0x178
STR             R0, [R4,#0xC]
BL              sub_113924
LDR             R0, =dword_6EF03C
MOV             R5, #0x200000
ADD             R6, R4, #0x20 ; ' '
MOV             R2, #0
LDR             R1, [R0]
LDR             R3, [R1,#0xC]
MOV             R1, R5
BLX             R3
MOV             R1, R0
MOV             R2, R5
MOV             R0, R6
BL              sub_108CA0
MOV             R2, #0x810000
ADD             R1, R4, #0x20 ; ' '
ADD             R0, R4, #0x14
BL              sub_572CE4
LDR             R0, =dword_6ED9B8
MOV             R1, #0
BL              sub_59CF58
LDR             R0, [R4,#0xC8]
TST             R0, #7
LDR             R0, [R4]
BEQ             loc_1F2174
LDR             R1, [R0,#0x1C]
MOV             R0, R4
BLX             R1
B               loc_1F2180
LDR             R1, [R0,#0x18]
MOV             R0, R4
BLX             R1
MOV             R0, #0x8000
STR             R0, [SP,#0x240+var_238]
STR             R7, [SP,#0x240+var_23C]
STR             R8, [SP,#0x240+var_240]
LDR             R2, =dword_6ED9B8
LDR             R0, [R4,#0x10]
LDR             R1, [R4,#0xC]
MOV             R3, #0
BL              sub_112214
MOV             R3, #0
LDR             R1, =dword_6ED9B8
MOV             R2, R3
MOV             R0, #0x2800
BL              sub_10A358
CMP             R0, #0
NOP
BLNE            sub_321658
STR             R0, [R4,#0x9C]
NOP
NOP
MOV             R3, #0
LDR             R1, =dword_6ED9B8
LDR             R0, =0x4A6A0
MOV             R2, R3
BL              sub_10A358
CMP             R0, #0
NOP
BLNE            sub_37D864
MOV             R1, #0x20000
STR             R0, [R4,#0xA4]
STR             R1, [SP,#0x240+var_240]
LDR             R1, =dword_6ED9B8
MOV             R3, #0
MOV             R2, #4
BL              sub_37D53C
MOV             R3, #0
LDR             R1, =dword_6ED9B8
MOV             R2, R3
MOV             R0, #0x48 ; 'H'
BL              sub_10A358
CMP             R0, #0
NOP
BLNE            sub_3A1DEC
STR             R0, [R4,#0x144]
NOP
BL              sub_50F25C
LDR             R1, [R4,#0x144]
STR             R0, [R1,#0x40]
BL              sub_50F2C4
LDR             R1, [R4,#0x144]
STR             R0, [R1,#0x44]
BL              sub_1C71BC
STR             R0, [R4,#0xA8]
MOV             R2, #0
ADR             R1, aFmesBin; "FMes.bin"
ADD             R0, SP, #0x240+var_234
BL              sub_10D1D0
LDR             R0, [R4,#0x10]
ADD             R1, SP, #0x240+var_234
LDR             R2, [R0,#0x40]
STR             R0, [R2,#0x18]
MOV             R0, R2
BL              sub_10D2AC
MOV             R3, #0; int
STR             R10, [SP,#0x240+var_240]; char
STR             R10, [SP,#0x240+var_23C]; int
STR             R10, [SP,#0x240+var_238]; float
LDR             R2, =dword_6ED9B8; int
LDR             R0, [R4,#0x10]; int
MOV             R1, R3; int
BL              sub_532600
STR             R0, [R4,#0xAC]
LDR             R5, [R4,#0x10]
LDR             R0, [R5,#8]
LDR             R1, [R0]
LDR             R1, [R1,#0x24]
BLX             R1
CMP             R0, #0
BEQ             loc_1F22D8
LDR             R0, [R5,#8]
ADD             R1, R5, #0xC
LDR             R2, [R0]
LDR             R2, [R2]
BLX             R2
ADD             R0, R5, #0x14
BL              sub_120E7C
LDR             R0, [R4,#0x10]
LDR             R0, [R0,#0x40]
BL              sub_10D33C
MOV             R3, #0
LDR             R1, =dword_6ED9B8
MOV             R2, R3
MOV             R0, #0x420
BL              sub_10A358
CMP             R0, #0
NOP
BLNE            sub_196514
LDR             R1, =dword_6ED9B8
STR             R0, [R4,#0xB0]
BL              sub_196234
MOV             R3, #0
LDR             R1, =dword_6ED9B8
LDR             R0, =0x418
MOV             R2, R3
BL              sub_10A358
CMP             R0, #0
NOP
BLNE            sub_2D3024
STR             R0, [R4,#0xB4]
LDR             R0, [R4,#0xBC]
LDR             R1, [R4,#0x10]
LDR             R2, [R0]
LDR             R2, [R2,#0x54]
BLX             R2
LDR             R0, [R4,#0xC0]
LDR             R1, [R4,#0x10]
LDR             R2, [R0]
LDR             R2, [R2,#0x54]
BLX             R2
LDR             R0, [R4,#0xC8]
TST             R0, #7
BEQ             loc_1F2390
LDR             R0, [R4,#0xBC]
LDR             R1, [R0]
LDR             R2, [R1,#0x1C]
LDR             R1, =dword_6ED9B8
BLX             R2
LDR             R0, [R4,#0xC0]
LDR             R1, [R0]
LDR             R2, [R1,#0x1C]
LDR             R1, =dword_6ED9B8
B               loc_1F2E04
LDR             R0, [R4,#0x154]
STR             R0, [SP,#0x240+var_240]
UXTH            R0, R0
BL              sub_2AF718
MOV             R9, R0
LDR             R0, [R4,#0xC8]
LDR             R1, [R4,#0x158]
MOV             R2, #0x800000
ORR             R0, R0, #0x30 ; '0'
STR             R1, [SP,#0x240+var_23C]
STR             R0, [R4,#0xC8]
LDR             R0, [R4,#0xC4]
LDR             R1, [R0]
LDR             R3, [R1,#8]
LDR             R1, =dword_6ED9B8
BLX             R3
LDR             R1, =dword_6ED9B8
LDR             R0, =0x2688
MOV             R3, #0x800000
MOV             R2, #0
BL              sub_10A358
CMP             R0, #0
NOP
BLNE            sub_1946B8
LDR             R1, [R4,#0xC4]
MOV             R2, #0x800000
LDR             R1, [R1,#4]
STR             R0, [R1,#0xC]
LDR             R1, [R0]
LDR             R3, [R1,#0x368]
LDR             R1, =dword_6ED9B8
BLX             R3
LDR             R1, =dword_6ED9B8
LDR             R0, =0x2678
MOV             R3, #0x800000
MOV             R2, #0
BL              sub_10A358
CMP             R0, #0
NOP
BLNE            sub_186648
LDR             R1, [R4,#0xC4]
MOV             R2, #0x800000
LDR             R1, [R1,#4]
STR             R0, [R1,#0x10]
LDR             R1, [R0]
LDR             R3, [R1,#0x368]
LDR             R1, =dword_6ED9B8
BLX             R3
LDR             R0, [R9]
LDR             R1, =dword_6ED9B8
MOV             R3, #0x800000
TST             R0, #1
MOVEQ           R6, #0x200000
MOVNE           R6, #0x180000
MOV             R2, #0
MOV             R0, #0xC
BL              sub_10A358
CMP             R0, #0
NOP
BEQ             loc_1F248C
STR             R10, [R0]
STR             R10, [R0,#4]
STR             R10, [R0,#8]
MOV             R5, R0
STR             R0, [R4,#0x88]
LDR             R1, =dword_6ED9B8
MOV             R2, #0
MOV             R3, #0x800000
MOV             R0, R6
BL              sub_1143B4
STM             R5, {R0,R6,R10}
LDR             R0, [R4,#0x5C]
ADD             R1, R0, R0,LSL#3
LDR             R0, [R4,#0x88]
LDM             R0, {R2,R5,R12}
ADD             R2, R2, R12
ADD             R3, R2, #3
BIC             R3, R3, #3
SUB             R2, R3, R2
ADD             R1, R2, R1,LSL#2
ADD             R1, R1, R12
CMP             R1, R5
MOVCS           R3, R10
STRCC           R1, [R0,#8]
STR             R3, [R4,#0x8C]
LDR             R0, [R4,#0x5C]
MOV             R1, #0
CMP             R0, #0
BLS             loc_1F253C
LDR             R12, [R4,#0x58]
LDR             R0, [R4,#0x8C]
ADD             R3, R1, R1,LSL#1
ADD             R2, R1, R1,LSL#3
LDR             R3, [R12,R3,LSL#2]
STR             R10, [R0,R2,LSL#2]!
ADD             R1, R1, #1
STR             R10, [R0,#4]
STR             R10, [R0,#8]
STR             R10, [R0,#0xC]
STR             R10, [R0,#0x10]
STR             R10, [R0,#0x14]
STR             R10, [R0,#0x18]
STR             R10, [R0,#0x1C]!
STR             R3, [R0,#4]
LDR             R0, [R4,#0x5C]
CMP             R0, R1
BHI             loc_1F24F4
LDR             R0, [R4,#0x74]
ADD             R1, R0, R0,LSL#2
LDR             R0, [R4,#0x88]
MOV             R12, R1,LSL#2
LDR             R3, [R0,#8]
LDM             R0, {R1,R5}
ADD             R1, R1, R3
ADD             R2, R1, #3
BIC             R2, R2, #3
SUB             R1, R2, R1
ADD             R1, R1, R12
ADD             R1, R1, R3
CMP             R1, R5
MOVCS           R2, R10
STRCC           R1, [R0,#8]
STR             R2, [R4,#0x90]
LDR             R0, [R4,#0x74]
MOV             R1, #0
CMP             R0, #0
BLS             loc_1F25C4
LDR             R2, [R4,#0x70]
LDR             R0, [R4,#0x90]
ADD             R12, R1, R1,LSL#1
ADD             R3, R1, R1,LSL#2
LDR             R2, [R2,R12,LSL#2]
STR             R10, [R0,R3,LSL#2]!
ADD             R1, R1, #1
STR             R10, [R0,#4]
STR             R10, [R0,#8]
STR             R10, [R0,#0xC]!
STR             R2, [R0,#4]
LDR             R0, [R4,#0x74]
CMP             R0, R1
BHI             loc_1F258C
LDR             R0, [R4,#0x10]
MOV             R2, #1
MOV             R1, #0
BL              sub_53708C
MOV             R2, #2
MOV             R1, #1
B               loc_1F2618
DCD off_6D1648
DCD byte_6ED8BC
DCD dword_6E7CD0
DCD dword_6ED9B8
DCD dword_6EF03C
DCD 0x4A6A0
text "UTF-16LE", "FMes.bin",0
DCW 0
DCD 0x418
DCD 0x2688
DCD 0x2678
LDR             R0, [R4,#0x10]
BL              sub_53708C
LDR             R0, [R4,#0x10]
MOV             R2, #3
MOV             R1, #2
BL              sub_53708C
LDR             R0, [R4,#0x10]
MOV             R2, #4
MOV             R1, #3
BL              sub_53708C
LDR             R0, [R4,#0x10]
MOV             R2, #5
MOV             R1, #4
BL              sub_53708C
LDR             R0, [R4,#0x10]
MOV             R2, #6
MOV             R1, #5
BL              sub_53708C
LDR             R0, [R4,#0x5C]
LDR             R11, =0xFFFFF
MOV             R6, #0
CMP             R0, #0
MOVHI           R8, #0xFFFFFFFF
BLS             loc_1F2790
LDR             R1, [R4,#0x58]
ADD             R0, R6, R6,LSL#1
LDR             R5, [R1,R0,LSL#2]
CMP             R5, R11
MOVEQ           R7, R10
MOVEQ           R0, R8
BEQ             loc_1F2708
LDR             R0, [R4,#0x54]
LDR             R1, [R0]
LDR             R2, [R1,#8]
MOV             R1, R5
BLX             R2
MOV             R7, R0
LDR             R0, [R4,#0x10]
AND             R1, R5, #0xFF000
LDR             R2, [R0]
LDR             R2, [R2,#8]
BLX             R2
CMP             R0, #6; switch 6 cases
LDRCC           PC, [PC,R0,LSL#2]; switch jump
B               def_1F26C4; jumptable 001F26C4 default case, cases 0,1
DCD def_1F26C4; jump table for switch statement
MOV             R0, #0; jumptable 001F26C4 default case, cases 0,1
B               loc_1F2708
MOV             R0, #1; jumptable 001F26C4 case 2
B               loc_1F2708
MOV             R0, #2; jumptable 001F26C4 case 3
B               loc_1F2708
MOV             R0, #3; jumptable 001F26C4 case 4
B               loc_1F2708
MOV             R0, #4; jumptable 001F26C4 case 5
LDR             R2, [R4,#0x10]
CMP             R7, #0
MOVEQ           R0, #0
BEQ             loc_1F2734
LDR             R1, [R7,#0x10]
CMN             R1, #1
BEQ             loc_1F2780
LDR             R2, [R2,#0x40]
RSB             R0, R0, R0,LSL#4
ADD             R0, R2, R0,LSL#2
BL              sub_158E18
CMP             R0, #0
BEQ             loc_1F2780
LDR             R5, [R4,#0x88]
LDR             R1, [R4,#0x8C]
ADD             R2, R6, R6,LSL#3
ADD             R7, R1, R2,LSL#2
LDR             R3, [R5,#8]
LDM             R5, {R1,R12}
ADD             R2, R1, R3
ADD             R1, R2, #3
BIC             R1, R1, #3
SUB             R2, R1, R2
ADD             R2, R2, R0
ADD             R2, R2, R3
CMP             R2, R12
MOVCS           R1, R10
STRCC           R2, [R5,#8]
STR             R1, [R7,#0x18]!
STR             R0, [R7,#4]
LDR             R0, [R4,#0x5C]
ADD             R6, R6, #1
CMP             R0, R6
BHI             loc_1F2678
LDR             R0, [R4,#0x74]
MOV             R5, #0
CMP             R0, #0
BLS             loc_1F284C
LDR             R1, [R4,#0x70]
ADD             R0, R5, R5,LSL#1
LDR             R8, [R4,#0x10]
MOV             R7, #5
LDR             R6, [R1,R0,LSL#2]
CMN             R6, #1
MOVEQ           R0, #0
BEQ             loc_1F27F0
BL              sub_5864A4
LDR             R0, [R0]
CMP             R0, #0
MOVEQ           R0, #0xCB
MOVNE           R0, #0x118
ADD             R1, R6, R0
CMN             R1, #1
BEQ             loc_1F283C
LDR             R0, [R8,#0x40]
RSB             R2, R7, R7,LSL#4
ADD             R0, R0, R2,LSL#2
BL              sub_158E18
CMP             R0, #0
BEQ             loc_1F283C
LDR             R1, [R4,#0x90]
ADD             R2, R5, R5,LSL#2
ADD             R2, R1, R2,LSL#2
LDR             R1, [R4,#0x88]
LDR             R6, [R1,#8]
LDM             R1, {R3,R7}
ADD             R12, R3, R6
ADD             R3, R12, #3
BIC             R3, R3, #3
SUB             R12, R3, R12
ADD             R12, R12, R0
ADD             R12, R12, R6
CMP             R12, R7
MOVCS           R3, R10
STRCC           R12, [R1,#8]
STR             R3, [R2,#8]!
STR             R0, [R2,#4]
LDR             R0, [R4,#0x74]
ADD             R5, R5, #1
CMP             R0, R5
BHI             loc_1F27A0
LDR             R0, [R4,#0x5C]
MOV             R6, #0
CMP             R0, #0
MOVHI           R8, #0xFFFFFFFF
BLS             loc_1F2978
LDR             R1, [R4,#0x58]
ADD             R0, R6, R6,LSL#1
LDR             R5, [R1,R0,LSL#2]
CMP             R5, R11
MOVEQ           R7, R10
MOVEQ           R0, R8
BEQ             loc_1F28F0
LDR             R0, [R4,#0x54]
LDR             R1, [R0]
LDR             R2, [R1,#8]
MOV             R1, R5
BLX             R2
MOV             R7, R0
LDR             R0, [R4,#0x10]
AND             R1, R5, #0xFF000
LDR             R2, [R0]
LDR             R2, [R2,#8]
BLX             R2
CMP             R0, #6; switch 6 cases
LDRCC           PC, [PC,R0,LSL#2]; switch jump
B               def_1F28AC; jumptable 001F28AC default case, cases 0,1
DCD def_1F28AC; jump table for switch statement
MOV             R0, #0; jumptable 001F28AC default case, cases 0,1
B               loc_1F28F0
MOV             R0, #1; jumptable 001F28AC case 2
B               loc_1F28F0
MOV             R0, #2; jumptable 001F28AC case 3
B               loc_1F28F0
MOV             R0, #3; jumptable 001F28AC case 4
B               loc_1F28F0
MOV             R0, #4; jumptable 001F28AC case 5
LDR             R2, [R4,#0x10]
CMP             R7, #0
MOVEQ           R0, #0
BEQ             loc_1F291C
LDR             R1, [R7,#8]
CMN             R1, #1
BEQ             loc_1F2968
LDR             R2, [R2,#0x40]
RSB             R0, R0, R0,LSL#4
ADD             R0, R2, R0,LSL#2
BL              sub_158E18
CMP             R0, #0
BEQ             loc_1F2968
LDR             R5, [R4,#0x88]
LDR             R1, [R4,#0x8C]
ADD             R2, R6, R6,LSL#3
ADD             R7, R1, R2,LSL#2
LDR             R3, [R5,#8]
LDM             R5, {R1,R12}
ADD             R2, R1, R3
ADD             R1, R2, #3
BIC             R1, R1, #3
SUB             R2, R1, R2
ADD             R2, R2, R0
ADD             R2, R2, R3
CMP             R2, R12
MOVCS           R1, R10
STRCC           R2, [R5,#8]
STR             R1, [R7,#0x10]!
STR             R0, [R7,#4]
LDR             R0, [R4,#0x5C]
ADD             R6, R6, #1
CMP             R0, R6
BHI             loc_1F2860
CMP             R0, #0
MOV             R6, #0
MOVHI           R8, #0xFFFFFFFF
BLS             loc_1F2AA0
LDR             R1, [R4,#0x58]
ADD             R0, R6, R6,LSL#1
LDR             R5, [R1,R0,LSL#2]
CMP             R5, R11
MOVEQ           R7, R10
MOVEQ           R0, R8
BEQ             loc_1F2A18
LDR             R0, [R4,#0x54]
LDR             R1, [R0]
LDR             R2, [R1,#8]
MOV             R1, R5
BLX             R2
MOV             R7, R0
LDR             R0, [R4,#0x10]
AND             R1, R5, #0xFF000
LDR             R2, [R0]
LDR             R2, [R2,#8]
BLX             R2
CMP             R0, #6; switch 6 cases
LDRCC           PC, [PC,R0,LSL#2]; switch jump
B               def_1F29D4; jumptable 001F29D4 default case, cases 0,1
DCD def_1F29D4; jump table for switch statement
MOV             R0, #0; jumptable 001F29D4 default case, cases 0,1
B               loc_1F2A18
MOV             R0, #1; jumptable 001F29D4 case 2
B               loc_1F2A18
MOV             R0, #2; jumptable 001F29D4 case 3
B               loc_1F2A18
MOV             R0, #3; jumptable 001F29D4 case 4
B               loc_1F2A18
MOV             R0, #4; jumptable 001F29D4 case 5
LDR             R2, [R4,#0x10]
CMP             R7, #0
MOVEQ           R0, #0
BEQ             loc_1F2A44
LDR             R1, [R7]
CMN             R1, #1
BEQ             loc_1F2A90
LDR             R2, [R2,#0x40]
RSB             R0, R0, R0,LSL#4
ADD             R0, R2, R0,LSL#2
BL              sub_158E18
CMP             R0, #0
BEQ             loc_1F2A90
LDR             R5, [R4,#0x88]
LDR             R1, [R4,#0x8C]
ADD             R2, R6, R6,LSL#3
ADD             R7, R1, R2,LSL#2
LDR             R3, [R5,#8]
LDM             R5, {R1,R12}
ADD             R2, R1, R3
ADD             R1, R2, #3
BIC             R1, R1, #3
SUB             R2, R1, R2
ADD             R2, R2, R0
ADD             R2, R2, R3
CMP             R2, R12
STRCC           R2, [R5,#8]
MOVCS           R1, R10
STR             R0, [R7,#4]
STR             R1, [R7]
LDR             R0, [R4,#0x5C]
ADD             R6, R6, #1
CMP             R0, R6
BHI             loc_1F2988
LDR             R0, [R4,#0x74]
MOV             R5, #0
CMP             R0, #0
BLS             loc_1F2B34
LDR             R1, [R4,#0x70]
ADD             R0, R5, R5,LSL#1
LDR             R1, [R1,R0,LSL#2]
LDR             R0, [R4,#0x10]
CMN             R1, #1
MOVEQ           R0, #0
BEQ             loc_1F2AD8
LDR             R0, [R0,#0x40]
ADD             R0, R0, #0x12C
BL              sub_158E18
CMP             R0, #0
BEQ             loc_1F2B24
LDR             R1, [R4,#0x90]
ADD             R2, R5, R5,LSL#2
ADD             R2, R1, R2,LSL#2
LDR             R1, [R4,#0x88]
LDR             R6, [R1,#8]
LDM             R1, {R3,R7}
ADD             R12, R3, R6
ADD             R3, R12, #0x7F
BIC             R3, R3, #0x7F
SUB             R12, R3, R12
ADD             R12, R12, R0
ADD             R12, R12, R6
CMP             R12, R7
STRCC           R12, [R1,#8]
MOVCS           R3, R10
STR             R0, [R2,#4]
STR             R3, [R2]
LDR             R0, [R4,#0x74]
ADD             R5, R5, #1
CMP             R0, R5
BHI             loc_1F2AB0
LDR             R0, [R4,#0x5C]
MOV             R6, #0
CMP             R0, #0
MOVHI           R8, #0xFFFFFFFF
BLS             loc_1F2C5C
LDR             R0, [R4,#0x58]
ADD             R1, R6, R6,LSL#1
LDR             R5, [R0,R1,LSL#2]
CMP             R5, R11
MOVEQ           R7, R10
MOVEQ           R0, R8
BEQ             loc_1F2BD8
LDR             R0, [R4,#0x54]
LDR             R1, [R0]
LDR             R2, [R1,#8]
MOV             R1, R5
BLX             R2
MOV             R7, R0
LDR             R0, [R4,#0x10]
AND             R1, R5, #0xFF000
LDR             R2, [R0]
LDR             R2, [R2,#8]
BLX             R2
CMP             R0, #6; switch 6 cases
LDRCC           PC, [PC,R0,LSL#2]; switch jump
B               def_1F2B94; jumptable 001F2B94 default case, cases 0,1
DCD def_1F2B94; jump table for switch statement
MOV             R0, #0; jumptable 001F2B94 default case, cases 0,1
B               loc_1F2BD8
MOV             R0, #1; jumptable 001F2B94 case 2
B               loc_1F2BD8
MOV             R0, #2; jumptable 001F2B94 case 3
B               loc_1F2BD8
MOV             R0, #3; jumptable 001F2B94 case 4
B               loc_1F2BD8
MOV             R0, #4; jumptable 001F2B94 case 5
LDR             R2, [R4,#0x10]
CMP             R7, #0
MOVEQ           R0, #0
BEQ             loc_1F2C04
LDR             R1, [R7,#4]
CMN             R1, #1
BEQ             loc_1F2C4C
LDR             R2, [R2,#0x40]
RSB             R0, R0, R0,LSL#4
ADD             R0, R2, R0,LSL#2
BL              sub_158E18
CMP             R0, #0
BEQ             loc_1F2C4C
LDR             R1, [R4,#0x8C]
ADD             R2, R6, R6,LSL#3
ADD             R7, R1, R2,LSL#2
LDR             R1, [R4,#0x88]
LDM             R1, {R2,R5,R12}
ADD             R3, R2, R12
ADD             R2, R3, #0x7F
BIC             R2, R2, #0x7F
SUB             R3, R2, R3
ADD             R3, R3, R0
ADD             R3, R3, R12
CMP             R3, R5
MOVCS           R2, R10
STRCC           R3, [R1,#8]
STR             R2, [R7,#8]!
STR             R0, [R7,#4]
LDR             R0, [R4,#0x5C]
ADD             R6, R6, #1
CMP             R0, R6
BHI             loc_1F2B48
LDR             R0, [R4,#0x10]
LDR             R0, [R0,#0x40]
BL              sub_10D33C
LDR             R0, [R4,#0x10]
LDR             R0, [R0,#0x40]
ADD             R0, R0, #0x3C ; '<'
BL              sub_10D33C
LDR             R0, [R4,#0x10]
LDR             R0, [R0,#0x40]
ADD             R0, R0, #0x78 ; 'x'
BL              sub_10D33C
LDR             R0, [R4,#0x10]
LDR             R0, [R0,#0x40]
ADD             R0, R0, #0xB4
BL              sub_10D33C
LDR             R0, [R4,#0x10]
LDR             R0, [R0,#0x40]
ADD             R0, R0, #0xF0
BL              sub_10D33C
LDR             R0, [R4,#0x10]
LDR             R0, [R0,#0x40]
ADD             R0, R0, #0x12C
BL              sub_10D33C
LDR             R0, [R4,#0xBC]
MOV             R2, #0x800000
LDR             R1, [R0]
LDR             R3, [R1,#0x88]
LDR             R1, =dword_6ED9B8
BLX             R3
LDR             R0, [R4,#0xC0]
MOV             R2, #0x800000
LDR             R1, [R0]
LDR             R3, [R1,#0x88]
LDR             R1, =dword_6ED9B8
BLX             R3
LDR             R0, [R4,#0xBC]
MOV             R2, #0x800000
LDR             R1, [R0]
LDR             R3, [R1,#0x84]
LDR             R1, =dword_6ED9B8
BLX             R3
LDR             R0, [R4,#0xC0]
MOV             R2, #0x800000
LDR             R1, [R0]
LDR             R3, [R1,#0x84]
LDR             R1, =dword_6ED9B8
BLX             R3
LDR             R0, [R4,#0xBC]
LDR             R1, [R0]
LDR             R2, [R1,#0x1C]
LDR             R1, =dword_6ED9B8
BLX             R2
LDR             R0, [R4,#0xC0]
LDR             R1, [R0]
LDR             R2, [R1,#0x1C]
LDR             R1, =dword_6ED9B8
BLX             R2
LDR             R0, [R9]
TST             R0, #1
BEQ             loc_1F2E0C
LDR             R0, =dword_6E7CD0
MOV             R2, #1
MOV             R1, #0xC
BL              sub_586D40
LDR             R0, [R4,#0xC8]
TST             R0, #0x40
BEQ             loc_1F2E28
ADD             R5, R4, #0x4000
LDR             R1, [R5,#0x178]
LDR             R0, [R5,#0x17C]
LDR             R1, [R1,#0xC]
STR             R0, [SP,#0x240+var_23C]
STRD            R0, R1, [SP,#0x240+var_238]
LDR             R0, =off_6B7828
MOV             R1, R4
STR             R0, [SP,#0x240+var_240]
LDR             R0, [R5,#0x178]
ADD             R0, R0, #0x10
BL              sub_5D0330
LDR             R0, [R5,#0x178]
LDR             R1, [R4,#0xC4]
ADD             R0, R0, #0x1C
NOP
LDR             R0, [R5,#0x178]
LDR             R1, [R4,#0xC4]
ADD             R0, R0, #0x1C
BL              sub_5D0228
LDR             R0, [R5,#0x178]
LDR             R1, [R4,#0xBC]
ADD             R0, R0, #0x800
ADD             R0, R0, #0x54 ; 'T'
BL              sub_5CF060
LDR             R0, [R5,#0x178]
LDR             R1, [R4,#0xC0]
ADD             R0, R0, #0x4000
ADD             R0, R0, #0xDC0
BL              sub_5CEFA0
LDR             R0, [R9]
MOV             R0, R0,LSL#23
MOV             R1, R0,LSR#24
LDR             R0, =dword_6E7CD0
BL              sub_5870D4
LDR             R0, [R4]
MOV             R1, SP
LDR             R2, [R0,#0xAC]
MOV             R0, R4
BLX             R2
B               loc_1F2E7C
LDR             R0, =dword_6E7CD0
MOV             R2, #0
MOV             R1, #0xC
BL              sub_586D40
NOP
NOP
B               loc_1F2D5C
LDR             R2, [R4,#0xBC]
LDRD            R0, R1, [SP,#0x240+var_240]
ADD             R2, R2, #0x10000
ADD             R2, R2, #0x3D00
STRH            R0, [R2,#4]
LDR             R0, [R4,#0xBC]
ADD             R0, R0, #0x10000
ADD             R0, R0, #0x4300
STRH            R1, [R0,#0xA]
LDR             R1, [R9]
LDR             R0, [R4,#0xC0]
MOV             R1, R1,LSL#1
ADD             R0, R0, #0x10000
ADD             R0, R0, #0x3D00
MOV             R1, R1,LSR#16
STRH            R1, [R0,#4]
LDR             R0, [R9]
MOV             R0, R0,LSL#23
MOV             R1, R0,LSR#24
LDR             R0, =dword_6E7CD0
BL              sub_5870D4
LDR             R1, [R4,#0xBC]
LDR             R0, [R4,#0xA0]
ADD             R1, R1, #0xF4
BL              sub_2D30F0
LDR             R0, [R4,#0xC8]
LDR             R5, =off_67E18C
TST             R0, #7
BEQ             loc_1F2EC8
LDRD            R0, R1, [R5,#(off_67E20C - 0x67E18C)]
ADD             R5, R5, #0x90
MOV             R3, #1
STRD            R0, R1, [R4,#0x4C]
LDR             R0, [R4]
LDM             R5, {R1,R2}
LDR             R12, [R0,#0x28]
ADD             SP, SP, #0x21C
MOV             R0, R4
POP             {R4-R11,LR}
BX              R12
TST             R0, #8
BEQ             loc_1F2EE0
LDR             R0, =word_6EBB64
LDR             R0, [R0,#(dword_6EBB84 - 0x6EBB64)]
STR             R0, [R4,#0x148]
B               loc_1F2EFC
MOV             R0, #0x100000
MOV             R3, R0
MOV             R2, R0
STR             R0, [SP,#0x240+var_240]
MOV             R1, #0x800000
MOV             R0, #0
BL              sub_321378
LDR             R0, =0x422C
LDRH            R0, [R0,R4]
BL              sub_2AF718
LDR             R0, [R0]
TST             R0, #1
LDR             R0, [R4,#0x9C]
LDREQ           R1, =0x200000B
LDRNE           R1, =0x200000C
BL              sub_3214D0
LDR             R0, [R4,#0xC8]
TST             R0, #7
LDRDEQ          R0, R1, [R5,#(off_67E214 - 0x67E18C)]
BEQ             loc_1F2EA0
B               loc_1F2E9C
