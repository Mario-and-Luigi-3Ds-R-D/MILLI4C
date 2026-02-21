LDR             R0, =unk_6E8CD0
LDRB            R0, [R0,#(byte_6E8EE0 - 0x6E8CD0)]
CMP             R0, #2
LDREQ           R0, =aUsFrench; "US_French"
BEQ             locret_1C71DC
CMP             R0, #5
LDRNE           R0, =aUsEnglish; "US_English"
LDREQ           R0, =aUsSpanish; "US_Spanish"
BX              LR
