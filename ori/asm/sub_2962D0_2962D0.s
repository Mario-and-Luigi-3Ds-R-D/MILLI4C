PUSH            {R4-R8,LR}
MOV             R6, R0
ADD             R0, R0, #0x12000
LDR             R1, =off_6BC5F4
ADD             R0, R0, #0x7E0
STR             R1, [R6]
LDR             R0, [R0]
CMP             R0, #0
BEQ             loc_296300
LDR             R0, [R0]
LDR             R1, =dword_6E2378
STRH            R0, [R1,#(word_6E23A4 - 0x6E2378)]
ADD             R8, R6, #0x12400
ADD             R8, R8, #0x3B4
LDR             R5, [R8,#0x28]
LDR             R7, [R8,#0x24]
CMP             R7, R5
BEQ             loc_296360
SUB             R5, R5, #0xC
ADD             R1, R5, #4
LDR             R0, [R5,#8]
MOV             R4, R5
CMP             R0, R1
BNE             loc_29634C
LDR             R0, [R4]
CMP             R0, #0
BEQ             loc_29634C
BL              sub_29A738
NOP
NOP
BL              sub_300FD4
LDRD            R0, R1, [R4,#4]
CMP             R7, R5
STR             R1, [R0,#4]
STR             R0, [R1]
BNE             loc_296318
LDR             R0, [R8,#0x24]
MOV             R5, #0
ADD             R4, R6, #0x4C ; 'L'
STR             R0, [R8,#0x28]
LDR             R1, [R6,#0x54]
ADD             R0, R6, #0x50 ; 'P'
CMP             R1, R0
BNE             loc_2966C4
LDR             R0, [R4]
CMP             R0, #0
BEQ             loc_29639C
BL              sub_287CDC
NOP
NOP
BL              sub_300FD4
STR             R5, [R4]
LDR             R0, [R6,#0x14]
MOV             R8, #0
CMP             R0, #0
BEQ             loc_2963B8
BL              sub_300FD4
STR             R8, [R6,#0x14]
LDR             R0, [R6,#0x1C]
CMP             R0, #0
BEQ             loc_2963CC
BL              sub_300FD4
STR             R8, [R6,#0x1C]
LDR             R0, [R6,#0x18]
CMP             R0, #0
BEQ             loc_2963EC
BL              sub_286E5C
NOP
NOP
BL              sub_300FD4
STR             R8, [R6,#0x18]
LDR             R0, [R6,#0x20]
CMP             R0, #0
BEQ             loc_296400
BL              sub_300FD4
STR             R8, [R6,#0x20]
LDR             R1, [R6,#0x38]
ADD             R0, R6, #0x34 ; '4'
MOV             R5, #0
CMP             R1, R0
ADD             R4, R6, #0x30 ; '0'
BNE             loc_2966E0
LDR             R0, [R4]
CMP             R0, #0
BEQ             loc_296434
BL              sub_28AA60
NOP
NOP
BL              sub_300FD4
STR             R5, [R4]
LDR             R1, [R6,#0x2C]
ADD             R0, R6, #0x28 ; '('
MOV             R5, #0
CMP             R1, R0
ADD             R4, R6, #0x24 ; '$'
BNE             loc_2966FC
LDR             R0, [R4]
CMP             R0, #0
BEQ             loc_29646C
NOP
NOP
NOP
BL              sub_300FD4
STR             R5, [R4]
LDR             R0, [R6,#0x3C]
CMP             R0, #0
BEQ             loc_296484
BL              sub_300FD4
STR             R8, [R6,#0x3C]
ADD             R0, R6, #0x12800
ADD             R0, R0, #0x1C
BL              sub_14F3EC
SUB             R4, R0, #0xC
LDR             R0, [R0,#-4]
ADD             R1, R4, #4
CMP             R0, R1
BNE             loc_2964BC
LDR             R0, [R4]
CMP             R0, #0
BEQ             loc_2964BC
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
LDR             R1, [R4,#4]
LDR             R0, [R4,#8]
SUB             R4, R4, #0xC
STR             R0, [R1,#4]
STR             R1, [R0]
LDR             R0, [R4,#8]
ADD             R1, R4, #4
CMP             R0, R1
BNE             loc_2964FC
LDR             R0, [R4]
CMP             R0, #0
BEQ             loc_2964FC
BL              sub_286348
NOP
NOP
BL              sub_300FD4
ADD             R1, R4, #4
SUB             R4, R4, #0xC
LDRD            R0, R1, [R1]
STR             R1, [R0,#4]
STR             R0, [R1]
LDR             R0, [R4,#8]
ADD             R1, R4, #4
CMP             R0, R1
BNE             loc_29652C
LDR             R0, [R4]
CMP             R0, #0
BLNE            sub_300FD4
LDR             R1, [R4,#4]
LDR             R0, [R4,#8]
SUB             R4, R4, #0xC
STR             R0, [R1,#4]
STR             R1, [R0]
LDR             R0, [R4,#8]
ADD             R1, R4, #4
CMP             R0, R1
BNE             loc_296568
LDR             R0, [R4]
CMP             R0, #0
BEQ             loc_296568
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
ADD             R1, R4, #4
SUB             R4, R4, #0xC
LDRD            R0, R1, [R1]
STR             R1, [R0,#4]
STR             R0, [R1]
LDR             R0, [R4,#8]
ADD             R1, R4, #4
CMP             R0, R1
BNE             loc_2965A8
LDR             R0, [R4]
CMP             R0, #0
BEQ             loc_2965A8
BL              sub_297AA8
NOP
NOP
BL              sub_300FD4
ADD             R1, R4, #4
SUB             R7, R4, #8
LDRD            R0, R1, [R1]
STR             R1, [R0,#4]
STR             R0, [R1]
LDR             R5, [R4,#-4]!
LDR             R6, [R4,#-4]
CMP             R6, R5
BEQ             loc_296614
SUB             R5, R5, #0xC
ADD             R1, R5, #4
LDR             R0, [R5,#8]
MOV             R4, R5
CMP             R0, R1
BNE             loc_296600
LDR             R0, [R4]
CMP             R0, #0
BEQ             loc_296600
BL              sub_29A738
NOP
NOP
BL              sub_300FD4
LDRD            R0, R1, [R4,#4]
CMP             R6, R5
STR             R1, [R0,#4]
STR             R0, [R1]
BNE             loc_2965CC
SUB             R0, R7, #0x12400
SUB             R0, R0, #0x2F4
BL              sub_298628
SUB             R7, R0, #8
LDR             R5, [R0,#-4]!
LDR             R6, [R0,#-4]
CMP             R6, R5
BEQ             loc_296678
SUB             R5, R5, #0xC
ADD             R1, R5, #4
LDR             R0, [R5,#8]
MOV             R4, R5
CMP             R0, R1
BNE             loc_296664
LDR             R0, [R4]
CMP             R0, #0
BEQ             loc_296664
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
LDRD            R0, R1, [R4,#4]
CMP             R6, R5
STR             R1, [R0,#4]
STR             R0, [R1]
BNE             loc_296634
LDR             R0, [R7,#-0x84]
SUB             R4, R7, #0xDC
SUB             R5, R7, #0x84
CMP             R0, #0
BEQ             loc_296698
LDR             R1, [R0]
LDR             R1, [R1,#0x10]
BLX             R1
LDR             R1, [R5,#8]
ADD             R2, R5, #4
CMP             R1, R2
BNE             loc_296718
LDR             R0, [R5]
CMP             R0, #0
BEQ             loc_296738
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
B               loc_296738
LDR             R2, [R4,#4]
ADD             R0, R4, #4
STR             R1, [R2,#4]
STR             R2, [R1]
STR             R0, [R4,#4]
STR             R0, [R4,#8]
B               loc_29639C
LDR             R2, [R4,#4]
ADD             R0, R4, #4
STR             R1, [R2,#4]
STR             R2, [R1]
STR             R0, [R4,#4]
STR             R0, [R4,#8]
B               loc_296434
LDR             R2, [R4,#4]
ADD             R0, R4, #4
STR             R1, [R2,#4]
STR             R2, [R1]
STR             R0, [R4,#4]
STR             R0, [R4,#8]
B               loc_29646C
ADD             R0, R5, #4
CMP             R1, R0
BEQ             loc_296738
LDR             R2, [R0]
STR             R1, [R2,#4]
STR             R2, [R1]
STR             R0, [R0]
STR             R0, [R0,#4]
STR             R8, [R5]
LDR             R1, [R5,#4]!
LDR             R0, [R5,#4]
ADD             R5, R4, #0x4C ; 'L'
STR             R0, [R1,#4]
STR             R1, [R0]
LDR             R0, [R4,#0x54]
ADD             R1, R4, #0x50 ; 'P'
CMP             R0, R1
BNE             loc_29677C
LDR             R0, [R5]
CMP             R0, #0
BEQ             loc_29677C
BL              sub_287CDC
NOP
NOP
BL              sub_300FD4
LDRD            R0, R1, [R5,#4]
ADD             R5, R4, #0x40 ; '@'
STR             R1, [R0,#4]
STR             R0, [R1]
LDR             R0, [R4,#0x48]
ADD             R1, R4, #0x44 ; 'D'
CMP             R0, R1
BNE             loc_2967B8
LDR             R0, [R5]
CMP             R0, #0
BEQ             loc_2967B8
BL              sub_283340
NOP
NOP
BL              sub_300FD4
LDRD            R0, R1, [R5,#4]
ADD             R5, R4, #0x30 ; '0'
STR             R1, [R0,#4]
STR             R0, [R1]
LDR             R0, [R4,#0x38]
ADD             R1, R4, #0x34 ; '4'
CMP             R0, R1
BNE             loc_2967F4
LDR             R0, [R5]
CMP             R0, #0
BEQ             loc_2967F4
BL              sub_28AA60
NOP
NOP
BL              sub_300FD4
LDRD            R0, R1, [R5,#4]
ADD             R5, R4, #0x24 ; '$'
STR             R1, [R0,#4]
STR             R0, [R1]
LDR             R0, [R4,#0x2C]
ADD             R1, R4, #0x28 ; '('
CMP             R0, R1
BNE             loc_296830
LDR             R0, [R5]
CMP             R0, #0
BEQ             loc_296830
NOP
NOP
NOP
BL              sub_300FD4
LDRD            R0, R1, [R5,#4]
ADD             R5, R4, #8
STR             R1, [R0,#4]
STR             R0, [R1]
LDR             R0, [R4,#0x10]
ADD             R1, R4, #0xC
CMP             R0, R1
BNE             loc_29686C
LDR             R0, [R5]
CMP             R0, #0
BEQ             loc_29686C
BL              sub_28F9F4
NOP
NOP
BL              sub_300FD4
LDRD            R0, R1, [R5,#4]
STR             R1, [R0,#4]
STR             R0, [R1]
MOV             R0, R4
POP             {R4-R8,PC}
