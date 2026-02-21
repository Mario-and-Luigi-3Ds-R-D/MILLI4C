PUSH            {R4-R6,LR}
MOV             R4, R0
VPUSH           {D8}
SUB             SP, SP, #0x10
LDRB            R0, [R0,#0x4E8]
VLDR            S16, =0.0
SUB             R0, R0, #2
CMP             R0, #8; switch 8 cases
LDRCC           PC, [PC,R0,LSL#2]; switch jump
B               def_249CBC; jumptable 00249CBC default case, cases 2,5
DCD loc_249DA0; jump table for switch statement
LDRB            R0, [R4,#0x4EA]; jumptable 00249CBC case 4
CMP             R0, #0
BNE             loc_249D5C
ADD             R0, R4, #0x2C8
BL              sub_5F19B8
CMP             R0, #0
NOP
BNE             loc_249D5C
LDR             R5, =off_6CE970
LDR             R0, =0xFFE683CC
VMOV.F32        S0, S16
LDR             R1, =0x301F7
LDR             R3, [R5]
MOV             R2, #0
SUB             R0, R3, R0
BL              sub_503414
LDR             R0, [R5]
MOV             R1, #0
MOV             R3, #1
ADD             R2, R4, #0x110
STR             R1, [SP,#0x28+var_28]
BL              sub_52AEA8
LDR             R0, =off_6CDD80
ADD             R1, R4, #0xEC
LDR             R0, [R0]
ADD             R0, R0, #0xC00
ADD             R0, R0, #0x32C
BL              sub_1C41A0
MOV             R0, #7
STRB            R0, [R4,#0x4E8]
ADD             R6, R4, #0x110
ADD             R5, R4, #0x70 ; 'p'
LDM             R6, {R1-R3}
STM             R5, {R1-R3}
LDR             R5, [R4,#8]
LDR             R4, [R5,#8]
CMP             R4, R5
BEQ             def_249CBC; jumptable 00249CBC default case, cases 2,5
LDR             R1, [R4]
MOV             R0, R4
LDR             R2, [R1,#0x14]
MOV             R1, R6
BLX             R2
LDR             R4, [R4,#8]
CMP             R4, R5
BNE             loc_249D7C
B               def_249CBC; jumptable 00249CBC default case, cases 2,5
MOV             R0, R4; jumptable 00249CBC case 0
BL              sub_2491E4
NOP
NOP
B               def_249CBC; jumptable 00249CBC default case, cases 2,5
ADD             R0, R4, #0x2C8; jumptable 00249CBC case 3
BL              sub_5F19B8
CMP             R0, #0
MOVEQ           R0, R4
BLEQ            sub_249408
NOP
NOP
B               def_249CBC; jumptable 00249CBC default case, cases 2,5
ADD             R0, R4, #4; jumptable 00249CBC case 1
BL              sub_436F30
ADD             R0, R4, #0x70 ; 'p'
LDM             R0, {R0-R2}
STMEA           SP, {R0-R2}
MOV             R1, SP
VSTR            S16, [SP,#0x28+var_24]
ADD             R0, R4, #0xEC
BL              sub_14E984
NOP
NOP
B               def_249CBC; jumptable 00249CBC default case, cases 2,5
ADD             R0, R4, #0x440; jumptable 00249CBC case 6
VLDM            R0, {S0-S1}
VCMPE.F32       S0, S1
VMRS            APSR_nzcv, FPSCR
MOVGE           R0, #3
STRBGE          R0, [R4,#0x4E8]
B               def_249CBC; jumptable 00249CBC default case, cases 2,5
MOV             R0, R4; jumptable 00249CBC case 7
BL              sub_2497FC
ADD             SP, SP, #0x10; jumptable 00249CBC default case, cases 2,5
MOV             R0, #1
VPOP            {D8}
POP             {R4-R6,PC}
