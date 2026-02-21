PUSH            {R4-R11,LR}
SUB             SP, SP, #0x6C
MOV             R5, R0
MOV             R4, #0
MOV             R0, R4
LDR             R12, =unk_68AF34
ADD             R3, SP, #0x90+var_68
TST             R1, #1
BEQ             loc_19B720
ADD             R2, R5, R0
LDRB            R2, [R2,#0x1B8]
CMP             R2, #0xFF
BNE             loc_19B720
STRB            R0, [SP,R4]
LDR             R2, [R12,R0,LSL#2]
STR             R2, [R3,R4,LSL#2]
ADD             R4, R4, #1
MOVS            R1, R1,LSR#1
BEQ             loc_19B734
ADD             R0, R0, #1
CMP             R0, #0x11
BLT             loc_19B6F8
LDR             R0, =off_6D1648
LDR             R0, [R0]
LDR             R0, [R0,#0xBC]
MOV             R6, R0
ADD             R0, R0, #0x14000
CMP             R4, #0
LDRB            R11, [R0,#0x287]
ADD             R12, SP, #0x90+var_7C
ADD             LR, SP, #0x90+var_68
BEQ             loc_19B784
SUB             R0, R12, #1
TST             R4, #1
MOV             R2, #0xFF
STRBNE          R2, [R0,#1]!
MOVS            R1, R4,LSR#1
BEQ             loc_19B784
STRB            R2, [R0,#1]
SUBS            R1, R1, #1
STRB            R2, [R0,#2]!
BNE             loc_19B774
CMP             R11, #0
ADDGT           R10, R6, #0x13C00
MOV             R3, #0
ADDGT           R10, R10, #0x94
BLE             loc_19B80C
LDR             R1, [R10]
ADD             R7, R3, R3,LSL#1
CMP             R4, #0
ADD             R1, R1, R7,LSL#5
MOV             R0, R12
LDR             R7, [R1,#0x34]
MOV             R2, LR
MOV             R6, #1
MOVNE           R1, R4
ANDNE           R8, R3, #0xFF
BEQ             loc_19B80C
LDRB            R9, [R0]
CMP             R9, #0xFF
BEQ             loc_19B7EC
SUBS            R1, R1, #1
ADD             R0, R0, #1
ADD             R2, R2, #4
BNE             loc_19B7C4
CMP             R6, #0
BNE             loc_19B80C
B               loc_19B800
LDR             R9, [R2]
CMP             R9, R7
MOVNE           R6, #0
STRBEQ          R8, [R0]
B               loc_19B7D0
ADD             R3, R3, #1
CMP             R3, R11
BLT             loc_19B798
CMP             R4, #0
ADD             R1, R5, #0x1B8
MOVEQ           R0, #0
BEQ             loc_19B834
AND             R0, R4, #1
CMP             R0, #1
BNE             loc_19B834
LDRB            R3, [SP,#0x90+var_90]
LDRB            R2, [SP,#0x90+var_7C]
STRB            R2, [R3,R1]
CMP             R0, R4
MOVCC           R2, SP
MOVCC           R3, R12
BCS             loc_19B870
LDRB            R5, [R2,R0]
LDRB            LR, [R3,R0]
ADD             R12, R2, R0
ADD             R6, R3, R0
STRB            LR, [R5,R1]
LDRB            R12, [R12,#1]
LDRB            LR, [R6,#1]
ADD             R0, R0, #2
CMP             R0, R4
STRB            LR, [R12,R1]
BCC             loc_19B844
ADD             SP, SP, #0x6C ; 'l'
POP             {R4-R11,PC}
