PUSH            {R3-R7,LR}
MOVS            R7, R1
LDR             R1, [R0]
LSLS            R1, R1, #0x14
BPL             loc_1003A8
LDR             R4, =(a0123456789abcd - 0x1003A8); "0123456789ABCDEF@0X"
ADD             R4, PC; "0123456789ABCDEF@0X"
B               loc_1003AE
LDR             R4, =(a0123456789abcd - 0x1003A8); "0123456789ABCDEF@0X"
ADD             R4, PC; "6789ABCDEF@0X"
ADDS            R4, #(a0123456789abcd_0 - 0x69B1C6); "0123456789abcdef@0x"
MOVS            R1, #0
MOVS            R5, R0
ADDS            R5, #0x24 ; '$'
B               loc_1003C8
LSLS            R6, R2, #0x1C
LSRS            R2, R2, #4
LSRS            R6, R6, #0x1C
LDRB            R6, [R4,R6]
STRB            R6, [R5,R1]
LSLS            R6, R3, #0x1C
ADDS            R1, R1, #1
ORRS            R2, R6
LSRS            R3, R3, #4
MOVS            R6, R2
ORRS            R6, R3
BNE             loc_1003B6
MOVS            R2, R4
LDR             R4, [R0]
MOVS            R3, #0
LSLS            R4, R4, #0x1C
BPL             loc_1003E4
CMP             R7, #0x70 ; 'p'
BEQ             loc_1003EA
CMP             R1, #0
BEQ             loc_1003E4
ADDS            R2, #0x11
MOVS            R3, #2
BL              sub_2FDF60
POP             {R3-R7,PC}
ADDS            R2, #0x10
MOVS            R3, #1
B               loc_1003E4
