PUSH            {R4-R11,LR}
MOV             R6, R0
SUB             SP, SP, #0xC
MOV             R5, R1
MOV             R10, R2
LDRB            R0, [R1,#0xDE]
TST             R0, #1
BEQ             loc_17F8F4
TST             R0, #4
BNE             loc_17F8F4
TST             R0, #8
BNE             loc_17F8F4
LDR             R4, [R5,#0x750]
ADD             R8, R5, #0x400
CMP             R4, #0
BEQ             loc_17F404
LDR             R0, =0x4B6
LDRH            R0, [R0,R4]
TST             R0, #8
BNE             loc_17F3D8
TST             R0, #2
BNE             loc_17F404
LDRH            R0, [R8,#0xB6]
TST             R0, #2
BNE             loc_17F404
CMP             R10, #0
BNE             loc_17F3F8
LDR             R0, [R4]
LDR             R1, [R0,#8]
MOV             R0, R4
BLX             R1
CMP             R0, #6
BNE             loc_17F404
LDRB            R0, [R4,#0xDE]
TST             R0, #8
BEQ             loc_17F4DC
LDR             R0, =0x65F
MOV             R7, #1
LDRSB           R0, [R0,R5]
CMN             R0, #1
BEQ             loc_17F44C
LDR             R1, [R6,#4]
CMP             R7, #0
ADD             R0, R1, R0,LSL#2
ADD             R0, R0, #0x14000
LDR             R4, [R0,#0x184]
BEQ             loc_17F494
LDR             R0, [R4]
LDR             R1, [R0,#8]
MOV             R0, R4
BLX             R1
CMP             R0, #6
BEQ             loc_17F494
B               loc_17F8F4
LDR             R0, [R5]
LDR             R1, [R0,#8]
MOV             R0, R5
BLX             R1
CMP             R0, #0
BEQ             loc_17F47C
LDR             R0, [R5]
LDR             R1, [R0,#8]
MOV             R0, R5
BLX             R1
CMP             R0, #1
BNE             loc_17F8F4
LDR             R0, =0x8BD
MOV             R7, #0
LDRSB           R0, [R0,R5]
CMN             R0, #1
BEQ             loc_17F8F4
B               loc_17F418
LDRB            R0, [R4,#0xDE]
TST             R0, #8
BNE             loc_17F8F4
CMP             R7, #0
BEQ             loc_17F4DC
LDR             R0, [R4]
LDR             R1, [R0,#8]
MOV             R0, R4
BLX             R1
CMP             R0, #6
BNE             loc_17F4DC
LDRB            R0, [R4,#0x75C]
AND             R0, R0, #7
CMP             R0, #1
BNE             loc_17F4DC
LDRB            R0, [R4,#0xDE]
TST             R0, #1
BEQ             loc_17F8F4
LDR             R1, [R4,#0x4EC]
LDR             R0, =off_6D1648
LDR             R11, =0xF0001FFB
MOV             R1, R1,LSL#24
MOV             R1, R1,LSR#29
CMP             R1, #5; switch 5 cases
LDRCC           PC, [PC,R1,LSL#2]; switch jump
B               def_17F4F4; jumptable 0017F4F4 default case, case 1
DCD loc_17F510; jump table for switch statement
LDR             R0, [R5,#0x754]; jumptable 0017F4F4 case 0
CMP             R0, R4
BEQ             loc_17F8F4
B               def_17F4F4; jumptable 0017F4F4 default case, case 1
LDR             R0, [R0]; jumptable 0017F4F4 case 2
LDR             R0, [R0,#0xC4]
LDR             R0, [R0,#4]
LDR             R1, [R0,#0x14]
TST             R1, #0x400000
LDREQ           R7, [R0,#4]
LDRNE           R7, [R0,#8]
LDR             R0, [R6,#4]
ADD             R0, R0, #0x14400
ADD             R0, R0, #8
LDR             R8, [R0]
LDR             R0, [R7]
LDR             R1, [R0,#8]
MOV             R0, R7
BLX             R1
CMP             R0, #0
LDR             R0, [R6]
MOVNE           R9, #1
MOVEQ           R9, #0
MOV             R2, R10
LDR             R3, [R0,#0x6C]
MOV             R1, R5
MOV             R0, R6
BLX             R3
CMN             R0, #1
BNE             loc_17F8EC
RSB             R0, R9, R9,LSL#6
ADD             R0, R8, R0,LSL#4
ADD             R0, R0, #0x200
LDRSH           R0, [R0,#0x38]
CMP             R0, #0x15
BEQ             loc_17F5A8
CMP             R0, #0x17
BNE             loc_17F8F4
LDR             R0, [R6,#4]
MOV             R3, R11
MOV             R2, SP
LDR             R1, [R0]
LDR             R12, [R1,#0x74]
ADD             R1, SP, #0x30+var_2C
BLX             R12
LDR             R0, [R7]
LDR             R1, [R0,#0x3D4]
MOV             R0, R7
BLX             R1
LDR             R1, [SP,#0x30+var_30]
TST             R0, R1
BEQ             loc_17F8F4
B               def_17F4F4; jumptable 0017F4F4 default case, case 1
LDR             R0, [R0]; jumptable 0017F4F4 case 3
LDR             R0, [R0,#0xC4]
LDR             R0, [R0,#4]
LDR             R1, [R0,#0x14]
TST             R1, #0x400000
LDREQ           R7, [R0,#4]
LDRNE           R7, [R0,#8]
LDR             R0, [R6,#4]
ADD             R0, R0, #0x14400
ADD             R0, R0, #8
LDR             R8, [R0]
LDR             R0, [R7]
LDR             R1, [R0,#8]
MOV             R0, R7
BLX             R1
CMP             R0, #0
LDR             R0, [R6]
MOVNE           R9, #1
MOVEQ           R9, #0
MOV             R2, R10
LDR             R3, [R0,#0x70]
MOV             R1, R5
MOV             R0, R6
BLX             R3
CMN             R0, #1
BNE             loc_17F8EC
RSB             R0, R9, R9,LSL#6
ADD             R0, R8, R0,LSL#4
ADD             R0, R0, #0x200
LDRSH           R0, [R0,#0x38]
CMP             R0, #0x16
BEQ             loc_17F66C
CMP             R0, #0x18
BNE             loc_17F8F4
LDR             R0, [R6,#4]
MOV             R3, R11
MOV             R2, SP
LDR             R1, [R0]
LDR             R12, [R1,#0x74]
ADD             R1, SP, #0x30+var_2C
BLX             R12
LDR             R0, [R7]
LDR             R1, [R0,#0x3D4]
MOV             R0, R7
BLX             R1
LDR             R1, [SP,#0x30+var_30]
TST             R0, R1
BEQ             loc_17F8F4
B               def_17F4F4; jumptable 0017F4F4 default case, case 1
LDR             R0, [R5,#0x754]; jumptable 0017F4F4 case 4
CMP             R0, R4
BNE             def_17F4F4; jumptable 0017F4F4 default case, case 1
LDR             R0, [R5]
LDR             R1, [R0,#8]
MOV             R0, R5
BLX             R1
CMP             R0, #2
BCS             loc_17F8F4
LDRH            R0, [R8,#0x6C]
LDRH            R1, [R8,#0x6E]
CMP             R0, R1
BEQ             loc_17F8F4
LDR             R0, [R4]; jumptable 0017F4F4 default case, case 1
LDR             R1, [R0,#8]
MOV             R0, R4
BLX             R1
CMP             R0, #6
BEQ             loc_17F710
LDR             R0, [R4]
LDR             R1, [R0,#8]
MOV             R0, R4
BLX             R1
CMP             R0, #7
BEQ             loc_17F73C
B               loc_17F85C
LDRB            R0, [R6,#0x462]
TST             R0, #2
BNE             loc_17F8F4
LDR             R0, [R6]
MOV             R2, R5
MOV             R1, R4
LDR             R3, [R0,#0x78]
ADD             SP, SP, #0xC
MOV             R0, R6
POP             {R4-R11,LR}
BX              R3
LDR             R0, =0xAA8
LDRH            R0, [R0,R4]
TST             R0, #8
BEQ             loc_17F8F4
TST             R0, #7
BEQ             loc_17F820
AND             R0, R0, #7
CMP             R0, #1
BEQ             loc_17F77C
CMP             R0, #2
BEQ             loc_17F798
CMP             R0, #3
BEQ             loc_17F7B4
CMP             R0, #4
BEQ             loc_17F7D0
B               loc_17F804
LDR             R0, [R5]
LDR             R1, [R0,#8]
MOV             R0, R5
BLX             R1
CMP             R0, #2
BEQ             loc_17F8F4
B               loc_17F804
LDR             R0, [R5]
LDR             R1, [R0,#8]
MOV             R0, R5
BLX             R1
CMP             R0, #2
BEQ             loc_17F8F4
B               loc_17F804
LDR             R0, [R5]
LDR             R1, [R0,#8]
MOV             R0, R5
BLX             R1
CMP             R0, #0
BNE             loc_17F7E8
B               loc_17F804
LDR             R0, [R5]
LDR             R1, [R0,#8]
MOV             R0, R5
BLX             R1
CMP             R0, #1
BEQ             loc_17F804
LDR             R0, [R4]
MOV             R2, #0
MOV             R1, R2
LDR             R3, [R0,#0x35C]
MOV             R0, R4
BLX             R3
B               loc_17F8F4
LDR             R0, [R4]
MOV             R2, #1
MOV             R1, R2
LDR             R3, [R0,#0x360]
MOV             R0, R4
BLX             R3
B               loc_17F8F4
LDR             R0, [R5]
LDR             R1, [R0,#8]
MOV             R0, R5
BLX             R1
CMP             R0, #2
BNE             loc_17F844
LDR             R0, [R4,#0x658]
TST             R0, #0x400
BNE             loc_17F8F4
LDR             R0, [R4]
MOV             R2, #0
MOV             R1, R2
LDR             R3, [R0,#0x360]
MOV             R0, R4
BLX             R3
LDR             R1, [R4,#0x668]
CMN             R1, #1
BEQ             loc_17F8F4
LDRB            R0, [R5,#0xDE]
MOV             R2, #4
LDR             R3, [R6,#4]
AND             R0, R2, R0,LSL#1
ADD             R0, R0, #0x13000
ADD             R0, R0, #0xC70
LDR             R0, [R3,R0]
MOV             R3, R5
LDR             R2, [R0,#0x14]
LDR             R2, [R0,R2]!
ADD             R2, R0, R2,LSL#2
ADD             R1, R2, R1,LSL#2
MOV             R2, #1
LDR             R1, [R1,#4]
STR             R4, [SP,#0x30+var_30]
ADD             R7, R1, R0
LDR             R0, [R6]
MOV             R1, R7
LDR             R12, [R0,#0x3C]
MOV             R0, R6
BLX             R12
CMP             R0, #0
MOVNE           R0, #0
BNE             loc_17F8EC
STR             R4, [SP,#0x30+var_30]
LDR             R0, [R6]
MOV             R3, R5
MOV             R2, #2
MOV             R1, R7
LDR             R12, [R0,#0x3C]
MOV             R0, R6
BLX             R12
MOV             R0, #0
ADD             SP, SP, #0xC
POP             {R4-R11,PC}
ADD             SP, SP, #0xC
MOV             R0, #1
POP             {R4-R11,PC}
