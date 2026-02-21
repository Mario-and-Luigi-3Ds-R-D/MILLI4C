PUSH            {R1-R7,LR}
ADR             R1, dword_10317C
MOVS            R4, R0
BLX             sub_3000AC
CMP             R0, #0
BEQ             loc_103172
MOVS            R0, R4
ADR             R1, aPosix; "POSIX"
BLX             sub_3000AC
CMP             R0, #0
BEQ             loc_103172
MOVS            R0, #0x200
BL              sub_301570
MOVS            R7, R0
MOVS            R2, #2
MOVS            R1, R4
MOV             R0, SP
BL              sub_301784
MOVS            R4, #0
MOVS            R6, #0x10
MOVS            R5, #0x40 ; '@'
BLX             sub_2FE5A4
MOVS            R3, R0
LDR             R0, [R3]
MOVS            R1, #0
LDRB            R0, [R0,R4]
LSLS            R2, R0, #0x1F
LSRS            R2, R2, #0x1F
BEQ             loc_103108
MOVS            R1, #1
MOVS            R2, #0x3E ; '>'
TST             R0, R2
BEQ             loc_103112
MOVS            R2, #2
ORRS            R1, R2
MOVS            R2, R0
TST             R2, R5
BEQ             loc_10311C
MOVS            R2, #4
ORRS            R1, R2
MOVS            R2, R0
TST             R2, R6
BEQ             loc_103126
MOVS            R2, #8
ORRS            R1, R2
MOVS            R2, #8
TST             R0, R2
BEQ             loc_10312E
ORRS            R1, R6
MOVS            R2, #0x98
TST             R0, R2
BEQ             loc_103138
MOVS            R2, #0x20 ; ' '
ORRS            R1, R2
CMP             R0, #0x20 ; ' '
BEQ             loc_103176
MOVS            R2, #0
CMP             R2, #0
BEQ             loc_103144
ORRS            R1, R5
MOVS            R2, #2
TST             R0, R2
BEQ             loc_10314E
MOVS            R2, #0x80
ORRS            R1, R2
LSLS            R2, R0, #2
EORS            R2, R0
MOVS            R0, #0x80
TST             R2, R0
BEQ             loc_10315C
LSLS            R0, R0, #1
ORRS            R1, R0
LSLS            R0, R4, #1
ADDS            R4, R4, #1
STRH            R1, [R7,R0]
SUBS            R0, R4, #7
SUBS            R0, #0xF9
BNE             loc_1030FA
MOV             R0, SP
BL              sub_3017BC
MOVS            R0, R7
POP             {R1-R7,PC}
LDR             R0, =unk_69B410
POP             {R1-R7,PC}
MOVS            R2, #1
B               loc_10313E
