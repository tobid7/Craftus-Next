	.arch armv6k
	.eabi_attribute 28, 1
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 2
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.file	"Sound.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.audioCallback,"ax",%progbits
	.align	2
	.global	audioCallback
	.syntax unified
	.arm
	.fpu vfp
	.type	audioCallback, %function
audioCallback:
.LVL0:
.LFB105:
	.file 1 "/home/tobi/Dokumente/Craftus-Next/source/misc/Sound.c"
	.loc 1 162 38 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 163 2 view .LVU1
	.loc 1 164 2 view .LVU2
	.loc 1 164 6 is_stmt 0 view .LVU3
	ldr	r0, .L4
.LVL1:
	.loc 1 164 6 view .LVU4
	ldrb	r3, [r0]	@ zero_extendqisi2
	.loc 1 164 5 view .LVU5
	cmp	r3, #0
	bxne	lr
	.loc 1 168 2 is_stmt 1 view .LVU6
	add	r0, r0, #4
	b	LightEvent_Signal
.LVL2:
.L5:
	.align	2
.L4:
	.word	.LANCHOR0
	.cfi_endproc
.LFE105:
	.size	audioCallback, .-audioCallback
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"OP_FALSE: A request did not succeed.\000"
	.align	2
.LC1:
	.ascii	"OP_HOLE: There was a hole in the page sequence numb"
	.ascii	"ers.\000"
	.align	2
.LC2:
	.ascii	"OP_EREAD: An underlying read, seek or tell operatio"
	.ascii	"n failed.\000"
	.align	2
.LC3:
	.ascii	"OP_EFAULT: A NULL pointer was passed where none was"
	.ascii	" expected, or an internal library error was encount"
	.ascii	"ered.\000"
	.align	2
.LC4:
	.ascii	"OP_EIMPL: The stream used a feature which is not im"
	.ascii	"plemented.\000"
	.align	2
.LC5:
	.ascii	"OP_EINVAL: One or more parameters to a function wer"
	.ascii	"e invalid.\000"
	.align	2
.LC6:
	.ascii	"OP_ENOTFORMAT: This is not a valid Ogg Opus stream."
	.ascii	"\000"
	.align	2
.LC7:
	.ascii	"OP_EBADHEADER: A required header packet was not pro"
	.ascii	"perly formatted.\000"
	.align	2
.LC8:
	.ascii	"OP_EVERSION: The ID header contained an unrecognise"
	.ascii	"d version number.\000"
	.align	2
.LC9:
	.ascii	"OP_EBADPACKET: An audio packet failed to decode pro"
	.ascii	"perly.\000"
	.align	2
.LC10:
	.ascii	"OP_EBADLINK: We failed to find data we had seen bef"
	.ascii	"ore or the stream was sufficiently corrupt that see"
	.ascii	"king is impossible.\000"
	.align	2
.LC11:
	.ascii	"OP_ENOSEEK: An operation that requires seeking was "
	.ascii	"requested on an unseekable stream.\000"
	.align	2
.LC12:
	.ascii	"OP_EBADTIMESTAMP: The first or last granule positio"
	.ascii	"n of a link failed basic validity checks.\000"
	.align	2
.LC13:
	.ascii	"Unknown error.\000"
	.section	.text.opusStrError,"ax",%progbits
	.align	2
	.global	opusStrError
	.syntax unified
	.arm
	.fpu vfp
	.type	opusStrError, %function
opusStrError:
.LVL3:
.LFB100:
	.loc 1 28 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 29 2 view .LVU8
	cmn	r0, #127
	bge	.L7
	cmn	r0, #139
	blt	.L21
	add	r0, r0, #139
