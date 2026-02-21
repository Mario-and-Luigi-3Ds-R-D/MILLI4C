PUSH            {R4,R5,LR}
MOV             R5, R0
LDR             R0, =unk_6E8CD0
SUB             SP, SP, #0x2C
MOV             R4, R1
LDRB            R0, [R0,#(byte_6E8EE0 - 0x6E8CD0)]
CMP             R0, #2
LDREQ           R2, =aUsFrench; "US_French"
BEQ             loc_1C7A24
CMP             R0, #5
LDRNE           R2, =aUsEnglish; "US_English"
LDREQ           R2, =aUsSpanish; "US_Spanish"
MOV             R1, #0x20 ; ' '
ADD             R0, SP, #0x38+var_30
BL              sub_2029EC
MOV             R3, R0
ADR             R2, aRomMessageSS; "rom:/Message/%s/%s"
MOV             R1, #0xFF
MOV             R0, R5
STR             R4, [SP,#0x38+var_38]
BL              sub_4647C4
ADD             SP, SP, #0x2C ; ','
MOV             R0, R5
POP             {R4,R5,PC}
