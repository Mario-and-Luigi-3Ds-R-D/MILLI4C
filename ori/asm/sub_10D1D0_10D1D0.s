PUSH            {R3-R5,LR}
MOV             R4, R0
LDR             R0, =unk_6E8CD0
LDRB            R0, [R0,#(byte_6E8EE0 - 0x6E8CD0)]
CMP             R0, #2
LDREQ           R3, =aUsFrench; "US_French"
BEQ             loc_10D1F8
CMP             R0, #5
LDRNE           R3, =aUsEnglish; "US_English"
LDREQ           R3, =aUsSpanish; "US_Spanish"
STR             R1, [SP,#0x10+var_10]
ADR             R2, aRomMessageLsLs; "rom:/Message/%ls/%ls"
MOV             R1, #0xFF
MOV             R0, R4
BL              sub_10F1F4
MOV             R0, R4
POP             {R3-R5,PC}
