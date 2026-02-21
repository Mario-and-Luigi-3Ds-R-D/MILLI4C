PUSH            {R4-R9,LR}
MOV             R7, #0
MOV             R8, #1
LDR             R1, =off_6BBCF8
VPUSH           {D8}
SUB             SP, SP, #0x14
STRB            R7, [R0,#4]
STRB            R7, [R0,#5]
STRH            R7, [R0,#6]
STR             R1, [R0]
STR             R7, [R0,#0x14]
STRB            R8, [R0,#0x18]
STRB            R7, [R0,#0x19]
STR             R7, [R0,#0x20]
STR             R7, [R0,#0x28]
STR             R7, [R0,#0x34]
STR             R7, [R0,#0x3C]
STR             R7, [R0,#0x48]
STR             R7, [R0,#0x50]
ADD             R1, R0, #0x60 ; '`'
STR             R7, [R0,#0x5C]
STR             R1, [R0,#0x64]
STR             R1, [R0,#0x60]
ADD             R1, R0, #0x6C ; 'l'
STR             R7, [R0,#0x68]
STR             R1, [R0,#0x70]
STR             R1, [R0,#0x6C]
ADD             R1, R0, #0x78 ; 'x'
STR             R7, [R0,#0x74]
STR             R1, [R0,#0x7C]
STR             R1, [R0,#0x78]
ADD             R1, R0, #0x84
STR             R7, [R0,#0x80]
STR             R1, [R0,#0x88]
STR             R1, [R0,#0x84]!
STR             R7, [R0,#8]!
ADD             R0, R0, #4
BL              sub_2583AC
SUB             R3, R0, #0x90
ADD             R1, R0, #0x12000
ADD             R1, R1, #0x6F0
ADD             R0, R0, #0x12400
ADD             R0, R0, #0x2F4
STR             R0, [R1]
STR             R0, [R0,#8]
STR             R0, [R0,#4]
ADD             R0, R3, #0x12800
ADD             R2, R3, #0x12400
ADD             R0, R0, #0x1EC
ADD             R2, R2, #0x394
STR             R2, [R0]
STR             R2, [R0,#4]
ADD             R2, R3, #0x12800
ADD             R2, R2, #0x1F4
ADD             R0, R3, #0x12C00
STR             R2, [R2,#0x258]
ADD             R0, R0, #0x54 ; 'T'
STR             R2, [R2,#0x25C]
BL              sub_503064
SUB             R4, R0, #0x12C00
STR             R7, [R0,#0x5F8]!
ADD             R0, R0, #4
SUB             R4, R4, #0x54 ; 'T'
STR             R0, [R0,#4]
STR             R0, [R0]
LDR             R0, =0x1325C
STR             R7, [R0,R4]
MOV             R0, #0x700
BL              sub_6126B8
LDR             R9, =off_6CE970
LDR             R0, [R9]
BL              sub_52FB70
LDR             R0, [R9]
ADD             R5, R0, #0x19C000
MOV             R0, #0xFF
ADD             R5, R5, #0x1F40
REV             R6, R0
MOV             R0, R5
BL              sub_4E63E0
STR             R6, [R5,#(loc_19DF44 - 0x19DF40)]
STR             R6, [R5]
LDR             R0, =0x10C51C
LDR             R1, [R9]
ADD             R5, R1, R0; loc_10C51C
MOV             R0, R5
BL              sub_5A18EC
LDR             R6, =off_6CE098
VLDR            S16, =0.0
MOV             R3, #0
VSTR            S16, [R5,#(loc_10C528 - 0x10C51C)]
VSTR            S16, [R5,#(loc_10C520 - 0x10C51C)]
STR             R4, [R6]
STRB            R7, [R4,#0x1A]
LDR             R0, [R9]
MOV             R2, R3
ADD             R1, R0, #0x68 ; 'h'
MOV             R0, #0x530
BL              sub_10A358
CMP             R0, #0
BLNE            sub_253840
STR             R0, [R4,#0x8C]
LDR             R0, [R9]
MOV             R3, #0
MOV             R2, R3
ADD             R1, R0, #0x68 ; 'h'
MOV             R0, #0x1600
BL              sub_10A358
CMP             R0, #0
BEQ             loc_255A34
LDR             R1, [R6]
STR             R1, [R0,#4]
LDR             R1, =off_6BBAF8
STR             R1, [R0],#0xC
STR             R7, [R0],#4
BL              sub_2530F4
ADD             R0, R0, #0x58 ; 'X'
BL              sub_253580
ADD             R0, R0, #0x48 ; 'H'
BL              sub_252BB4
ADD             R0, R0, #0x48 ; 'H'
BL              sub_14F198
ADD             R0, R0, #0x3FC
BL              sub_14F198
ADD             R0, R0, #0x3F4
BL              sub_14CB8C
MOV             R5, R0
LDR             R0, =off_6C357C
MOV             R1, #0xC0
VLDR            S0, =50.0
STR             R0, [R5]
STR             R1, [R5,#0x100]
VSTR            S16, [R5,#0x104]
VSTR            S16, [R5,#0x108]
STR             R7, [R5,#0x10C]
STR             R7, [R5,#0x110]
VSTR            S16, [R5,#0x114]
VSTR            S0, [R5,#0x118]
VSTR            S16, [R5,#0x11C]
VLDR            S0, =-20.0
VSTR            S16, [R5,#0x120]
VSTR            S0, [R5,#0x124]
VLDR            S1, =-140.0
VSTR            S16, [R5,#0x128]
VLDR            S0, =90.0
VSTR            S1, [R5,#0x12C]
ADD             R0, R5, #0x10C
VSTR            S0, [R5,#0x130]
VSTR            S16, [R5,#0x134]
STR             R8, [R0,#0x2C]
LDR             R1, =0xBDC
ADD             R0, R5, #0x13C
BL              sub_2FFE8C
LDR             R1, =sub_14F198
ADD             R0, R5, #0x13C
MOV             R3, #3
MOV             R2, #0x3F4
BLX             sub_1002F4
SUB             R0, R0, #0x800
SUB             R0, R0, #0x224
STR             R0, [R4,#8]
LDR             R0, [R9]
MOV             R3, #0
MOV             R2, R3
ADD             R1, R0, #0x68 ; 'h'
MOV             R0, #0xC
BL              sub_10A358
CMP             R0, #0
NOP
BEQ             loc_255A6C
LDR             R1, [R6]
STR             R1, [R0,#4]
LDR             R1, =off_6BBD64
STR             R1, [R0]
STR             R0, [R4,#0xC]
LDR             R0, [R9]
MOV             R3, #0
MOV             R2, R3
ADD             R1, R0, #0x68 ; 'h'
LDR             R0, =0x41C
BL              sub_10A358
CMP             R0, #0
NOP
BEQ             loc_255AB4
LDR             R1, [R6]
STR             R1, [R0,#4]
LDR             R1, =off_6BBB30
STR             R1, [R0],#0x24
BL              sub_14F198
STRB            R7, [R0,#-0x18]!
STRB            R7, [R0,#0x40C]
SUB             R0, R0, #0xC
STR             R0, [R4,#0x10]
LDR             R0, [R4,#0x14]
LDR             R5, [R4,#8]
MOV             R6, #0
MOVS            R2, R0
BEQ             loc_255ADC
LDR             R0, [R0]
LDR             R1, [R0,#0x10]
MOV             R0, R2
BLX             R1
STR             R5, [R4,#0x14]
LDR             R0, [R5]
MOV             R1, R6
LDR             R2, [R0,#8]
MOV             R0, R5
BLX             R2
LDR             R0, [R9]
LDR             R1, [R4,#0x8C]
MOV             R6, #0x9C
LDR             R2, [R0,#0x68]!
LDR             R5, [R1,#0x7C]
LDR             R3, [R2,#0xC]
MUL             R1, R5, R6
MOV             R2, #0
BLX             R3
ADD             R1, R4, #0x38 ; '8'
STR             R0, [R4,#0x34]
STM             R1, {R0,R5}
CMP             R5, #0
STR             R5, [R4,#0x40]
MOV             R3, R0
MOV             R1, #0
STRB            R7, [R4,#0x44]
BLS             loc_255B54
ADD             R2, R0, R6
ADD             R1, R1, #1
STR             R2, [R0]
CMP             R5, R1
MOV             R0, R2
BHI             loc_255B3C
SUB             R0, R5, #1
MOV             R5, #0xFA
MLA             R0, R6, R0, R3
MOV             R6, #0x400
MOV             R1, #0x3E800
STR             R7, [R0]
STRB            R8, [R4,#0x44]
LDR             R0, [R9]
LDR             R2, [R0,#0x68]!
LDR             R3, [R2,#0xC]
MOV             R2, #0
BLX             R3
ADD             R1, R4, #0x24 ; '$'
STR             R0, [R4,#0x20]
STM             R1, {R0,R5}
MOV             R3, R0
STR             R5, [R4,#0x2C]
MOV             R1, #0
STRB            R7, [R4,#0x30]
ADD             R2, R0, R6
ADD             R1, R1, #1
STR             R2, [R0]
CMP             R1, R5
MOV             R0, R2
BCC             loc_255BA0
SUB             R0, R5, #1
ADD             R12, SP, #0x38+var_34
MLA             R0, R6, R0, R3
LDR             R3, =unk_63EFD4
STR             R7, [R0]
STRB            R8, [R4,#0x30]
LDM             R3, {R0-R3}
STMEA           SP, {R0-R3}
MOV             R0, SP
MOV             R1, R12
MOV             R2, #0
MOV             R3, #3
LDR             R6, [R0]
LDR             R5, [R1]
ADD             R1, R1, #4
CMP             R6, R5
ADDCC           R0, R12, R2,LSL#2
SUBS            R3, R3, #1
ADD             R2, R2, #1
BNE             loc_255BE8
LDR             R5, [R0]
LDR             R0, [R9]
MOV             R6, #0x32 ; '2'
MUL             R1, R5, R6
LDR             R2, [R0,#0x68]!
LDR             R3, [R2,#0xC]
MOV             R2, #0
BLX             R3
ADD             R1, R4, #0x4C ; 'L'
STR             R0, [R4,#0x48]
STM             R1, {R0,R6}
MOV             R3, R0
STR             R6, [R4,#0x54]
MOV             R1, #0
STRB            R7, [R4,#0x58]
ADD             R2, R0, R5
ADD             R1, R1, #1
STR             R2, [R0]
CMP             R1, R6
MOV             R0, R2
BCC             loc_255C44
SUB             R0, R6, #1
LDR             R1, =sub_10D4F0
MLA             R0, R5, R0, R3
STR             R7, [R0]
STRB            R8, [R4,#0x58]
LDR             R0, [R9]
LDR             R1, [R0,R1]
CMP             R1, #0
STRBNE          R7, [R1,#0xF2]
LDR             R1, =0x10E0BC
LDR             R1, [R1,R0]
CMP             R1, #0
STRBNE          R7, [R1,#0xF2]
LDR             R1, =0x10646C
ADD             R0, R0, R1; loc_10646C
B               loc_255CF0
DCD off_6BBCF8
DCD 0x1325C
DCD off_6CE970
DCD 0x10C51C
DCFS 0.0
DCD off_6CE098
DCD off_6BBAF8
DCD off_6C357C
DCFS 50.0
DCFS -20.0
DCFS -140.0
DCFS 90.0
DCD 0xBDC
DCD sub_14F198
DCD off_6BBD64
DCD 0x41C
DCD off_6BBB30
DCD unk_63EFD4
DCD sub_10D4F0
DCD 0x10E0BC
DCD 0x10646C
LDR             R0, [R0,#(loc_106470 - 0x10646C)]
CMP             R0, #0
SUBSNE          R0, R0, #0x1AC
MOVEQ           R0, #0
ADDNE           R0, R0, #0x1AC
CMP             R0, #0
LDRNE           R1, [R0,#8]
MOVEQ           R1, #0
MOVNE           R2, R7
BEQ             loc_255D3C
CMP             R0, #0
SUBNE           R0, R0, #0x1AC
LDR             R0, [R0,#0x18]
STRB            R2, [R0,#0xF2]
MOVS            R0, R1
MOVEQ           R1, #0
LDRNE           R1, [R0,#8]
CMP             R0, R7
BNE             loc_255D18
ADD             SP, SP, #0x14
MOV             R0, R4
VPOP            {D8}
POP             {R4-R9,PC}