.LVL4:
	.loc 1 29 2 is_stmt 0 view .LVU9
	cmp	r0, #11
	ldrls	pc, [pc, r0, asl #2]
	b	.L21
.L11:
	.word	.L20
	.word	.L19
	.word	.L18
	.word	.L17
	.word	.L21
	.word	.L16
	.word	.L15
	.word	.L14
	.word	.L13
	.word	.L12
	.word	.L22
	.word	.L10
.LVL5:
.L7:
	.loc 1 29 2 view .LVU10
	cmn	r0, #3
	beq	.L23
	.loc 1 31 10 view .LVU11
	ldr	r2, .L25
	cmn	r0, #1
	ldr	r3, .L25+4
	moveq	r3, r2
.LVL6:
.L6:
	.loc 1 69 1 view .LVU12
	mov	r0, r3
	bx	lr
.L21:
	.loc 1 67 10 view .LVU13
	ldr	r3, .L25+4
	.loc 1 69 1 view .LVU14
	mov	r0, r3
	bx	lr
.LVL7:
.L23:
	.loc 1 29 2 view .LVU15
	ldr	r3, .L25+8
	.loc 1 69 1 view .LVU16
	mov	r0, r3
.LVL8:
	.loc 1 69 1 view .LVU17
	bx	lr
.LVL9:
.L22:
	.loc 1 38 10 view .LVU18
	ldr	r3, .L25+12
	b	.L6
.L10:
	.loc 1 35 10 view .LVU19
	ldr	r3, .L25+16
	b	.L6
.L20:
	.loc 1 64 3 is_stmt 1 view .LVU20
	.loc 1 64 10 is_stmt 0 view .LVU21
	ldr	r3, .L25+20
	b	.L6
.L19:
	.loc 1 61 3 is_stmt 1 view .LVU22
	.loc 1 61 10 is_stmt 0 view .LVU23
	ldr	r3, .L25+24
	b	.L6
.L18:
	.loc 1 57 3 is_stmt 1 view .LVU24
	.loc 1 57 10 is_stmt 0 view .LVU25
	ldr	r3, .L25+28
	b	.L6
.L13:
	.loc 1 44 3 is_stmt 1 view .LVU26
	.loc 1 44 10 is_stmt 0 view .LVU27
	ldr	r3, .L25+32
	b	.L6
.L12:
	.loc 1 41 3 is_stmt 1 view .LVU28
	.loc 1 41 10 is_stmt 0 view .LVU29
	ldr	r3, .L25+36
	b	.L6
.L17:
	.loc 1 55 3 is_stmt 1 view .LVU30
	.loc 1 55 10 is_stmt 0 view .LVU31
	ldr	r3, .L25+40
	b	.L6
.L16:
	.loc 1 52 3 is_stmt 1 view .LVU32
	.loc 1 52 10 is_stmt 0 view .LVU33
	ldr	r3, .L25+44
	b	.L6
.L15:
	.loc 1 49 3 is_stmt 1 view .LVU34
	.loc 1 49 10 is_stmt 0 view .LVU35
	ldr	r3, .L25+48
	b	.L6
.L14:
	.loc 1 47 3 is_stmt 1 view .LVU36
	.loc 1 47 10 is_stmt 0 view .LVU37
	ldr	r3, .L25+52
	b	.L6
.L26:
	.align	2
.L25:
	.word	.LC0
	.word	.LC13
	.word	.LC1
	.word	.LC3
	.word	.LC2
	.word	.LC12
	.word	.LC11
	.word	.LC10
	.word	.LC5
	.word	.LC4
	.word	.LC9
	.word	.LC8
	.word	.LC7
	.word	.LC6
	.cfi_endproc
.LFE100:
	.size	opusStrError, .-opusStrError
	.section	.text.DoQuit,"ax",%progbits
	.align	2
	.global	DoQuit
	.syntax unified
	.arm
	.fpu vfp
	.type	DoQuit, %function
DoQuit:
.LVL10:
.LFB101:
	.loc 1 72 1 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 73 2 view .LVU39
	subs	r3, r0, #0
	beq	.L28
	cmp	r3, #1
	bxne	lr
	.loc 1 78 10 view .LVU40
	.loc 1 78 18 is_stmt 0 view .LVU41
	ldr	r2, .L33
	.loc 1 79 3 view .LVU42
	add	r0, r2, #16
.LVL11:
	.loc 1 78 18 view .LVU43
	strb	r3, [r2, #12]
	.loc 1 79 3 is_stmt 1 view .LVU44
	b	LightEvent_Signal
.LVL12:
.L28:
.LBB8:
.LBI8:
	.loc 1 71 6 view .LVU45
.LBB9:
	.loc 1 75 10 view .LVU46
	.loc 1 75 18 is_stmt 0 view .LVU47
	mov	r3, #1
	ldr	r0, .L33
.LVL13:
	.loc 1 75 18 view .LVU48
	strb	r3, [r0], #4
	.loc 1 76 3 is_stmt 1 view .LVU49
	b	LightEvent_Signal
.LVL14:
.L34:
	.align	2
.L33:
	.word	.LANCHOR0
.LBE9:
.LBE8:
	.cfi_endproc
.LFE101:
	.size	DoQuit, .-DoQuit
	.section	.rodata.str1.4
	.align	2
.LC14:
	.ascii	"Failed to allocate audio buffer\000"
	.section	.text.audioInit,"ax",%progbits
	.align	2
	.global	audioInit
	.syntax unified
	.arm
	.fpu vfp
	.type	audioInit, %function
audioInit:
.LVL15:
.LFB102:
	.loc 1 84 29 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 85 2 view .LVU51
	.loc 1 84 29 is_stmt 0 view .LVU52
	push	{r4, r5, r6, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
	.loc 1 84 29 view .LVU53
	mov	r4, r0
	.loc 1 85 2 view .LVU54
	bl	ndspChnReset
.LVL16:
	.loc 1 86 2 is_stmt 1 view .LVU55
	mov	r0, #1
	bl	ndspSetOutputMode
.LVL17:
	.loc 1 87 2 view .LVU56
	mov	r1, #0
	mov	r0, r4
	bl	ndspChnSetInterp
.LVL18:
	.loc 1 88 2 view .LVU57
	vldr.32	s0, .L48
	mov	r0, r4
	bl	ndspChnSetRate
.LVL19:
	.loc 1 89 2 view .LVU58
	mov	r1, #6
	mov	r0, r4
	bl	ndspChnSetFormat
.LVL20:
	.loc 1 90 2 view .LVU59
	.loc 1 91 2 view .LVU60
	.loc 1 91 5 is_stmt 0 view .LVU61
	cmp	r4, #0
	beq	.L46
	.loc 1 99 2 is_stmt 1 view .LVU62
	.loc 1 99 5 is_stmt 0 view .LVU63
	cmp	r4, #1
	beq	.L47
	.loc 1 127 8 view .LVU64
	mov	r0, #1
	pop	{r4, r5, r6, pc}
.L46:
	.loc 1 93 3 is_stmt 1 view .LVU65
	.loc 1 93 30 is_stmt 0 view .LVU66
	ldr	r0, .L48+4
	bl	linearAlloc
.LVL21:
	.loc 1 93 18 view .LVU67
	ldr	r6, .L48+8
	.loc 1 94 6 view .LVU68
	cmp	r0, #0
	.loc 1 93 30 view .LVU69
	mov	r5, r0
	.loc 1 93 18 view .LVU70
	str	r0, [r6, #24]
	.loc 1 94 3 is_stmt 1 view .LVU71
	.loc 1 94 6 is_stmt 0 view .LVU72
	beq	.L39
	.loc 1 107 2 is_stmt 1 view .LVU73
.LBB10:
	.loc 1 109 3 view .LVU74
	mov	r2, #68
	mov	r1, r4
	add	r0, r6, #108
	bl	memset
.LVL22:
	.loc 1 110 3 view .LVU75
	.loc 1 111 3 view .LVU76
.LBB11:
	.loc 1 111 8 view .LVU77
	.loc 1 111 24 view .LVU78
	.loc 1 112 4 view .LVU79
	.loc 1 113 26 is_stmt 0 view .LVU80
	mov	r3, #3
	.loc 1 114 11 view .LVU81
	add	r2, r5, #23040
	.loc 1 112 30 view .LVU82
	str	r5, [r6, #104]
	.loc 1 113 4 is_stmt 1 view .LVU83
	.loc 1 114 11 is_stmt 0 view .LVU84
	add	r5, r5, #46080
.LVL23:
	.loc 1 114 11 view .LVU85
.LBE11:
.LBE10:
	.loc 1 127 8 view .LVU86
	mov	r0, #1
.LBB13:
.LBB12:
	.loc 1 112 30 view .LVU87
	str	r2, [r6, #128]
	str	r5, [r6, #152]
	.loc 1 113 26 view .LVU88
	strb	r3, [r6, #121]
	.loc 1 114 4 is_stmt 1 view .LVU89
.LVL24:
	.loc 1 111 76 view .LVU90
	.loc 1 111 24 view .LVU91
	.loc 1 112 4 view .LVU92
	.loc 1 113 4 view .LVU93
	.loc 1 113 26 is_stmt 0 view .LVU94
	strb	r3, [r6, #145]
	.loc 1 114 4 is_stmt 1 view .LVU95
.LVL25:
	.loc 1 111 76 view .LVU96
	.loc 1 111 24 view .LVU97
	.loc 1 112 4 view .LVU98
	.loc 1 113 4 view .LVU99
	.loc 1 113 26 is_stmt 0 view .LVU100
	strb	r3, [r6, #169]
	.loc 1 114 4 is_stmt 1 view .LVU101
.LVL26:
	.loc 1 111 76 view .LVU102
	.loc 1 111 24 view .LVU103
.LBE12:
.LBE13:
	.loc 1 117 2 view .LVU104
	.loc 1 128 1 is_stmt 0 view .LVU105
	pop	{r4, r5, r6, pc}
.LVL27:
.L47:
	.loc 1 101 3 is_stmt 1 view .LVU106
	.loc 1 101 30 is_stmt 0 view .LVU107
	ldr	r0, .L48+4
	bl	linearAlloc
.LVL28:
	.loc 1 101 18 view .LVU108
	ldr	r6, .L48+8
	.loc 1 102 6 view .LVU109
	cmp	r0, #0
	.loc 1 101 30 view .LVU110
	mov	r5, r0
	.loc 1 101 18 view .LVU111
	str	r0, [r6, #28]
	.loc 1 102 3 is_stmt 1 view .LVU112
	.loc 1 102 6 is_stmt 0 view .LVU113
	beq	.L39
.LBB14:
	.loc 1 119 3 is_stmt 1 view .LVU114
	mov	r2, #68
	mov	r1, #0
	add	r0, r6, #36
	bl	memset
.LVL29:
	.loc 1 120 3 view .LVU115
	.loc 1 121 3 view .LVU116
.LBB15:
	.loc 1 121 8 view .LVU117
	.loc 1 121 24 view .LVU118
	.loc 1 122 4 view .LVU119
	.loc 1 123 26 is_stmt 0 view .LVU120
	mov	r3, #3
	.loc 1 124 11 view .LVU121
	add	r2, r5, #23040
	.loc 1 122 30 view .LVU122
	str	r5, [r6, #32]
	.loc 1 123 4 is_stmt 1 view .LVU123
	.loc 1 124 11 is_stmt 0 view .LVU124
	add	r5, r5, #46080
.LBE15:
.LBE14:
	.loc 1 127 8 view .LVU125
	mov	r0, r4
.LBB17:
.LBB16:
	.loc 1 122 30 view .LVU126
	str	r2, [r6, #56]
	str	r5, [r6, #80]
	.loc 1 123 26 view .LVU127
	strb	r3, [r6, #49]
	.loc 1 124 4 is_stmt 1 view .LVU128
.LVL30:
	.loc 1 121 76 view .LVU129
	.loc 1 121 24 view .LVU130
	.loc 1 122 4 view .LVU131
	.loc 1 123 4 view .LVU132
	.loc 1 123 26 is_stmt 0 view .LVU133
	strb	r3, [r6, #73]
	.loc 1 124 4 is_stmt 1 view .LVU134
.LVL31:
	.loc 1 121 76 view .LVU135
	.loc 1 121 24 view .LVU136
	.loc 1 122 4 view .LVU137
	.loc 1 123 4 view .LVU138
	.loc 1 123 26 is_stmt 0 view .LVU139
	strb	r3, [r6, #97]
	.loc 1 124 4 is_stmt 1 view .LVU140
.LVL32:
	.loc 1 121 76 view .LVU141
	.loc 1 121 24 view .LVU142
	pop	{r4, r5, r6, pc}
.LVL33:
.L39:
	.loc 1 121 24 is_stmt 0 view .LVU143
.LBE16:
.LBE17:
	.loc 1 95 4 is_stmt 1 view .LVU144
	ldr	r0, .L48+12
	bl	puts
.LVL34:
	.loc 1 96 4 view .LVU145
	.loc 1 96 10 is_stmt 0 view .LVU146
	mov	r0, #0
	pop	{r4, r5, r6, pc}
.L49:
	.align	2
.L48:
	.word	1195081728
	.word	69120
	.word	.LANCHOR0
	.word	.LC14
	.cfi_endproc
.LFE102:
	.size	audioInit, .-audioInit
	.section	.text.audioExit,"ax",%progbits
	.align	2
	.global	audioExit
	.syntax unified
	.arm
	.fpu vfp
	.type	audioExit, %function
audioExit:
.LVL35:
.LFB103:
	.loc 1 130 30 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 133 2 view .LVU148
	.loc 1 130 30 is_stmt 0 view .LVU149
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 1 130 30 view .LVU150
	mov	r4, r0
	.loc 1 133 2 view .LVU151
	bl	ndspChnReset
.LVL36:
	.loc 1 135 2 is_stmt 1 view .LVU152
	ldr	r3, .L54
	cmp	r4, #0
	ldreq	r0, [r3, #24]
	ldrne	r0, [r3, #28]
	.loc 1 136 1 is_stmt 0 view .LVU153
	pop	{r4, lr}
	.cfi_restore 14
	.cfi_restore 4
	.cfi_def_cfa_offset 0
.LVL37:
	.loc 1 135 2 view .LVU154
	b	linearFree
.LVL38:
.L55:
	.align	2
.L54:
	.word	.LANCHOR0
	.cfi_endproc
.LFE103:
	.size	audioExit, .-audioExit
	.section	.rodata.str1.4
	.align	2
.LC15:
	.ascii	"op_read_stereo: error %d (%s)\000"
	.section	.text.fillBuffer,"ax",%progbits
	.align	2
	.global	fillBuffer
	.syntax unified
	.arm
	.fpu vfp
	.type	fillBuffer, %function
fillBuffer:
.LVL39:
.LFB104:
	.loc 1 138 77 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 139 2 view .LVU156
	.loc 1 140 2 view .LVU157
	.loc 1 140 22 view .LVU158
	.loc 1 138 77 is_stmt 0 view .LVU159
	push	{r4, r6, r7, r8, r9, lr}
	.cfi_def_cfa_offset 24
	.cfi_offset 4, -24
	.cfi_offset 6, -20
	.cfi_offset 7, -16
	.cfi_offset 8, -12
	.cfi_offset 9, -8
	.cfi_offset 14, -4
	.loc 1 139 6 view .LVU160
	mov	r4, #0
	.loc 1 138 77 view .LVU161
	mov	r7, r0
	mov	r6, r1
	mov	r8, r2
.LVL40:
.L59:
.LBB18:
	.loc 1 141 3 is_stmt 1 view .LVU162
	.loc 1 142 3 view .LVU163
	.loc 1 143 3 view .LVU164
	.loc 1 141 12 is_stmt 0 view .LVU165
	ldr	r1, [r8]
	.loc 1 142 46 view .LVU166
	rsb	r2, r4, #5760
	.loc 1 143 23 view .LVU167
	add	r1, r1, r4, lsl #2
.LVL41:
	.loc 1 143 23 view .LVU168
	mov	r0, r6
	lsl	r2, r2, #1
.LVL42:
	.loc 1 143 23 view .LVU169
	bl	op_read_stereo
.LVL43:
	.loc 1 152 3 is_stmt 1 view .LVU170
	.loc 1 144 3 view .LVU171
	.loc 1 144 6 is_stmt 0 view .LVU172
	subs	r1, r0, #0
	.loc 1 141 42 view .LVU173
	lsl	r9, r4, #2
	.loc 1 144 6 view .LVU174
	ble	.L65
	.loc 1 152 16 view .LVU175
	add	r4, r4, r1
.LVL44:
	.loc 1 152 16 view .LVU176
.LBE18:
	.loc 1 140 22 is_stmt 1 view .LVU177
	cmp	r4, #5760
	blt	.L59
	lsl	r9, r4, #2
.LVL45:
.L60:
	.loc 1 157 2 view .LVU178
	.loc 1 158 2 is_stmt 0 view .LVU179
	mov	r0, r7
	mov	r1, r8
	.loc 1 157 21 view .LVU180
	str	r4, [r8, #4]
	.loc 1 158 2 is_stmt 1 view .LVU181
	bl	ndspChnWaveBufAdd
.LVL46:
	.loc 1 159 2 view .LVU182
	mov	r1, r9
	ldr	r0, [r8]
	bl	DSP_FlushDataCache
.LVL47:
	.loc 1 160 2 view .LVU183
	.loc 1 160 8 is_stmt 0 view .LVU184
	mov	r0, #1
	pop	{r4, r6, r7, r8, r9, pc}
.LVL48:
.L65:
.LBB19:
	.loc 1 145 4 is_stmt 1 view .LVU185
	.loc 1 145 7 is_stmt 0 view .LVU186
	bne	.L66
.LVL49:
.L58:
	.loc 1 145 7 view .LVU187
.LBE19:
	.loc 1 154 2 is_stmt 1 view .LVU188
	.loc 1 154 5 is_stmt 0 view .LVU189
	cmp	r4, #0
	bne	.L60
	.loc 1 155 9 view .LVU190
	mov	r0, r4
	.loc 1 161 1 view .LVU191
	pop	{r4, r6, r7, r8, r9, pc}
.LVL50:
.L66:
.LBB20:
	.loc 1 147 4 is_stmt 1 view .LVU192
	bl	opusStrError
.LVL51:
	.loc 1 147 4 is_stmt 0 view .LVU193
	mov	r2, r0
	ldr	r0, .L67
	bl	printf
.LVL52:
	.loc 1 149 4 is_stmt 1 view .LVU194
	b	.L58
.L68:
	.align	2
.L67:
	.word	.LC15
.LBE20:
	.cfi_endproc
.LFE104:
	.size	fillBuffer, .-fillBuffer
	.section	.text.audioThread0,"ax",%progbits
	.align	2
	.global	audioThread0
	.syntax unified
	.arm
	.fpu vfp
	.type	audioThread0, %function
audioThread0:
.LVL53:
.LFB106:
	.loc 1 170 42 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 171 2 view .LVU196
	.loc 1 170 42 is_stmt 0 view .LVU197
	push	{r4, r5, r6, r7, r8, lr}
	.cfi_def_cfa_offset 24
	.cfi_offset 4, -24
	.cfi_offset 5, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	.cfi_offset 8, -8
	.cfi_offset 14, -4
	.loc 1 173 9 view .LVU198
	ldr	r6, .L82
	ldrb	r3, [r6]	@ zero_extendqisi2
	cmp	r3, #0
.LVL54:
	.loc 1 173 2 is_stmt 1 view .LVU199
	.loc 1 173 9 view .LVU200
	popne	{r4, r5, r6, r7, r8, pc}
	mov	r7, r0
	add	r5, r6, #176
	.loc 1 182 3 is_stmt 0 view .LVU201
	add	r8, r6, #4
.LVL55:
.L75:
	.loc 1 182 3 view .LVU202
	ldr	r4, .L82+4
.L72:
.LBB21:
	.loc 1 175 4 is_stmt 1 view .LVU203
	.loc 1 175 7 is_stmt 0 view .LVU204
	ldrb	r3, [r4, #17]	@ zero_extendqisi2
	cmp	r3, #3
	beq	.L71
.L74:
	.loc 1 174 76 is_stmt 1 view .LVU205
	.loc 1 174 24 view .LVU206
	add	r4, r4, #24
	cmp	r4, r5
	bne	.L72
.LBE21:
	.loc 1 182 3 view .LVU207
	mov	r0, r8
	bl	LightEvent_Wait
.LVL56:
	.loc 1 173 9 view .LVU208
	ldrb	r3, [r6]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L75
	pop	{r4, r5, r6, r7, r8, pc}
.L71:
.LBB22:
	.loc 1 178 4 view .LVU209
	.loc 1 178 9 is_stmt 0 view .LVU210
	mov	r2, r4
	mov	r1, r7
	mov	r0, #0
	bl	fillBuffer
.LVL57:
	.loc 1 178 7 view .LVU211
	cmp	r0, #0
	bne	.L74
	pop	{r4, r5, r6, r7, r8, pc}
.L83:
	.align	2
.L82:
	.word	.LANCHOR0
	.word	.LANCHOR0+104
.LBE22:
	.cfi_endproc
.LFE106:
	.size	audioThread0, .-audioThread0
	.section	.text.audioThread1,"ax",%progbits
	.align	2
	.global	audioThread1
	.syntax unified
	.arm
	.fpu vfp
	.type	audioThread1, %function
audioThread1:
.LVL58:
.LFB107:
	.loc 1 185 42 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 186 2 view .LVU213
	.loc 1 185 42 is_stmt 0 view .LVU214
	push	{r4, r5, r6, r7, r8, lr}
	.cfi_def_cfa_offset 24
	.cfi_offset 4, -24
	.cfi_offset 5, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	.cfi_offset 8, -8
	.cfi_offset 14, -4
	.loc 1 188 9 view .LVU215
	ldr	r6, .L95
	ldrb	r3, [r6, #12]	@ zero_extendqisi2
	cmp	r3, #0
.LVL59:
	.loc 1 188 2 is_stmt 1 view .LVU216
	.loc 1 188 9 view .LVU217
	popne	{r4, r5, r6, r7, r8, pc}
	mov	r7, r0
	add	r5, r6, #104
	.loc 1 198 3 is_stmt 0 view .LVU218
	add	r8, r6, #16
.LVL60:
.L89:
	.loc 1 198 3 view .LVU219
	ldr	r4, .L95+4
.L88:
.LBB23:
	.loc 1 190 4 is_stmt 1 view .LVU220
	.loc 1 190 7 is_stmt 0 view .LVU221
	ldrb	r3, [r4, #17]	@ zero_extendqisi2
	cmp	r3, #3
	beq	.L94
.L86:
	.loc 1 189 76 is_stmt 1 view .LVU222
	.loc 1 189 24 view .LVU223
	add	r4, r4, #24
	cmp	r4, r5
	bne	.L88
.LBE23:
	.loc 1 198 3 view .LVU224
	mov	r0, r8
	bl	LightEvent_Wait
.LVL61:
	.loc 1 188 9 view .LVU225
	ldrb	r3, [r6, #12]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L89
	pop	{r4, r5, r6, r7, r8, pc}
.L94:
.LBB24:
	.loc 1 193 4 view .LVU226
	.loc 1 193 9 is_stmt 0 view .LVU227
	mov	r2, r4
	mov	r1, r7
	mov	r0, #1
	bl	fillBuffer
.LVL62:
	.loc 1 193 7 view .LVU228
	cmp	r0, #0
	bne	.L86
	.loc 1 194 5 is_stmt 1 view .LVU229
	.loc 1 194 13 is_stmt 0 view .LVU230
	mov	r3, #1
	strb	r3, [r6, #12]
	.loc 1 195 5 is_stmt 1 view .LVU231
	pop	{r4, r5, r6, r7, r8, pc}
.L96:
	.align	2
.L95:
	.word	.LANCHOR0
	.word	.LANCHOR0+32
.LBE24:
	.cfi_endproc
.LFE107:
	.size	audioThread1, .-audioThread1
	.section	.rodata.str1.4
	.align	2
.LC16:
	.ascii	"Free thread %p\012\000"
	.align	2
.LC17:
	.ascii	"An Error occured opening file %s \012\000"
	.align	2
.LC18:
	.ascii	"Failed to initialise audio 0\000"
	.section	.text.playopus,"ax",%progbits
	.align	2
	.global	playopus
	.syntax unified
	.arm
	.fpu vfp
	.type	playopus, %function
playopus:
.LVL63:
.LFB108:
	.loc 1 202 29 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 203 2 view .LVU233
	.loc 1 202 29 is_stmt 0 view .LVU234
	push	{r4, r5, r6, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
	.loc 1 203 5 view .LVU235
	ldrb	r5, [r0, #128]	@ zero_extendqisi2
	.loc 1 202 29 view .LVU236
	mov	r4, r0
	.loc 1 203 5 view .LVU237
	cmp	r5, #0
	.loc 1 202 29 view .LVU238
	sub	sp, sp, #16
	.cfi_def_cfa_offset 32
	.loc 1 203 5 view .LVU239
	bne	.L98
	.loc 1 203 32 discriminator 1 view .LVU240
	ldr	r3, [r0, #132]
	cmp	r3, #0
	beq	.L99
.LBB31:
	.loc 1 205 3 is_stmt 1 view .LVU241
.LVL64:
.LBB32:
.LBI32:
	.loc 1 71 6 view .LVU242
.LBB33:
	.loc 1 73 2 view .LVU243
	.loc 1 78 10 view .LVU244
	.loc 1 78 18 is_stmt 0 view .LVU245
	mov	r3, #1
	ldr	r6, .L123
	.loc 1 79 3 view .LVU246
	add	r0, r6, #16
.LVL65:
	.loc 1 78 18 view .LVU247
	strb	r3, [r6, #12]
	.loc 1 79 3 is_stmt 1 view .LVU248
	bl	LightEvent_Signal
.LVL66:
	.loc 1 80 3 view .LVU249
	.loc 1 80 3 is_stmt 0 view .LVU250
.LBE33:
.LBE32:
	.loc 1 206 3 is_stmt 1 view .LVU251
	mov	r3, #0
	ldr	r2, .L123+4
	ldr	r0, [r4, #132]
	bl	threadJoin
.LVL67:
	.loc 1 207 3 view .LVU252
	ldr	r0, [r4, #132]
	bl	threadFree
.LVL68:
	.loc 1 208 3 view .LVU253
	ldr	r1, [r4, #132]
	ldr	r0, .L123+8
	bl	DebugUI_Log
.LVL69:
	.loc 1 209 3 view .LVU254
	.loc 1 210 12 is_stmt 0 view .LVU255
	ldr	r0, [r4, #136]
	.loc 1 209 18 view .LVU256
	str	r5, [r4, #132]
	.loc 1 210 3 is_stmt 1 view .LVU257
	.loc 1 210 6 is_stmt 0 view .LVU258
	cmp	r0, #0
	beq	.L100
	.loc 1 212 4 is_stmt 1 view .LVU259
	bl	op_free
.LVL70:
.L100:
	.loc 1 214 3 view .LVU260
.LBB34:
.LBI34:
	.loc 1 130 6 view .LVU261
.LBB35:
	.loc 1 133 2 view .LVU262
	mov	r0, #1
	bl	ndspChnReset
.LVL71:
	.loc 1 135 2 view .LVU263
	ldr	r0, [r6, #28]
	bl	linearFree
.LVL72:
	.loc 1 135 2 is_stmt 0 view .LVU264
.LBE35:
.LBE34:
	.loc 1 215 3 is_stmt 1 view .LVU265
	.loc 1 215 18 is_stmt 0 view .LVU266
	mov	r3, #0
.LBE31:
	.loc 1 218 11 view .LVU267
	ldrb	r2, [r4, #128]	@ zero_extendqisi2
	.loc 1 217 2 is_stmt 1 view .LVU268
.LBB36:
	.loc 1 215 18 is_stmt 0 view .LVU269
	str	r3, [r4, #132]
.LBE36:
	.loc 1 218 5 view .LVU270
	cmp	r2, r3
	.loc 1 217 10 view .LVU271
	strb	r3, [r6, #12]
	.loc 1 218 2 is_stmt 1 view .LVU272
	.loc 1 218 5 is_stmt 0 view .LVU273
	beq	.L101
	b	.L108
.LVL73:
.L98:
	.loc 1 217 2 is_stmt 1 view .LVU274
	.loc 1 217 10 is_stmt 0 view .LVU275
	mov	r2, #0
	ldr	r3, .L123
	strb	r2, [r3, #12]
	.loc 1 218 2 is_stmt 1 view .LVU276
.LVL74:
.L108:
	.loc 1 220 3 view .LVU277
	mov	r1, #0
	ldr	r0, .L123+12
	bl	LightEvent_Init
.LVL75:
.L102:
	.loc 1 226 2 view .LVU278
	.loc 1 226 6 is_stmt 0 view .LVU279
	mov	r3, #0
	.loc 1 227 26 view .LVU280
	mov	r0, r4
	add	r1, sp, #8
	.loc 1 226 6 view .LVU281
	str	r3, [sp, #8]
	.loc 1 227 2 is_stmt 1 view .LVU282
	.loc 1 227 26 is_stmt 0 view .LVU283
	bl	op_open_file
.LVL76:
	.loc 1 228 5 view .LVU284
	ldr	r6, [sp, #8]
	.loc 1 227 26 view .LVU285
	mov	r5, r0
.LVL77:
	.loc 1 228 2 is_stmt 1 view .LVU286
	.loc 1 228 5 is_stmt 0 view .LVU287
	cmp	r6, #0
	bne	.L120
	.loc 1 233 2 is_stmt 1 view .LVU288
	.loc 1 233 7 is_stmt 0 view .LVU289
	ldrb	r0, [r4, #128]	@ zero_extendqisi2
.LVL78:
	.loc 1 233 7 view .LVU290
	eor	r0, r0, #1
	bl	audioInit
.LVL79:
	.loc 1 233 5 view .LVU291
	cmp	r0, #0
	beq	.L121
	.loc 1 238 2 is_stmt 1 view .LVU292
	.loc 1 238 5 is_stmt 0 view .LVU293
	ldrb	r3, [r4, #128]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L122
.L106:
	.loc 1 242 2 is_stmt 1 view .LVU294
	.loc 1 242 10 is_stmt 0 view .LVU295
	mov	r3, #48
	.loc 1 243 2 view .LVU296
	ldr	r1, .L123+16
	add	r0, sp, #12
	.loc 1 242 10 view .LVU297
	str	r3, [sp, #12]
	.loc 1 243 2 is_stmt 1 view .LVU298
	bl	svcGetThreadPriority
.LVL80:
	.loc 1 244 2 view .LVU299
	.loc 1 245 2 view .LVU300
	.loc 1 246 2 view .LVU301
	.loc 1 244 11 is_stmt 0 view .LVU302
	ldr	r3, [sp, #12]
	.loc 1 247 20 view .LVU303
	mov	r2, #0
	.loc 1 244 11 view .LVU304
	sub	r3, r3, #1
	.loc 1 245 36 view .LVU305
	cmp	r3, #24
	movlt	r3, #24
	.loc 1 247 20 view .LVU306
	ldrb	r0, [r4, #128]	@ zero_extendqisi2
	str	r2, [sp, #4]
	mvn	r2, #0
	.loc 1 246 36 view .LVU307
	cmp	r3, #63
	movge	r3, #63
	.loc 1 247 20 view .LVU308
	str	r2, [sp]
	ldr	r1, .L123+20
	ldr	r2, .L123+24
	cmp	r0, #0
	movne	r0, r1
	moveq	r0, r2
	mov	r1, r5
	mov	r2, #32768
	.loc 1 246 11 view .LVU309
	str	r3, [sp, #12]
	.loc 1 247 2 is_stmt 1 view .LVU310
	.loc 1 247 20 is_stmt 0 view .LVU311
	bl	threadCreate
.LVL81:
	.loc 1 248 2 is_stmt 1 view .LVU312
	.loc 1 249 18 is_stmt 0 view .LVU313
	str	r5, [r4, #136]
	.loc 1 248 17 view .LVU314
	str	r0, [r4, #132]
	.loc 1 249 2 is_stmt 1 view .LVU315
	.loc 1 250 2 view .LVU316
	.loc 1 251 1 is_stmt 0 view .LVU317
	add	sp, sp, #16
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	@ sp needed
	pop	{r4, r5, r6, pc}
.LVL82:
.L99:
	.cfi_restore_state
	.loc 1 217 2 is_stmt 1 view .LVU318
	.loc 1 217 10 is_stmt 0 view .LVU319
	ldr	r2, .L123
	strb	r3, [r2, #12]
	.loc 1 218 2 is_stmt 1 view .LVU320
.LVL83:
.L101:
	.loc 1 224 3 view .LVU321
	mov	r1, #0
	ldr	r0, .L123+28
	bl	LightEvent_Init
.LVL84:
	b	.L102
.LVL85:
.L120:
.LBB37:
	.loc 1 230 3 view .LVU322
	mov	r1, r4
	ldr	r0, .L123+32
.LVL86:
	.loc 1 230 3 is_stmt 0 view .LVU323
	bl	DebugUI_Log
.LVL87:
	.loc 1 231 3 is_stmt 1 view .LVU324
.LBE37:
	.loc 1 251 1 is_stmt 0 view .LVU325
	add	sp, sp, #16
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	@ sp needed
	pop	{r4, r5, r6, pc}
.LVL88:
.L122:
	.cfi_restore_state
	.loc 1 240 3 is_stmt 1 view .LVU326
	mov	r1, r6
	ldr	r0, .L123+36
	bl	ndspSetCallback
.LVL89:
	b	.L106
.L121:
	.loc 1 235 3 view .LVU327
	ldr	r0, .L123+40
	bl	puts
.LVL90:
	.loc 1 236 3 view .LVU328
	.loc 1 251 1 is_stmt 0 view .LVU329
	add	sp, sp, #16
	.cfi_def_cfa_offset 16
	@ sp needed
	pop	{r4, r5, r6, pc}
.LVL91:
.L124:
	.loc 1 251 1 view .LVU330
	.align	2
.L123:
	.word	.LANCHOR0
	.word	50000
	.word	.LC16
	.word	.LANCHOR0+4
	.word	-32768
	.word	audioThread0
	.word	audioThread1
	.word	.LANCHOR0+16
	.word	.LC17
	.word	audioCallback
	.word	.LC18
	.cfi_endproc
.LFE108:
	.size	playopus, .-playopus
	.global	s_quit1
	.global	s_quit0
	.global	s_event1
	.global	s_event
	.global	s_audioBuffer1
	.global	s_audioBuffer0
	.global	s_waveBufs1
	.global	s_waveBufs0
	.bss
	.align	2
	.set	.LANCHOR0,. + 0
	.type	s_quit0, %object
	.size	s_quit0, 1
s_quit0:
	.space	1
	.space	3
	.type	s_event, %object
	.size	s_event, 8
s_event:
	.space	8
	.type	s_quit1, %object
	.size	s_quit1, 1
s_quit1:
	.space	1
	.space	3
	.type	s_event1, %object
	.size	s_event1, 8
s_event1:
	.space	8
	.type	s_audioBuffer0, %object
	.size	s_audioBuffer0, 4
s_audioBuffer0:
	.space	4
	.type	s_audioBuffer1, %object
	.size	s_audioBuffer1, 4
s_audioBuffer1:
	.space	4
	.type	s_waveBufs1, %object
	.size	s_waveBufs1, 72
s_waveBufs1:
	.space	72
	.type	s_waveBufs0, %object
	.size	s_waveBufs0, 72
s_waveBufs0:
	.space	72
	.text
.Letext0:
	.file 2 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h"
	.file 3 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/11.2.0/include/stddef.h"
	.file 4 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_stdint.h"
	.file 5 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/lock.h"
	.file 6 "/opt/devkitpro/portlibs/3ds/include/opus/opus_types.h"
	.file 7 "/opt/devkitpro/portlibs/3ds/include/opus/opusfile.h"
	.file 8 "/opt/devkitpro/libctru/include/3ds/types.h"
	.file 9 "/opt/devkitpro/libctru/include/3ds/svc.h"
	.file 10 "/opt/devkitpro/libctru/include/3ds/synchronization.h"
	.file 11 "/opt/devkitpro/libctru/include/3ds/thread.h"
	.file 12 "/opt/devkitpro/libctru/include/3ds/ndsp/ndsp.h"
	.file 13 "/opt/devkitpro/libctru/include/3ds/ndsp/channel.h"
	.file 14 "/home/tobi/Dokumente/Craftus-Next/include/misc/Sound.h"
	.file 15 "/opt/devkitpro/libctru/include/3ds/services/dsp.h"
	.file 16 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdio.h"
	.file 17 "/opt/devkitpro/libctru/include/3ds/allocator/linear.h"
	.file 18 "/opt/devkitpro/devkitARM/arm-none-eabi/include/string.h"
	.file 19 "<built-in>"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0xefa
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x2a
	.4byte	.LASF150
	.byte	0x1d
	.4byte	.LASF151
	.4byte	.LASF152
	.4byte	.LLRL33
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x8
	.byte	0x4
	.byte	0x4
	.4byte	.LASF0
	.uleb128 0x2b
	.byte	0x4
	.uleb128 0x12
	.4byte	0x2d
	.uleb128 0x3
	.4byte	.LASF2
	.byte	0x2
	.byte	0x29
	.byte	0x15
	.4byte	0x40
	.uleb128 0x8
	.byte	0x1
	.byte	0x6
	.4byte	.LASF1
	.uleb128 0x3
	.4byte	.LASF3
	.byte	0x2
	.byte	0x2b
	.byte	0x17
	.4byte	0x53
	.uleb128 0x8
	.byte	0x1
	.byte	0x8
	.4byte	.LASF4
	.uleb128 0x3
	.4byte	.LASF5
	.byte	0x2
	.byte	0x37
	.byte	0x13
	.4byte	0x66
	.uleb128 0x8
	.byte	0x2
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x3
	.4byte	.LASF7
	.byte	0x2
	.byte	0x39
	.byte	0x1c
	.4byte	0x79
	.uleb128 0x8
	.byte	0x2
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x3
	.4byte	.LASF9
	.byte	0x2
	.byte	0x4d
	.byte	0x12
	.4byte	0x8c
	.uleb128 0x8
	.byte	0x4
	.byte	0x5
	.4byte	.LASF10
	.uleb128 0x3
	.4byte	.LASF11
	.byte	0x2
	.byte	0x4f
	.byte	0x1b
	.4byte	0x9f
	.uleb128 0x8
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x8
	.byte	0x8
	.byte	0x5
	.4byte	.LASF13
	.uleb128 0x3
	.4byte	.LASF14
	.byte	0x2
	.byte	0x69
	.byte	0x20
	.4byte	0xb9
	.uleb128 0x8
	.byte	0x8
	.byte	0x7
	.4byte	.LASF15
	.uleb128 0x2c
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x12
	.4byte	0xc0
	.uleb128 0x8
	.byte	0x4
	.byte	0x7
	.4byte	.LASF16
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0x3
	.byte	0xd1
	.byte	0x16
	.4byte	0xcc
	.uleb128 0x12
	.4byte	0xd3
	.uleb128 0x8
	.byte	0x8
	.byte	0x4
	.4byte	.LASF18
	.uleb128 0x3
	.4byte	.LASF19
	.byte	0x4
	.byte	0x14
	.byte	0x12
	.4byte	0x34
	.uleb128 0x3
	.4byte	.LASF20
	.byte	0x4
	.byte	0x18
	.byte	0x13
	.4byte	0x47
	.uleb128 0x3
	.4byte	.LASF21
	.byte	0x4
	.byte	0x20
	.byte	0x13
	.4byte	0x5a
	.uleb128 0x3
	.4byte	.LASF22
	.byte	0x4
	.byte	0x24
	.byte	0x14
	.4byte	0x6d
	.uleb128 0x3
	.4byte	.LASF23
	.byte	0x4
	.byte	0x2c
	.byte	0x13
	.4byte	0x80
	.uleb128 0x3
	.4byte	.LASF24
	.byte	0x4
	.byte	0x30
	.byte	0x14
	.4byte	0x93
	.uleb128 0x3
	.4byte	.LASF25
	.byte	0x4
	.byte	0x3c
	.byte	0x14
	.4byte	0xad
	.uleb128 0x3
	.4byte	.LASF26
	.byte	0x5
	.byte	0x7
	.byte	0x11
	.4byte	0x11b
	.uleb128 0x8
	.byte	0x1
	.byte	0x8
	.4byte	.LASF27
	.uleb128 0x12
	.4byte	0x14b
	.uleb128 0x6
	.4byte	0x152
	.uleb128 0x6
	.4byte	0xc0
	.uleb128 0x3
	.4byte	.LASF28
	.byte	0x6
	.byte	0x35
	.byte	0x14
	.4byte	0x103
	.uleb128 0x3
	.4byte	.LASF29
	.byte	0x7
	.byte	0x85
	.byte	0x1c
	.4byte	0x179
	.uleb128 0x20
	.4byte	.LASF29
	.uleb128 0xf
	.ascii	"u8\000"
	.byte	0x15
	.byte	0x11
	.4byte	0xf7
	.uleb128 0xf
	.ascii	"u16\000"
	.byte	0x16
	.byte	0x12
	.4byte	0x10f
	.uleb128 0xf
	.ascii	"u32\000"
	.byte	0x17
	.byte	0x12
	.4byte	0x127
	.uleb128 0xf
	.ascii	"u64\000"
	.byte	0x18
	.byte	0x12
	.4byte	0x133
	.uleb128 0xf
	.ascii	"s8\000"
	.byte	0x1a
	.byte	0x10
	.4byte	0xeb
	.uleb128 0xf
	.ascii	"s16\000"
	.byte	0x1b
	.byte	0x11
	.4byte	0x103
	.uleb128 0xf
	.ascii	"s32\000"
	.byte	0x1c
	.byte	0x11
	.4byte	0x11b
	.uleb128 0x3
	.4byte	.LASF30
	.byte	0x8
	.byte	0x29
	.byte	0xd
	.4byte	0x193
	.uleb128 0x3
	.4byte	.LASF31
	.byte	0x8
	.byte	0x2a
	.byte	0xd
	.4byte	0x1be
	.uleb128 0x3
	.4byte	.LASF32
	.byte	0x8
	.byte	0x2b
	.byte	0x10
	.4byte	0x1ed
	.uleb128 0x6
	.4byte	0x1f2
	.uleb128 0x2d
	.4byte	0x1fd
	.uleb128 0x2
	.4byte	0x2d
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.byte	0x4
	.4byte	.LASF33
	.uleb128 0x13
	.4byte	0x53
	.byte	0x9
	.byte	0x69
	.byte	0xe
	.4byte	0x223
	.uleb128 0x4
	.4byte	.LASF34
	.byte	0
	.uleb128 0x4
	.4byte	.LASF35
	.byte	0x1
	.uleb128 0x4
	.4byte	.LASF36
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.4byte	.LASF37
	.byte	0x9
	.byte	0x6d
	.byte	0x3
	.4byte	0x204
	.uleb128 0x8
	.byte	0x1
	.byte	0x2
	.4byte	.LASF38
	.uleb128 0x2e
	.4byte	0x22f
	.uleb128 0x3
	.4byte	.LASF39
	.byte	0xa
	.byte	0xa
	.byte	0x11
	.4byte	0x13f
	.uleb128 0x1a
	.byte	0x8
	.byte	0xa
	.byte	0x13
	.4byte	0x26a
	.uleb128 0x7
	.4byte	.LASF40
	.byte	0xa
	.byte	0x15
	.byte	0x6
	.4byte	0x1be
	.byte	0
	.uleb128 0x7
	.4byte	.LASF41
	.byte	0xa
	.byte	0x16
	.byte	0xc
	.4byte	0x23b
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF42
	.byte	0xa
	.byte	0x17
	.byte	0x3
	.4byte	0x247
	.uleb128 0x3
	.4byte	.LASF43
	.byte	0xb
	.byte	0x16
	.byte	0x1c
	.4byte	0x282
	.uleb128 0x6
	.4byte	0x287
	.uleb128 0x20
	.4byte	.LASF44
	.uleb128 0x6
	.4byte	0x17e
	.uleb128 0x6
	.4byte	0x296
	.uleb128 0x2f
	.uleb128 0x13
	.4byte	0x53
	.byte	0xc
	.byte	0xf
	.byte	0x1
	.4byte	0x2b6
	.uleb128 0x4
	.4byte	.LASF45
	.byte	0
	.uleb128 0x4
	.4byte	.LASF46
	.byte	0x1
	.uleb128 0x4
	.4byte	.LASF47
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.4byte	.LASF48
	.byte	0xc
	.byte	0x13
	.byte	0x3
	.4byte	0x297
	.uleb128 0x1a
	.byte	0x6
	.byte	0xc
	.byte	0x25
	.4byte	0x2f2
	.uleb128 0x7
	.4byte	.LASF49
	.byte	0xc
	.byte	0x27
	.byte	0x6
	.4byte	0x188
	.byte	0
	.uleb128 0x7
	.4byte	.LASF50
	.byte	0xc
	.byte	0x28
	.byte	0x6
	.4byte	0x1b3
	.byte	0x2
	.uleb128 0x7
	.4byte	.LASF51
	.byte	0xc
	.byte	0x29
	.byte	0x6
	.4byte	0x1b3
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF52
	.byte	0xc
	.byte	0x2a
	.byte	0x3
	.4byte	0x2c2
	.uleb128 0x3
	.4byte	.LASF53
	.byte	0xc
	.byte	0x2d
	.byte	0x20
	.4byte	0x30a
	.uleb128 0x30
	.4byte	.LASF153
	.byte	0x18
	.byte	0xc
	.byte	0x39
	.byte	0x8
	.4byte	0x379
	.uleb128 0x31
	.4byte	0x39e
	.byte	0
	.uleb128 0x7
	.4byte	.LASF54
	.byte	0xc
	.byte	0x42
	.byte	0x6
	.4byte	0x193
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF55
	.byte	0xc
	.byte	0x43
	.byte	0x11
	.4byte	0x3de
	.byte	0x8
	.uleb128 0x7
	.4byte	.LASF56
	.byte	0xc
	.byte	0x45
	.byte	0x6
	.4byte	0x193
	.byte	0xc
	.uleb128 0x7
	.4byte	.LASF57
	.byte	0xc
	.byte	0x46
	.byte	0x6
	.4byte	0x22f
	.byte	0x10
	.uleb128 0x7
	.4byte	.LASF58
	.byte	0xc
	.byte	0x47
	.byte	0x5
	.4byte	0x17e
	.byte	0x11
	.uleb128 0x7
	.4byte	.LASF59
	.byte	0xc
	.byte	0x49
	.byte	0x6
	.4byte	0x188
	.byte	0x12
	.uleb128 0x7
	.4byte	.LASF60
	.byte	0xc
	.byte	0x4a
	.byte	0xf
	.4byte	0x3e3
	.byte	0x14
	.byte	0
	.uleb128 0x13
	.4byte	0x53
	.byte	0xc
	.byte	0x31
	.byte	0x1
	.4byte	0x39e
	.uleb128 0x4
	.4byte	.LASF61
	.byte	0
	.uleb128 0x4
	.4byte	.LASF62
	.byte	0x1
	.uleb128 0x4
	.4byte	.LASF63
	.byte	0x2
	.uleb128 0x4
	.4byte	.LASF64
	.byte	0x3
	.byte	0
	.uleb128 0x32
	.byte	0x4
	.byte	0xc
	.byte	0x3b
	.byte	0x2
	.4byte	0x3d4
	.uleb128 0x14
	.4byte	.LASF65
	.byte	0x3d
	.byte	0x7
	.4byte	0x3d4
	.uleb128 0x14
	.4byte	.LASF66
	.byte	0x3e
	.byte	0x8
	.4byte	0x3d9
	.uleb128 0x14
	.4byte	.LASF67
	.byte	0x3f
	.byte	0x7
	.4byte	0x28c
	.uleb128 0x14
	.4byte	.LASF68
	.byte	0x40
	.byte	0xf
	.4byte	0x291
	.byte	0
	.uleb128 0x6
	.4byte	0x1a9
	.uleb128 0x6
	.4byte	0x1b3
	.uleb128 0x6
	.4byte	0x2f2
	.uleb128 0x6
	.4byte	0x2fe
	.uleb128 0x3
	.4byte	.LASF69
	.byte	0xc
	.byte	0x4e
	.byte	0x10
	.4byte	0x1ed
	.uleb128 0x13
	.4byte	0x53
	.byte	0xd
	.byte	0x18
	.byte	0x1
	.4byte	0x43d
	.uleb128 0x4
	.4byte	.LASF70
	.byte	0x1
	.uleb128 0x4
	.4byte	.LASF71
	.byte	0x5
	.uleb128 0x4
	.4byte	.LASF72
	.byte	0x9
	.uleb128 0x4
	.4byte	.LASF73
	.byte	0x2
	.uleb128 0x4
	.4byte	.LASF74
	.byte	0x6
	.uleb128 0x4
	.4byte	.LASF75
	.byte	0x1
	.uleb128 0x4
	.4byte	.LASF76
	.byte	0x5
	.uleb128 0x4
	.4byte	.LASF77
	.byte	0x9
	.uleb128 0x4
	.4byte	.LASF78
	.byte	0x10
	.uleb128 0x4
	.4byte	.LASF79
	.byte	0x40
	.byte	0
	.uleb128 0x13
	.4byte	0x53
	.byte	0xd
	.byte	0x2a
	.byte	0x1
	.4byte	0x45c
	.uleb128 0x4
	.4byte	.LASF80
	.byte	0
	.uleb128 0x4
	.4byte	.LASF81
	.byte	0x1
	.uleb128 0x4
	.4byte	.LASF82
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.4byte	.LASF83
	.byte	0xd
	.byte	0x2e
	.byte	0x3
	.4byte	0x43d
	.uleb128 0x1a
	.byte	0x8c
	.byte	0xe
	.byte	0x4
	.4byte	0x4a5
	.uleb128 0x7
	.4byte	.LASF84
	.byte	0xe
	.byte	0x5
	.byte	0x7
	.4byte	0x4a5
	.byte	0
	.uleb128 0x7
	.4byte	.LASF85
	.byte	0xe
	.byte	0x6
	.byte	0x6
	.4byte	0x22f
	.byte	0x80
	.uleb128 0x7
	.4byte	.LASF86
	.byte	0xe
	.byte	0x7
	.byte	0xa
	.4byte	0x4b5
	.byte	0x84
	.uleb128 0x7
	.4byte	.LASF87
	.byte	0xe
	.byte	0x8
	.byte	0xf
	.4byte	0x4ba
	.byte	0x88
	.byte	0
	.uleb128 0x21
	.4byte	0x14b
	.4byte	0x4b5
	.uleb128 0x22
	.4byte	0xcc
	.byte	0x7f
	.byte	0
	.uleb128 0x6
	.4byte	0x276
	.uleb128 0x6
	.4byte	0x16d
	.uleb128 0x12
	.4byte	0x4ba
	.uleb128 0x3
	.4byte	.LASF88
	.byte	0xe
	.byte	0x9
	.byte	0x2
	.4byte	0x468
	.uleb128 0x15
	.4byte	.LASF89
	.byte	0xe
	.byte	0x12
	.4byte	0xc7
	.2byte	0xbb80
	.uleb128 0x15
	.4byte	.LASF90
	.byte	0xf
	.byte	0x12
	.4byte	0xc7
	.2byte	0x1680
	.uleb128 0x33
	.4byte	.LASF91
	.byte	0x1
	.byte	0x10
	.byte	0x12
	.4byte	0xc7
	.byte	0x2
	.uleb128 0x34
	.4byte	.LASF92
	.byte	0x1
	.byte	0x11
	.byte	0x12
	.4byte	0xc7
	.sleb128 -1
	.uleb128 0x15
	.4byte	.LASF93
	.byte	0x12
	.byte	0x12
	.4byte	0xc7
	.2byte	0x8000
	.uleb128 0x15
	.4byte	.LASF94
	.byte	0x13
	.byte	0x15
	.4byte	0xdf
	.2byte	0x5a00
	.uleb128 0x21
	.4byte	0x2fe
	.4byte	0x52e
	.uleb128 0x22
	.4byte	0xcc
	.byte	0x2
	.byte	0
	.uleb128 0xd
	.4byte	.LASF95
	.byte	0x14
	.byte	0xd
	.4byte	0x51e
	.uleb128 0x5
	.byte	0x3
	.4byte	s_waveBufs0
	.uleb128 0xd
	.4byte	.LASF96
	.byte	0x15
	.byte	0xd
	.4byte	0x51e
	.uleb128 0x5
	.byte	0x3
	.4byte	s_waveBufs1
	.uleb128 0xd
	.4byte	.LASF97
	.byte	0x16
	.byte	0xa
	.4byte	0x561
	.uleb128 0x5
	.byte	0x3
	.4byte	s_audioBuffer0
	.uleb128 0x6
	.4byte	0x103
	.uleb128 0xd
	.4byte	.LASF98
	.byte	0x17
	.byte	0xa
	.4byte	0x561
	.uleb128 0x5
	.byte	0x3
	.4byte	s_audioBuffer1
	.uleb128 0xd
	.4byte	.LASF99
	.byte	0x18
	.byte	0xc
	.4byte	0x26a
	.uleb128 0x5
	.byte	0x3
	.4byte	s_event
	.uleb128 0xd
	.4byte	.LASF100
	.byte	0x18
	.byte	0x15
	.4byte	0x26a
	.uleb128 0x5
	.byte	0x3
	.4byte	s_event1
	.uleb128 0xd
	.4byte	.LASF101
	.byte	0x19
	.byte	0xe
	.4byte	0x236
	.uleb128 0x5
	.byte	0x3
	.4byte	s_quit0
	.uleb128 0xd
	.4byte	.LASF102
	.byte	0x19
	.byte	0x1f
	.4byte	0x236
	.uleb128 0x5
	.byte	0x3
	.4byte	s_quit1
	.uleb128 0x10
	.4byte	.LASF103
	.byte	0xb
	.byte	0x33
	.byte	0x8
	.4byte	0x276
	.4byte	0x5ea
	.uleb128 0x2
	.4byte	0x1e1
	.uleb128 0x2
	.4byte	0x2d
	.uleb128 0x2
	.4byte	0xd3
	.uleb128 0x2
	.4byte	0xc0
	.uleb128 0x2
	.4byte	0xc0
	.uleb128 0x2
	.4byte	0x22f
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF104
	.byte	0x9
	.2byte	0x35e
	.byte	0x8
	.4byte	0x1d5
	.4byte	0x606
	.uleb128 0x2
	.4byte	0x606
	.uleb128 0x2
	.4byte	0x1c9
	.byte	0
	.uleb128 0x6
	.4byte	0x1be
	.uleb128 0xb
	.4byte	.LASF106
	.byte	0xc
	.byte	0x96
	.4byte	0x621
	.uleb128 0x2
	.4byte	0x3e8
	.uleb128 0x2
	.4byte	0x2d
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF105
	.byte	0x7
	.2byte	0x444
	.byte	0x36
	.4byte	0x4ba
	.4byte	0x63d
	.uleb128 0x2
	.4byte	0x157
	.uleb128 0x2
	.4byte	0x15c
	.byte	0
	.uleb128 0x16
	.4byte	.LASF107
	.byte	0xa
	.2byte	0x113
	.4byte	0x654
	.uleb128 0x2
	.4byte	0x654
	.uleb128 0x2
	.4byte	0x223
	.byte	0
	.uleb128 0x6
	.4byte	0x26a
	.uleb128 0x16
	.4byte	.LASF108
	.byte	0x7
	.2byte	0x58b
	.4byte	0x66b
	.uleb128 0x2
	.4byte	0x4ba
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF109
	.4byte	0xc0
	.4byte	0x67a
	.uleb128 0x17
	.byte	0
	.uleb128 0xb
	.4byte	.LASF110
	.byte	0xb
	.byte	0x48
	.4byte	0x68b
	.uleb128 0x2
	.4byte	0x276
	.byte	0
	.uleb128 0x10
	.4byte	.LASF111
	.byte	0xb
	.byte	0x4f
	.byte	0x8
	.4byte	0x1d5
	.4byte	0x6a6
	.uleb128 0x2
	.4byte	0x276
	.uleb128 0x2
	.4byte	0x19e
	.byte	0
	.uleb128 0x16
	.4byte	.LASF112
	.byte	0xa
	.2byte	0x132
	.4byte	0x6b8
	.uleb128 0x2
	.4byte	0x654
	.byte	0
	.uleb128 0x10
	.4byte	.LASF113
	.byte	0xf
	.byte	0x4e
	.byte	0x8
	.4byte	0x1d5
	.4byte	0x6d3
	.uleb128 0x2
	.4byte	0x291
	.uleb128 0x2
	.4byte	0x193
	.byte	0
	.uleb128 0xb
	.4byte	.LASF114
	.byte	0xd
	.byte	0x9f
	.4byte	0x6e9
	.uleb128 0x2
	.4byte	0xc0
	.uleb128 0x2
	.4byte	0x3e3
	.byte	0
	.uleb128 0x10
	.4byte	.LASF115
	.byte	0x10
	.byte	0xc8
	.byte	0x5
	.4byte	0xc0
	.4byte	0x700
	.uleb128 0x2
	.4byte	0x157
	.uleb128 0x17
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF116
	.byte	0x7
	.2byte	0x829
	.byte	0x2d
	.4byte	0xc0
	.4byte	0x721
	.uleb128 0x2
	.4byte	0x4ba
	.uleb128 0x2
	.4byte	0x721
	.uleb128 0x2
	.4byte	0xc0
	.byte	0
	.uleb128 0x6
	.4byte	0x161
	.uleb128 0xb
	.4byte	.LASF117
	.byte	0x11
	.byte	0x29
	.4byte	0x737
	.uleb128 0x2
	.4byte	0x2d
	.byte	0
	.uleb128 0x10
	.4byte	.LASF118
	.byte	0x12
	.byte	0x21
	.byte	0x8
	.4byte	0x2d
	.4byte	0x757
	.uleb128 0x2
	.4byte	0x2d
	.uleb128 0x2
	.4byte	0xc0
	.uleb128 0x2
	.4byte	0xd3
	.byte	0
	.uleb128 0x10
	.4byte	.LASF119
	.byte	0x11
	.byte	0xc
	.byte	0x7
	.4byte	0x2d
	.4byte	0x76d
	.uleb128 0x2
	.4byte	0xd3
	.byte	0
	.uleb128 0xb
	.4byte	.LASF120
	.byte	0xd
	.byte	0x6c
	.4byte	0x783
	.uleb128 0x2
	.4byte	0xc0
	.uleb128 0x2
	.4byte	0x188
	.byte	0
	.uleb128 0xb
	.4byte	.LASF121
	.byte	0xd
	.byte	0x7a
	.4byte	0x799
	.uleb128 0x2
	.4byte	0xc0
	.uleb128 0x2
	.4byte	0x26
	.byte	0
	.uleb128 0xb
	.4byte	.LASF122
	.byte	0xd
	.byte	0x73
	.4byte	0x7af
	.uleb128 0x2
	.4byte	0xc0
	.uleb128 0x2
	.4byte	0x45c
	.byte	0
	.uleb128 0xb
	.4byte	.LASF123
	.byte	0xc
	.byte	0x7d
	.4byte	0x7c0
	.uleb128 0x2
	.4byte	0x2b6
	.byte	0
	.uleb128 0xb
	.4byte	.LASF124
	.byte	0xd
	.byte	0x38
	.4byte	0x7d1
	.uleb128 0x2
	.4byte	0xc0
	.byte	0
	.uleb128 0x16
	.4byte	.LASF125
	.byte	0xa
	.2byte	0x125
	.4byte	0x7e3
	.uleb128 0x2
	.4byte	0x654
	.byte	0
	.uleb128 0x18
	.4byte	.LASF129
	.byte	0xca
	.4byte	.LFB108
	.4byte	.LFE108-.LFB108
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa14
	.uleb128 0xc
	.4byte	.LASF131
	.byte	0xca
	.byte	0x16
	.4byte	0xa14
	.4byte	.LLST27
	.4byte	.LVUS27
	.uleb128 0x23
	.4byte	.LASF126
	.byte	0xe2
	.byte	0x6
	.4byte	0xc0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xa
	.4byte	.LASF87
	.byte	0xe3
	.byte	0xf
	.4byte	0x4ba
	.4byte	.LLST28
	.4byte	.LVUS28
	.uleb128 0x23
	.4byte	.LASF127
	.byte	0xf2
	.byte	0xa
	.4byte	0x11b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xa
	.4byte	.LASF128
	.byte	0xf7
	.byte	0x9
	.4byte	0x276
	.4byte	.LLST29
	.4byte	.LVUS29
	.uleb128 0xe
	.4byte	.LLRL30
	.4byte	0x90f
	.uleb128 0x1c
	.4byte	.LASF109
	.4byte	0xc0
	.4byte	0x864
	.uleb128 0x17
	.byte	0
	.uleb128 0x1d
	.4byte	0xe04
	.4byte	.LBI32
	.byte	.LVU242
	.4byte	.LBB32
	.4byte	.LBE32-.LBB32
	.byte	0xcd
	.byte	0x3
	.4byte	0x89a
	.uleb128 0x19
	.4byte	0xe0e
	.4byte	.LLST31
	.4byte	.LVUS31
	.uleb128 0x9
	.4byte	.LVL66
	.4byte	0x7d1
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x76
	.sleb128 16
	.byte	0
	.byte	0
	.uleb128 0x1d
	.4byte	0xc53
	.4byte	.LBI34
	.byte	.LVU261
	.4byte	.LBB34
	.4byte	.LBE34-.LBB34
	.byte	0xd6
	.byte	0x3
	.4byte	0x8dc
	.uleb128 0x19
	.4byte	0xc5d
	.4byte	.LLST32
	.4byte	.LVUS32
	.uleb128 0x5
	.4byte	.LVL71
	.4byte	0x7c0
	.4byte	0x8d2
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x11
	.4byte	.LVL72
	.4byte	0x726
	.byte	0
	.uleb128 0x11
	.4byte	.LVL67
	.4byte	0x68b
	.uleb128 0x11
	.4byte	.LVL68
	.4byte	0x67a
	.uleb128 0x5
	.4byte	.LVL69
	.4byte	0x66b
	.4byte	0x905
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC16
	.byte	0
	.uleb128 0x11
	.4byte	.LVL70
	.4byte	0x659
	.byte	0
	.uleb128 0x35
	.4byte	.LBB37
	.4byte	.LBE37-.LBB37
	.4byte	0x945
	.uleb128 0x1c
	.4byte	.LASF109
	.4byte	0xc0
	.4byte	0x92b
	.uleb128 0x17
	.byte	0
	.uleb128 0x9
	.4byte	.LVL87
	.4byte	0x66b
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC17
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x5
	.4byte	.LVL75
	.4byte	0x63d
	.4byte	0x961
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LANCHOR0+4
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x5
	.4byte	.LVL76
	.4byte	0x621
	.4byte	0x97b
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x11
	.4byte	.LVL79
	.4byte	0xc69
	.uleb128 0x5
	.4byte	.LVL80
	.4byte	0x5ea
	.4byte	0x99f
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0xb
	.2byte	0x8000
	.byte	0
	.uleb128 0x5
	.4byte	.LVL81
	.4byte	0x5bb
	.4byte	0x9c7
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0xa
	.2byte	0x8000
	.uleb128 0x1
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.uleb128 0x1
	.uleb128 0x2
	.byte	0x7d
	.sleb128 4
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x5
	.4byte	.LVL84
	.4byte	0x63d
	.4byte	0x9e3
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LANCHOR0+16
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x5
	.4byte	.LVL89
	.4byte	0x60b
	.4byte	0xa00
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	audioCallback
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x9
	.4byte	.LVL90
	.4byte	0xeeb
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC18
	.byte	0
	.byte	0
	.uleb128 0x6
	.4byte	0x4c4
	.uleb128 0x18
	.4byte	.LASF130
	.byte	0xb9
	.4byte	.LFB107
	.4byte	.LFE107-.LFB107
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa91
	.uleb128 0xc
	.4byte	.LASF132
	.byte	0xb9
	.byte	0x1f
	.4byte	0x2f
	.4byte	.LLST24
	.4byte	.LVUS24
	.uleb128 0xa
	.4byte	.LASF87
	.byte	0xba
	.byte	0x15
	.4byte	0x4bf
	.4byte	.LLST25
	.4byte	.LVUS25
	.uleb128 0xe
	.4byte	.LLRL26
	.4byte	0xa80
	.uleb128 0x24
	.ascii	"i\000"
	.byte	0xbd
	.4byte	0xd3
	.uleb128 0x9
	.4byte	.LVL62
	.4byte	0xb44
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x9
	.4byte	.LVL61
	.4byte	0x6a6
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	.LASF133
	.byte	0xaa
	.4byte	.LFB106
	.4byte	.LFE106-.LFB106
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb09
	.uleb128 0xc
	.4byte	.LASF132
	.byte	0xaa
	.byte	0x1f
	.4byte	0x2f
	.4byte	.LLST21
	.4byte	.LVUS21
	.uleb128 0xa
	.4byte	.LASF87
	.byte	0xab
	.byte	0x15
	.4byte	0x4bf
	.4byte	.LLST22
	.4byte	.LVUS22
	.uleb128 0xe
	.4byte	.LLRL23
	.4byte	0xaf8
	.uleb128 0x24
	.ascii	"i\000"
	.byte	0xae
	.4byte	0xd3
	.uleb128 0x9
	.4byte	.LVL57
	.4byte	0xb44
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x9
	.4byte	.LVL56
	.4byte	0x6a6
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	.LASF134
	.byte	0xa2
	.4byte	.LFB105
	.4byte	.LFE105-.LFB105
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb44
	.uleb128 0xc
	.4byte	.LASF135
	.byte	0xa2
	.byte	0x20
	.4byte	0x2f
	.4byte	.LLST0
	.4byte	.LVUS0
	.uleb128 0x1e
	.4byte	.LVL2
	.4byte	0x7d1
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LANCHOR0+4
	.byte	0
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF143
	.byte	0x8a
	.byte	0x5
	.4byte	0x22f
	.4byte	.LFB104
	.4byte	.LFE104-.LFB104
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc53
	.uleb128 0xc
	.4byte	.LASF136
	.byte	0x8a
	.byte	0x14
	.4byte	0xc0
	.4byte	.LLST13
	.4byte	.LVUS13
	.uleb128 0xc
	.4byte	.LASF132
	.byte	0x8a
	.byte	0x2b
	.4byte	0x4ba
	.4byte	.LLST14
	.4byte	.LVUS14
	.uleb128 0xc
	.4byte	.LASF137
	.byte	0x8a
	.byte	0x43
	.4byte	0x3e3
	.4byte	.LLST15
	.4byte	.LVUS15
	.uleb128 0xa
	.4byte	.LASF138
	.byte	0x8b
	.byte	0x6
	.4byte	0xc0
	.4byte	.LLST16
	.4byte	.LVUS16
	.uleb128 0xe
	.4byte	.LLRL17
	.4byte	0xc28
	.uleb128 0xa
	.4byte	.LASF139
	.byte	0x8d
	.byte	0xc
	.4byte	0x561
	.4byte	.LLST18
	.4byte	.LVUS18
	.uleb128 0xa
	.4byte	.LASF140
	.byte	0x8e
	.byte	0x10
	.4byte	0xdf
	.4byte	.LLST19
	.4byte	.LVUS19
	.uleb128 0xa
	.4byte	.LASF141
	.byte	0x8f
	.byte	0xd
	.4byte	0xc7
	.4byte	.LLST20
	.4byte	.LVUS20
	.uleb128 0x5
	.4byte	.LVL43
	.4byte	0x700
	.4byte	0xc0b
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x8
	.byte	0xa
	.2byte	0x1680
	.byte	0x74
	.sleb128 0
	.byte	0x1c
	.byte	0x31
	.byte	0x24
	.byte	0
	.uleb128 0x11
	.4byte	.LVL51
	.4byte	0xe1a
	.uleb128 0x9
	.4byte	.LVL52
	.4byte	0x6e9
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC15
	.byte	0
	.byte	0
	.uleb128 0x5
	.4byte	.LVL46
	.4byte	0x6d3
	.4byte	0xc42
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x9
	.4byte	.LVL47
	.4byte	0x6b8
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x25
	.4byte	.LASF142
	.byte	0x82
	.4byte	0xc69
	.uleb128 0x26
	.4byte	.LASF136
	.byte	0x82
	.byte	0x14
	.4byte	0xc0
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF144
	.byte	0x54
	.byte	0x5
	.4byte	0x22f
	.4byte	.LFB102
	.4byte	.LFE102-.LFB102
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe04
	.uleb128 0xc
	.4byte	.LASF136
	.byte	0x54
	.byte	0x13
	.4byte	0xc0
	.4byte	.LLST3
	.4byte	.LVUS3
	.uleb128 0x36
	.4byte	.LASF140
	.byte	0x1
	.byte	0x5a
	.byte	0xf
	.4byte	0xdf
	.4byte	0x10e00
	.uleb128 0xe
	.4byte	.LLRL4
	.4byte	0xcf9
	.uleb128 0xa
	.4byte	.LASF139
	.byte	0x6e
	.byte	0xc
	.4byte	0x561
	.4byte	.LLST5
	.4byte	.LVUS5
	.uleb128 0xe
	.4byte	.LLRL6
	.4byte	0xcdb
	.uleb128 0x27
	.ascii	"i\000"
	.byte	0x6f
	.4byte	0xd3
	.4byte	.LLST7
	.4byte	.LVUS7
	.byte	0
	.uleb128 0x9
	.4byte	.LVL22
	.4byte	0xef4
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x76
	.sleb128 108
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x8
	.byte	0x44
	.byte	0
	.byte	0
	.uleb128 0xe
	.4byte	.LLRL8
	.4byte	0xd4b
	.uleb128 0xa
	.4byte	.LASF139
	.byte	0x78
	.byte	0xc
	.4byte	0x561
	.4byte	.LLST9
	.4byte	.LVUS9
	.uleb128 0xe
	.4byte	.LLRL10
	.4byte	0xd2f
	.uleb128 0x27
	.ascii	"i\000"
	.byte	0x79
	.4byte	0xd3
	.4byte	.LLST11
	.4byte	.LVUS11
	.byte	0
	.uleb128 0x9
	.4byte	.LVL29
	.4byte	0xef4
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x76
	.sleb128 36
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x8
	.byte	0x44
	.byte	0
	.byte	0
	.uleb128 0x5
	.4byte	.LVL16
	.4byte	0x7c0
	.4byte	0xd5f
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x5
	.4byte	.LVL17
	.4byte	0x7af
	.4byte	0xd72
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x5
	.4byte	.LVL18
	.4byte	0x799
	.4byte	0xd8b
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x5
	.4byte	.LVL19
	.4byte	0x783
	.4byte	0xdab
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x40
	.uleb128 0x7
	.byte	0xa4
	.uleb128 0x26
	.byte	0x4
	.4byte	0x473b8000
	.byte	0
	.uleb128 0x5
	.4byte	.LVL20
	.4byte	0x76d
	.4byte	0xdc4
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x36
	.byte	0
	.uleb128 0x5
	.4byte	.LVL21
	.4byte	0x757
	.4byte	0xdda
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x4
	.byte	0x8
	.byte	0x87
	.byte	0x39
	.byte	0x24
	.byte	0
	.uleb128 0x5
	.4byte	.LVL28
	.4byte	0x757
	.4byte	0xdf0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x4
	.byte	0x8
	.byte	0x87
	.byte	0x39
	.byte	0x24
	.byte	0
	.uleb128 0x9
	.4byte	.LVL34
	.4byte	0xeeb
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC14
	.byte	0
	.byte	0
	.uleb128 0x25
	.4byte	.LASF145
	.byte	0x47
	.4byte	0xe1a
	.uleb128 0x26
	.4byte	.LASF136
	.byte	0x47
	.byte	0x11
	.4byte	0xc0
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF146
	.byte	0x1b
	.byte	0xd
	.4byte	0x157
	.4byte	.LFB100
	.4byte	.LFE100-.LFB100
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe47
	.uleb128 0xc
	.4byte	.LASF126
	.byte	0x1b
	.byte	0x1e
	.4byte	0xc0
	.4byte	.LLST1
	.4byte	.LVUS1
	.byte	0
	.uleb128 0x28
	.4byte	0xe04
	.4byte	.LFB101
	.4byte	.LFE101-.LFB101
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xead
	.uleb128 0x19
	.4byte	0xe0e
	.4byte	.LLST2
	.4byte	.LVUS2
	.uleb128 0x1d
	.4byte	0xe04
	.4byte	.LBI8
	.byte	.LVU45
	.4byte	.LBB8
	.4byte	.LBE8-.LBB8
	.byte	0x47
	.byte	0x6
	.4byte	0xe99
	.uleb128 0x37
	.4byte	0xe0e
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL14
	.4byte	0x7d1
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LANCHOR0+4
	.byte	0
	.byte	0
	.uleb128 0x1e
	.4byte	.LVL12
	.4byte	0x7d1
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LANCHOR0+16
	.byte	0
	.byte	0
	.uleb128 0x28
	.4byte	0xc53
	.4byte	.LFB103
	.4byte	.LFE103-.LFB103
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xeeb
	.uleb128 0x19
	.4byte	0xc5d
	.4byte	.LLST12
	.4byte	.LVUS12
	.uleb128 0x5
	.4byte	.LVL36
	.4byte	0x7c0
	.4byte	0xee1
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x38
	.4byte	.LVL38
	.4byte	0x726
	.byte	0
	.uleb128 0x29
	.4byte	.LASF147
	.4byte	.LASF148
	.uleb128 0x29
	.4byte	.LASF118
	.4byte	.LASF149
	.byte	0
	.section	.debug_abbrev,"",%progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x49
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x7e
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x48
	.byte	0x1
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x48
	.byte	0x1
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 6
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x48
	.byte	0
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3e
	.uleb128 0x21
	.sleb128 7
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 12
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 6
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 6
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7a
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 9
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x21
	.sleb128 208
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 3
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x2138
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x57
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x48
	.byte	0x1
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x82
	.uleb128 0x19
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7a
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 15
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 6
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x20
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 15
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7a
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 19
	.uleb128 0x3b
	.uleb128 0x21
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x30
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x31
	.uleb128 0xd
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x32
	.uleb128 0x17
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x33
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x34
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x35
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x36
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x37
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x38
	.uleb128 0x48
	.byte	0
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x82
	.uleb128 0x19
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loclists,"",%progbits
	.4byte	.Ldebug_loc3-.Ldebug_loc2
.Ldebug_loc2:
	.2byte	0x5
	.byte	0x4
	.byte	0
	.4byte	0
.Ldebug_loc0:
.LVUS27:
	.uleb128 0
	.uleb128 .LVU247
	.uleb128 .LVU247
	.uleb128 .LVU274
	.uleb128 .LVU274
	.uleb128 .LVU277
	.uleb128 .LVU277
	.uleb128 .LVU318
	.uleb128 .LVU318
	.uleb128 .LVU321
	.uleb128 .LVU321
	.uleb128 .LVU330
	.uleb128 .LVU330
	.uleb128 0
.LLST27:
	.byte	0x6
	.4byte	.LVL63
	.byte	0x4
	.uleb128 .LVL63-.LVL63
	.uleb128 .LVL65-.LVL63
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL65-.LVL63
	.uleb128 .LVL73-.LVL63
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL73-.LVL63
	.uleb128 .LVL74-.LVL63
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL74-.LVL63
	.uleb128 .LVL82-.LVL63
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL82-.LVL63
	.uleb128 .LVL83-.LVL63
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL83-.LVL63
	.uleb128 .LVL91-.LVL63
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL91-.LVL63
	.uleb128 .LFE108-.LVL63
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.byte	0
.LVUS28:
	.uleb128 .LVU286
	.uleb128 .LVU290
	.uleb128 .LVU290
	.uleb128 .LVU318
	.uleb128 .LVU322
	.uleb128 .LVU323
	.uleb128 .LVU323
	.uleb128 .LVU330
.LLST28:
	.byte	0x6
	.4byte	.LVL77
	.byte	0x4
	.uleb128 .LVL77-.LVL77
	.uleb128 .LVL78-.LVL77
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL78-.LVL77
	.uleb128 .LVL82-.LVL77
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL85-.LVL77
	.uleb128 .LVL86-.LVL77
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL86-.LVL77
	.uleb128 .LVL91-.LVL77
	.uleb128 0x1
	.byte	0x55
	.byte	0
.LVUS29:
	.uleb128 .LVU312
	.uleb128 .LVU318
.LLST29:
	.byte	0x8
	.4byte	.LVL81
	.uleb128 .LVL82-.LVL81
	.uleb128 0x1
	.byte	0x50
	.byte	0
.LVUS31:
	.uleb128 .LVU242
	.uleb128 .LVU250
.LLST31:
	.byte	0x8
	.4byte	.LVL64
	.uleb128 .LVL66-.LVL64
	.uleb128 0x2
	.byte	0x31
	.byte	0x9f
	.byte	0
.LVUS32:
	.uleb128 .LVU261
	.uleb128 .LVU264
.LLST32:
	.byte	0x8
	.4byte	.LVL70
	.uleb128 .LVL72-.LVL70
	.uleb128 0x2
	.byte	0x31
	.byte	0x9f
	.byte	0
.LVUS24:
	.uleb128 0
	.uleb128 .LVU219
	.uleb128 .LVU219
	.uleb128 0
.LLST24:
	.byte	0x6
	.4byte	.LVL58
	.byte	0x4
	.uleb128 .LVL58-.LVL58
	.uleb128 .LVL60-.LVL58
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL60-.LVL58
	.uleb128 .LFE107-.LVL58
	.uleb128 0x1
	.byte	0x57
	.byte	0
.LVUS25:
	.uleb128 .LVU216
	.uleb128 .LVU219
	.uleb128 .LVU219
	.uleb128 0
.LLST25:
	.byte	0x6
	.4byte	.LVL59
	.byte	0x4
	.uleb128 .LVL59-.LVL59
	.uleb128 .LVL60-.LVL59
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL60-.LVL59
	.uleb128 .LFE107-.LVL59
	.uleb128 0x1
	.byte	0x57
	.byte	0
.LVUS21:
	.uleb128 0
	.uleb128 .LVU202
	.uleb128 .LVU202
	.uleb128 0
.LLST21:
	.byte	0x6
	.4byte	.LVL53
	.byte	0x4
	.uleb128 .LVL53-.LVL53
	.uleb128 .LVL55-.LVL53
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL55-.LVL53
	.uleb128 .LFE106-.LVL53
	.uleb128 0x1
	.byte	0x57
	.byte	0
.LVUS22:
	.uleb128 .LVU199
	.uleb128 .LVU202
	.uleb128 .LVU202
	.uleb128 0
.LLST22:
	.byte	0x6
	.4byte	.LVL54
	.byte	0x4
	.uleb128 .LVL54-.LVL54
	.uleb128 .LVL55-.LVL54
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL55-.LVL54
	.uleb128 .LFE106-.LVL54
	.uleb128 0x1
	.byte	0x57
	.byte	0
.LVUS0:
	.uleb128 0
	.uleb128 .LVU4
	.uleb128 .LVU4
	.uleb128 0
.LLST0:
	.byte	0x6
	.4byte	.LVL0
	.byte	0x4
	.uleb128 .LVL0-.LVL0
	.uleb128 .LVL1-.LVL0
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL1-.LVL0
	.uleb128 .LFE105-.LVL0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.byte	0
.LVUS13:
	.uleb128 0
	.uleb128 .LVU162
	.uleb128 .LVU162
	.uleb128 0
.LLST13:
	.byte	0x6
	.4byte	.LVL39
	.byte	0x4
	.uleb128 .LVL39-.LVL39
	.uleb128 .LVL40-.LVL39
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL40-.LVL39
	.uleb128 .LFE104-.LVL39
	.uleb128 0x1
	.byte	0x57
	.byte	0
.LVUS14:
	.uleb128 0
	.uleb128 .LVU162
	.uleb128 .LVU162
	.uleb128 0
.LLST14:
	.byte	0x6
	.4byte	.LVL39
	.byte	0x4
	.uleb128 .LVL39-.LVL39
	.uleb128 .LVL40-.LVL39
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL40-.LVL39
	.uleb128 .LFE104-.LVL39
	.uleb128 0x1
	.byte	0x56
	.byte	0
.LVUS15:
	.uleb128 0
	.uleb128 .LVU162
	.uleb128 .LVU162
	.uleb128 0
.LLST15:
	.byte	0x6
	.4byte	.LVL39
	.byte	0x4
	.uleb128 .LVL39-.LVL39
	.uleb128 .LVL40-.LVL39
	.uleb128 0x1
	.byte	0x52
	.byte	0x4
	.uleb128 .LVL40-.LVL39
	.uleb128 .LFE104-.LVL39
	.uleb128 0x1
	.byte	0x58
	.byte	0
.LVUS16:
	.uleb128 .LVU157
	.uleb128 .LVU162
	.uleb128 .LVU162
	.uleb128 0
.LLST16:
	.byte	0x6
	.4byte	.LVL39
	.byte	0x4
	.uleb128 .LVL39-.LVL39
	.uleb128 .LVL40-.LVL39
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL40-.LVL39
	.uleb128 .LFE104-.LVL39
	.uleb128 0x1
	.byte	0x54
	.byte	0
.LVUS18:
	.uleb128 .LVU163
	.uleb128 .LVU168
	.uleb128 .LVU168
	.uleb128 .LVU170
.LLST18:
	.byte	0x6
	.4byte	.LVL40
	.byte	0x4
	.uleb128 .LVL40-.LVL40
	.uleb128 .LVL41-.LVL40
	.uleb128 0x9
	.byte	0x74
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x78
	.sleb128 0
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL41-.LVL40
	.uleb128 .LVL43-1-.LVL40
	.uleb128 0x1
	.byte	0x51
	.byte	0
.LVUS19:
	.uleb128 .LVU164
	.uleb128 .LVU169
	.uleb128 .LVU169
	.uleb128 .LVU170
	.uleb128 .LVU170
	.uleb128 .LVU176
	.uleb128 .LVU185
	.uleb128 0
.LLST19:
	.byte	0x6
	.4byte	.LVL40
	.byte	0x4
	.uleb128 .LVL40-.LVL40
	.uleb128 .LVL42-.LVL40
	.uleb128 0x9
	.byte	0xa
	.2byte	0x1680
	.byte	0x74
	.sleb128 0
	.byte	0x1c
	.byte	0x31
	.byte	0x24
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL42-.LVL40
	.uleb128 .LVL43-1-.LVL40
	.uleb128 0x1
	.byte	0x52
	.byte	0x4
	.uleb128 .LVL43-1-.LVL40
	.uleb128 .LVL44-.LVL40
	.uleb128 0x9
	.byte	0xa
	.2byte	0x1680
	.byte	0x74
	.sleb128 0
	.byte	0x1c
	.byte	0x31
	.byte	0x24
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL48-.LVL40
	.uleb128 .LFE104-.LVL40
	.uleb128 0x9
	.byte	0xa
	.2byte	0x1680
	.byte	0x74
	.sleb128 0
	.byte	0x1c
	.byte	0x31
	.byte	0x24
	.byte	0x9f
	.byte	0
.LVUS20:
	.uleb128 .LVU171
	.uleb128 .LVU178
	.uleb128 .LVU185
	.uleb128 .LVU187
	.uleb128 .LVU192
	.uleb128 .LVU193
	.uleb128 .LVU193
	.uleb128 .LVU194
.LLST20:
	.byte	0x6
	.4byte	.LVL43
	.byte	0x4
	.uleb128 .LVL43-.LVL43
	.uleb128 .LVL45-.LVL43
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL48-.LVL43
	.uleb128 .LVL49-.LVL43
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL50-.LVL43
	.uleb128 .LVL51-1-.LVL43
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL51-1-.LVL43
	.uleb128 .LVL52-1-.LVL43
	.uleb128 0x1
	.byte	0x51
	.byte	0
.LVUS3:
	.uleb128 0
	.uleb128 .LVU55
	.uleb128 .LVU55
	.uleb128 0
.LLST3:
	.byte	0x6
	.4byte	.LVL15
	.byte	0x4
	.uleb128 .LVL15-.LVL15
	.uleb128 .LVL16-1-.LVL15
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL16-1-.LVL15
	.uleb128 .LFE102-.LVL15
	.uleb128 0x1
	.byte	0x54
	.byte	0
.LVUS5:
	.uleb128 .LVU76
	.uleb128 .LVU85
	.uleb128 .LVU85
	.uleb128 .LVU90
	.uleb128 .LVU90
	.uleb128 .LVU96
	.uleb128 .LVU96
	.uleb128 .LVU102
	.uleb128 .LVU102
	.uleb128 .LVU106
.LLST5:
	.byte	0x6
	.4byte	.LVL22
	.byte	0x4
	.uleb128 .LVL22-.LVL22
	.uleb128 .LVL23-.LVL22
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL23-.LVL22
	.uleb128 .LVL24-.LVL22
	.uleb128 0x5
	.byte	0x3
	.4byte	s_waveBufs0
	.byte	0x4
	.uleb128 .LVL24-.LVL22
	.uleb128 .LVL25-.LVL22
	.uleb128 0xb
	.byte	0x3
	.4byte	s_waveBufs0
	.byte	0x6
	.byte	0x23
	.uleb128 0x5a00
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL25-.LVL22
	.uleb128 .LVL26-.LVL22
	.uleb128 0xb
	.byte	0x3
	.4byte	s_waveBufs0
	.byte	0x6
	.byte	0x23
	.uleb128 0xb400
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL26-.LVL22
	.uleb128 .LVL27-.LVL22
	.uleb128 0xb
	.byte	0x3
	.4byte	s_waveBufs0
	.byte	0x6
	.byte	0x23
	.uleb128 0x10e00
	.byte	0x9f
	.byte	0
.LVUS7:
	.uleb128 .LVU78
	.uleb128 .LVU91
	.uleb128 .LVU91
	.uleb128 .LVU97
	.uleb128 .LVU97
	.uleb128 .LVU103
	.uleb128 .LVU103
	.uleb128 .LVU106
.LLST7:
	.byte	0x6
	.4byte	.LVL22
	.byte	0x4
	.uleb128 .LVL22-.LVL22
	.uleb128 .LVL24-.LVL22
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL24-.LVL22
	.uleb128 .LVL25-.LVL22
	.uleb128 0x2
	.byte	0x31
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL25-.LVL22
	.uleb128 .LVL26-.LVL22
	.uleb128 0x2
	.byte	0x32
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL26-.LVL22
	.uleb128 .LVL27-.LVL22
	.uleb128 0x2
	.byte	0x33
	.byte	0x9f
	.byte	0
.LVUS9:
	.uleb128 .LVU116
	.uleb128 .LVU129
	.uleb128 .LVU129
	.uleb128 .LVU135
	.uleb128 .LVU135
	.uleb128 .LVU141
	.uleb128 .LVU141
	.uleb128 .LVU143
.LLST9:
	.byte	0x6
	.4byte	.LVL29
	.byte	0x4
	.uleb128 .LVL29-.LVL29
	.uleb128 .LVL30-.LVL29
	.uleb128 0x5
	.byte	0x3
	.4byte	s_audioBuffer1
	.byte	0x4
	.uleb128 .LVL30-.LVL29
	.uleb128 .LVL31-.LVL29
	.uleb128 0xb
	.byte	0x3
	.4byte	s_waveBufs1
	.byte	0x6
	.byte	0x23
	.uleb128 0x5a00
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL31-.LVL29
	.uleb128 .LVL32-.LVL29
	.uleb128 0xb
	.byte	0x3
	.4byte	s_waveBufs1
	.byte	0x6
	.byte	0x23
	.uleb128 0xb400
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL32-.LVL29
	.uleb128 .LVL33-.LVL29
	.uleb128 0xb
	.byte	0x3
	.4byte	s_waveBufs1
	.byte	0x6
	.byte	0x23
	.uleb128 0x10e00
	.byte	0x9f
	.byte	0
.LVUS11:
	.uleb128 .LVU118
	.uleb128 .LVU130
	.uleb128 .LVU130
	.uleb128 .LVU136
	.uleb128 .LVU136
	.uleb128 .LVU142
	.uleb128 .LVU142
	.uleb128 .LVU143
.LLST11:
	.byte	0x6
	.4byte	.LVL29
	.byte	0x4
	.uleb128 .LVL29-.LVL29
	.uleb128 .LVL30-.LVL29
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL30-.LVL29
	.uleb128 .LVL31-.LVL29
	.uleb128 0x2
	.byte	0x31
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL31-.LVL29
	.uleb128 .LVL32-.LVL29
	.uleb128 0x2
	.byte	0x32
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL32-.LVL29
	.uleb128 .LVL33-.LVL29
	.uleb128 0x2
	.byte	0x33
	.byte	0x9f
	.byte	0
.LVUS1:
	.uleb128 0
	.uleb128 .LVU9
	.uleb128 .LVU9
	.uleb128 .LVU10
	.uleb128 .LVU10
	.uleb128 .LVU12
	.uleb128 .LVU12
	.uleb128 .LVU15
	.uleb128 .LVU15
	.uleb128 .LVU17
	.uleb128 .LVU17
	.uleb128 .LVU18
	.uleb128 .LVU18
	.uleb128 0
.LLST1:
	.byte	0x6
	.4byte	.LVL3
	.byte	0x4
	.uleb128 .LVL3-.LVL3
	.uleb128 .LVL4-.LVL3
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL4-.LVL3
	.uleb128 .LVL5-.LVL3
	.uleb128 0x4
	.byte	0x70
	.sleb128 -139
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL5-.LVL3
	.uleb128 .LVL6-.LVL3
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL6-.LVL3
	.uleb128 .LVL7-.LVL3
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL7-.LVL3
	.uleb128 .LVL8-.LVL3
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL8-.LVL3
	.uleb128 .LVL9-.LVL3
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL9-.LVL3
	.uleb128 .LFE100-.LVL3
	.uleb128 0x4
	.byte	0x70
	.sleb128 -139
	.byte	0x9f
	.byte	0
.LVUS2:
	.uleb128 0
	.uleb128 .LVU43
	.uleb128 .LVU43
	.uleb128 .LVU45
	.uleb128 .LVU45
	.uleb128 .LVU45
	.uleb128 .LVU45
	.uleb128 .LVU48
	.uleb128 .LVU48
	.uleb128 0
.LLST2:
	.byte	0x6
	.4byte	.LVL10
	.byte	0x4
	.uleb128 .LVL10-.LVL10
	.uleb128 .LVL11-.LVL10
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL11-.LVL10
	.uleb128 .LVL12-1-.LVL10
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL12-1-.LVL10
	.uleb128 .LVL12-.LVL10
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL12-.LVL10
	.uleb128 .LVL13-.LVL10
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL13-.LVL10
	.uleb128 .LFE101-.LVL10
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.byte	0
.LVUS12:
	.uleb128 0
	.uleb128 .LVU152
	.uleb128 .LVU152
	.uleb128 .LVU154
	.uleb128 .LVU154
	.uleb128 0
.LLST12:
	.byte	0x6
	.4byte	.LVL35
	.byte	0x4
	.uleb128 .LVL35-.LVL35
	.uleb128 .LVL36-1-.LVL35
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL36-1-.LVL35
	.uleb128 .LVL37-.LVL35
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL37-.LVL35
	.uleb128 .LFE103-.LVL35
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.byte	0
.Ldebug_loc3:
	.section	.debug_aranges,"",%progbits
	.4byte	0x5c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB105
	.4byte	.LFE105-.LFB105
	.4byte	.LFB100
	.4byte	.LFE100-.LFB100
	.4byte	.LFB101
	.4byte	.LFE101-.LFB101
	.4byte	.LFB102
	.4byte	.LFE102-.LFB102
	.4byte	.LFB103
	.4byte	.LFE103-.LFB103
	.4byte	.LFB104
	.4byte	.LFE104-.LFB104
	.4byte	.LFB106
	.4byte	.LFE106-.LFB106
	.4byte	.LFB107
	.4byte	.LFE107-.LFB107
	.4byte	.LFB108
	.4byte	.LFE108-.LFB108
	.4byte	0
	.4byte	0
	.section	.debug_rnglists,"",%progbits
.Ldebug_ranges0:
	.4byte	.Ldebug_ranges3-.Ldebug_ranges2
.Ldebug_ranges2:
	.2byte	0x5
	.byte	0x4
	.byte	0
	.4byte	0
.LLRL4:
	.byte	0x5
	.4byte	.LBB10
	.byte	0x4
	.uleb128 .LBB10-.LBB10
	.uleb128 .LBE10-.LBB10
	.byte	0x4
	.uleb128 .LBB13-.LBB10
	.uleb128 .LBE13-.LBB10
	.byte	0
.LLRL6:
	.byte	0x5
	.4byte	.LBB11
	.byte	0x4
	.uleb128 .LBB11-.LBB11
	.uleb128 .LBE11-.LBB11
	.byte	0x4
	.uleb128 .LBB12-.LBB11
	.uleb128 .LBE12-.LBB11
	.byte	0
.LLRL8:
	.byte	0x5
	.4byte	.LBB14
	.byte	0x4
	.uleb128 .LBB14-.LBB14
	.uleb128 .LBE14-.LBB14
	.byte	0x4
	.uleb128 .LBB17-.LBB14
	.uleb128 .LBE17-.LBB14
	.byte	0
.LLRL10:
	.byte	0x5
	.4byte	.LBB15
	.byte	0x4
	.uleb128 .LBB15-.LBB15
	.uleb128 .LBE15-.LBB15
	.byte	0x4
	.uleb128 .LBB16-.LBB15
	.uleb128 .LBE16-.LBB15
	.byte	0
.LLRL17:
	.byte	0x5
	.4byte	.LBB18
	.byte	0x4
	.uleb128 .LBB18-.LBB18
	.uleb128 .LBE18-.LBB18
	.byte	0x4
	.uleb128 .LBB19-.LBB18
	.uleb128 .LBE19-.LBB18
	.byte	0x4
	.uleb128 .LBB20-.LBB18
	.uleb128 .LBE20-.LBB18
	.byte	0
.LLRL23:
	.byte	0x5
	.4byte	.LBB21
	.byte	0x4
	.uleb128 .LBB21-.LBB21
	.uleb128 .LBE21-.LBB21
	.byte	0x4
	.uleb128 .LBB22-.LBB21
	.uleb128 .LBE22-.LBB21
	.byte	0
.LLRL26:
	.byte	0x5
	.4byte	.LBB23
	.byte	0x4
	.uleb128 .LBB23-.LBB23
	.uleb128 .LBE23-.LBB23
	.byte	0x4
	.uleb128 .LBB24-.LBB23
	.uleb128 .LBE24-.LBB23
	.byte	0
.LLRL30:
	.byte	0x5
	.4byte	.LBB31
	.byte	0x4
	.uleb128 .LBB31-.LBB31
	.uleb128 .LBE31-.LBB31
	.byte	0x4
	.uleb128 .LBB36-.LBB31
	.uleb128 .LBE36-.LBB31
	.byte	0
.LLRL33:
	.byte	0x7
	.4byte	.LFB105
	.uleb128 .LFE105-.LFB105
	.byte	0x7
	.4byte	.LFB100
	.uleb128 .LFE100-.LFB100
	.byte	0x7
	.4byte	.LFB101
	.uleb128 .LFE101-.LFB101
	.byte	0x7
	.4byte	.LFB102
	.uleb128 .LFE102-.LFB102
	.byte	0x7
	.4byte	.LFB103
	.uleb128 .LFE103-.LFB103
	.byte	0x7
	.4byte	.LFB104
	.uleb128 .LFE104-.LFB104
	.byte	0x7
	.4byte	.LFB106
	.uleb128 .LFE106-.LFB106
	.byte	0x7
	.4byte	.LFB107
	.uleb128 .LFE107-.LFB107
	.byte	0x7
	.4byte	.LFB108
	.uleb128 .LFE108-.LFB108
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF115:
	.ascii	"printf\000"
.LASF113:
	.ascii	"DSP_FlushDataCache\000"
.LASF30:
	.ascii	"Handle\000"
.LASF75:
	.ascii	"NDSP_FORMAT_PCM8\000"
.LASF150:
	.ascii	"GNU C17 11.2.0 -mword-relocations -mtune=mpcore -mf"
	.ascii	"loat-abi=hard -mtp=soft -marm -march=armv6k -g -O2 "
	.ascii	"-ffunction-sections -fomit-frame-pointer\000"
.LASF17:
	.ascii	"size_t\000"
.LASF25:
	.ascii	"uint64_t\000"
.LASF1:
	.ascii	"signed char\000"
.LASF3:
	.ascii	"__uint8_t\000"
.LASF31:
	.ascii	"Result\000"
.LASF65:
	.ascii	"data_pcm8\000"
.LASF76:
	.ascii	"NDSP_FORMAT_PCM16\000"
.LASF109:
	.ascii	"DebugUI_Log\000"
.LASF84:
	.ascii	"path\000"
.LASF104:
	.ascii	"svcGetThreadPriority\000"
.LASF122:
	.ascii	"ndspChnSetInterp\000"
.LASF149:
	.ascii	"__builtin_memset\000"
.LASF15:
	.ascii	"long long unsigned int\000"
.LASF97:
	.ascii	"s_audioBuffer0\000"
.LASF54:
	.ascii	"nsamples\000"
.LASF67:
	.ascii	"data_adpcm\000"
.LASF96:
	.ascii	"s_waveBufs1\000"
.LASF110:
	.ascii	"threadFree\000"
.LASF60:
	.ascii	"next\000"
.LASF21:
	.ascii	"int16_t\000"
.LASF142:
	.ascii	"audioExit\000"
.LASF13:
	.ascii	"long long int\000"
.LASF138:
	.ascii	"totalSamples\000"
.LASF114:
	.ascii	"ndspChnWaveBufAdd\000"
.LASF92:
	.ascii	"THREAD_AFFINITY\000"
.LASF28:
	.ascii	"opus_int16\000"
.LASF70:
	.ascii	"NDSP_FORMAT_MONO_PCM8\000"
.LASF40:
	.ascii	"state\000"
.LASF10:
	.ascii	"long int\000"
.LASF112:
	.ascii	"LightEvent_Wait\000"
.LASF50:
	.ascii	"history0\000"
.LASF148:
	.ascii	"__builtin_puts\000"
.LASF94:
	.ascii	"WAVEBUF_SIZE\000"
.LASF53:
	.ascii	"ndspWaveBuf\000"
.LASF48:
	.ascii	"ndspOutputMode\000"
.LASF6:
	.ascii	"short int\000"
.LASF37:
	.ascii	"ResetType\000"
.LASF22:
	.ascii	"uint16_t\000"
.LASF33:
	.ascii	"double\000"
.LASF52:
	.ascii	"ndspAdpcmData\000"
.LASF72:
	.ascii	"NDSP_FORMAT_MONO_ADPCM\000"
.LASF34:
	.ascii	"RESET_ONESHOT\000"
.LASF61:
	.ascii	"NDSP_WBUF_FREE\000"
.LASF11:
	.ascii	"__uint32_t\000"
.LASF137:
	.ascii	"waveBuf_\000"
.LASF133:
	.ascii	"audioThread0\000"
.LASF130:
	.ascii	"audioThread1\000"
.LASF56:
	.ascii	"offset\000"
.LASF5:
	.ascii	"__int16_t\000"
.LASF101:
	.ascii	"s_quit0\000"
.LASF102:
	.ascii	"s_quit1\000"
.LASF86:
	.ascii	"threaid\000"
.LASF45:
	.ascii	"NDSP_OUTPUT_MONO\000"
.LASF29:
	.ascii	"OggOpusFile\000"
.LASF32:
	.ascii	"ThreadFunc\000"
.LASF16:
	.ascii	"unsigned int\000"
.LASF117:
	.ascii	"linearFree\000"
.LASF87:
	.ascii	"opusFile\000"
.LASF131:
	.ascii	"sound\000"
.LASF78:
	.ascii	"NDSP_FRONT_BYPASS\000"
.LASF12:
	.ascii	"long unsigned int\000"
.LASF63:
	.ascii	"NDSP_WBUF_PLAYING\000"
.LASF8:
	.ascii	"short unsigned int\000"
.LASF77:
	.ascii	"NDSP_FORMAT_ADPCM\000"
.LASF51:
	.ascii	"history1\000"
.LASF26:
	.ascii	"_LOCK_T\000"
.LASF127:
	.ascii	"priority\000"
.LASF124:
	.ascii	"ndspChnReset\000"
.LASF100:
	.ascii	"s_event1\000"
.LASF132:
	.ascii	"opusFile_\000"
.LASF121:
	.ascii	"ndspChnSetRate\000"
.LASF9:
	.ascii	"__int32_t\000"
.LASF146:
	.ascii	"opusStrError\000"
.LASF144:
	.ascii	"audioInit\000"
.LASF145:
	.ascii	"DoQuit\000"
.LASF147:
	.ascii	"puts\000"
.LASF141:
	.ascii	"samples\000"
.LASF46:
	.ascii	"NDSP_OUTPUT_STEREO\000"
.LASF66:
	.ascii	"data_pcm16\000"
.LASF18:
	.ascii	"long double\000"
.LASF79:
	.ascii	"NDSP_3D_SURROUND_PREPROCESSED\000"
.LASF134:
	.ascii	"audioCallback\000"
.LASF123:
	.ascii	"ndspSetOutputMode\000"
.LASF136:
	.ascii	"_channel\000"
.LASF82:
	.ascii	"NDSP_INTERP_NONE\000"
.LASF105:
	.ascii	"op_open_file\000"
.LASF143:
	.ascii	"fillBuffer\000"
.LASF89:
	.ascii	"SAMPLE_RATE\000"
.LASF14:
	.ascii	"__uint64_t\000"
.LASF120:
	.ascii	"ndspChnSetFormat\000"
.LASF42:
	.ascii	"LightEvent\000"
.LASF0:
	.ascii	"float\000"
.LASF95:
	.ascii	"s_waveBufs0\000"
.LASF126:
	.ascii	"error\000"
.LASF39:
	.ascii	"LightLock\000"
.LASF135:
	.ascii	"nul_\000"
.LASF91:
	.ascii	"CHANNELS_PER_SAMPLE\000"
.LASF153:
	.ascii	"tag_ndspWaveBuf\000"
.LASF81:
	.ascii	"NDSP_INTERP_LINEAR\000"
.LASF38:
	.ascii	"_Bool\000"
.LASF23:
	.ascii	"int32_t\000"
.LASF4:
	.ascii	"unsigned char\000"
.LASF106:
	.ascii	"ndspSetCallback\000"
.LASF108:
	.ascii	"op_free\000"
.LASF69:
	.ascii	"ndspCallback\000"
.LASF55:
	.ascii	"adpcm_data\000"
.LASF64:
	.ascii	"NDSP_WBUF_DONE\000"
.LASF2:
	.ascii	"__int8_t\000"
.LASF99:
	.ascii	"s_event\000"
.LASF43:
	.ascii	"Thread\000"
.LASF83:
	.ascii	"ndspInterpType\000"
.LASF24:
	.ascii	"uint32_t\000"
.LASF116:
	.ascii	"op_read_stereo\000"
.LASF27:
	.ascii	"char\000"
.LASF57:
	.ascii	"looping\000"
.LASF140:
	.ascii	"bufferSize\000"
.LASF7:
	.ascii	"__uint16_t\000"
.LASF49:
	.ascii	"index\000"
.LASF59:
	.ascii	"sequence_id\000"
.LASF139:
	.ascii	"buffer\000"
.LASF103:
	.ascii	"threadCreate\000"
.LASF98:
	.ascii	"s_audioBuffer1\000"
.LASF73:
	.ascii	"NDSP_FORMAT_STEREO_PCM8\000"
.LASF35:
	.ascii	"RESET_STICKY\000"
.LASF125:
	.ascii	"LightEvent_Signal\000"
.LASF19:
	.ascii	"int8_t\000"
.LASF111:
	.ascii	"threadJoin\000"
.LASF80:
	.ascii	"NDSP_INTERP_POLYPHASE\000"
.LASF128:
	.ascii	"threadId\000"
.LASF151:
	.ascii	"/home/tobi/Dokumente/Craftus-Next/source/misc/Sound"
	.ascii	".c\000"
.LASF119:
	.ascii	"linearAlloc\000"
.LASF118:
	.ascii	"memset\000"
.LASF74:
	.ascii	"NDSP_FORMAT_STEREO_PCM16\000"
.LASF58:
	.ascii	"status\000"
.LASF36:
	.ascii	"RESET_PULSE\000"
.LASF20:
	.ascii	"uint8_t\000"
.LASF107:
	.ascii	"LightEvent_Init\000"
.LASF71:
	.ascii	"NDSP_FORMAT_MONO_PCM16\000"
.LASF88:
	.ascii	"Sound\000"
.LASF93:
	.ascii	"THREAD_STACK_SZ\000"
.LASF152:
	.ascii	"/home/tobi/Dokumente/Craftus-Next/build\000"
.LASF129:
	.ascii	"playopus\000"
.LASF47:
	.ascii	"NDSP_OUTPUT_SURROUND\000"
.LASF68:
	.ascii	"data_vaddr\000"
.LASF44:
	.ascii	"Thread_tag\000"
.LASF41:
	.ascii	"lock\000"
.LASF90:
	.ascii	"SAMPLES_PER_BUF\000"
.LASF85:
	.ascii	"background\000"
.LASF62:
	.ascii	"NDSP_WBUF_QUEUED\000"
	.ident	"GCC: (devkitARM release 57) 11.2.0"
