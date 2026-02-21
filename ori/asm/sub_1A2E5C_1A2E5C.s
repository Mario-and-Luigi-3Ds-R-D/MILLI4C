PUSH            {R4-R8,LR}
MOV             R4, R0
MOV             R6, #0
LDR             R0, =off_6BB568
ADD             R5, R4, #0xBC
STR             R0, [R4]
LDR             R1, [R4,#0xC4]
ADD             R0, R4, #0xC0
CMP             R1, R0
BNE             loc_1A3148
LDR             R0, [R5]
CMP             R0, #0
BEQ             loc_1A2E98
BL              sub_1A51AC
BL              sub_300FD4
STR             R6, [R5]
LDR             R5, =off_6CE970
LDR             R0, =0x10D4D8
LDR             R1, [R5]
ADD             R0, R0, R1; loc_10D4D8
BL              sub_4E5830
LDR             R0, [R4,#0x98]
MOV             R7, #0
CMP             R0, #0
BEQ             loc_1A2EC8
BL              sub_300FD4
STR             R7, [R4,#0x98]
LDR             R0, [R4,#0x9C]
CMP             R0, #0
BEQ             loc_1A2EE8
NOP
NOP
NOP
BL              sub_300FD4
STR             R7, [R4,#0x9C]
LDR             R0, [R4,#0xA0]
CMP             R0, #0
BEQ             loc_1A2F08
BL              sub_1A6A70
NOP
NOP
BL              sub_300FD4
STR             R7, [R4,#0xA0]
LDR             R0, [R5]
LDR             R1, =off_10D620
LDRH            R1, [R1,R0]; off_10D620
CMP             R1, #0
BEQ             loc_1A2F8C
LDR             R1, =sub_10D4F0
ADD             R5, R4, #0x400
ADD             R5, R5, #0xE4
MOV             R2, #0
LDR             R6, [R0,R1]
LDR             R1, [R4,#0x4E4]
LDR             R0, [R6]
LDR             R3, [R0,#0x58]
MOV             R0, R6
BLX             R3
LDRB            R1, [R5,#0x16]
MOV             R0, R6
BL              sub_14C450
LDR             R0, [R6]
ADD             R1, R5, #4
LDR             R2, [R0,#0x20]
MOV             R0, R6
BLX             R2
LDR             R0, [R5,#0x10]
MOV             R3, #0x100
MOV             R2, #0
AND             R1, R0, #0xFF
MOV             R0, R6
BL              sub_14C430
LDRB            R0, [R5,#0x14]
STRB            R0, [R6,#0xF3]
LDRB            R0, [R5,#0x15]
STRB            R0, [R6,#0xF4]
ADD             R0, R4, #0xD4
BL              sub_14F3EC
SUB             R4, R0, #0xC
LDR             R0, [R0,#-4]
ADD             R1, R4, #4
CMP             R0, R1
BNE             loc_1A2FC4
LDR             R0, [R4]
CMP             R0, #0
BEQ             loc_1A2FC4
BL              sub_1A3DA4
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
BNE             loc_1A3004
LDR             R0, [R4]
CMP             R0, #0
BEQ             loc_1A3004
BL              sub_1A51AC
NOP
NOP
BL              sub_300FD4
LDR             R1, [R4,#4]
LDR             R0, [R4,#8]
SUB             R4, R4, #0xC
STR             R0, [R1,#4]
STR             R1, [R0]
LDR             R0, [R4,#8]
ADD             R1, R4, #4
CMP             R0, R1
BNE             loc_1A3044
LDR             R0, [R4]
CMP             R0, #0
BEQ             loc_1A3044
BL              sub_1A1F98
NOP
NOP
BL              sub_300FD4
LDR             R1, [R4,#4]
LDR             R0, [R4,#8]
SUB             R4, R4, #0xC
STR             R0, [R1,#4]
STR             R1, [R0]
LDR             R0, [R4,#8]
ADD             R1, R4, #4
CMP             R0, R1
BNE             loc_1A3084
LDR             R0, [R4]
CMP             R0, #0
BEQ             loc_1A3084
BL              sub_1A03A8
NOP
NOP
BL              sub_300FD4
ADD             R1, R4, #4
LDRD            R0, R1, [R1]
STR             R1, [R0,#4]
STR             R0, [R1]
LDR             R0, [R4,#-0x1C]!
CMP             R0, #0
BEQ             loc_1A30AC
LDR             R1, [R0]
LDR             R1, [R1,#0x10]
BLX             R1
LDR             R1, [R4,#8]
ADD             R2, R4, #4
CMP             R1, R2
BNE             loc_1A3164
LDR             R0, [R4]
CMP             R0, #0
BEQ             loc_1A30D4
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
STR             R7, [R4]
LDR             R1, [R4,#4]
LDR             R0, [R4,#8]
SUB             R7, R4, #8
STR             R0, [R1,#4]
STR             R1, [R0]
LDR             R5, [R4,#-4]!
LDR             R6, [R4,#-4]
CMP             R6, R5
BEQ             loc_1A3140
SUB             R5, R5, #0xC
ADD             R1, R5, #4
LDR             R0, [R5,#8]
MOV             R4, R5
CMP             R0, R1
BNE             loc_1A312C
LDR             R0, [R4]
CMP             R0, #0
BEQ             loc_1A312C
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
LDRD            R0, R1, [R4,#4]
CMP             R6, R5
STR             R1, [R0,#4]
STR             R0, [R1]
BNE             loc_1A30FC
SUB             R0, R7, #0x80
POP             {R4-R8,PC}
LDR             R2, [R5,#4]
ADD             R0, R5, #4
STR             R1, [R2,#4]
STR             R2, [R1]
STR             R0, [R5,#4]
STR             R0, [R5,#8]
B               loc_1A2E98
LDR             R2, [R4,#4]
ADD             R0, R4, #4
STR             R1, [R2,#4]
STR             R2, [R1]
STR             R0, [R4,#4]
STR             R0, [R4,#8]
B               loc_1A30D4
