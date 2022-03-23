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
	.file	"Gui.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.Gui_Init,"ax",%progbits
	.align	2
	.global	Gui_Init
	.syntax unified
	.arm
	.fpu vfp
	.type	Gui_Init, %function
Gui_Init:
.LFB206:
	.file 1 "/home/tobi/Dokumente/Craftus-Next/source/gui/Gui.c"
	.loc 1 23 17 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 24 2 view .LVU1
	mov	r3, #0
	.loc 1 27 11 is_stmt 0 view .LVU2
	mov	ip, #2
	.loc 1 28 11 view .LVU3
	mov	r0, #3
	.loc 1 24 2 view .LVU4
	ldr	r2, .L3
	str	r3, [r2]
	str	r3, [r2, #4]
	str	r3, [r2, #8]
	str	r3, [r2, #12]
	str	r3, [r2, #16]
	str	r3, [r2, #20]
	.loc 1 25 2 is_stmt 1 view .LVU5
	str	r3, [r2, #24]
	.loc 1 27 11 is_stmt 0 view .LVU6
	str	ip, [r2, #48]
	.loc 1 28 11 view .LVU7
	str	r0, [r2, #52]
	.loc 1 25 2 view .LVU8
	str	r3, [r2, #28]
	str	r3, [r2, #32]
	str	r3, [r2, #36]
	str	r3, [r2, #40]
	str	r3, [r2, #44]
	.loc 1 27 2 is_stmt 1 view .LVU9
	.loc 1 28 2 view .LVU10
	.loc 1 29 1 is_stmt 0 view .LVU11
	bx	lr
.L4:
	.align	2
.L3:
	.word	.LANCHOR0
	.cfi_endproc
.LFE206:
	.size	Gui_Init, .-Gui_Init
	.section	.text.Gui_Deinit,"ax",%progbits
	.align	2
	.global	Gui_Deinit
	.syntax unified
	.arm
	.fpu vfp
	.type	Gui_Deinit, %function
Gui_Deinit:
.LFB208:
	.loc 1 33 19 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 33 20 view .LVU13
	bx	lr
	.cfi_endproc
.LFE208:
	.size	Gui_Deinit, .-Gui_Deinit
	.section	.text.Gui_Frame,"ax",%progbits
	.align	2
	.global	Gui_Frame
	.syntax unified
	.arm
	.fpu vfp
	.type	Gui_Frame, %function
Gui_Frame:
.LFB209:
	.loc 1 35 18 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 36 2 view .LVU15
	.loc 1 36 12 is_stmt 0 view .LVU16
	mov	r2, #0
	ldr	r3, .L7
	str	r2, [r3, #56]
	.loc 1 37 2 is_stmt 1 view .LVU17
	.loc 1 37 12 is_stmt 0 view .LVU18
	str	r2, [r3, #60]
	.loc 1 38 2 is_stmt 1 view .LVU19
	.loc 1 38 10 is_stmt 0 view .LVU20
	str	r2, [r3, #64]
	.loc 1 39 2 is_stmt 1 view .LVU21
	.loc 1 39 10 is_stmt 0 view .LVU22
	str	r2, [r3, #68]
	.loc 1 40 1 view .LVU23
	bx	lr
.L8:
	.align	2
.L7:
	.word	.LANCHOR0
	.cfi_endproc
.LFE209:
	.size	Gui_Frame, .-Gui_Frame
	.section	.text.Gui_Offset,"ax",%progbits
	.align	2
	.global	Gui_Offset
	.syntax unified
	.arm
	.fpu vfp
	.type	Gui_Offset, %function
Gui_Offset:
.LVL0:
.LFB210:
	.loc 1 42 31 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 43 2 view .LVU25
	.loc 1 43 10 is_stmt 0 view .LVU26
	ldr	r3, .L10
	.loc 1 44 10 view .LVU27
	strd	r0, [r3, #64]
	.loc 1 45 1 view .LVU28
	bx	lr
.L11:
	.align	2
.L10:
	.word	.LANCHOR0
	.cfi_endproc
.LFE210:
	.size	Gui_Offset, .-Gui_Offset
	.section	.text.Gui_RelativeWidth,"ax",%progbits
	.align	2
	.global	Gui_RelativeWidth
	.syntax unified
	.arm
	.fpu vfp
	.type	Gui_RelativeWidth, %function
Gui_RelativeWidth:
.LVL1:
.LFB211:
	.loc 1 47 32 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 47 34 view .LVU30
	.loc 1 47 32 is_stmt 0 view .LVU31
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	vpush.64	{d8}
	.cfi_def_cfa_offset 16
	.cfi_offset 80, -16
	.cfi_offset 81, -12
	.loc 1 47 32 view .LVU32
	vmov.f32	s16, s0
	.loc 1 47 41 view .LVU33
	bl	SpriteBatch_GetWidth
.LVL2:
	.loc 1 47 64 view .LVU34
	vmov	s15, r0	@ int
	vcvt.f32.s32	s15, s15
	vmul.f32	s0, s15, s16
	.loc 1 47 69 view .LVU35
	vldm	sp!, {d8}
	.cfi_restore 80
	.cfi_restore 81
	.cfi_def_cfa_offset 8
.LVL3:
	.loc 1 47 69 view .LVU36
	vcvt.s32.f32	s15, s0
	vmov	r0, s15	@ int
	pop	{r4, pc}
	.cfi_endproc
.LFE211:
	.size	Gui_RelativeWidth, .-Gui_RelativeWidth
	.section	.text.Gui_RelativeHeight,"ax",%progbits
	.align	2
	.global	Gui_RelativeHeight
	.syntax unified
	.arm
	.fpu vfp
	.type	Gui_RelativeHeight, %function
Gui_RelativeHeight:
.LVL4:
.LFB212:
	.loc 1 48 33 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 48 35 view .LVU38
	.loc 1 48 33 is_stmt 0 view .LVU39
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	vpush.64	{d8}
	.cfi_def_cfa_offset 16
	.cfi_offset 80, -16
	.cfi_offset 81, -12
	.loc 1 48 33 view .LVU40
	vmov.f32	s16, s0
	.loc 1 48 42 view .LVU41
	bl	SpriteBatch_GetHeight
.LVL5:
	.loc 1 48 66 view .LVU42
	vmov	s15, r0	@ int
	vcvt.f32.s32	s15, s15
	vmul.f32	s0, s15, s16
	.loc 1 48 71 view .LVU43
	vldm	sp!, {d8}
	.cfi_restore 80
	.cfi_restore 81
	.cfi_def_cfa_offset 8
.LVL6:
	.loc 1 48 71 view .LVU44
	vcvt.s32.f32	s15, s0
	vmov	r0, s15	@ int
	pop	{r4, pc}
	.cfi_endproc
.LFE212:
	.size	Gui_RelativeHeight, .-Gui_RelativeHeight
	.section	.text.Gui_BeginRowCenter,"ax",%progbits
	.align	2
	.global	Gui_BeginRowCenter
	.syntax unified
	.arm
	.fpu vfp
	.type	Gui_BeginRowCenter, %function
Gui_BeginRowCenter:
.LVL7:
.LFB213:
	.loc 1 50 47 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 51 2 view .LVU46
	.loc 1 50 47 is_stmt 0 view .LVU47
	push	{r4, r5, r6, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
	.loc 1 50 47 view .LVU48
	mov	r5, r1
	mov	r4, r0
	.loc 1 51 12 view .LVU49
	bl	SpriteBatch_GetWidth
.LVL8:
.LBB11:
.LBB12:
	.loc 1 56 13 view .LVU50
	mov	ip, #0
.LBE12:
.LBE11:
	.loc 1 51 10 view .LVU51
	ldr	r3, .L18
	.loc 1 51 47 view .LVU52
	add	r1, r4, r4, lsr #31
.LBB18:
.LBB13:
	.loc 1 56 48 view .LVU53
	ldr	r2, [r3, #48]
.LBE13:
.LBE18:
	.loc 1 51 47 view .LVU54
	asr	r1, r1, #1
.LBB19:
.LBB14:
	.loc 1 56 63 view .LVU55
	mul	r5, r2, r5
.LVL9:
	.loc 1 57 12 view .LVU56
	str	r2, [r3, #56]
.LBE14:
.LBE19:
	.loc 1 51 35 view .LVU57
	add	r0, r0, r0, lsr #31
.LBB20:
.LBB15:
	.loc 1 56 37 view .LVU58
	sub	r2, r4, r2, lsl #1
.LBE15:
.LBE20:
	.loc 1 51 39 view .LVU59
	rsb	r1, r1, r0, asr #1
.LBB21:
.LBB16:
	.loc 1 56 52 view .LVU60
	sub	r2, r2, r5
.LBE16:
.LBE21:
	.loc 1 51 10 view .LVU61
	str	r1, [r3, #64]
	.loc 1 52 2 is_stmt 1 view .LVU62
.LVL10:
.LBB22:
.LBI11:
	.loc 1 55 6 view .LVU63
.LBB17:
	.loc 1 56 2 view .LVU64
	.loc 1 56 13 is_stmt 0 view .LVU65
	str	r4, [r3, #72]
	str	ip, [r3, #76]
	str	r2, [r3, #80]
	.loc 1 57 2 is_stmt 1 view .LVU66
	.loc 1 58 2 view .LVU67
	.loc 1 58 12 is_stmt 0 view .LVU68
	str	ip, [r3, #60]
.LVL11:
	.loc 1 58 12 view .LVU69
.LBE17:
.LBE22:
	.loc 1 53 1 view .LVU70
	pop	{r4, r5, r6, pc}
.L19:
	.align	2
.L18:
	.word	.LANCHOR0
	.cfi_endproc
.LFE213:
	.size	Gui_BeginRowCenter, .-Gui_BeginRowCenter
	.section	.text.Gui_BeginRow,"ax",%progbits
	.align	2
	.global	Gui_BeginRow
	.syntax unified
	.arm
	.fpu vfp
	.type	Gui_BeginRow, %function
Gui_BeginRow:
.LVL12:
.LFB214:
	.loc 1 55 41 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 56 2 view .LVU72
	.loc 1 56 13 is_stmt 0 view .LVU73
	mov	ip, #0
	.loc 1 56 48 view .LVU74
	ldr	r2, .L21
	ldr	r3, [r2, #48]
	.loc 1 56 13 view .LVU75
	str	ip, [r2, #76]
	.loc 1 56 63 view .LVU76
	mul	r1, r1, r3
.LVL13:
	.loc 1 57 12 view .LVU77
	str	r3, [r2, #56]
	.loc 1 56 37 view .LVU78
	sub	r3, r0, r3, lsl #1
	.loc 1 56 52 view .LVU79
	sub	r3, r3, r1
	.loc 1 58 12 view .LVU80
	str	ip, [r2, #60]
	.loc 1 56 13 view .LVU81
	str	r0, [r2, #72]
	str	r3, [r2, #80]
	.loc 1 57 2 is_stmt 1 view .LVU82
	.loc 1 58 2 view .LVU83
	.loc 1 59 1 is_stmt 0 view .LVU84
	bx	lr
.L22:
	.align	2
.L21:
	.word	.LANCHOR0
	.cfi_endproc
.LFE214:
	.size	Gui_BeginRow, .-Gui_BeginRow
	.section	.text.Gui_EndRow,"ax",%progbits
	.align	2
	.global	Gui_EndRow
	.syntax unified
	.arm
	.fpu vfp
	.type	Gui_EndRow, %function
Gui_EndRow:
.LFB215:
	.loc 1 60 19 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 60 21 view .LVU86
	.loc 1 60 29 is_stmt 0 view .LVU87
	ldr	r2, .L24
	.loc 1 60 58 view .LVU88
	ldr	r3, [r2, #76]
	ldr	r0, [r2, #52]
	.loc 1 60 29 view .LVU89
	ldr	r1, [r2, #68]
	.loc 1 60 58 view .LVU90
	add	r3, r3, r0
	.loc 1 60 29 view .LVU91
	add	r3, r3, r1
	str	r3, [r2, #68]
	.loc 1 60 70 view .LVU92
	bx	lr
.L25:
	.align	2
.L24:
	.word	.LANCHOR0
	.cfi_endproc
.LFE215:
	.size	Gui_EndRow, .-Gui_EndRow
	.section	.text.Gui_Label,"ax",%progbits
	.align	2
	.global	Gui_Label
	.syntax unified
	.arm
	.fpu vfp
	.type	Gui_Label, %function
Gui_Label:
.LVL14:
.LFB216:
	.loc 1 62 91 is_stmt 1 view -0
	.cfi_startproc
	@ args = 4, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 1
	.loc 1 63 2 view .LVU94
	.loc 1 62 91 is_stmt 0 view .LVU95
	push	{r4, r5, r6, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
	vpush.64	{d8}
	.cfi_def_cfa_offset 24
	.cfi_offset 80, -24
	.cfi_offset 81, -20
	vmov	s16, r0
	.loc 1 63 69 view .LVU96
	vcmpe.f32	s16, #0
	vmrs	APSR_nzcv, FPSCR
	.loc 1 63 38 view .LVU97
	ldr	r5, .L37
	.loc 1 62 91 view .LVU98
	sub	sp, sp, #32
	.cfi_def_cfa_offset 56
.LBB23:
.LBB24:
	.loc 1 31 66 view .LVU99
	vldrhi.32	s15, [r5, #80]	@ int
	vcvthi.f32.s32	s15, s15
	.loc 1 31 98 view .LVU100
	vmulhi.f32	s15, s15, s16
.LBE24:
.LBE23:
	.loc 1 63 45 view .LVU101
	ldrls	r2, [r5, #56]
.LVL15:
	.loc 1 63 45 view .LVU102
	ldrls	r4, [r5, #72]
.LBB28:
.LBB25:
	.loc 1 31 60 view .LVU103
	vcvthi.s32.f32	s15, s15
.LBE25:
.LBE28:
	.loc 1 63 45 view .LVU104
	subls	r4, r4, r2
	.loc 1 63 69 view .LVU105
	ldrls	r2, [r5, #48]
.LBB29:
.LBB26:
	.loc 1 31 60 view .LVU106
	vmovhi	r4, s15	@ int
.LBE26:
.LBE29:
	.loc 1 63 69 view .LVU107
	subls	r4, r4, r2
.LVL16:
.LBB30:
.LBI23:
	.loc 1 31 19 is_stmt 1 view .LVU108
.LBB27:
	.loc 1 31 53 view .LVU109
	.loc 1 31 53 is_stmt 0 view .LVU110
.LBE27:
.LBE30:
	.loc 1 64 2 is_stmt 1 view .LVU111
	.loc 1 64 6 is_stmt 0 view .LVU112
	mov	r2, #0
	.loc 1 67 1 view .LVU113
	add	r1, sp, #60
	.loc 1 69 5 view .LVU114
	cmp	r3, r2
	.loc 1 62 91 view .LVU115
	ldr	r6, [sp, #56]
	.loc 1 67 1 view .LVU116
	str	r1, [sp, #28]
	.loc 1 64 6 view .LVU117
	str	r2, [sp, #24]
	.loc 1 66 2 is_stmt 1 view .LVU118
	.loc 1 67 1 view .LVU119
	.loc 1 68 2 view .LVU120
.LVL17:
	.loc 1 69 2 view .LVU121
	.loc 1 69 5 is_stmt 0 view .LVU122
	bne	.L30
.LVL18:
.L32:
	.loc 1 68 6 view .LVU123
	mov	r3, #0
.LVL19:
.L31:
	.loc 1 73 2 is_stmt 1 view .LVU124
	.loc 1 74 6 is_stmt 0 view .LVU125
	mov	r2, #0
	add	r0, sp, #24
	.loc 1 74 40 view .LVU126
	ldr	ip, [r5, #56]
	.loc 1 74 6 view .LVU127
	str	r0, [sp, #8]
	.loc 1 74 40 view .LVU128
	ldr	r0, [r5, #64]
	.loc 1 74 6 view .LVU129
	ldr	r1, [r5, #68]
	.loc 1 74 40 view .LVU130
	add	r0, r0, ip
	.loc 1 74 6 view .LVU131
	add	r0, r0, r3
	ldr	r3, [r5, #60]
.LVL20:
	.loc 1 74 6 view .LVU132
	str	r2, [sp]
	add	r1, r1, r3
	ldr	r3, [sp, #28]
	str	r6, [sp, #12]
	str	r3, [sp, #16]
	str	r4, [sp, #4]
	ldr	r3, .L37+4
	bl	SpriteBatch_PushTextVargs
.LVL21:
	.loc 1 75 1 is_stmt 1 view .LVU133
	.loc 1 76 2 view .LVU134
	.loc 1 76 40 is_stmt 0 view .LVU135
	vcmpe.f32	s16, #0
	vmrs	APSR_nzcv, FPSCR
	.loc 1 77 103 view .LVU136
	ldr	r3, [r5, #76]
	ldr	r2, [sp, #24]
	.loc 1 76 40 view .LVU137
	movhi	r0, r4
.LVL22:
	.loc 1 77 103 view .LVU138
	cmp	r3, r2
	movlt	r3, r2
	.loc 1 76 48 view .LVU139
	ldr	ip, [r5, #48]
	.loc 1 76 12 view .LVU140
	ldr	r1, [r5, #56]
	.loc 1 76 48 view .LVU141
	add	r0, r0, ip
	.loc 1 76 12 view .LVU142
	add	r0, r0, r1
	str	r0, [r5, #56]
	.loc 1 77 2 is_stmt 1 view .LVU143
	.loc 1 77 28 is_stmt 0 view .LVU144
	str	r3, [r5, #76]
	.loc 1 78 1 view .LVU145
	add	sp, sp, #32
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	@ sp needed
	vldm	sp!, {d8}
	.cfi_restore 80
	.cfi_restore 81
	.cfi_def_cfa_offset 16
.LVL23:
	.loc 1 78 1 view .LVU146
	pop	{r4, r5, r6, pc}
.LVL24:
.L30:
	.cfi_restore_state
.LBB31:
	.loc 1 70 3 is_stmt 1 view .LVU147
	.loc 1 70 19 is_stmt 0 view .LVU148
	mov	r0, r6
.LVL25:
	.loc 1 70 19 view .LVU149
	bl	SpriteBatch_CalcTextWidthVargs
.LVL26:
	.loc 1 71 3 is_stmt 1 view .LVU150
	.loc 1 71 6 is_stmt 0 view .LVU151
	cmp	r4, r0
	blt	.L32
	.loc 1 71 26 is_stmt 1 discriminator 1 view .LVU152
	.loc 1 71 57 is_stmt 0 discriminator 1 view .LVU153
	add	r0, r0, r0, lsr #31
.LVL27:
	.loc 1 71 41 discriminator 1 view .LVU154
	add	r2, r4, r4, lsr #31
	.loc 1 71 57 discriminator 1 view .LVU155
	asr	r3, r0, #1
	.loc 1 71 34 discriminator 1 view .LVU156
	rsb	r3, r3, r2, asr #1
.LVL28:
	.loc 1 71 34 discriminator 1 view .LVU157
	b	.L31
.L38:
	.align	2
.L37:
	.word	.LANCHOR0
	.word	32767
.LBE31:
	.cfi_endproc
.LFE216:
	.size	Gui_Label, .-Gui_Label
	.section	.text.Gui_Space,"ax",%progbits
	.align	2
	.global	Gui_Space
	.syntax unified
	.arm
	.fpu vfp
	.type	Gui_Space, %function
Gui_Space:
.LVL29:
.LFB218:
	.loc 1 115 29 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 115 31 view .LVU159
	.loc 1 115 41 is_stmt 0 view .LVU160
	ldr	r2, .L40
.LVL30:
.LBB32:
.LBI32:
	.loc 1 31 19 is_stmt 1 view .LVU161
.LBB33:
	.loc 1 31 53 view .LVU162
	.loc 1 31 66 is_stmt 0 view .LVU163
	vldr.32	s15, [r2, #80]	@ int
	vcvt.f32.s32	s15, s15
	.loc 1 31 98 view .LVU164
	vmul.f32	s0, s15, s0
.LVL31:
	.loc 1 31 60 view .LVU165
	vcvt.s32.f32	s15, s0
	vmov	r3, s15	@ int
.LBE33:
.LBE32:
	.loc 1 115 74 view .LVU166
	ldr	r0, [r2, #48]
	.loc 1 115 41 view .LVU167
	ldr	r1, [r2, #56]
	.loc 1 115 74 view .LVU168
	add	r3, r3, r0
	.loc 1 115 41 view .LVU169
	add	r3, r3, r1
	str	r3, [r2, #56]
	.loc 1 115 86 view .LVU170
	bx	lr
.L41:
	.align	2
.L40:
	.word	.LANCHOR0
	.cfi_endproc
.LFE218:
	.size	Gui_Space, .-Gui_Space
	.section	.text.Gui_VerticalSpace,"ax",%progbits
	.align	2
	.global	Gui_VerticalSpace
	.syntax unified
	.arm
	.fpu vfp
	.type	Gui_VerticalSpace, %function
Gui_VerticalSpace:
.LVL32:
.LFB219:
	.loc 1 116 31 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 116 33 view .LVU172
	.loc 1 116 41 is_stmt 0 view .LVU173
	ldr	r2, .L43
	ldr	r3, [r2, #68]
	add	r0, r3, r0
.LVL33:
	.loc 1 116 41 view .LVU174
	str	r0, [r2, #68]
	.loc 1 116 47 view .LVU175
	bx	lr
.L44:
	.align	2
.L43:
	.word	.LANCHOR0
	.cfi_endproc
.LFE219:
	.size	Gui_VerticalSpace, .-Gui_VerticalSpace
	.section	.text.Gui_InputData,"ax",%progbits
	.align	2
	.global	Gui_InputData
	.syntax unified
	.arm
	.fpu vfp
	.type	Gui_InputData, %function
Gui_InputData:
.LFB220:
	.loc 1 118 36 is_stmt 1 view -0
	.cfi_startproc
	@ args = 24, pretend = 16, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 119 2 view .LVU177
	.loc 1 119 11 is_stmt 0 view .LVU178
	ldr	ip, .L47
	.loc 1 118 36 view .LVU179
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	push	{r4, r5, lr}
	.cfi_def_cfa_offset 28
	.cfi_offset 4, -28
	.cfi_offset 5, -24
	.cfi_offset 14, -20
	.loc 1 120 8 view .LVU180
	mov	r5, ip
	.loc 1 118 36 view .LVU181
	add	lr, sp, #12
	.loc 1 119 11 view .LVU182
	add	r4, ip, #24
	.loc 1 118 36 view .LVU183
	stm	lr, {r0, r1, r2, r3}
	.loc 1 119 11 view .LVU184
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	r4!, {r0, r1, r2, r3}
	ldm	ip, {r0, r1}
	stm	r4, {r0, r1}
	.loc 1 120 2 is_stmt 1 view .LVU185
	.loc 1 120 8 is_stmt 0 view .LVU186
	ldmia	lr!, {r0, r1, r2, r3}
	stmia	r5!, {r0, r1, r2, r3}
	ldm	lr, {r0, r1}
	.loc 1 121 1 view .LVU187
	pop	{r4, r5, lr}
	.cfi_restore 14
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 16
	.loc 1 120 8 view .LVU188
	stm	ip, {r0, r1}
	.loc 1 121 1 view .LVU189
	add	sp, sp, #16
	.cfi_def_cfa_offset 0
	bx	lr
.L48:
	.align	2
.L47:
	.word	.LANCHOR0
	.cfi_endproc
.LFE220:
	.size	Gui_InputData, .-Gui_InputData
	.global	__aeabi_idiv
	.section	.text.Gui_IsCursorInside,"ax",%progbits
	.align	2
	.global	Gui_IsCursorInside
	.syntax unified
	.arm
	.fpu vfp
	.type	Gui_IsCursorInside, %function
Gui_IsCursorInside:
.LVL34:
.LFB221:
	.loc 1 123 52 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 124 2 view .LVU191
	.loc 1 123 52 is_stmt 0 view .LVU192
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	.cfi_def_cfa_offset 32
	.cfi_offset 4, -32
	.cfi_offset 5, -28
	.cfi_offset 6, -24
	.cfi_offset 7, -20
	.cfi_offset 8, -16
	.cfi_offset 9, -12
	.cfi_offset 10, -8
	.cfi_offset 14, -4
	.loc 1 124 23 view .LVU193
	ldr	r9, .L59
	.loc 1 123 52 view .LVU194
	mov	r7, r2
	mov	r8, r3
	.loc 1 124 23 view .LVU195
	ldrh	r4, [r9, #16]
	.loc 1 123 52 view .LVU196
	mov	r5, r0
	mov	r6, r1
	.loc 1 124 33 view .LVU197
	bl	SpriteBatch_GetScale
.LVL35:
	.loc 1 124 33 view .LVU198
	mov	r1, r0
	.loc 1 124 6 view .LVU199
	mov	r0, r4
	bl	__aeabi_idiv
.LVL36:
	.loc 1 125 23 view .LVU200
	ldrh	r9, [r9, #18]
	.loc 1 124 6 view .LVU201
	mov	r4, r0
.LVL37:
	.loc 1 125 2 is_stmt 1 view .LVU202
	.loc 1 125 33 is_stmt 0 view .LVU203
	bl	SpriteBatch_GetScale
.LVL38:
	.loc 1 125 33 view .LVU204
	mov	r1, r0
	.loc 1 125 6 view .LVU205
	mov	r0, r9
	bl	__aeabi_idiv
.LVL39:
	.loc 1 126 2 is_stmt 1 view .LVU206
	.loc 1 126 24 is_stmt 0 view .LVU207
	cmp	r4, #0
	cmpne	r0, #0
	movne	ip, #1
	moveq	ip, #0
	.loc 1 126 42 view .LVU208
	cmp	r4, r5
	movlt	ip, #0
	andge	ip, ip, #1
	cmp	ip, #0
	bne	.L58
.LVL40:
.L50:
	.loc 1 127 1 discriminator 12 view .LVU209
	mov	r0, ip
.LVL41:
	.loc 1 127 1 discriminator 12 view .LVU210
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.LVL42:
.L58:
	.loc 1 126 77 discriminator 3 view .LVU211
	add	r5, r5, r7
.LVL43:
	.loc 1 126 81 discriminator 3 view .LVU212
	cmp	r0, r6
	cmpge	r5, r4
	movgt	ip, #1
	movle	ip, #0
	ble	.L50
	.loc 1 126 116 discriminator 7 view .LVU213
	add	r6, r6, r8
.LVL44:
	.loc 1 126 99 discriminator 7 view .LVU214
	cmp	r6, r0
	movle	ip, #0
	movgt	ip, #1
	b	.L50
.L60:
	.align	2
.L59:
	.word	.LANCHOR0
	.cfi_endproc
.LFE221:
	.size	Gui_IsCursorInside, .-Gui_IsCursorInside
	.section	.text.Gui_WasCursorInside,"ax",%progbits
	.align	2
	.global	Gui_WasCursorInside
	.syntax unified
	.arm
	.fpu vfp
	.type	Gui_WasCursorInside, %function
Gui_WasCursorInside:
.LVL45:
.LFB222:
	.loc 1 128 53 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 129 2 view .LVU216
	.loc 1 128 53 is_stmt 0 view .LVU217
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	.cfi_def_cfa_offset 32
	.cfi_offset 4, -32
	.cfi_offset 5, -28
	.cfi_offset 6, -24
	.cfi_offset 7, -20
	.cfi_offset 8, -16
	.cfi_offset 9, -12
	.cfi_offset 10, -8
	.cfi_offset 14, -4
	.loc 1 129 29 view .LVU218
	ldr	r9, .L71
	.loc 1 128 53 view .LVU219
	mov	r7, r2
	mov	r8, r3
	.loc 1 129 29 view .LVU220
	ldrh	r4, [r9, #40]
	.loc 1 128 53 view .LVU221
	mov	r5, r0
	mov	r6, r1
	.loc 1 129 39 view .LVU222
	bl	SpriteBatch_GetScale
.LVL46:
	.loc 1 129 39 view .LVU223
	mov	r1, r0
	.loc 1 129 6 view .LVU224
	mov	r0, r4
	bl	__aeabi_idiv
.LVL47:
	.loc 1 130 29 view .LVU225
	ldrh	r9, [r9, #42]
	.loc 1 129 6 view .LVU226
	mov	r4, r0
.LVL48:
	.loc 1 130 2 is_stmt 1 view .LVU227
	.loc 1 130 39 is_stmt 0 view .LVU228
	bl	SpriteBatch_GetScale
.LVL49:
	.loc 1 130 39 view .LVU229
	mov	r1, r0
	.loc 1 130 6 view .LVU230
	mov	r0, r9
	bl	__aeabi_idiv
.LVL50:
	.loc 1 131 2 is_stmt 1 view .LVU231
	.loc 1 131 27 is_stmt 0 view .LVU232
	cmp	r4, #0
	cmpne	r0, #0
	movne	ip, #1
	moveq	ip, #0
	.loc 1 131 48 view .LVU233
	cmp	r4, r5
	movlt	ip, #0
	andge	ip, ip, #1
	cmp	ip, #0
	bne	.L70
.LVL51:
.L62:
	.loc 1 133 1 discriminator 12 view .LVU234
	mov	r0, ip
.LVL52:
	.loc 1 133 1 discriminator 12 view .LVU235
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.LVL53:
.L70:
	.loc 1 131 89 discriminator 3 view .LVU236
	add	r5, r5, r7
.LVL54:
	.loc 1 131 93 discriminator 3 view .LVU237
	cmp	r0, r6
	cmpge	r5, r4
	movgt	ip, #1
	movle	ip, #0
	ble	.L62
	.loc 1 132 26 discriminator 7 view .LVU238
	add	r6, r6, r8
.LVL55:
	.loc 1 131 114 discriminator 7 view .LVU239
	cmp	r6, r0
	movle	ip, #0
	movgt	ip, #1
	b	.L62
.L72:
	.align	2
.L71:
	.word	.LANCHOR0
	.cfi_endproc
.LFE222:
	.size	Gui_WasCursorInside, .-Gui_WasCursorInside
	.section	.text.Gui_Button,"ax",%progbits
	.align	2
	.global	Gui_Button
	.syntax unified
	.arm
	.fpu vfp
	.type	Gui_Button, %function
Gui_Button:
.LVL56:
.LFB217:
	.loc 1 80 52 is_stmt 1 view -0
	.cfi_startproc
	@ args = 4, pretend = 12, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 1
	.loc 1 83 2 view .LVU241
	.loc 1 84 1 view .LVU242
	.loc 1 80 52 is_stmt 0 view .LVU243
	push	{r1, r2, r3}
	.cfi_def_cfa_offset 12
	.cfi_offset 1, -12
	.cfi_offset 2, -8
	.cfi_offset 3, -4
	mov	r3, r0	@ float
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_def_cfa_offset 48
	.cfi_offset 4, -48
	.cfi_offset 5, -44
	.cfi_offset 6, -40
	.cfi_offset 7, -36
	.cfi_offset 8, -32
	.cfi_offset 9, -28
	.cfi_offset 10, -24
	.cfi_offset 11, -20
	.cfi_offset 14, -16
	vpush.64	{d8}
	.cfi_def_cfa_offset 56
	.cfi_offset 80, -56
	.cfi_offset 81, -52
	vmov	s16, r3
	sub	sp, sp, #48
	.cfi_def_cfa_offset 104
	.loc 1 84 1 view .LVU244
	add	r1, sp, #96
	.loc 1 86 18 view .LVU245
	ldr	r0, [sp, #92]
.LVL57:
	.loc 1 84 1 view .LVU246
	str	r1, [sp, #44]
	.loc 1 86 2 is_stmt 1 view .LVU247
	.loc 1 86 18 is_stmt 0 view .LVU248
	bl	SpriteBatch_CalcTextWidthVargs
.LVL58:
	.loc 1 90 40 view .LVU249
	vcmpe.f32	s16, #0
	vmrs	APSR_nzcv, FPSCR
	.loc 1 88 18 view .LVU250
	ldr	r5, .L83
	.loc 1 90 40 view .LVU251
	addls	r6, r0, #8
.LBB34:
.LBB35:
	.loc 1 31 66 view .LVU252
	vldrhi.32	s15, [r5, #80]	@ int
	vcvthi.f32.s32	s15, s15
	.loc 1 31 98 view .LVU253
	vmulhi.f32	s15, s15, s16
	.loc 1 31 60 view .LVU254
	vcvthi.s32.f32	s15, s15
	vmovhi	r6, s15	@ int
.LBE35:
.LBE34:
	.loc 1 88 6 view .LVU255
	ldr	r3, [r5, #56]
	ldr	r7, [r5, #64]
	.loc 1 89 18 view .LVU256
	ldr	fp, [r5, #68]
	.loc 1 88 6 view .LVU257
	add	r7, r7, r3
	.loc 1 89 18 view .LVU258
	ldr	r3, [r5, #60]
	.loc 1 92 16 view .LVU259
	mov	r2, r6
	.loc 1 89 18 view .LVU260
	add	fp, fp, r3
	.loc 1 89 6 view .LVU261
	sub	r10, fp, #6
	.loc 1 92 16 view .LVU262
	mov	r3, #20
	mov	r1, r10
	.loc 1 86 18 view .LVU263
	str	r0, [sp, #28]
.LVL59:
	.loc 1 88 2 is_stmt 1 view .LVU264
	.loc 1 89 2 view .LVU265
	.loc 1 90 2 view .LVU266
.LBB37:
.LBI34:
	.loc 1 31 19 view .LVU267
.LBB36:
	.loc 1 31 53 view .LVU268
	.loc 1 31 53 is_stmt 0 view .LVU269
.LBE36:
.LBE37:
	.loc 1 92 1 is_stmt 1 view .LVU270
	.loc 1 92 16 is_stmt 0 view .LVU271
	mov	r0, r7
.LVL60:
	.loc 1 92 16 view .LVU272
	bl	Gui_IsCursorInside
.LVL61:
	.loc 1 92 16 view .LVU273
	mov	r4, r0
	.loc 1 96 2 view .LVU274
	mov	r0, #3
.LVL62:
	.loc 1 94 2 is_stmt 1 view .LVU275
	.loc 1 96 2 view .LVU276
	bl	SpriteBatch_BindGuiTexture
.LVL63:
	.loc 1 97 2 view .LVU277
	mov	r8, #20
	mov	r9, #8
	mov	r3, #0
	.loc 1 97 62 is_stmt 0 view .LVU278
	add	r4, r4, r4, lsl #2
.LVL64:
	.loc 1 97 62 view .LVU279
	lsl	r4, r4, #3
	.loc 1 97 2 view .LVU280
	add	r4, r4, #46
	mvn	r2, #2
	mov	r1, r10
	mov	r0, r7
	str	r3, [sp, #4]
	str	r8, [sp, #16]
	mov	r3, r9
	str	r9, [sp, #12]
	str	r8, [sp]
	str	r4, [sp, #8]
	bl	SpriteBatch_PushQuad
.LVL65:
	.loc 1 98 2 is_stmt 1 view .LVU281
	sub	r3, r6, #16
	add	r0, r7, r9
	mvn	r2, #2
	mov	r1, r10
	str	r3, [sp, #12]
	strd	r8, [sp]
	str	r8, [sp, #16]
	str	r4, [sp, #8]
	str	r3, [sp, #36]
	str	r0, [sp, #32]
	bl	SpriteBatch_PushQuad
.LVL66:
	.loc 1 100 2 view .LVU282
	mov	r2, #192
	ldr	r3, [sp, #36]
	ldr	r0, [sp, #32]
	mov	r1, r10
	add	r0, r0, r3
	str	r2, [sp, #4]
	mov	r3, r9
	mvn	r2, #2
	str	r4, [sp, #8]
	str	r8, [sp, #16]
	str	r9, [sp, #12]
	str	r8, [sp]
	bl	SpriteBatch_PushQuad
.LVL67:
	.loc 1 103 2 view .LVU283
	mov	r3, #0
	ldr	r2, [sp, #92]
	str	r3, [sp, #8]
	.loc 1 103 51 is_stmt 0 view .LVU284
	ldr	r3, [sp, #28]
	.loc 1 103 2 view .LVU285
	str	r2, [sp, #12]
	.loc 1 103 51 view .LVU286
	add	r0, r3, r3, lsr #31
	.loc 1 103 2 view .LVU287
	mov	r2, #1
	mvn	r3, #-2147483648
	strd	r2, [sp]
	ldr	r3, [sp, #44]
	.loc 1 103 51 view .LVU288
	asr	r0, r0, #1
	.loc 1 103 2 view .LVU289
	str	r3, [sp, #16]
	.loc 1 103 35 view .LVU290
	add	r3, r6, r6, lsr #31
	.loc 1 103 39 view .LVU291
	rsb	r0, r0, r3, asr #1
	.loc 1 103 2 view .LVU292
	mvn	r2, #0
	ldr	r3, .L83+4
	mov	r1, fp
	add	r0, r0, r7
	bl	SpriteBatch_PushTextVargs
.LVL68:
	.loc 1 105 1 is_stmt 1 view .LVU293
	.loc 1 107 2 view .LVU294
	.loc 1 108 96 is_stmt 0 view .LVU295
	ldr	r3, [r5, #76]
	.loc 1 107 12 view .LVU296
	ldr	r2, [r5, #56]
	.loc 1 108 96 view .LVU297
	cmp	r3, r8
	movlt	r3, r8
	.loc 1 108 28 view .LVU298
	str	r3, [r5, #76]
	.loc 1 107 17 view .LVU299
	ldr	r3, [r5, #48]
	.loc 1 110 19 view .LVU300
	ldr	r0, [r5, #8]
	.loc 1 107 17 view .LVU301
	add	r3, r6, r3
	.loc 1 107 12 view .LVU302
	add	r3, r3, r2
	.loc 1 110 5 view .LVU303
	ands	r0, r0, #1048576
	.loc 1 107 12 view .LVU304
	str	r3, [r5, #56]
	.loc 1 108 2 is_stmt 1 view .LVU305
	.loc 1 110 2 view .LVU306
	.loc 1 110 5 is_stmt 0 view .LVU307
	bne	.L82
.L77:
	.loc 1 113 1 view .LVU308
	add	sp, sp, #48
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	@ sp needed
	vldm	sp!, {d8}
	.cfi_restore 80
	.cfi_restore 81
	.cfi_def_cfa_offset 48
.LVL69:
	.loc 1 113 1 view .LVU309
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_restore 14
	.cfi_restore 11
	.cfi_restore 10
	.cfi_restore 9
	.cfi_restore 8
	.cfi_restore 7
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 12
.LVL70:
	.loc 1 113 1 view .LVU310
	add	sp, sp, #12
	.cfi_restore 3
	.cfi_restore 2
	.cfi_restore 1
	.cfi_def_cfa_offset 0
	bx	lr
.LVL71:
.L82:
	.cfi_restore_state
	.loc 1 110 34 discriminator 1 view .LVU311
	mov	r3, r8
	mov	r2, r6
	mov	r1, r10
	mov	r0, r7
	bl	Gui_WasCursorInside
.LVL72:
	b	.L77
.L84:
	.align	2
.L83:
	.word	.LANCHOR0
	.word	32767
	.cfi_endproc
.LFE217:
	.size	Gui_Button, .-Gui_Button
	.section	.text.Gui_EnteredCursorInside,"ax",%progbits
	.align	2
	.global	Gui_EnteredCursorInside
	.syntax unified
	.arm
	.fpu vfp
	.type	Gui_EnteredCursorInside, %function
Gui_EnteredCursorInside:
.LVL73:
.LFB223:
	.loc 1 134 57 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 135 2 view .LVU313
	.loc 1 134 57 is_stmt 0 view .LVU314
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	.cfi_def_cfa_offset 32
	.cfi_offset 4, -32
	.cfi_offset 5, -28
	.cfi_offset 6, -24
	.cfi_offset 7, -20
	.cfi_offset 8, -16
	.cfi_offset 9, -12
	.cfi_offset 10, -8
	.cfi_offset 14, -4
	.loc 1 135 29 view .LVU315
	ldr	r4, .L89
	.loc 1 134 57 view .LVU316
	mov	r7, r2
	mov	r8, r3
	.loc 1 135 29 view .LVU317
	ldrh	r9, [r4, #40]
	.loc 1 134 57 view .LVU318
	mov	r6, r1
	mov	r5, r0
	.loc 1 135 39 view .LVU319
	bl	SpriteBatch_GetScale
.LVL74:
	.loc 1 135 39 view .LVU320
	mov	r1, r0
	.loc 1 135 6 view .LVU321
	mov	r0, r9
	bl	__aeabi_idiv
.LVL75:
	.loc 1 136 29 view .LVU322
	ldrh	r9, [r4, #42]
	.loc 1 135 6 view .LVU323
	mov	r4, r0
.LVL76:
	.loc 1 136 2 is_stmt 1 view .LVU324
	.loc 1 136 39 is_stmt 0 view .LVU325
	bl	SpriteBatch_GetScale
.LVL77:
	.loc 1 136 39 view .LVU326
	mov	r1, r0
.LVL78:
	.loc 1 138 2 is_stmt 1 view .LVU327
	.loc 1 136 6 is_stmt 0 view .LVU328
	mov	r0, r9
.LVL79:
	.loc 1 136 6 view .LVU329
	bl	__aeabi_idiv
.LVL80:
	.loc 1 138 50 view .LVU330
	orrs	r0, r0, r4
	beq	.L88
	.loc 1 139 1 discriminator 6 view .LVU331
	mov	r0, #0
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.L88:
	.loc 1 138 53 discriminator 1 view .LVU332
	mov	r3, r8
	mov	r2, r7
	mov	r1, r6
	mov	r0, r5
	.loc 1 139 1 discriminator 1 view .LVU333
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	.cfi_restore 14
	.cfi_restore 10
	.cfi_restore 9
	.cfi_restore 8
	.cfi_restore 7
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
.LVL81:
	.loc 1 138 53 discriminator 1 view .LVU334
	b	Gui_IsCursorInside
.LVL82:
.L90:
	.loc 1 138 53 discriminator 1 view .LVU335
	.align	2
.L89:
	.word	.LANCHOR0
	.cfi_endproc
.LFE223:
	.size	Gui_EnteredCursorInside, .-Gui_EnteredCursorInside
	.section	.text.Gui_GetCursorMovement,"ax",%progbits
	.align	2
	.global	Gui_GetCursorMovement
	.syntax unified
	.arm
	.fpu vfp
	.type	Gui_GetCursorMovement, %function
Gui_GetCursorMovement:
.LVL83:
.LFB224:
	.loc 1 140 44 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 141 2 view .LVU337
	.loc 1 140 44 is_stmt 0 view .LVU338
	push	{r4, r5, r6, r7, r8, lr}
	.cfi_def_cfa_offset 24
	.cfi_offset 4, -24
	.cfi_offset 5, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	.cfi_offset 8, -8
	.cfi_offset 14, -4
	.loc 1 141 25 view .LVU339
	ldr	r6, .L99
	.loc 1 140 44 view .LVU340
	mov	r5, r0
	.loc 1 141 5 view .LVU341
	ldr	r3, [r6, #16]
	.loc 1 140 44 view .LVU342
	mov	r4, r1
	.loc 1 141 5 view .LVU343
	cmp	r3, #0
	beq	.L92
	.loc 1 141 47 discriminator 1 view .LVU344
	ldr	r3, [r6, #40]
	cmp	r3, #0
	bne	.L93
.L92:
	.loc 1 142 3 is_stmt 1 view .LVU345
	.loc 1 142 6 is_stmt 0 view .LVU346
	mov	r2, #0
	.loc 1 144 3 view .LVU347
	mov	r3, r2
	.loc 1 142 6 view .LVU348
	str	r2, [r5]
	.loc 1 143 3 is_stmt 1 view .LVU349
	.loc 1 144 3 view .LVU350
	.loc 1 143 6 is_stmt 0 view .LVU351
	str	r3, [r4]
	.loc 1 148 1 view .LVU352
	pop	{r4, r5, r6, r7, r8, pc}
.L93:
	.loc 1 146 2 is_stmt 1 view .LVU353
	.loc 1 146 12 is_stmt 0 view .LVU354
	ldrh	r7, [r6, #16]
	.loc 1 146 22 view .LVU355
	bl	SpriteBatch_GetScale
.LVL84:
	.loc 1 146 22 view .LVU356
	mov	r1, r0
	.loc 1 146 20 view .LVU357
	mov	r0, r7
	bl	__aeabi_idiv
.LVL85:
	.loc 1 146 55 view .LVU358
	ldrh	r8, [r6, #40]
	.loc 1 146 20 view .LVU359
	mov	r7, r0
	.loc 1 146 65 view .LVU360
	bl	SpriteBatch_GetScale
.LVL86:
	mov	r1, r0
	.loc 1 146 63 view .LVU361
	mov	r0, r8
	bl	__aeabi_idiv
.LVL87:
	.loc 1 146 45 view .LVU362
	sub	r0, r7, r0
	.loc 1 147 12 view .LVU363
	ldrh	r8, [r6, #18]
	.loc 1 146 5 view .LVU364
	str	r0, [r5]
	.loc 1 147 2 is_stmt 1 view .LVU365
	.loc 1 147 22 is_stmt 0 view .LVU366
	bl	SpriteBatch_GetScale
.LVL88:
	mov	r1, r0
	.loc 1 147 20 view .LVU367
	mov	r0, r8
	bl	__aeabi_idiv
.LVL89:
	.loc 1 147 55 view .LVU368
	ldrh	r6, [r6, #42]
	.loc 1 147 20 view .LVU369
	mov	r5, r0
.LVL90:
	.loc 1 147 65 view .LVU370
	bl	SpriteBatch_GetScale
.LVL91:
	mov	r1, r0
	.loc 1 147 63 view .LVU371
	mov	r0, r6
	bl	__aeabi_idiv
.LVL92:
	.loc 1 147 45 view .LVU372
	sub	r3, r5, r0
	.loc 1 143 6 view .LVU373
	str	r3, [r4]
	.loc 1 148 1 view .LVU374
	pop	{r4, r5, r6, r7, r8, pc}
.L100:
	.align	2
.L99:
	.word	.LANCHOR0
	.cfi_endproc
.LFE224:
	.size	Gui_GetCursorMovement, .-Gui_GetCursorMovement
	.bss
	.align	2
	.set	.LANCHOR0,. + 0
	.type	input, %object
	.size	input, 24
input:
	.space	24
	.type	oldInput, %object
	.size	oldInput, 24
oldInput:
	.space	24
	.type	paddingX, %object
	.size	paddingX, 4
paddingX:
	.space	4
	.type	paddingY, %object
	.size	paddingY, 4
paddingY:
	.space	4
	.type	relativeX, %object
	.size	relativeX, 4
relativeX:
	.space	4
	.type	relativeY, %object
	.size	relativeY, 4
relativeY:
	.space	4
	.type	windowX, %object
	.size	windowX, 4
windowX:
	.space	4
	.type	windowY, %object
	.size	windowY, 4
windowY:
	.space	4
	.type	currentRow, %object
	.size	currentRow, 12
currentRow:
	.space	12
	.text
.Letext0:
	.file 2 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h"
	.file 3 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_stdint.h"
	.file 4 "/home/tobi/Dokumente/Craftus-Next/include/misc/InputData.h"
	.file 5 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/11.2.0/include/stdarg.h"
	.file 6 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/11.2.0/include/stddef.h"
	.file 7 "/home/tobi/Dokumente/Craftus-Next/include/blocks/Block.h"
	.file 8 "/opt/devkitpro/libctru/include/3ds/services/csnd.h"
	.file 9 "/opt/devkitpro/libctru/include/3ds/services/hid.h"
	.file 10 "/opt/devkitpro/libctru/include/3ds/services/ndm.h"
	.file 11 "/opt/devkitpro/libctru/include/3ds/gpu/enums.h"
	.file 12 "/opt/devkitpro/libctru/include/3ds/ndsp/channel.h"
	.file 13 "/opt/devkitpro/libctru/include/3ds/applets/error.h"
	.file 14 "/home/tobi/Dokumente/Craftus-Next/include/gui/SpriteBatch.h"
	.file 15 "/opt/devkitpro/libctru/include/3ds/types.h"
	.file 16 "/opt/devkitpro/devkitARM/arm-none-eabi/include/string.h"
	.file 17 "<built-in>"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0xefc
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x22
	.4byte	.LASF183
	.byte	0x1d
	.4byte	.LASF184
	.4byte	.LASF185
	.4byte	.LLRL48
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x6
	.byte	0x4
	.byte	0x4
	.4byte	.LASF0
	.uleb128 0x6
	.byte	0x1
	.byte	0x6
	.4byte	.LASF1
	.uleb128 0x6
	.byte	0x1
	.byte	0x8
	.4byte	.LASF2
	.uleb128 0xa
	.4byte	.LASF4
	.byte	0x2
	.byte	0x37
	.byte	0x13
	.4byte	0x47
	.uleb128 0x6
	.byte	0x2
	.byte	0x5
	.4byte	.LASF3
	.uleb128 0xa
	.4byte	.LASF5
	.byte	0x2
	.byte	0x39
	.byte	0x1c
	.4byte	0x5a
	.uleb128 0x6
	.byte	0x2
	.byte	0x7
	.4byte	.LASF6
	.uleb128 0x6
	.byte	0x4
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0xa
	.4byte	.LASF8
	.byte	0x2
	.byte	0x4f
	.byte	0x1b
	.4byte	0x74
	.uleb128 0x6
	.byte	0x4
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x6
	.byte	0x8
	.byte	0x5
	.4byte	.LASF10
	.uleb128 0x6
	.byte	0x8
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x23
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x6
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0xa
	.4byte	.LASF13
	.byte	0x3
	.byte	0x20
	.byte	0x13
	.4byte	0x3b
	.uleb128 0xa
	.4byte	.LASF14
	.byte	0x3
	.byte	0x24
	.byte	0x14
	.4byte	0x4e
	.uleb128 0xa
	.4byte	.LASF15
	.byte	0x3
	.byte	0x30
	.byte	0x14
	.4byte	0x68
	.uleb128 0x1b
	.byte	0x18
	.byte	0x4
	.byte	0x5
	.4byte	0x139
	.uleb128 0x8
	.4byte	.LASF16
	.byte	0x4
	.byte	0x6
	.byte	0xb
	.4byte	0xaf
	.byte	0
	.uleb128 0x8
	.4byte	.LASF17
	.byte	0x4
	.byte	0x6
	.byte	0x15
	.4byte	0xaf
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF18
	.byte	0x4
	.byte	0x6
	.byte	0x1f
	.4byte	0xaf
	.byte	0x8
	.uleb128 0x8
	.4byte	.LASF19
	.byte	0x4
	.byte	0x7
	.byte	0xa
	.4byte	0x97
	.byte	0xc
	.uleb128 0x8
	.4byte	.LASF20
	.byte	0x4
	.byte	0x7
	.byte	0x16
	.4byte	0x97
	.byte	0xe
	.uleb128 0x8
	.4byte	.LASF21
	.byte	0x4
	.byte	0x8
	.byte	0xb
	.4byte	0xa3
	.byte	0x10
	.uleb128 0x8
	.4byte	.LASF22
	.byte	0x4
	.byte	0x8
	.byte	0x13
	.4byte	0xa3
	.byte	0x12
	.uleb128 0x8
	.4byte	.LASF23
	.byte	0x4
	.byte	0x9
	.byte	0xa
	.4byte	0x97
	.byte	0x14
	.uleb128 0x8
	.4byte	.LASF24
	.byte	0x4
	.byte	0x9
	.byte	0x13
	.4byte	0x97
	.byte	0x16
	.byte	0
	.uleb128 0xa
	.4byte	.LASF25
	.byte	0x4
	.byte	0xa
	.byte	0x3
	.4byte	0xbb
	.uleb128 0xa
	.4byte	.LASF26
	.byte	0x5
	.byte	0x28
	.byte	0x1b
	.4byte	0x151
	.uleb128 0x24
	.4byte	.LASF186
	.byte	0x4
	.byte	0x11
	.byte	0
	.4byte	0x168
	.uleb128 0x25
	.4byte	.LASF187
	.4byte	0x168
	.byte	0
	.byte	0
	.uleb128 0x26
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF27
	.byte	0x5
	.byte	0x63
	.byte	0x18
	.4byte	0x145
	.uleb128 0xa
	.4byte	.LASF28
	.byte	0x6
	.byte	0xd1
	.byte	0x16
	.4byte	0x90
	.uleb128 0x6
	.byte	0x8
	.byte	0x4
	.4byte	.LASF29
	.uleb128 0xc
	.byte	0x1
	.4byte	0x34
	.byte	0x7
	.byte	0xa
	.byte	0x6
	.4byte	0x287
	.uleb128 0x1
	.4byte	.LASF30
	.byte	0
	.uleb128 0x1
	.4byte	.LASF31
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF32
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF33
	.byte	0x3
	.uleb128 0x1
	.4byte	.LASF34
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF35
	.byte	0x5
	.uleb128 0x1
	.4byte	.LASF36
	.byte	0x6
	.uleb128 0x1
	.4byte	.LASF37
	.byte	0x7
	.uleb128 0x1
	.4byte	.LASF38
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF39
	.byte	0x9
	.uleb128 0x1
	.4byte	.LASF40
	.byte	0xa
	.uleb128 0x1
	.4byte	.LASF41
	.byte	0xb
	.uleb128 0x1
	.4byte	.LASF42
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF43
	.byte	0xd
	.uleb128 0x1
	.4byte	.LASF44
	.byte	0xe
	.uleb128 0x1
	.4byte	.LASF45
	.byte	0xf
	.uleb128 0x1
	.4byte	.LASF46
	.byte	0x10
	.uleb128 0x1
	.4byte	.LASF47
	.byte	0x11
	.uleb128 0x1
	.4byte	.LASF48
	.byte	0x12
	.uleb128 0x1
	.4byte	.LASF49
	.byte	0x13
	.uleb128 0x1
	.4byte	.LASF50
	.byte	0x14
	.uleb128 0x1
	.4byte	.LASF51
	.byte	0x15
	.uleb128 0x1
	.4byte	.LASF52
	.byte	0x16
	.uleb128 0x1
	.4byte	.LASF53
	.byte	0x17
	.uleb128 0x1
	.4byte	.LASF54
	.byte	0x18
	.uleb128 0x1
	.4byte	.LASF55
	.byte	0x19
	.uleb128 0x1
	.4byte	.LASF56
	.byte	0x1a
	.uleb128 0x1
	.4byte	.LASF57
	.byte	0x1b
	.uleb128 0x1
	.4byte	.LASF58
	.byte	0x1c
	.uleb128 0x1
	.4byte	.LASF59
	.byte	0x1d
	.uleb128 0x1
	.4byte	.LASF60
	.byte	0x1e
	.uleb128 0x1
	.4byte	.LASF61
	.byte	0x1f
	.uleb128 0x1
	.4byte	.LASF62
	.byte	0x20
	.uleb128 0x1
	.4byte	.LASF63
	.byte	0x21
	.uleb128 0x1
	.4byte	.LASF64
	.byte	0x22
	.uleb128 0x1
	.4byte	.LASF65
	.byte	0x23
	.uleb128 0x1
	.4byte	.LASF66
	.byte	0x24
	.uleb128 0x1
	.4byte	.LASF67
	.byte	0x25
	.uleb128 0x1
	.4byte	.LASF68
	.byte	0x26
	.uleb128 0x1
	.4byte	.LASF69
	.byte	0x27
	.byte	0
	.uleb128 0x1c
	.4byte	0x293
	.uleb128 0x6
	.byte	0x1
	.byte	0x8
	.4byte	.LASF70
	.uleb128 0x27
	.4byte	0x28c
	.uleb128 0x6
	.byte	0x1
	.byte	0x2
	.4byte	.LASF71
	.uleb128 0x1c
	.4byte	0x89
	.uleb128 0x6
	.byte	0x8
	.byte	0x4
	.4byte	.LASF72
	.uleb128 0x1d
	.ascii	"u32\000"
	.byte	0xf
	.byte	0x17
	.byte	0x12
	.4byte	0xaf
	.uleb128 0xc
	.byte	0x1
	.4byte	0x34
	.byte	0x8
	.byte	0x28
	.byte	0x1
	.4byte	0x2dd
	.uleb128 0x1
	.4byte	.LASF73
	.byte	0
	.uleb128 0x1
	.4byte	.LASF74
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF75
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF76
	.byte	0x3
	.byte	0
	.uleb128 0xc
	.byte	0x1
	.4byte	0x34
	.byte	0x8
	.byte	0x31
	.byte	0x1
	.4byte	0x303
	.uleb128 0x1
	.4byte	.LASF77
	.byte	0
	.uleb128 0x1
	.4byte	.LASF78
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF79
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF80
	.byte	0x3
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.4byte	0x90
	.byte	0x9
	.byte	0xb
	.byte	0x1
	.4byte	0x3e0
	.uleb128 0x1
	.4byte	.LASF81
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF82
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF83
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF84
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF85
	.byte	0x10
	.uleb128 0x1
	.4byte	.LASF86
	.byte	0x20
	.uleb128 0x1
	.4byte	.LASF87
	.byte	0x40
	.uleb128 0x1
	.4byte	.LASF88
	.byte	0x80
	.uleb128 0xd
	.4byte	.LASF89
	.2byte	0x100
	.uleb128 0xd
	.4byte	.LASF90
	.2byte	0x200
	.uleb128 0xd
	.4byte	.LASF91
	.2byte	0x400
	.uleb128 0xd
	.4byte	.LASF92
	.2byte	0x800
	.uleb128 0xd
	.4byte	.LASF93
	.2byte	0x4000
	.uleb128 0xd
	.4byte	.LASF94
	.2byte	0x8000
	.uleb128 0x7
	.4byte	.LASF95
	.4byte	0x100000
	.uleb128 0x7
	.4byte	.LASF96
	.4byte	0x1000000
	.uleb128 0x7
	.4byte	.LASF97
	.4byte	0x2000000
	.uleb128 0x7
	.4byte	.LASF98
	.4byte	0x4000000
	.uleb128 0x7
	.4byte	.LASF99
	.4byte	0x8000000
	.uleb128 0x7
	.4byte	.LASF100
	.4byte	0x10000000
	.uleb128 0x7
	.4byte	.LASF101
	.4byte	0x20000000
	.uleb128 0x7
	.4byte	.LASF102
	.4byte	0x40000000
	.uleb128 0x7
	.4byte	.LASF103
	.4byte	0x80000000
	.uleb128 0x7
	.4byte	.LASF104
	.4byte	0x40000040
	.uleb128 0x7
	.4byte	.LASF105
	.4byte	0x80000080
	.uleb128 0x7
	.4byte	.LASF106
	.4byte	0x20000020
	.uleb128 0x7
	.4byte	.LASF107
	.4byte	0x10000010
	.byte	0
	.uleb128 0xc
	.byte	0x1
	.4byte	0x34
	.byte	0xa
	.byte	0x21
	.byte	0xe
	.4byte	0x406
	.uleb128 0x1
	.4byte	.LASF108
	.byte	0
	.uleb128 0x1
	.4byte	.LASF109
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF110
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF111
	.byte	0x3
	.byte	0
	.uleb128 0x28
	.byte	0x7
	.byte	0x1
	.4byte	0x34
	.byte	0xb
	.2byte	0x1f5
	.byte	0x1
	.4byte	0x422
	.uleb128 0x1
	.4byte	.LASF112
	.byte	0
	.uleb128 0x1
	.4byte	.LASF113
	.byte	0x1
	.byte	0
	.uleb128 0xc
	.byte	0x1
	.4byte	0x34
	.byte	0xc
	.byte	0xb
	.byte	0x1
	.4byte	0x442
	.uleb128 0x1
	.4byte	.LASF114
	.byte	0
	.uleb128 0x1
	.4byte	.LASF115
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF116
	.byte	0x2
	.byte	0
	.uleb128 0xc
	.byte	0x2
	.4byte	0x5a
	.byte	0xd
	.byte	0x9
	.byte	0x1
	.4byte	0x45e
	.uleb128 0xd
	.4byte	.LASF117
	.2byte	0x100
	.uleb128 0xd
	.4byte	.LASF118
	.2byte	0x200
	.byte	0
	.uleb128 0xc
	.byte	0x1
	.4byte	0x34
	.byte	0xe
	.byte	0x10
	.byte	0xe
	.4byte	0x48a
	.uleb128 0x1
	.4byte	.LASF119
	.byte	0
	.uleb128 0x1
	.4byte	.LASF120
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF121
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF122
	.byte	0x3
	.uleb128 0x1
	.4byte	.LASF123
	.byte	0x4
	.byte	0
	.uleb128 0xa
	.4byte	.LASF124
	.byte	0xe
	.byte	0x10
	.byte	0x75
	.4byte	0x45e
	.uleb128 0xb
	.4byte	.LASF125
	.byte	0x9
	.byte	0x12
	.4byte	0x139
	.uleb128 0x5
	.byte	0x3
	.4byte	oldInput
	.uleb128 0xb
	.4byte	.LASF126
	.byte	0xa
	.byte	0x12
	.4byte	0x139
	.uleb128 0x5
	.byte	0x3
	.4byte	input
	.uleb128 0x1b
	.byte	0xc
	.byte	0x1
	.byte	0xc
	.4byte	0x4e8
	.uleb128 0x8
	.4byte	.LASF127
	.byte	0x1
	.byte	0xd
	.byte	0x6
	.4byte	0x89
	.byte	0
	.uleb128 0x8
	.4byte	.LASF128
	.byte	0x1
	.byte	0xe
	.byte	0x6
	.4byte	0x89
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF129
	.byte	0x1
	.byte	0xf
	.byte	0x6
	.4byte	0x89
	.byte	0x8
	.byte	0
	.uleb128 0x1d
	.ascii	"Row\000"
	.byte	0x1
	.byte	0x10
	.byte	0x3
	.4byte	0x4b8
	.uleb128 0xb
	.4byte	.LASF130
	.byte	0x12
	.byte	0xc
	.4byte	0x4e8
	.uleb128 0x5
	.byte	0x3
	.4byte	currentRow
	.uleb128 0xb
	.4byte	.LASF131
	.byte	0x13
	.byte	0xc
	.4byte	0x89
	.uleb128 0x5
	.byte	0x3
	.4byte	relativeX
	.uleb128 0xb
	.4byte	.LASF132
	.byte	0x13
	.byte	0x17
	.4byte	0x89
	.uleb128 0x5
	.byte	0x3
	.4byte	relativeY
	.uleb128 0xb
	.4byte	.LASF133
	.byte	0x14
	.byte	0xc
	.4byte	0x89
	.uleb128 0x5
	.byte	0x3
	.4byte	windowX
	.uleb128 0xb
	.4byte	.LASF134
	.byte	0x14
	.byte	0x15
	.4byte	0x89
	.uleb128 0x5
	.byte	0x3
	.4byte	windowY
	.uleb128 0xb
	.4byte	.LASF135
	.byte	0x15
	.byte	0xc
	.4byte	0x89
	.uleb128 0x5
	.byte	0x3
	.4byte	paddingX
	.uleb128 0xb
	.4byte	.LASF136
	.byte	0x15
	.byte	0x16
	.4byte	0x89
	.uleb128 0x5
	.byte	0x3
	.4byte	paddingY
	.uleb128 0x15
	.4byte	.LASF137
	.byte	0x24
	.4byte	0x89
	.4byte	0x57b
	.uleb128 0x12
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF138
	.byte	0x17
	.4byte	0x5b3
	.uleb128 0x3
	.4byte	0x89
	.uleb128 0x3
	.4byte	0x89
	.uleb128 0x3
	.4byte	0x89
	.uleb128 0x3
	.4byte	0x89
	.uleb128 0x3
	.4byte	0x89
	.uleb128 0x3
	.4byte	0x89
	.uleb128 0x3
	.4byte	0x89
	.uleb128 0x3
	.4byte	0x89
	.uleb128 0x3
	.4byte	0x89
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF139
	.byte	0x12
	.4byte	0x5c3
	.uleb128 0x3
	.4byte	0x48a
	.byte	0
	.uleb128 0x16
	.4byte	.LASF140
	.byte	0xe
	.byte	0x1b
	.byte	0x5
	.4byte	0x89
	.4byte	0x601
	.uleb128 0x3
	.4byte	0x89
	.uleb128 0x3
	.4byte	0x89
	.uleb128 0x3
	.4byte	0x89
	.uleb128 0x3
	.4byte	0x97
	.uleb128 0x3
	.4byte	0x298
	.uleb128 0x3
	.4byte	0x89
	.uleb128 0x3
	.4byte	0x29f
	.uleb128 0x3
	.4byte	0x287
	.uleb128 0x3
	.4byte	0x16a
	.byte	0
	.uleb128 0x16
	.4byte	.LASF141
	.byte	0xe
	.byte	0x1e
	.byte	0x5
	.4byte	0x89
	.4byte	0x61c
	.uleb128 0x3
	.4byte	0x287
	.uleb128 0x3
	.4byte	0x16a
	.byte	0
	.uleb128 0x15
	.4byte	.LASF142
	.byte	0x27
	.4byte	0x89
	.4byte	0x62c
	.uleb128 0x12
	.byte	0
	.uleb128 0x15
	.4byte	.LASF143
	.byte	0x26
	.4byte	0x89
	.4byte	0x63c
	.uleb128 0x12
	.byte	0
	.uleb128 0x16
	.4byte	.LASF144
	.byte	0x10
	.byte	0x21
	.byte	0x8
	.4byte	0x168
	.4byte	0x65c
	.uleb128 0x3
	.4byte	0x168
	.uleb128 0x3
	.4byte	0x89
	.uleb128 0x3
	.4byte	0x176
	.byte	0
	.uleb128 0xf
	.4byte	.LASF152
	.byte	0x8c
	.4byte	.LFB224
	.4byte	.LFE224-.LFB224
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6db
	.uleb128 0x5
	.ascii	"x\000"
	.byte	0x8c
	.byte	0x21
	.4byte	0x29f
	.4byte	.LLST46
	.4byte	.LVUS46
	.uleb128 0x5
	.ascii	"y\000"
	.byte	0x8c
	.byte	0x29
	.4byte	0x29f
	.4byte	.LLST47
	.4byte	.LVUS47
	.uleb128 0x4
	.4byte	.LVL84
	.4byte	0x56b
	.uleb128 0x4
	.4byte	.LVL85
	.4byte	0xef6
	.uleb128 0x4
	.4byte	.LVL86
	.4byte	0x56b
	.uleb128 0x4
	.4byte	.LVL87
	.4byte	0xef6
	.uleb128 0x4
	.4byte	.LVL88
	.4byte	0x56b
	.uleb128 0x4
	.4byte	.LVL89
	.4byte	0xef6
	.uleb128 0x4
	.4byte	.LVL91
	.4byte	0x56b
	.uleb128 0x4
	.4byte	.LVL92
	.4byte	0xef6
	.byte	0
	.uleb128 0x11
	.4byte	.LASF147
	.byte	0x86
	.4byte	0x298
	.4byte	.LFB223
	.4byte	.LFE223-.LFB223
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7a8
	.uleb128 0x5
	.ascii	"x\000"
	.byte	0x86
	.byte	0x21
	.4byte	0x89
	.4byte	.LLST40
	.4byte	.LVUS40
	.uleb128 0x5
	.ascii	"y\000"
	.byte	0x86
	.byte	0x28
	.4byte	0x89
	.4byte	.LLST41
	.4byte	.LVUS41
	.uleb128 0x5
	.ascii	"w\000"
	.byte	0x86
	.byte	0x2f
	.4byte	0x89
	.4byte	.LLST42
	.4byte	.LVUS42
	.uleb128 0x5
	.ascii	"h\000"
	.byte	0x86
	.byte	0x36
	.4byte	0x89
	.4byte	.LLST43
	.4byte	.LVUS43
	.uleb128 0x9
	.4byte	.LASF145
	.byte	0x87
	.byte	0x6
	.4byte	0x89
	.4byte	.LLST44
	.4byte	.LVUS44
	.uleb128 0x9
	.4byte	.LASF146
	.byte	0x88
	.byte	0x6
	.4byte	0x89
	.4byte	.LLST45
	.4byte	.LVUS45
	.uleb128 0x4
	.4byte	.LVL74
	.4byte	0x56b
	.uleb128 0x4
	.4byte	.LVL75
	.4byte	0xef6
	.uleb128 0x4
	.4byte	.LVL77
	.4byte	0x56b
	.uleb128 0x4
	.4byte	.LVL80
	.4byte	0xef6
	.uleb128 0x29
	.4byte	.LVL82
	.4byte	0x84f
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0xa3
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0xa3
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0xa3
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x3
	.byte	0xa3
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.byte	0
	.uleb128 0x11
	.4byte	.LASF148
	.byte	0x80
	.4byte	0x298
	.4byte	.LFB222
	.4byte	.LFE222-.LFB222
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x84f
	.uleb128 0x5
	.ascii	"x\000"
	.byte	0x80
	.byte	0x1d
	.4byte	0x89
	.4byte	.LLST26
	.4byte	.LVUS26
	.uleb128 0x5
	.ascii	"y\000"
	.byte	0x80
	.byte	0x24
	.4byte	0x89
	.4byte	.LLST27
	.4byte	.LVUS27
	.uleb128 0x5
	.ascii	"w\000"
	.byte	0x80
	.byte	0x2b
	.4byte	0x89
	.4byte	.LLST28
	.4byte	.LVUS28
	.uleb128 0x5
	.ascii	"h\000"
	.byte	0x80
	.byte	0x32
	.4byte	0x89
	.4byte	.LLST29
	.4byte	.LVUS29
	.uleb128 0x9
	.4byte	.LASF145
	.byte	0x81
	.byte	0x6
	.4byte	0x89
	.4byte	.LLST30
	.4byte	.LVUS30
	.uleb128 0x9
	.4byte	.LASF146
	.byte	0x82
	.byte	0x6
	.4byte	0x89
	.4byte	.LLST31
	.4byte	.LVUS31
	.uleb128 0x4
	.4byte	.LVL46
	.4byte	0x56b
	.uleb128 0x4
	.4byte	.LVL47
	.4byte	0xef6
	.uleb128 0x4
	.4byte	.LVL49
	.4byte	0x56b
	.uleb128 0x4
	.4byte	.LVL50
	.4byte	0xef6
	.byte	0
	.uleb128 0x11
	.4byte	.LASF149
	.byte	0x7b
	.4byte	0x298
	.4byte	.LFB221
	.4byte	.LFE221-.LFB221
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8f6
	.uleb128 0x5
	.ascii	"x\000"
	.byte	0x7b
	.byte	0x1c
	.4byte	0x89
	.4byte	.LLST20
	.4byte	.LVUS20
	.uleb128 0x5
	.ascii	"y\000"
	.byte	0x7b
	.byte	0x23
	.4byte	0x89
	.4byte	.LLST21
	.4byte	.LVUS21
	.uleb128 0x5
	.ascii	"w\000"
	.byte	0x7b
	.byte	0x2a
	.4byte	0x89
	.4byte	.LLST22
	.4byte	.LVUS22
	.uleb128 0x5
	.ascii	"h\000"
	.byte	0x7b
	.byte	0x31
	.4byte	0x89
	.4byte	.LLST23
	.4byte	.LVUS23
	.uleb128 0x9
	.4byte	.LASF150
	.byte	0x7c
	.byte	0x6
	.4byte	0x89
	.4byte	.LLST24
	.4byte	.LVUS24
	.uleb128 0x9
	.4byte	.LASF151
	.byte	0x7d
	.byte	0x6
	.4byte	0x89
	.4byte	.LLST25
	.4byte	.LVUS25
	.uleb128 0x4
	.4byte	.LVL35
	.4byte	0x56b
	.uleb128 0x4
	.4byte	.LVL36
	.4byte	0xef6
	.uleb128 0x4
	.4byte	.LVL38
	.4byte	0x56b
	.uleb128 0x4
	.4byte	.LVL39
	.4byte	0xef6
	.byte	0
	.uleb128 0xf
	.4byte	.LASF153
	.byte	0x76
	.4byte	.LFB220
	.4byte	.LFE220-.LFB220
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x919
	.uleb128 0x17
	.4byte	.LASF159
	.byte	0x76
	.byte	0x1e
	.4byte	0x139
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0xf
	.4byte	.LASF154
	.byte	0x74
	.4byte	.LFB219
	.4byte	.LFE219-.LFB219
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x93f
	.uleb128 0x5
	.ascii	"y\000"
	.byte	0x74
	.byte	0x1c
	.4byte	0x89
	.4byte	.LLST19
	.4byte	.LVUS19
	.byte	0
	.uleb128 0xf
	.4byte	.LASF155
	.byte	0x73
	.4byte	.LFB218
	.4byte	.LFE218-.LFB218
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x98a
	.uleb128 0xe
	.4byte	.LASF156
	.byte	0x73
	.byte	0x16
	.4byte	0x26
	.4byte	.LLST17
	.4byte	.LVUS17
	.uleb128 0x2a
	.4byte	0xea2
	.4byte	.LBI32
	.byte	.LVU161
	.4byte	.LBB32
	.4byte	.LBE32-.LBB32
	.byte	0x1
	.byte	0x73
	.byte	0x2c
	.uleb128 0x13
	.4byte	0xeb3
	.4byte	.LLST18
	.4byte	.LVUS18
	.byte	0
	.byte	0
	.uleb128 0x11
	.4byte	.LASF157
	.byte	0x50
	.4byte	0x298
	.4byte	.LFB217
	.4byte	.LFE217-.LFB217
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc0f
	.uleb128 0xe
	.4byte	.LASF158
	.byte	0x50
	.byte	0x16
	.4byte	0x26
	.4byte	.LLST32
	.4byte	.LVUS32
	.uleb128 0x17
	.4byte	.LASF160
	.byte	0x50
	.byte	0x28
	.4byte	0x287
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x12
	.uleb128 0x1f
	.ascii	"vl\000"
	.byte	0x53
	.4byte	0x16a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x9
	.4byte	.LASF161
	.byte	0x56
	.byte	0x6
	.4byte	0x89
	.4byte	.LLST33
	.4byte	.LVUS33
	.uleb128 0x18
	.ascii	"x\000"
	.byte	0x58
	.4byte	0x89
	.4byte	.LLST34
	.4byte	.LVUS34
	.uleb128 0x18
	.ascii	"y\000"
	.byte	0x59
	.4byte	0x89
	.4byte	.LLST35
	.4byte	.LVUS35
	.uleb128 0x18
	.ascii	"w\000"
	.byte	0x5a
	.4byte	0x89
	.4byte	.LLST36
	.4byte	.LVUS36
	.uleb128 0x9
	.4byte	.LASF162
	.byte	0x5c
	.byte	0x6
	.4byte	0x298
	.4byte	.LLST37
	.4byte	.LVUS37
	.uleb128 0xb
	.4byte	.LASF163
	.byte	0x5e
	.byte	0x6
	.4byte	0x89
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x19
	.4byte	0xea2
	.4byte	.LBI34
	.byte	.LVU267
	.4byte	.LLRL38
	.byte	0x5a
	.byte	0x2a
	.4byte	0xa55
	.uleb128 0x13
	.4byte	0xeb3
	.4byte	.LLST39
	.4byte	.LVUS39
	.byte	0
	.uleb128 0x10
	.4byte	.LVL58
	.4byte	0x601
	.4byte	0xa70
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -44
	.byte	0x6
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x10
	.4byte	.LVL61
	.4byte	0x84f
	.4byte	0xa95
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7a
	.sleb128 0
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1
	.byte	0x44
	.byte	0
	.uleb128 0x10
	.4byte	.LVL63
	.4byte	0x5b3
	.4byte	0xaa8
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x33
	.byte	0
	.uleb128 0x10
	.4byte	.LVL65
	.4byte	0x57b
	.4byte	0xaf0
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7a
	.sleb128 0
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x9
	.byte	0xfd
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x2
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x2
	.uleb128 0x2
	.byte	0x7d
	.sleb128 4
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2
	.uleb128 0x2
	.byte	0x7d
	.sleb128 8
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x2
	.uleb128 0x2
	.byte	0x7d
	.sleb128 12
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x2
	.uleb128 0x2
	.byte	0x7d
	.sleb128 16
	.uleb128 0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x10
	.4byte	.LVL66
	.4byte	0x57b
	.4byte	0xb3f
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x4
	.byte	0x91
	.sleb128 -104
	.byte	0x6
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7a
	.sleb128 0
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x9
	.byte	0xfd
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x4
	.byte	0x91
	.sleb128 -100
	.byte	0x6
	.uleb128 0x2
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x2
	.uleb128 0x2
	.byte	0x7d
	.sleb128 4
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x2
	.uleb128 0x2
	.byte	0x7d
	.sleb128 8
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x2
	.uleb128 0x2
	.byte	0x7d
	.sleb128 12
	.uleb128 0x4
	.byte	0x91
	.sleb128 -100
	.byte	0x6
	.uleb128 0x2
	.uleb128 0x2
	.byte	0x7d
	.sleb128 16
	.uleb128 0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x10
	.4byte	.LVL67
	.4byte	0x57b
	.4byte	0xb8f
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x9
	.byte	0x91
	.sleb128 -104
	.byte	0x6
	.byte	0x91
	.sleb128 -100
	.byte	0x6
	.byte	0x22
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7a
	.sleb128 0
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x9
	.byte	0xfd
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x2
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x2
	.uleb128 0x2
	.byte	0x7d
	.sleb128 4
	.uleb128 0x2
	.byte	0x8
	.byte	0xc0
	.uleb128 0x2
	.uleb128 0x2
	.byte	0x7d
	.sleb128 8
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x2
	.uleb128 0x2
	.byte	0x7d
	.sleb128 12
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x2
	.uleb128 0x2
	.byte	0x7d
	.sleb128 16
	.uleb128 0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x10
	.4byte	.LVL68
	.4byte	0x5c3
	.4byte	0xbec
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1a
	.byte	0x76
	.sleb128 0
	.byte	0x4f
	.byte	0x25
	.byte	0x76
	.sleb128 0
	.byte	0x22
	.byte	0x31
	.byte	0x26
	.byte	0x91
	.sleb128 -108
	.byte	0x6
	.byte	0x4f
	.byte	0x25
	.byte	0x91
	.sleb128 -108
	.byte	0x6
	.byte	0x22
	.byte	0x31
	.byte	0x26
	.byte	0x1c
	.byte	0x77
	.sleb128 0
	.byte	0x22
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7b
	.sleb128 0
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x3
	.byte	0xa
	.2byte	0x7fff
	.uleb128 0x2
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2
	.uleb128 0x2
	.byte	0x7d
	.sleb128 4
	.uleb128 0x5
	.byte	0xc
	.4byte	0x7fffffff
	.uleb128 0x2
	.uleb128 0x2
	.byte	0x7d
	.sleb128 8
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2
	.uleb128 0x2
	.byte	0x7d
	.sleb128 12
	.uleb128 0x3
	.byte	0x91
	.sleb128 -44
	.byte	0x6
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL72
	.4byte	0x7a8
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7a
	.sleb128 0
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xf
	.4byte	.LASF164
	.byte	0x3e
	.4byte	.LFB216
	.4byte	.LFE216-.LFB216
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd56
	.uleb128 0xe
	.4byte	.LASF158
	.byte	0x3e
	.byte	0x16
	.4byte	0x26
	.4byte	.LLST7
	.4byte	.LVUS7
	.uleb128 0xe
	.4byte	.LASF165
	.byte	0x3e
	.byte	0x20
	.4byte	0x298
	.4byte	.LLST8
	.4byte	.LVUS8
	.uleb128 0xe
	.4byte	.LASF166
	.byte	0x3e
	.byte	0x30
	.4byte	0x97
	.4byte	.LLST9
	.4byte	.LVUS9
	.uleb128 0xe
	.4byte	.LASF167
	.byte	0x3e
	.byte	0x3c
	.4byte	0x298
	.4byte	.LLST10
	.4byte	.LVUS10
	.uleb128 0x17
	.4byte	.LASF168
	.byte	0x3e
	.byte	0x50
	.4byte	0x287
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x12
	.uleb128 0x9
	.4byte	.LASF169
	.byte	0x3f
	.byte	0x6
	.4byte	0x89
	.4byte	.LLST11
	.4byte	.LVUS11
	.uleb128 0xb
	.4byte	.LASF170
	.byte	0x40
	.byte	0x6
	.4byte	0x89
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1f
	.ascii	"vl\000"
	.byte	0x42
	.4byte	0x16a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x9
	.4byte	.LASF171
	.byte	0x44
	.byte	0x6
	.4byte	0x89
	.4byte	.LLST12
	.4byte	.LVUS12
	.uleb128 0x9
	.4byte	.LASF172
	.byte	0x49
	.byte	0x6
	.4byte	0x89
	.4byte	.LLST13
	.4byte	.LVUS13
	.uleb128 0x2b
	.4byte	.LBB31
	.4byte	.LBE31-.LBB31
	.4byte	0xd02
	.uleb128 0x9
	.4byte	.LASF161
	.byte	0x46
	.byte	0x7
	.4byte	0x89
	.4byte	.LLST16
	.4byte	.LVUS16
	.uleb128 0x1a
	.4byte	.LVL26
	.4byte	0x601
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x19
	.4byte	0xea2
	.4byte	.LBI23
	.byte	.LVU108
	.4byte	.LLRL14
	.byte	0x3f
	.byte	0x47
	.4byte	0xd24
	.uleb128 0x13
	.4byte	0xeb3
	.4byte	.LLST15
	.4byte	.LVUS15
	.byte	0
	.uleb128 0x1a
	.4byte	.LVL21
	.4byte	0x5c3
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x3
	.byte	0xa
	.2byte	0x7fff
	.uleb128 0x2
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2
	.uleb128 0x2
	.byte	0x7d
	.sleb128 4
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x2
	.uleb128 0x2
	.byte	0x7d
	.sleb128 8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.uleb128 0x2
	.byte	0x7d
	.sleb128 12
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x14
	.4byte	.LASF179
	.byte	0x3c
	.4byte	.LFB215
	.4byte	.LFE215-.LFB215
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2c
	.4byte	.LASF173
	.byte	0x1
	.byte	0x37
	.byte	0x6
	.byte	0x1
	.4byte	0xd88
	.uleb128 0x20
	.4byte	.LASF127
	.byte	0x17
	.4byte	0x89
	.uleb128 0x20
	.4byte	.LASF174
	.byte	0x22
	.4byte	0x89
	.byte	0
	.uleb128 0xf
	.4byte	.LASF175
	.byte	0x32
	.4byte	.LFB213
	.4byte	.LFE213-.LFB213
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xdf3
	.uleb128 0xe
	.4byte	.LASF127
	.byte	0x32
	.byte	0x1d
	.4byte	0x89
	.4byte	.LLST2
	.4byte	.LVUS2
	.uleb128 0xe
	.4byte	.LASF174
	.byte	0x32
	.byte	0x28
	.4byte	0x89
	.4byte	.LLST3
	.4byte	.LVUS3
	.uleb128 0x19
	.4byte	0xd66
	.4byte	.LBI11
	.byte	.LVU63
	.4byte	.LLRL4
	.byte	0x34
	.byte	0x2
	.4byte	0xde9
	.uleb128 0x2d
	.4byte	0xd7d
	.uleb128 0x13
	.4byte	0xd73
	.4byte	.LLST5
	.4byte	.LVUS5
	.byte	0
	.uleb128 0x4
	.4byte	.LVL8
	.4byte	0x62c
	.byte	0
	.uleb128 0x11
	.4byte	.LASF176
	.byte	0x30
	.4byte	0x89
	.4byte	.LFB212
	.4byte	.LFE212-.LFB212
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe26
	.uleb128 0x5
	.ascii	"y\000"
	.byte	0x30
	.byte	0x1e
	.4byte	0x26
	.4byte	.LLST1
	.4byte	.LVUS1
	.uleb128 0x4
	.4byte	.LVL5
	.4byte	0x61c
	.byte	0
	.uleb128 0x11
	.4byte	.LASF177
	.byte	0x2f
	.4byte	0x89
	.4byte	.LFB211
	.4byte	.LFE211-.LFB211
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe59
	.uleb128 0x5
	.ascii	"x\000"
	.byte	0x2f
	.byte	0x1d
	.4byte	0x26
	.4byte	.LLST0
	.4byte	.LVUS0
	.uleb128 0x4
	.4byte	.LVL2
	.4byte	0x62c
	.byte	0
	.uleb128 0xf
	.4byte	.LASF178
	.byte	0x2a
	.4byte	.LFB210
	.4byte	.LFE210-.LFB210
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe82
	.uleb128 0x21
	.ascii	"x\000"
	.byte	0x15
	.4byte	0x89
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x21
	.ascii	"y\000"
	.byte	0x1c
	.4byte	0x89
	.uleb128 0x1
	.byte	0x51
	.byte	0
	.uleb128 0x14
	.4byte	.LASF180
	.byte	0x23
	.4byte	.LFB209
	.4byte	.LFE209-.LFB209
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x14
	.4byte	.LASF181
	.byte	0x21
	.4byte	.LFB208
	.4byte	.LFE208-.LFB208
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2e
	.4byte	.LASF188
	.byte	0x1
	.byte	0x1f
	.byte	0x13
	.4byte	0x89
	.byte	0x3
	.4byte	0xebe
	.uleb128 0x2f
	.ascii	"s\000"
	.byte	0x1
	.byte	0x1f
	.byte	0x30
	.4byte	0x26
	.byte	0
	.uleb128 0x14
	.4byte	.LASF182
	.byte	0x17
	.4byte	.LFB206
	.4byte	.LFE206-.LFB206
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x30
	.4byte	0xd66
	.4byte	.LFB214
	.4byte	.LFE214-.LFB214
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xef6
	.uleb128 0x31
	.4byte	0xd73
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x13
	.4byte	0xd7d
	.4byte	.LLST6
	.4byte	.LVUS6
	.byte	0
	.uleb128 0x32
	.4byte	.LASF189
	.4byte	.LASF189
	.byte	0
	.section	.debug_abbrev,"",%progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x49
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x7e
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x48
	.byte	0
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x6
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
	.uleb128 0x7
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3e
	.uleb128 0x21
	.sleb128 7
	.uleb128 0xb
	.uleb128 0xb
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
	.uleb128 0xd
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.sleb128 5
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
	.uleb128 0x12
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0x2e
	.byte	0
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7a
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 14
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x17
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.sleb128 6
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x2138
	.uleb128 0xb
	.uleb128 0x55
	.uleb128 0x17
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
	.uleb128 0x1a
	.uleb128 0x48
	.byte	0x1
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1c
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x1e
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 14
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
	.uleb128 0x1f
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
	.sleb128 10
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x21
	.sleb128 55
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x21
	.sleb128 42
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.uleb128 0x34
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x57
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x30
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
	.uleb128 0x31
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x32
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
.LVUS46:
	.uleb128 0
	.uleb128 .LVU356
	.uleb128 .LVU356
	.uleb128 .LVU370
	.uleb128 .LVU370
	.uleb128 0
.LLST46:
	.byte	0x6
	.4byte	.LVL83
	.byte	0x4
	.uleb128 .LVL83-.LVL83
	.uleb128 .LVL84-1-.LVL83
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL84-1-.LVL83
	.uleb128 .LVL90-.LVL83
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL90-.LVL83
	.uleb128 .LFE224-.LVL83
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.byte	0
.LVUS47:
	.uleb128 0
	.uleb128 .LVU356
	.uleb128 .LVU356
	.uleb128 0
.LLST47:
	.byte	0x6
	.4byte	.LVL83
	.byte	0x4
	.uleb128 .LVL83-.LVL83
	.uleb128 .LVL84-1-.LVL83
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL84-1-.LVL83
	.uleb128 .LFE224-.LVL83
	.uleb128 0x1
	.byte	0x54
	.byte	0
.LVUS40:
	.uleb128 0
	.uleb128 .LVU320
	.uleb128 .LVU320
	.uleb128 .LVU334
	.uleb128 .LVU334
	.uleb128 .LVU335
	.uleb128 .LVU335
	.uleb128 0
.LLST40:
	.byte	0x6
	.4byte	.LVL73
	.byte	0x4
	.uleb128 .LVL73-.LVL73
	.uleb128 .LVL74-1-.LVL73
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL74-1-.LVL73
	.uleb128 .LVL81-.LVL73
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL81-.LVL73
	.uleb128 .LVL82-1-.LVL73
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL82-1-.LVL73
	.uleb128 .LFE223-.LVL73
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.byte	0
.LVUS41:
	.uleb128 0
	.uleb128 .LVU320
	.uleb128 .LVU320
	.uleb128 .LVU334
	.uleb128 .LVU334
	.uleb128 .LVU335
	.uleb128 .LVU335
	.uleb128 0
.LLST41:
	.byte	0x6
	.4byte	.LVL73
	.byte	0x4
	.uleb128 .LVL73-.LVL73
	.uleb128 .LVL74-1-.LVL73
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL74-1-.LVL73
	.uleb128 .LVL81-.LVL73
	.uleb128 0x1
	.byte	0x56
	.byte	0x4
	.uleb128 .LVL81-.LVL73
	.uleb128 .LVL82-1-.LVL73
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL82-1-.LVL73
	.uleb128 .LFE223-.LVL73
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.byte	0
.LVUS42:
	.uleb128 0
	.uleb128 .LVU320
	.uleb128 .LVU320
	.uleb128 .LVU334
	.uleb128 .LVU334
	.uleb128 .LVU335
	.uleb128 .LVU335
	.uleb128 0
.LLST42:
	.byte	0x6
	.4byte	.LVL73
	.byte	0x4
	.uleb128 .LVL73-.LVL73
	.uleb128 .LVL74-1-.LVL73
	.uleb128 0x1
	.byte	0x52
	.byte	0x4
	.uleb128 .LVL74-1-.LVL73
	.uleb128 .LVL81-.LVL73
	.uleb128 0x1
	.byte	0x57
	.byte	0x4
	.uleb128 .LVL81-.LVL73
	.uleb128 .LVL82-1-.LVL73
	.uleb128 0x1
	.byte	0x52
	.byte	0x4
	.uleb128 .LVL82-1-.LVL73
	.uleb128 .LFE223-.LVL73
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.byte	0
.LVUS43:
	.uleb128 0
	.uleb128 .LVU320
	.uleb128 .LVU320
	.uleb128 .LVU334
	.uleb128 .LVU334
	.uleb128 .LVU335
	.uleb128 .LVU335
	.uleb128 0
.LLST43:
	.byte	0x6
	.4byte	.LVL73
	.byte	0x4
	.uleb128 .LVL73-.LVL73
	.uleb128 .LVL74-1-.LVL73
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL74-1-.LVL73
	.uleb128 .LVL81-.LVL73
	.uleb128 0x1
	.byte	0x58
	.byte	0x4
	.uleb128 .LVL81-.LVL73
	.uleb128 .LVL82-1-.LVL73
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL82-1-.LVL73
	.uleb128 .LFE223-.LVL73
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.byte	0
.LVUS44:
	.uleb128 .LVU324
	.uleb128 .LVU326
	.uleb128 .LVU326
	.uleb128 .LVU334
.LLST44:
	.byte	0x6
	.4byte	.LVL76
	.byte	0x4
	.uleb128 .LVL76-.LVL76
	.uleb128 .LVL77-1-.LVL76
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL77-1-.LVL76
	.uleb128 .LVL81-.LVL76
	.uleb128 0x1
	.byte	0x54
	.byte	0
.LVUS45:
	.uleb128 .LVU327
	.uleb128 .LVU329
	.uleb128 .LVU329
	.uleb128 .LVU330
.LLST45:
	.byte	0x6
	.4byte	.LVL78
	.byte	0x4
	.uleb128 .LVL78-.LVL78
	.uleb128 .LVL79-.LVL78
	.uleb128 0x6
	.byte	0x79
	.sleb128 0
	.byte	0x70
	.sleb128 0
	.byte	0x1b
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL79-.LVL78
	.uleb128 .LVL80-1-.LVL78
	.uleb128 0x6
	.byte	0x79
	.sleb128 0
	.byte	0x71
	.sleb128 0
	.byte	0x1b
	.byte	0x9f
	.byte	0
.LVUS26:
	.uleb128 0
	.uleb128 .LVU223
	.uleb128 .LVU223
	.uleb128 .LVU234
	.uleb128 .LVU234
	.uleb128 .LVU236
	.uleb128 .LVU236
	.uleb128 .LVU237
	.uleb128 .LVU237
	.uleb128 0
.LLST26:
	.byte	0x6
	.4byte	.LVL45
	.byte	0x4
	.uleb128 .LVL45-.LVL45
	.uleb128 .LVL46-1-.LVL45
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL46-1-.LVL45
	.uleb128 .LVL51-.LVL45
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL51-.LVL45
	.uleb128 .LVL53-.LVL45
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL53-.LVL45
	.uleb128 .LVL54-.LVL45
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL54-.LVL45
	.uleb128 .LFE222-.LVL45
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.byte	0
.LVUS27:
	.uleb128 0
	.uleb128 .LVU223
	.uleb128 .LVU223
	.uleb128 .LVU234
	.uleb128 .LVU234
	.uleb128 .LVU236
	.uleb128 .LVU236
	.uleb128 .LVU239
	.uleb128 .LVU239
	.uleb128 0
.LLST27:
	.byte	0x6
	.4byte	.LVL45
	.byte	0x4
	.uleb128 .LVL45-.LVL45
	.uleb128 .LVL46-1-.LVL45
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL46-1-.LVL45
	.uleb128 .LVL51-.LVL45
	.uleb128 0x1
	.byte	0x56
	.byte	0x4
	.uleb128 .LVL51-.LVL45
	.uleb128 .LVL53-.LVL45
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL53-.LVL45
	.uleb128 .LVL55-.LVL45
	.uleb128 0x1
	.byte	0x56
	.byte	0x4
	.uleb128 .LVL55-.LVL45
	.uleb128 .LFE222-.LVL45
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.byte	0
.LVUS28:
	.uleb128 0
	.uleb128 .LVU223
	.uleb128 .LVU223
	.uleb128 0
.LLST28:
	.byte	0x6
	.4byte	.LVL45
	.byte	0x4
	.uleb128 .LVL45-.LVL45
	.uleb128 .LVL46-1-.LVL45
	.uleb128 0x1
	.byte	0x52
	.byte	0x4
	.uleb128 .LVL46-1-.LVL45
	.uleb128 .LFE222-.LVL45
	.uleb128 0x1
	.byte	0x57
	.byte	0
.LVUS29:
	.uleb128 0
	.uleb128 .LVU223
	.uleb128 .LVU223
	.uleb128 0
.LLST29:
	.byte	0x6
	.4byte	.LVL45
	.byte	0x4
	.uleb128 .LVL45-.LVL45
	.uleb128 .LVL46-1-.LVL45
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL46-1-.LVL45
	.uleb128 .LFE222-.LVL45
	.uleb128 0x1
	.byte	0x58
	.byte	0
.LVUS30:
	.uleb128 .LVU227
	.uleb128 .LVU229
	.uleb128 .LVU229
	.uleb128 0
.LLST30:
	.byte	0x6
	.4byte	.LVL48
	.byte	0x4
	.uleb128 .LVL48-.LVL48
	.uleb128 .LVL49-1-.LVL48
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL49-1-.LVL48
	.uleb128 .LFE222-.LVL48
	.uleb128 0x1
	.byte	0x54
	.byte	0
.LVUS31:
	.uleb128 .LVU231
	.uleb128 .LVU235
	.uleb128 .LVU236
	.uleb128 0
.LLST31:
	.byte	0x6
	.4byte	.LVL50
	.byte	0x4
	.uleb128 .LVL50-.LVL50
	.uleb128 .LVL52-.LVL50
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL53-.LVL50
	.uleb128 .LFE222-.LVL50
	.uleb128 0x1
	.byte	0x50
	.byte	0
.LVUS20:
	.uleb128 0
	.uleb128 .LVU198
	.uleb128 .LVU198
	.uleb128 .LVU209
	.uleb128 .LVU209
	.uleb128 .LVU211
	.uleb128 .LVU211
	.uleb128 .LVU212
	.uleb128 .LVU212
	.uleb128 0
.LLST20:
	.byte	0x6
	.4byte	.LVL34
	.byte	0x4
	.uleb128 .LVL34-.LVL34
	.uleb128 .LVL35-1-.LVL34
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL35-1-.LVL34
	.uleb128 .LVL40-.LVL34
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL40-.LVL34
	.uleb128 .LVL42-.LVL34
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL42-.LVL34
	.uleb128 .LVL43-.LVL34
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL43-.LVL34
	.uleb128 .LFE221-.LVL34
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.byte	0
.LVUS21:
	.uleb128 0
	.uleb128 .LVU198
	.uleb128 .LVU198
	.uleb128 .LVU209
	.uleb128 .LVU209
	.uleb128 .LVU211
	.uleb128 .LVU211
	.uleb128 .LVU214
	.uleb128 .LVU214
	.uleb128 0
.LLST21:
	.byte	0x6
	.4byte	.LVL34
	.byte	0x4
	.uleb128 .LVL34-.LVL34
	.uleb128 .LVL35-1-.LVL34
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL35-1-.LVL34
	.uleb128 .LVL40-.LVL34
	.uleb128 0x1
	.byte	0x56
	.byte	0x4
	.uleb128 .LVL40-.LVL34
	.uleb128 .LVL42-.LVL34
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL42-.LVL34
	.uleb128 .LVL44-.LVL34
	.uleb128 0x1
	.byte	0x56
	.byte	0x4
	.uleb128 .LVL44-.LVL34
	.uleb128 .LFE221-.LVL34
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.byte	0
.LVUS22:
	.uleb128 0
	.uleb128 .LVU198
	.uleb128 .LVU198
	.uleb128 0
.LLST22:
	.byte	0x6
	.4byte	.LVL34
	.byte	0x4
	.uleb128 .LVL34-.LVL34
	.uleb128 .LVL35-1-.LVL34
	.uleb128 0x1
	.byte	0x52
	.byte	0x4
	.uleb128 .LVL35-1-.LVL34
	.uleb128 .LFE221-.LVL34
	.uleb128 0x1
	.byte	0x57
	.byte	0
.LVUS23:
	.uleb128 0
	.uleb128 .LVU198
	.uleb128 .LVU198
	.uleb128 0
.LLST23:
	.byte	0x6
	.4byte	.LVL34
	.byte	0x4
	.uleb128 .LVL34-.LVL34
	.uleb128 .LVL35-1-.LVL34
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL35-1-.LVL34
	.uleb128 .LFE221-.LVL34
	.uleb128 0x1
	.byte	0x58
	.byte	0
.LVUS24:
	.uleb128 .LVU202
	.uleb128 .LVU204
	.uleb128 .LVU204
	.uleb128 0
.LLST24:
	.byte	0x6
	.4byte	.LVL37
	.byte	0x4
	.uleb128 .LVL37-.LVL37
	.uleb128 .LVL38-1-.LVL37
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL38-1-.LVL37
	.uleb128 .LFE221-.LVL37
	.uleb128 0x1
	.byte	0x54
	.byte	0
.LVUS25:
	.uleb128 .LVU206
	.uleb128 .LVU210
	.uleb128 .LVU211
	.uleb128 0
.LLST25:
	.byte	0x6
	.4byte	.LVL39
	.byte	0x4
	.uleb128 .LVL39-.LVL39
	.uleb128 .LVL41-.LVL39
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL42-.LVL39
	.uleb128 .LFE221-.LVL39
	.uleb128 0x1
	.byte	0x50
	.byte	0
.LVUS19:
	.uleb128 0
	.uleb128 .LVU174
	.uleb128 .LVU174
	.uleb128 0
.LLST19:
	.byte	0x6
	.4byte	.LVL32
	.byte	0x4
	.uleb128 .LVL32-.LVL32
	.uleb128 .LVL33-.LVL32
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL33-.LVL32
	.uleb128 .LFE219-.LVL32
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.byte	0
.LVUS17:
	.uleb128 0
	.uleb128 .LVU165
	.uleb128 .LVU165
	.uleb128 0
.LLST17:
	.byte	0x6
	.4byte	.LVL29
	.byte	0x4
	.uleb128 .LVL29-.LVL29
	.uleb128 .LVL31-.LVL29
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x40
	.byte	0x4
	.uleb128 .LVL31-.LVL29
	.uleb128 .LFE218-.LVL29
	.uleb128 0x6
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0x40
	.uleb128 0x26
	.byte	0x9f
	.byte	0
.LVUS18:
	.uleb128 .LVU161
	.uleb128 .LVU163
.LLST18:
	.byte	0x8
	.4byte	.LVL30
	.uleb128 .LVL30-.LVL30
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x40
	.byte	0
.LVUS32:
	.uleb128 0
	.uleb128 .LVU246
	.uleb128 .LVU246
	.uleb128 .LVU249
	.uleb128 .LVU249
	.uleb128 .LVU309
	.uleb128 .LVU309
	.uleb128 .LVU311
	.uleb128 .LVU311
	.uleb128 0
.LLST32:
	.byte	0x6
	.4byte	.LVL56
	.byte	0x4
	.uleb128 .LVL56-.LVL56
	.uleb128 .LVL57-.LVL56
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL57-.LVL56
	.uleb128 .LVL58-1-.LVL56
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL58-1-.LVL56
	.uleb128 .LVL69-.LVL56
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x50
	.byte	0x4
	.uleb128 .LVL69-.LVL56
	.uleb128 .LVL71-.LVL56
	.uleb128 0x6
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0
	.uleb128 0x26
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL71-.LVL56
	.uleb128 .LFE217-.LVL56
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x50
	.byte	0
.LVUS33:
	.uleb128 .LVU264
	.uleb128 .LVU272
	.uleb128 .LVU272
	.uleb128 0
.LLST33:
	.byte	0x6
	.4byte	.LVL59
	.byte	0x4
	.uleb128 .LVL59-.LVL59
	.uleb128 .LVL60-.LVL59
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL60-.LVL59
	.uleb128 .LFE217-.LVL59
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.byte	0
.LVUS34:
	.uleb128 .LVU265
	.uleb128 .LVU310
	.uleb128 .LVU310
	.uleb128 .LVU311
	.uleb128 .LVU311
	.uleb128 0
.LLST34:
	.byte	0x6
	.4byte	.LVL59
	.byte	0x4
	.uleb128 .LVL59-.LVL59
	.uleb128 .LVL70-.LVL59
	.uleb128 0x1
	.byte	0x57
	.byte	0x4
	.uleb128 .LVL70-.LVL59
	.uleb128 .LVL71-.LVL59
	.uleb128 0x7
	.byte	0x91
	.sleb128 -104
	.byte	0x6
	.byte	0x38
	.byte	0x1c
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL71-.LVL59
	.uleb128 .LFE217-.LVL59
	.uleb128 0x1
	.byte	0x57
	.byte	0
.LVUS35:
	.uleb128 .LVU266
	.uleb128 .LVU273
	.uleb128 .LVU273
	.uleb128 .LVU310
	.uleb128 .LVU311
	.uleb128 0
.LLST35:
	.byte	0x6
	.4byte	.LVL59
	.byte	0x4
	.uleb128 .LVL59-.LVL59
	.uleb128 .LVL61-1-.LVL59
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL61-1-.LVL59
	.uleb128 .LVL70-.LVL59
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL71-.LVL59
	.uleb128 .LFE217-.LVL59
	.uleb128 0x1
	.byte	0x5a
	.byte	0
.LVUS36:
	.uleb128 .LVU269
	.uleb128 .LVU273
	.uleb128 .LVU273
	.uleb128 .LVU310
	.uleb128 .LVU310
	.uleb128 .LVU311
	.uleb128 .LVU311
	.uleb128 0
.LLST36:
	.byte	0x6
	.4byte	.LVL59
	.byte	0x4
	.uleb128 .LVL59-.LVL59
	.uleb128 .LVL61-1-.LVL59
	.uleb128 0x1
	.byte	0x52
	.byte	0x4
	.uleb128 .LVL61-1-.LVL59
	.uleb128 .LVL70-.LVL59
	.uleb128 0x1
	.byte	0x56
	.byte	0x4
	.uleb128 .LVL70-.LVL59
	.uleb128 .LVL71-.LVL59
	.uleb128 0x7
	.byte	0x91
	.sleb128 -100
	.byte	0x6
	.byte	0x23
	.uleb128 0x10
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL71-.LVL59
	.uleb128 .LFE217-.LVL59
	.uleb128 0x1
	.byte	0x56
	.byte	0
.LVUS37:
	.uleb128 .LVU275
	.uleb128 .LVU279
.LLST37:
	.byte	0x8
	.4byte	.LVL62
	.uleb128 .LVL64-.LVL62
	.uleb128 0x1
	.byte	0x54
	.byte	0
.LVUS39:
	.uleb128 .LVU267
	.uleb128 .LVU269
.LLST39:
	.byte	0x8
	.4byte	.LVL59
	.uleb128 .LVL59-.LVL59
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x50
	.byte	0
.LVUS7:
	.uleb128 0
	.uleb128 .LVU123
	.uleb128 .LVU123
	.uleb128 .LVU146
	.uleb128 .LVU146
	.uleb128 .LVU147
	.uleb128 .LVU147
	.uleb128 .LVU149
	.uleb128 .LVU149
	.uleb128 0
.LLST7:
	.byte	0x6
	.4byte	.LVL14
	.byte	0x4
	.uleb128 .LVL14-.LVL14
	.uleb128 .LVL18-.LVL14
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL18-.LVL14
	.uleb128 .LVL23-.LVL14
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x50
	.byte	0x4
	.uleb128 .LVL23-.LVL14
	.uleb128 .LVL24-.LVL14
	.uleb128 0x6
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0
	.uleb128 0x26
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL24-.LVL14
	.uleb128 .LVL25-.LVL14
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL25-.LVL14
	.uleb128 .LFE216-.LVL14
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x50
	.byte	0
.LVUS8:
	.uleb128 0
	.uleb128 .LVU123
	.uleb128 .LVU123
	.uleb128 .LVU147
	.uleb128 .LVU147
	.uleb128 .LVU150
	.uleb128 .LVU150
	.uleb128 0
.LLST8:
	.byte	0x6
	.4byte	.LVL14
	.byte	0x4
	.uleb128 .LVL14-.LVL14
	.uleb128 .LVL18-.LVL14
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL18-.LVL14
	.uleb128 .LVL24-.LVL14
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL24-.LVL14
	.uleb128 .LVL26-1-.LVL14
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL26-1-.LVL14
	.uleb128 .LFE216-.LVL14
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.byte	0
.LVUS9:
	.uleb128 0
	.uleb128 .LVU102
	.uleb128 .LVU102
	.uleb128 0
.LLST9:
	.byte	0x6
	.4byte	.LVL14
	.byte	0x4
	.uleb128 .LVL14-.LVL14
	.uleb128 .LVL15-.LVL14
	.uleb128 0x1
	.byte	0x52
	.byte	0x4
	.uleb128 .LVL15-.LVL14
	.uleb128 .LFE216-.LVL14
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.byte	0
.LVUS10:
	.uleb128 0
	.uleb128 .LVU123
	.uleb128 .LVU123
	.uleb128 .LVU147
	.uleb128 .LVU147
	.uleb128 .LVU150
	.uleb128 .LVU150
	.uleb128 0
.LLST10:
	.byte	0x6
	.4byte	.LVL14
	.byte	0x4
	.uleb128 .LVL14-.LVL14
	.uleb128 .LVL18-.LVL14
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL18-.LVL14
	.uleb128 .LVL24-.LVL14
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL24-.LVL14
	.uleb128 .LVL26-1-.LVL14
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL26-1-.LVL14
	.uleb128 .LFE216-.LVL14
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.byte	0
.LVUS11:
	.uleb128 .LVU110
	.uleb128 0
.LLST11:
	.byte	0x8
	.4byte	.LVL16
	.uleb128 .LFE216-.LVL16
	.uleb128 0x1
	.byte	0x54
	.byte	0
.LVUS12:
	.uleb128 .LVU121
	.uleb128 .LVU124
	.uleb128 .LVU124
	.uleb128 .LVU132
	.uleb128 .LVU147
	.uleb128 .LVU157
	.uleb128 .LVU157
	.uleb128 0
.LLST12:
	.byte	0x6
	.4byte	.LVL17
	.byte	0x4
	.uleb128 .LVL17-.LVL17
	.uleb128 .LVL19-.LVL17
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL19-.LVL17
	.uleb128 .LVL20-.LVL17
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL24-.LVL17
	.uleb128 .LVL28-.LVL17
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL28-.LVL17
	.uleb128 .LFE216-.LVL17
	.uleb128 0x1
	.byte	0x53
	.byte	0
.LVUS13:
	.uleb128 .LVU133
	.uleb128 .LVU138
.LLST13:
	.byte	0x8
	.4byte	.LVL21
	.uleb128 .LVL22-.LVL21
	.uleb128 0x1
	.byte	0x50
	.byte	0
.LVUS16:
	.uleb128 .LVU150
	.uleb128 .LVU154
.LLST16:
	.byte	0x8
	.4byte	.LVL26
	.uleb128 .LVL27-.LVL26
	.uleb128 0x1
	.byte	0x50
	.byte	0
.LVUS15:
	.uleb128 .LVU108
	.uleb128 .LVU110
.LLST15:
	.byte	0x8
	.4byte	.LVL16
	.uleb128 .LVL16-.LVL16
	.uleb128 0x1
	.byte	0x50
	.byte	0
.LVUS2:
	.uleb128 0
	.uleb128 .LVU50
	.uleb128 .LVU50
	.uleb128 0
.LLST2:
	.byte	0x6
	.4byte	.LVL7
	.byte	0x4
	.uleb128 .LVL7-.LVL7
	.uleb128 .LVL8-1-.LVL7
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL8-1-.LVL7
	.uleb128 .LFE213-.LVL7
	.uleb128 0x1
	.byte	0x54
	.byte	0
.LVUS3:
	.uleb128 0
	.uleb128 .LVU50
	.uleb128 .LVU50
	.uleb128 .LVU56
	.uleb128 .LVU56
	.uleb128 0
.LLST3:
	.byte	0x6
	.4byte	.LVL7
	.byte	0x4
	.uleb128 .LVL7-.LVL7
	.uleb128 .LVL8-1-.LVL7
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL8-1-.LVL7
	.uleb128 .LVL9-.LVL7
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL9-.LVL7
	.uleb128 .LFE213-.LVL7
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.byte	0
.LVUS5:
	.uleb128 .LVU63
	.uleb128 .LVU69
.LLST5:
	.byte	0x8
	.4byte	.LVL10
	.uleb128 .LVL11-.LVL10
	.uleb128 0x1
	.byte	0x54
	.byte	0
.LVUS1:
	.uleb128 0
	.uleb128 .LVU42
	.uleb128 .LVU42
	.uleb128 .LVU44
	.uleb128 .LVU44
	.uleb128 0
.LLST1:
	.byte	0x6
	.4byte	.LVL4
	.byte	0x4
	.uleb128 .LVL4-.LVL4
	.uleb128 .LVL5-1-.LVL4
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x40
	.byte	0x4
	.uleb128 .LVL5-1-.LVL4
	.uleb128 .LVL6-.LVL4
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x50
	.byte	0x4
	.uleb128 .LVL6-.LVL4
	.uleb128 .LFE212-.LVL4
	.uleb128 0x6
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0x40
	.uleb128 0x26
	.byte	0x9f
	.byte	0
.LVUS0:
	.uleb128 0
	.uleb128 .LVU34
	.uleb128 .LVU34
	.uleb128 .LVU36
	.uleb128 .LVU36
	.uleb128 0
.LLST0:
	.byte	0x6
	.4byte	.LVL1
	.byte	0x4
	.uleb128 .LVL1-.LVL1
	.uleb128 .LVL2-1-.LVL1
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x40
	.byte	0x4
	.uleb128 .LVL2-1-.LVL1
	.uleb128 .LVL3-.LVL1
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x50
	.byte	0x4
	.uleb128 .LVL3-.LVL1
	.uleb128 .LFE211-.LVL1
	.uleb128 0x6
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0x40
	.uleb128 0x26
	.byte	0x9f
	.byte	0
.LVUS6:
	.uleb128 0
	.uleb128 .LVU77
	.uleb128 .LVU77
	.uleb128 0
.LLST6:
	.byte	0x6
	.4byte	.LVL12
	.byte	0x4
	.uleb128 .LVL12-.LVL12
	.uleb128 .LVL13-.LVL12
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL13-.LVL12
	.uleb128 .LFE214-.LVL12
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.byte	0
.Ldebug_loc3:
	.section	.debug_aranges,"",%progbits
	.4byte	0xa4
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB206
	.4byte	.LFE206-.LFB206
	.4byte	.LFB208
	.4byte	.LFE208-.LFB208
	.4byte	.LFB209
	.4byte	.LFE209-.LFB209
	.4byte	.LFB210
	.4byte	.LFE210-.LFB210
	.4byte	.LFB211
	.4byte	.LFE211-.LFB211
	.4byte	.LFB212
	.4byte	.LFE212-.LFB212
	.4byte	.LFB213
	.4byte	.LFE213-.LFB213
	.4byte	.LFB214
	.4byte	.LFE214-.LFB214
	.4byte	.LFB215
	.4byte	.LFE215-.LFB215
	.4byte	.LFB216
	.4byte	.LFE216-.LFB216
	.4byte	.LFB218
	.4byte	.LFE218-.LFB218
	.4byte	.LFB219
	.4byte	.LFE219-.LFB219
	.4byte	.LFB220
	.4byte	.LFE220-.LFB220
	.4byte	.LFB221
	.4byte	.LFE221-.LFB221
	.4byte	.LFB222
	.4byte	.LFE222-.LFB222
	.4byte	.LFB217
	.4byte	.LFE217-.LFB217
	.4byte	.LFB223
	.4byte	.LFE223-.LFB223
	.4byte	.LFB224
	.4byte	.LFE224-.LFB224
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
	.4byte	.LBB11
	.byte	0x4
	.uleb128 .LBB11-.LBB11
	.uleb128 .LBE11-.LBB11
	.byte	0x4
	.uleb128 .LBB18-.LBB11
	.uleb128 .LBE18-.LBB11
	.byte	0x4
	.uleb128 .LBB19-.LBB11
	.uleb128 .LBE19-.LBB11
	.byte	0x4
	.uleb128 .LBB20-.LBB11
	.uleb128 .LBE20-.LBB11
	.byte	0x4
	.uleb128 .LBB21-.LBB11
	.uleb128 .LBE21-.LBB11
	.byte	0x4
	.uleb128 .LBB22-.LBB11
	.uleb128 .LBE22-.LBB11
	.byte	0
.LLRL14:
	.byte	0x5
	.4byte	.LBB23
	.byte	0x4
	.uleb128 .LBB23-.LBB23
	.uleb128 .LBE23-.LBB23
	.byte	0x4
	.uleb128 .LBB28-.LBB23
	.uleb128 .LBE28-.LBB23
	.byte	0x4
	.uleb128 .LBB29-.LBB23
	.uleb128 .LBE29-.LBB23
	.byte	0x4
	.uleb128 .LBB30-.LBB23
	.uleb128 .LBE30-.LBB23
	.byte	0
.LLRL38:
	.byte	0x5
	.4byte	.LBB34
	.byte	0x4
	.uleb128 .LBB34-.LBB34
	.uleb128 .LBE34-.LBB34
	.byte	0x4
	.uleb128 .LBB37-.LBB34
	.uleb128 .LBE37-.LBB34
	.byte	0
.LLRL48:
	.byte	0x7
	.4byte	.LFB206
	.uleb128 .LFE206-.LFB206
	.byte	0x7
	.4byte	.LFB208
	.uleb128 .LFE208-.LFB208
	.byte	0x7
	.4byte	.LFB209
	.uleb128 .LFE209-.LFB209
	.byte	0x7
	.4byte	.LFB210
	.uleb128 .LFE210-.LFB210
	.byte	0x7
	.4byte	.LFB211
	.uleb128 .LFE211-.LFB211
	.byte	0x7
	.4byte	.LFB212
	.uleb128 .LFE212-.LFB212
	.byte	0x7
	.4byte	.LFB213
	.uleb128 .LFE213-.LFB213
	.byte	0x7
	.4byte	.LFB214
	.uleb128 .LFE214-.LFB214
	.byte	0x7
	.4byte	.LFB215
	.uleb128 .LFE215-.LFB215
	.byte	0x7
	.4byte	.LFB216
	.uleb128 .LFE216-.LFB216
	.byte	0x7
	.4byte	.LFB218
	.uleb128 .LFE218-.LFB218
	.byte	0x7
	.4byte	.LFB219
	.uleb128 .LFE219-.LFB219
	.byte	0x7
	.4byte	.LFB220
	.uleb128 .LFE220-.LFB220
	.byte	0x7
	.4byte	.LFB221
	.uleb128 .LFE221-.LFB221
	.byte	0x7
	.4byte	.LFB222
	.uleb128 .LFE222-.LFB222
	.byte	0x7
	.4byte	.LFB217
	.uleb128 .LFE217-.LFB217
	.byte	0x7
	.4byte	.LFB223
	.uleb128 .LFE223-.LFB223
	.byte	0x7
	.4byte	.LFB224
	.uleb128 .LFE224-.LFB224
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF25:
	.ascii	"InputData\000"
.LASF161:
	.ascii	"textWidth\000"
.LASF57:
	.ascii	"Block_Lava\000"
.LASF184:
	.ascii	"/home/tobi/Dokumente/Craftus-Next/source/gui/Gui.c\000"
.LASF183:
	.ascii	"GNU C17 11.2.0 -mword-relocations -mtune=mpcore -mf"
	.ascii	"loat-abi=hard -mtp=soft -marm -march=armv6k -g -O2 "
	.ascii	"-ffunction-sections -fomit-frame-pointer\000"
.LASF84:
	.ascii	"KEY_START\000"
.LASF28:
	.ascii	"size_t\000"
.LASF58:
	.ascii	"Block_Iron_Ore\000"
.LASF169:
	.ascii	"wrap\000"
.LASF108:
	.ascii	"NDM_DAEMON_CEC\000"
.LASF97:
	.ascii	"KEY_CSTICK_LEFT\000"
.LASF27:
	.ascii	"va_list\000"
.LASF74:
	.ascii	"CSND_ENCODING_PCM16\000"
.LASF11:
	.ascii	"long long unsigned int\000"
.LASF98:
	.ascii	"KEY_CSTICK_UP\000"
.LASF13:
	.ascii	"int16_t\000"
.LASF116:
	.ascii	"NDSP_ENCODING_ADPCM\000"
.LASF10:
	.ascii	"long long int\000"
.LASF1:
	.ascii	"signed char\000"
.LASF59:
	.ascii	"Block_Coal_Ore\000"
.LASF122:
	.ascii	"GuiTexture_Widgets\000"
.LASF86:
	.ascii	"KEY_DLEFT\000"
.LASF52:
	.ascii	"Block_Sandstone\000"
.LASF179:
	.ascii	"Gui_EndRow\000"
.LASF35:
	.ascii	"Block_Sand\000"
.LASF7:
	.ascii	"long int\000"
.LASF173:
	.ascii	"Gui_BeginRow\000"
.LASF107:
	.ascii	"KEY_RIGHT\000"
.LASF50:
	.ascii	"Block_Obsidian\000"
.LASF186:
	.ascii	"__va_list\000"
.LASF56:
	.ascii	"Block_Water\000"
.LASF54:
	.ascii	"Block_Crafting_Table\000"
.LASF3:
	.ascii	"short int\000"
.LASF103:
	.ascii	"KEY_CPAD_DOWN\000"
.LASF14:
	.ascii	"uint16_t\000"
.LASF163:
	.ascii	"middlePieceSize\000"
.LASF72:
	.ascii	"double\000"
.LASF55:
	.ascii	"Block_Grass_Path\000"
.LASF19:
	.ascii	"circlePadX\000"
.LASF20:
	.ascii	"circlePadY\000"
.LASF148:
	.ascii	"Gui_WasCursorInside\000"
.LASF123:
	.ascii	"GuiTexture_MenuBackground\000"
.LASF102:
	.ascii	"KEY_CPAD_UP\000"
.LASF174:
	.ascii	"count\000"
.LASF23:
	.ascii	"cStickX\000"
.LASF24:
	.ascii	"cStickY\000"
.LASF181:
	.ascii	"Gui_Deinit\000"
.LASF51:
	.ascii	"Block_Netherrack\000"
.LASF8:
	.ascii	"__uint32_t\000"
.LASF176:
	.ascii	"Gui_RelativeHeight\000"
.LASF4:
	.ascii	"__int16_t\000"
.LASF53:
	.ascii	"Block_Smooth_Stone\000"
.LASF142:
	.ascii	"SpriteBatch_GetHeight\000"
.LASF120:
	.ascii	"GuiTexture_Font\000"
.LASF85:
	.ascii	"KEY_DRIGHT\000"
.LASF175:
	.ascii	"Gui_BeginRowCenter\000"
.LASF152:
	.ascii	"Gui_GetCursorMovement\000"
.LASF12:
	.ascii	"unsigned int\000"
.LASF40:
	.ascii	"Block_Stonebrick\000"
.LASF34:
	.ascii	"Block_Cobblestone\000"
.LASF9:
	.ascii	"long unsigned int\000"
.LASF99:
	.ascii	"KEY_CSTICK_DOWN\000"
.LASF157:
	.ascii	"Gui_Button\000"
.LASF43:
	.ascii	"Block_Wool\000"
.LASF131:
	.ascii	"relativeX\000"
.LASF132:
	.ascii	"relativeY\000"
.LASF31:
	.ascii	"Block_Stone\000"
.LASF127:
	.ascii	"width\000"
.LASF159:
	.ascii	"data\000"
.LASF92:
	.ascii	"KEY_Y\000"
.LASF158:
	.ascii	"size\000"
.LASF6:
	.ascii	"short unsigned int\000"
.LASF156:
	.ascii	"space\000"
.LASF150:
	.ascii	"sclInputX\000"
.LASF151:
	.ascii	"sclInputY\000"
.LASF75:
	.ascii	"CSND_ENCODING_ADPCM\000"
.LASF18:
	.ascii	"keysup\000"
.LASF124:
	.ascii	"GuiTexture\000"
.LASF145:
	.ascii	"sclOldInputX\000"
.LASF146:
	.ascii	"sclOldInputY\000"
.LASF149:
	.ascii	"Gui_IsCursorInside\000"
.LASF66:
	.ascii	"Block_Iron_Block\000"
.LASF63:
	.ascii	"Block_Gold_Block\000"
.LASF160:
	.ascii	"label\000"
.LASF165:
	.ascii	"shadow\000"
.LASF44:
	.ascii	"Block_Bedrock\000"
.LASF167:
	.ascii	"center\000"
.LASF38:
	.ascii	"Block_Leaves\000"
.LASF100:
	.ascii	"KEY_CPAD_RIGHT\000"
.LASF140:
	.ascii	"SpriteBatch_PushTextVargs\000"
.LASF62:
	.ascii	"Block_Emerald_Ore\000"
.LASF88:
	.ascii	"KEY_DDOWN\000"
.LASF41:
	.ascii	"Block_Brick\000"
.LASF171:
	.ascii	"xOffset\000"
.LASF109:
	.ascii	"NDM_DAEMON_BOSS\000"
.LASF121:
	.ascii	"GuiTexture_Icons\000"
.LASF141:
	.ascii	"SpriteBatch_CalcTextWidthVargs\000"
.LASF147:
	.ascii	"Gui_EnteredCursorInside\000"
.LASF130:
	.ascii	"currentRow\000"
.LASF81:
	.ascii	"KEY_A\000"
.LASF82:
	.ascii	"KEY_B\000"
.LASF137:
	.ascii	"SpriteBatch_GetScale\000"
.LASF64:
	.ascii	"Block_Diamond_Block\000"
.LASF90:
	.ascii	"KEY_L\000"
.LASF135:
	.ascii	"paddingX\000"
.LASF136:
	.ascii	"paddingY\000"
.LASF89:
	.ascii	"KEY_R\000"
.LASF36:
	.ascii	"Block_Log\000"
.LASF67:
	.ascii	"Block_Emerald_Block\000"
.LASF91:
	.ascii	"KEY_X\000"
.LASF93:
	.ascii	"KEY_ZL\000"
.LASF46:
	.ascii	"Block_Door_Top\000"
.LASF94:
	.ascii	"KEY_ZR\000"
.LASF154:
	.ascii	"Gui_VerticalSpace\000"
.LASF180:
	.ascii	"Gui_Frame\000"
.LASF95:
	.ascii	"KEY_TOUCH\000"
.LASF110:
	.ascii	"NDM_DAEMON_NIM\000"
.LASF115:
	.ascii	"NDSP_ENCODING_PCM16\000"
.LASF60:
	.ascii	"Block_Diamond_Ore\000"
.LASF48:
	.ascii	"Block_Snow_Grass\000"
.LASF47:
	.ascii	"Block_Door_Bottom\000"
.LASF119:
	.ascii	"GuiTexture_Blank\000"
.LASF111:
	.ascii	"NDM_DAEMON_FRIENDS\000"
.LASF138:
	.ascii	"SpriteBatch_PushQuad\000"
.LASF2:
	.ascii	"unsigned char\000"
.LASF73:
	.ascii	"CSND_ENCODING_PCM8\000"
.LASF129:
	.ascii	"unpaddedWidth\000"
.LASF155:
	.ascii	"Gui_Space\000"
.LASF105:
	.ascii	"KEY_DOWN\000"
.LASF172:
	.ascii	"xTextSize\000"
.LASF164:
	.ascii	"Gui_Label\000"
.LASF16:
	.ascii	"keysheld\000"
.LASF37:
	.ascii	"Block_Gravel\000"
.LASF189:
	.ascii	"__aeabi_idiv\000"
.LASF126:
	.ascii	"input\000"
.LASF153:
	.ascii	"Gui_InputData\000"
.LASF49:
	.ascii	"Block_Snow\000"
.LASF68:
	.ascii	"Block_Furnace\000"
.LASF69:
	.ascii	"Blocks_Count\000"
.LASF15:
	.ascii	"uint32_t\000"
.LASF33:
	.ascii	"Block_Grass\000"
.LASF78:
	.ascii	"CSND_LOOPMODE_NORMAL\000"
.LASF17:
	.ascii	"keysdown\000"
.LASF71:
	.ascii	"_Bool\000"
.LASF29:
	.ascii	"long double\000"
.LASF166:
	.ascii	"color\000"
.LASF70:
	.ascii	"char\000"
.LASF168:
	.ascii	"text\000"
.LASF83:
	.ascii	"KEY_SELECT\000"
.LASF118:
	.ascii	"ERROR_WORD_WRAP_FLAG\000"
.LASF5:
	.ascii	"__uint16_t\000"
.LASF30:
	.ascii	"Block_Air\000"
.LASF178:
	.ascii	"Gui_Offset\000"
.LASF139:
	.ascii	"SpriteBatch_BindGuiTexture\000"
.LASF96:
	.ascii	"KEY_CSTICK_RIGHT\000"
.LASF61:
	.ascii	"Block_Gold_Ore\000"
.LASF77:
	.ascii	"CSND_LOOPMODE_MANUAL\000"
.LASF187:
	.ascii	"__ap\000"
.LASF188:
	.ascii	"relativeToAbsoluteSize\000"
.LASF125:
	.ascii	"oldInput\000"
.LASF170:
	.ascii	"yTextSize\000"
.LASF112:
	.ascii	"GPU_VERTEX_SHADER\000"
.LASF65:
	.ascii	"Block_Coal_Block\000"
.LASF133:
	.ascii	"windowX\000"
.LASF134:
	.ascii	"windowY\000"
.LASF144:
	.ascii	"memset\000"
.LASF113:
	.ascii	"GPU_GEOMETRY_SHADER\000"
.LASF162:
	.ascii	"pressed\000"
.LASF42:
	.ascii	"Block_Planks\000"
.LASF87:
	.ascii	"KEY_DUP\000"
.LASF143:
	.ascii	"SpriteBatch_GetWidth\000"
.LASF117:
	.ascii	"ERROR_LANGUAGE_FLAG\000"
.LASF114:
	.ascii	"NDSP_ENCODING_PCM8\000"
.LASF0:
	.ascii	"float\000"
.LASF104:
	.ascii	"KEY_UP\000"
.LASF185:
	.ascii	"/home/tobi/Dokumente/Craftus-Next/build\000"
.LASF39:
	.ascii	"Block_Glass\000"
.LASF79:
	.ascii	"CSND_LOOPMODE_ONESHOT\000"
.LASF26:
	.ascii	"__gnuc_va_list\000"
.LASF76:
	.ascii	"CSND_ENCODING_PSG\000"
.LASF182:
	.ascii	"Gui_Init\000"
.LASF32:
	.ascii	"Block_Dirt\000"
.LASF101:
	.ascii	"KEY_CPAD_LEFT\000"
.LASF128:
	.ascii	"highestElement\000"
.LASF21:
	.ascii	"touchX\000"
.LASF22:
	.ascii	"touchY\000"
.LASF45:
	.ascii	"Block_Coarse\000"
.LASF80:
	.ascii	"CSND_LOOPMODE_NORELOAD\000"
.LASF106:
	.ascii	"KEY_LEFT\000"
.LASF177:
	.ascii	"Gui_RelativeWidth\000"
	.ident	"GCC: (devkitARM release 57) 11.2.0"
