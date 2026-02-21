PUSH            {R4-R6,LR}
MOV             R4, R0
VMOV            R0, S0
MOV             R6, #8
STRB            R1, [R4,#0x1AA]
CMP             R0, #0x3F800000
BGT             loc_1983AC
CMP             R1, #1
BEQ             loc_198294
LDRB            R0, [R4,#0x1A9]
MOV             R5, #0
CMP             R0, #0
BLE             loc_198278
LDR             R0, [R4,#0x1A4]
LDR             R0, [R0,R5,LSL#3]
LDRB            R1, [R0,#0x17D]
ORR             R1, R1, #1
STRB            R1, [R0,#0x17D]
LDR             R0, [R4,#0x1A4]
ADD             R0, R0, R5,LSL#3
BL              sub_29ABC0
LDRB            R0, [R4,#0x1A9]
ADD             R5, R5, #1
CMP             R0, R5
BGT             loc_198248
LDRB            R0, [R4,#0x1A8]
CMP             R0, #0
BEQ             loc_198360
AND             R0, R0, #1
CMP             R0, #1
BEQ             loc_19834C
B               loc_198360
LDRB            R0, [R4,#0x1A8]
MOV             R5, #0
CMP             R0, #0
BLE             loc_1982D4
LDR             R0, [R4,#0x1A0]
LDR             R0, [R0,R5,LSL#3]
LDRB            R1, [R0,#0x17D]
ORR             R1, R1, #1
STRB            R1, [R0,#0x17D]
LDR             R0, [R4,#0x1A0]
ADD             R0, R0, R5,LSL#3
BL              sub_29ABC0
LDRB            R0, [R4,#0x1A8]
ADD             R5, R5, #1
CMP             R0, R5
BGT             loc_1982A4
LDRB            R0, [R4,#0x1A9]
CMP             R0, #0
BEQ             loc_198300
AND             R0, R0, #1
CMP             R0, #1
BNE             loc_198300
LDR             R1, [R4,#0x1A4]
LDR             R1, [R1]
LDRB            R2, [R1,#0x17D]
BIC             R2, R2, #1
STRB            R2, [R1,#0x17D]
LDRB            R1, [R4,#0x1A9]
CMP             R1, R0
BLE             loc_1984A4
LDR             R1, [R4,#0x1A4]
ADD             R2, R6, R0,LSL#3
LDR             R1, [R1,R0,LSL#3]
ADD             R0, R0, #2
LDRB            R3, [R1,#0x17D]
BIC             R3, R3, #1
STRB            R3, [R1,#0x17D]
LDR             R1, [R4,#0x1A4]
LDR             R1, [R1,R2]
LDRB            R2, [R1,#0x17D]
BIC             R2, R2, #1
STRB            R2, [R1,#0x17D]
LDRB            R1, [R4,#0x1A9]
CMP             R1, R0
BGT             loc_19830C
B               loc_1984A4
LDR             R1, [R4,#0x1A0]
LDR             R1, [R1]
LDRB            R2, [R1,#0x17D]
BIC             R2, R2, #1
STRB            R2, [R1,#0x17D]
LDRB            R1, [R4,#0x1A8]
CMP             R1, R0
BLE             loc_1984A4
LDR             R1, [R4,#0x1A0]
ADD             R2, R6, R0,LSL#3
LDR             R1, [R1,R0,LSL#3]
ADD             R0, R0, #2
LDRB            R3, [R1,#0x17D]
BIC             R3, R3, #1
STRB            R3, [R1,#0x17D]
LDR             R1, [R4,#0x1A0]
LDR             R1, [R1,R2]
LDRB            R2, [R1,#0x17D]
BIC             R2, R2, #1
STRB            R2, [R1,#0x17D]
LDRB            R1, [R4,#0x1A8]
CMP             R1, R0
BGT             loc_19836C
B               loc_1984A4
LDRB            R0, [R4,#0x1A8]
CMP             R0, #0
BEQ             loc_1983D8
AND             R0, R0, #1
CMP             R0, #1
BNE             loc_1983D8
LDR             R1, [R4,#0x1A0]
LDR             R1, [R1]
LDRB            R2, [R1,#0x17D]
ORR             R2, R2, #1
STRB            R2, [R1,#0x17D]
LDRB            R1, [R4,#0x1A8]
CMP             R1, R0
BLE             loc_198420
LDR             R1, [R4,#0x1A0]
ADD             R2, R6, R0,LSL#3
LDR             R1, [R1,R0,LSL#3]
ADD             R0, R0, #2
LDRB            R3, [R1,#0x17D]
ORR             R3, R3, #1
STRB            R3, [R1,#0x17D]
LDR             R1, [R4,#0x1A0]
LDR             R1, [R1,R2]
LDRB            R2, [R1,#0x17D]
ORR             R2, R2, #1
STRB            R2, [R1,#0x17D]
LDRB            R1, [R4,#0x1A8]
CMP             R1, R0
BGT             loc_1983E4
LDRB            R0, [R4,#0x1A9]
CMP             R0, #0
BEQ             loc_19844C
AND             R0, R0, #1
CMP             R0, #1
BNE             loc_19844C
LDR             R1, [R4,#0x1A4]
LDR             R1, [R1]
LDRB            R2, [R1,#0x17D]
ORR             R2, R2, #1
STRB            R2, [R1,#0x17D]
LDRB            R1, [R4,#0x1A9]
CMP             R1, R0
BLE             loc_198494
LDR             R1, [R4,#0x1A4]
ADD             R2, R6, R0,LSL#3
LDR             R1, [R1,R0,LSL#3]
ADD             R0, R0, #2
LDRB            R3, [R1,#0x17D]
ORR             R3, R3, #1
STRB            R3, [R1,#0x17D]
LDR             R1, [R4,#0x1A4]
LDR             R1, [R1,R2]
LDRB            R2, [R1,#0x17D]
ORR             R2, R2, #1
STRB            R2, [R1,#0x17D]
LDRB            R1, [R4,#0x1A9]
CMP             R1, R0
BGT             loc_198458
LDR             R0, [R4]
LDR             R1, [R0,#0xEC]
MOV             R0, R4
BLX             R1
LDR             R0, [R4,#0x1B8]
CMP             R0, #0
BEQ             loc_1984BC
BL              sub_533330
MOV             R0, #0
STR             R0, [R4,#0x1B8]
LDRB            R0, [R4,#0x1AA]
LDR             R6, =off_6D1648
CMP             R0, #1
LDR             R0, [R6]
BEQ             loc_198500
LDR             R0, [R0,#0xBC]
MOV             R2, #0
MOV             R1, #0xB0
BL              sub_1681CC
STR             R0, [R4,#0x1B8]
CMP             R0, #0
BEQ             locret_19857C
LDR             R0, =dword_6E1330
LDR             R0, [R0]
TST             R0, #1
BNE             loc_198550
B               loc_198520
NOP
LDR             R0, [R0,#0xBC]
MOV             R2, #0
MOV             R1, #0xB5
BL              sub_1681CC
STR             R0, [R4,#0x1B8]
NOP
B               loc_1984E4
LDR             R0, =dword_6E1330
BLX             sub_3022F4
CMP             R0, #0
NOP
BEQ             loc_198550
LDR             R0, =flt_711FE4
VLDR            S0, =0.0
VSTR            S0, [R0]
VSTR            S0, [R0,#(flt_711FE8 - 0x711FE4)]
VSTR            S0, [R0,#(flt_711FEC - 0x711FE4)]
LDR             R0, =dword_6E1330
NOP
LDR             R5, =flt_711FE4
LDR             R0, [R6]
LDR             R0, [R0,#0xBC]
ADD             R1, R0, #8
LDR             R0, [R4,#0x1B8]
MOV             R2, R5
BL              sub_231814
LDR             R0, [R4,#0x1B8]
ADD             R1, R4, #0x1B8
POP             {R4-R6,LR}
B               sub_231980
POP             {R4-R6,PC}
