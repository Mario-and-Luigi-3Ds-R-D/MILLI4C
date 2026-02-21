PUSH            {R4-R9,LR}
SUB             SP, SP, #0xC
MOV             R6, R1
MOV             R9, R0
LDRD            R4, R5, [SP,#0x28+arg_0]
MOV             R0, R1
LDR             R1, [R1]
MOV             R7, R2
MOV             R8, R3
LDR             R1, [R1,#0x3C]
BLX             R1
CMN             R8, #1
CMPNE           R4, #0
MOV             R1, R0
BEQ             loc_184198
ADD             R0, R1, #0x100
LDRH            R2, [R0,#0x78]
STRH            R2, [R0,#0x7A]
LDR             R2, =byte_6EC430
CMN             R7, #1
ADD             R0, R5, #0xCC
BEQ             loc_1841DC
CMP             R4, #0
BEQ             loc_1841BC
ADD             R3, R1, #0x100
LDRH            R12, [R3,#0x74]
STRH            R12, [R3,#0x76]
STMEA           SP, {R0,R2}
MOV             R3, R8
MOV             R2, R7
MOV             R0, R6
BL              sub_1E7C84
NOP
NOP
B               loc_184208
CMP             R4, #0
BEQ             loc_1841F0
LDR             R12, =0x176
MOV             R3, #0xFFFFFFFF
STRH            R3, [R12,R1]
STMEA           SP, {R0,R2}
MOV             R0, #0x174
MOV             R3, R8
LDRSH           R2, [R0,R1]
MOV             R0, R6
BL              sub_1E7C84
LDR             R0, [R9,#4]
ADD             R0, R0, #0x10000
ADD             R0, R0, #0x4300
LDRH            R1, [R0,#8]
ORR             R1, R1, #1
STRH            R1, [R0,#8]
ADD             SP, SP, #0xC
POP             {R4-R9,PC}
