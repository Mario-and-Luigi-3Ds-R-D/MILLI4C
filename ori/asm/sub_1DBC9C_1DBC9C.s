PUSH            {R4}
MOV             R4, #1
MOV             R12, #0
MOV             R1, #0x97
MUL             R1, R12, R1
ADD             R1, R0, R1,LSL#3
ADD             R2, R1, #0x20400
ADD             R2, R2, #0x1FC
LDM             R2, {R1,R2}
CMP             R1, R2
BEQ             loc_1DBCF0
LDRB            R3, [R1,#1]
CMP             R3, #0xFF
LDRBNE          R3, [R1]
CMPNE           R3, #5
BEQ             loc_1DBCE4
MOV             R4, #0
B               loc_1DBCFC
ADD             R1, R1, #0xEC
CMP             R1, R2
BNE             loc_1DBCC8
ADD             R12, R12, #1
CMP             R12, #2
BLT             loc_1DBCA8
LDRB            R2, [R0,#0x53]
MOV             R1, #0
CMP             R2, #0
BLE             loc_1DBD2C
ADD             R3, R0, R1,LSL#2
LDR             R3, [R3,#0x54]
LDRB            R3, [R3,#0x3F4]
CMP             R3, #5
BNE             loc_1DBDC8
ADD             R1, R1, #1
CMP             R2, R1
BGT             loc_1DBD0C
LDR             R2, =0xFFFDF53B
MOV             R1, #0
ADD             R12, R1, R1,LSL#1
ADD             R3, R0, R12,LSL#2
SUB             R3, R3, R2
LDRB            R3, [R3]
CMP             R3, #1
BNE             loc_1DBDC8
ADD             R1, R1, #1
CMP             R1, #2
BLT             loc_1DBD34
LDR             R1, [R0,#0x80]
CMP             R1, #0
BNE             loc_1DBDC8
ADD             R1, R0, #0x11C0
LDRB            R2, [R1,#0x32F]
CMP             R2, #0
BNE             loc_1DBDC8
ADD             R1, R1, #0x354
VLDM            R1, {S0-S1}
VCMPE.F32       S1, S0
VMRS            APSR_nzcv, FPSCR
BHI             loc_1DBDC8
LDR             R1, =0x10CA5
LDRB            R1, [R1,R0]
CMP             R1, #0
BNE             loc_1DBDC8
LDR             R1, =0x1F91D
LDRB            R1, [R1,R0]
CMP             R1, #4
BNE             loc_1DBDC8
CMP             R4, #0
BEQ             loc_1DBDC8
LDR             R2, =unk_656B78
ADD             R0, R0, #0x20800
ADD             R0, R0, #0x2BC
LDR             R1, [R2,#(off_656BC4 - 0x656B78)]; sub_1DBDE0
LDR             R2, [R2,#(dword_656BC8 - 0x656B78)]
STM             R0, {R1,R2}
POP             {R4}
BX              LR
