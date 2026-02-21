PUSH            {R4-R8,LR}
MOV             R4, R0
BL              sub_5C6280
ADD             R1, R4, #0x15000
ADD             R1, R1, #0x10
ADD             R5, R4, #0x15000
LDM             R1, {R1,R2}
ADD             R6, R4, #0x14400
ADD             R6, R6, #0x214
ADDS            R0, R0, R1
ADC             R1, R2, #0
STRD            R0, R1, [R5,#0x10]
LDR             R0, [R6]
MOV             R7, #0
CMP             R0, #0
BEQ             loc_193D98
BL              sub_300FD4
STR             R7, [R6]
LDR             R0, [R4]
LDR             R1, [R0,#0x27C]
MOV             R0, R4
BLX             R1
ADD             R6, R4, #0x14800
ADD             R6, R6, #0x35C
LDR             R0, [R6]
CMP             R0, #0
BEQ             loc_193DC8
LDR             R1, =sub_3D8D9C
BLX             sub_3016C8
STR             R7, [R6]
ADD             R6, R4, #0x14000
ADD             R6, R6, #0xB60
LDR             R0, [R6]
CMP             R0, #0
BEQ             loc_193DE4
BL              sub_300FD4
STR             R7, [R6]
ADD             R6, R4, #0x14000
ADD             R6, R6, #0xFF0
LDR             R0, [R6]
CMP             R0, #0
BEQ             loc_193E00
BL              sub_2FF5D4
STR             R7, [R6]
ADD             R6, R4, #0x14C00
ADD             R6, R6, #0x3F4
LDR             R0, [R6]
CMP             R0, #0
BEQ             loc_193E1C
BL              sub_300FD4
STR             R7, [R6]
ADD             R6, R4, #0x14800
ADD             R6, R6, #0x364
LDR             R0, [R6]
CMP             R0, #0
BEQ             loc_193E54
ADD             R0, R4, #0x14800
ADD             R0, R0, #0x368
BL              sub_4BE0F8
LDR             R1, =0x14B68
MOV             R0, #0
STR             R0, [R1,R4]
LDR             R0, [R6]
BL              sub_2FF5D4
STR             R7, [R6]
LDR             R0, [R5,#0x18]
CMP             R0, #0
BEQ             loc_193E80
BL              sub_59688C
LDR             R0, [R5,#0x18]
CMP             R0, #0
BEQ             loc_193E7C
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
STR             R7, [R5,#0x18]
LDR             R0, [R5,#0x20]
CMP             R0, #0
BEQ             loc_193EAC
BL              sub_5AF558
LDR             R0, [R5,#0x20]
CMP             R0, #0
BEQ             loc_193EA8
LDR             R1, [R0]
LDR             R1, [R1,#4]
BLX             R1
STR             R7, [R5,#0x20]
MOV             R0, R4
POP             {R4-R8,LR}
B               sub_2B5854
