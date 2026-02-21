LDRB            R2, [R0,#0x374]
BIC             R2, R2, #0x50 ; 'P'
STRB            R2, [R0,#0x374]
LDR             R2, =off_67E508
STRB            R1, [R0,#0x375]
ADD             R0, R0, #0x38 ; '8'
LDM             R2, {R1,R2}
STM             R0, {R1,R2}
BX              LR
