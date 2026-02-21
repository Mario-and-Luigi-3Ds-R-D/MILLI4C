PUSH            {R4-R8,LR}
MOV             R4, R0
ADD             R0, R0, #0x12400
LDR             R1, =off_6BBE60
ADD             R0, R0, #0x358
STR             R1, [R4]
LDR             R0, [R0]
CMP             R0, #0
BEQ             loc_26708C
BL              sub_5CC110
LDR             R1, =dword_6E2378
STRH            R0, [R1,#(word_6E23A4 - 0x6E2378)]
LDR             R0, [R4,#8]
MOV             R8, #0
CMP             R0, #0
BEQ             loc_2670A4
BL              sub_300FD4
STR             R8, [R4,#8]
ADD             R5, R4, #0x12400
ADD             R5, R5, #0x364
LDR             R0, [R5]
CMP             R0, #0
BEQ             loc_2670C0
BL              sub_300FD4
STR             R8, [R5]
MOV             R5, R4
LDR             R0, =off_6C3220
ADD             R4, R4, #0x12800
ADD             R4, R4, #0x368
STR             R0, [R4]
ADD             R0, R4, #0x400
STR             R8, [R4,#0x124]
ADD             R0, R0, #0x11C
STR             R8, [R4,#0x120]
BL              sub_5B83E4
ADD             R0, R4, #0x128
NOP
BL              sub_528B1C
ADD             R5, R5, #0x13000
LDR             R0, =off_6C3340
ADD             R5, R5, #0x84
MOV             R6, R5
STR             R0, [R5]
MOV             R4, R6
MOV             R0, R5
BL              sub_5B83E4
ADD             R5, R4, #0xCC
ADD             R0, R4, #0x168
MOV             R1, #0
BL              sub_62D444
ADD             R0, R5, #0x9C
MOV             R1, #0
BL              sub_62D444
LDR             R0, [R6,#0x54]
ADD             R5, R6, #0x54 ; 'T'
CMP             R0, #0
LDRNE           R1, =dword_593390
BLNE            sub_3016C0
SUB             R0, R5, #0x400
SUB             R0, R0, #0x48 ; 'H'
BL              sub_14F3EC
SUB             R0, R0, #0x128
NOP
BL              sub_14CD84
SUB             R0, R0, #0x3F4
NOP
BL              sub_14F3EC
SUB             R4, R0, #0xC
LDR             R0, [R0,#-4]
ADD             R1, R4, #4
CMP             R0, R1
BNE             loc_267198
LDR             R0, [R4]
CMP             R0, #0
BEQ             loc_267198
BL              sub_25FA40
NOP
NOP
BL              sub_300FD4
ADD             R1, R4, #4
SUB             R4, R4, #0x10
LDRD            R0, R1, [R1]
STR             R1, [R0,#4]
STR             R0, [R1]
LDR             R0, [R4,#8]
ADD             R1, R4, #4
CMP             R0, R1
BNE             loc_2671D8
LDR             R0, [R4]
CMP             R0, #0
BEQ             loc_2671D8
BL              sub_2697F0
NOP
NOP
BL              sub_300FD4
ADD             R1, R4, #4
LDRD            R0, R1, [R1]
STR             R1, [R0,#4]
STR             R0, [R1]
SUB             R0, R4, #0x10000
SUB             R0, R0, #0x26C0
BL              sub_26A198
SUB             R7, R0, #8
LDR             R5, [R0,#-4]!
LDR             R6, [R0,#-4]
CMP             R6, R5
BEQ             loc_26724C
SUB             R5, R5, #0xC
ADD             R1, R5, #4
LDR             R0, [R5,#8]
MOV             R4, R5
CMP             R0, R1
BNE             loc_267238
LDR             R0, [R4]
CMP             R0, #0
BEQ             loc_267238
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
LDRD            R0, R1, [R4,#4]
CMP             R6, R5
STR             R1, [R0,#4]
STR             R0, [R1]
BNE             loc_267208
LDR             R0, [R7,#-0x84]
SUB             R5, R7, #0x90
SUB             R4, R7, #0x84
CMP             R0, #0
BEQ             loc_26726C
LDR             R1, [R0]
LDR             R1, [R1,#0x10]
BLX             R1
LDR             R1, [R4,#8]
ADD             R2, R4, #4
CMP             R1, R2
BNE             loc_267298
LDR             R0, [R4]
CMP             R0, #0
BEQ             loc_2672B8
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
B               loc_2672B8
ADD             R0, R4, #4
CMP             R1, R0
BEQ             loc_2672B8
LDR             R2, [R0]
STR             R1, [R2,#4]
STR             R2, [R1]
STR             R0, [R0]
STR             R0, [R0,#4]
STR             R8, [R4]
LDR             R1, [R4,#4]!
LDR             R0, [R4,#4]
STR             R0, [R1,#4]
STR             R1, [R0]
MOV             R0, R5
POP             {R4-R8,PC}
