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
	.file	"Inventory.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.clickAtStack,"ax",%progbits
	.align	2
	.syntax unified
	.arm
	.fpu vfp
	.type	clickAtStack, %function
clickAtStack:
.LVL0:
.LFB210:
	.file 1 "/home/tobi/Dokumente/Craftus-Next/source/gui/Inventory.c"
	.loc 1 9 44 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 10 2 view .LVU1
	.loc 1 10 18 is_stmt 0 view .LVU2
	ldr	r1, .L19
	ldr	r3, [r1]
	.loc 1 10 34 view .LVU3
	ldr	r2, [r1, #4]
	.loc 1 10 5 view .LVU4
	cmp	r3, #0
	beq	.L17
	.loc 1 12 9 is_stmt 1 view .LVU5
	.loc 1 12 12 is_stmt 0 view .LVU6
	cmp	r0, r2
	beq	.L3
	.loc 1 15 9 is_stmt 1 view .LVU7
	.loc 1 16 3 view .LVU8
	.loc 1 16 6 is_stmt 0 view .LVU9
	cmp	r3, r0
	beq	.L13
	.loc 1 16 29 is_stmt 1 view .LVU10
.LVL1:
.LBB6:
.LBI6:
	.file 2 "/home/tobi/Dokumente/Craftus-Next/include/inventory/ItemStack.h"
	.loc 2 18 13 view .LVU11
.LBB7:
	.loc 2 19 2 view .LVU12
.LBE7:
.LBE6:
	.loc 1 9 44 is_stmt 0 view .LVU13
	push	{r4, r5, lr}
	.cfi_def_cfa_offset 12
	.cfi_offset 4, -12
	.cfi_offset 5, -8
	.cfi_offset 14, -4
.LBB12:
.LBB10:
	.loc 2 19 5 view .LVU14
	ldrb	r2, [r0]	@ zero_extendqisi2
	.loc 2 19 10 view .LVU15
	ldrb	lr, [r3]	@ zero_extendqisi2
	.loc 2 19 38 view .LVU16
	ldrb	r4, [r3, #1]	@ zero_extendqisi2
	.loc 2 19 5 view .LVU17
	cmp	r2, lr
	.loc 2 19 65 view .LVU18
	ldrb	r2, [r0, #2]	@ zero_extendqisi2
	.loc 2 19 5 view .LVU19
	beq	.L18
.L6:
	.loc 2 19 59 view .LVU20
	cmp	r2, #0
	beq	.L7
.LBB8:
	.loc 2 26 13 view .LVU21
	ldrb	r2, [r3, #2]	@ zero_extendqisi2
	.loc 2 26 3 is_stmt 1 view .LVU22
.LVL2:
	.loc 2 27 3 view .LVU23
	.loc 2 27 8 is_stmt 0 view .LVU24
	ldrh	r5, [r0]	@ unaligned
	ldrb	ip, [r0, #2]	@ zero_extendqisi2
	strh	r5, [r3]	@ unaligned
.LVL3:
	.loc 2 27 8 view .LVU25
	strb	ip, [r3, #2]
.LVL4:
	.loc 2 28 3 is_stmt 1 view .LVU26
	.loc 2 28 8 is_stmt 0 view .LVU27
	strb	lr, [r0]
	strb	r4, [r0, #1]
	strb	r2, [r0, #2]
.LVL5:
.L5:
	.loc 2 28 8 view .LVU28
.LBE8:
.LBE10:
.LBE12:
	.loc 1 17 3 is_stmt 1 view .LVU29
	.loc 1 17 15 is_stmt 0 view .LVU30
	mov	r3, #0
	str	r3, [r1]
	.loc 1 19 1 view .LVU31
	pop	{r4, r5, pc}
.L3:
	.cfi_def_cfa_offset 0
	.cfi_restore 4
	.cfi_restore 5
	.cfi_restore 14
	.loc 1 13 3 is_stmt 1 view .LVU32
	.loc 1 14 23 is_stmt 0 view .LVU33
	mov	r3, #0
	stm	r1, {r0, r3}
	bx	lr
.L17:
	.loc 1 10 25 discriminator 1 view .LVU34
	cmp	r0, r2
	beq	.L3
	.loc 1 11 3 is_stmt 1 view .LVU35
	.loc 1 11 23 is_stmt 0 view .LVU36
	str	r0, [r1, #4]
	bx	lr
.LVL6:
.L18:
	.cfi_def_cfa_offset 12
	.cfi_offset 4, -12
	.cfi_offset 5, -8
	.cfi_offset 14, -4
.LBB13:
.LBB11:
	.loc 2 19 32 view .LVU37
	ldrb	ip, [r0, #1]	@ zero_extendqisi2
	cmp	ip, r4
	bne	.L6
.L7:
.LBB9:
	.loc 2 20 3 is_stmt 1 view .LVU38
	.loc 2 20 18 is_stmt 0 view .LVU39
	ldrb	ip, [r3, #2]	@ zero_extendqisi2
.LVL7:
	.loc 2 21 3 is_stmt 1 view .LVU40
	.loc 2 20 36 is_stmt 0 view .LVU41
	rsb	r2, r2, #64
.LVL8:
	.loc 2 20 7 view .LVU42
	cmp	r2, ip
	movge	r2, ip
	.loc 2 21 15 view .LVU43
	uxtb	r2, r2
	sub	ip, ip, r2
.LVL9:
	.loc 2 21 15 view .LVU44
	strb	ip, [r3, #2]
.LVL10:
	.loc 2 22 3 is_stmt 1 view .LVU45
	.loc 2 22 15 is_stmt 0 view .LVU46
	ldrb	r3, [r0, #2]	@ zero_extendqisi2
.LVL11:
	.loc 2 23 14 view .LVU47
	strb	lr, [r0]
	.loc 2 22 15 view .LVU48
	add	r2, r2, r3
	.loc 2 24 13 view .LVU49
	strb	r4, [r0, #1]
	.loc 2 22 15 view .LVU50
	strb	r2, [r0, #2]
	.loc 2 23 3 is_stmt 1 view .LVU51
	.loc 2 24 3 view .LVU52
.LBE9:
	.loc 2 19 80 is_stmt 0 view .LVU53
	b	.L5
.LVL12:
.L13:
	.cfi_def_cfa_offset 0
	.cfi_restore 4
	.cfi_restore 5
	.cfi_restore 14
	.loc 2 19 80 view .LVU54
.LBE11:
.LBE13:
	.loc 1 17 3 is_stmt 1 view .LVU55
	.loc 1 17 15 is_stmt 0 view .LVU56
	mov	r3, #0
	str	r3, [r1]
	bx	lr
.L20:
	.align	2
.L19:
	.word	.LANCHOR0
	.cfi_endproc
.LFE210:
	.size	clickAtStack, .-clickAtStack
	.section	.text.Inventory_DrawQuickSelect,"ax",%progbits
	.align	2
	.global	Inventory_DrawQuickSelect
	.syntax unified
	.arm
	.fpu vfp
	.type	Inventory_DrawQuickSelect, %function
Inventory_DrawQuickSelect:
.LVL13:
.LFB211:
	.loc 1 21 91 is_stmt 1 view -0
	.cfi_startproc
	@ args = 4, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 22 2 view .LVU58
	.loc 1 21 91 is_stmt 0 view .LVU59
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_def_cfa_offset 36
	.cfi_offset 4, -36
	.cfi_offset 5, -32
	.cfi_offset 6, -28
	.cfi_offset 7, -24
	.cfi_offset 8, -20
	.cfi_offset 9, -16
	.cfi_offset 10, -12
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	vpush.64	{d8}
	.cfi_def_cfa_offset 44
	.cfi_offset 80, -44
	.cfi_offset 81, -40
	mov	ip, r0
	mov	r8, r3
	sub	sp, sp, #36
	.cfi_def_cfa_offset 80
	.loc 1 22 2 view .LVU60
	mov	r0, #3
.LVL14:
	.loc 1 21 91 view .LVU61
	mov	r6, ip
	mov	r9, r1
	mov	r4, r2
	str	ip, [sp, #28]
	.loc 1 22 2 view .LVU62
	bl	SpriteBatch_BindGuiTexture
.LVL15:
	.loc 1 24 2 is_stmt 1 view .LVU63
.LBB14:
	.loc 1 24 7 view .LVU64
	.loc 1 24 20 view .LVU65
	cmp	r8, #0
	ble	.L22
.LBB15:
	.loc 1 27 15 is_stmt 0 view .LVU66
	add	r3, r9, #3
	.loc 1 27 7 view .LVU67
	lsl	r3, r3, #1
.LBE15:
	.loc 1 24 11 view .LVU68
	mov	r5, #0
.LBB16:
	.loc 1 27 7 view .LVU69
	vmov	s16, r3	@ int
	ldr	fp, .L37
	.loc 1 29 7 view .LVU70
	sub	r10, r3, #4
	add	r6, r6, #1
.LVL16:
	.loc 1 29 7 view .LVU71
	b	.L26
.LVL17:
.L23:
	.loc 1 29 3 is_stmt 1 view .LVU72
	.loc 1 29 7 is_stmt 0 view .LVU73
	mov	r3, #36
	mov	r0, r7
	mov	r1, r10
	mov	r2, r3
	bl	Gui_EnteredCursorInside
.LVL18:
	.loc 1 29 6 view .LVU74
	cmp	r0, #0
	bne	.L35
.L24:
	.loc 1 33 3 is_stmt 1 view .LVU75
	mov	r0, #1
	bl	SpriteBatch_SetScale
.LVL19:
	.loc 1 34 3 view .LVU76
	.loc 1 34 6 is_stmt 0 view .LVU77
	ldr	r3, [fp]
	cmp	r4, r3
	beq	.L36
.L25:
	.loc 1 38 3 is_stmt 1 view .LVU78
	.loc 1 39 4 view .LVU79
	mov	r3, #20
	mov	ip, #22
	mov	lr, #0
	add	r2, r5, r5, lsl #2
	lsl	r2, r2, #2
	add	r6, r6, r3
	add	r2, r2, #21
	str	r2, [sp, #4]
	mov	r1, r9
	mov	r2, #10
	mov	r0, r6
.LBE16:
	.loc 1 24 30 is_stmt 0 view .LVU80
	add	r5, r5, #1
.LVL20:
.LBB17:
	.loc 1 39 4 view .LVU81
	str	ip, [sp, #16]
	str	r3, [sp, #12]
	str	lr, [sp, #8]
	str	ip, [sp]
	bl	SpriteBatch_PushQuad
.LVL21:
.LBE17:
	.loc 1 24 30 is_stmt 1 view .LVU82
	.loc 1 24 20 view .LVU83
	cmp	r8, r5
	add	r4, r4, #3
	beq	.L22
.LVL22:
.L26:
.LBB18:
	.loc 1 25 3 view .LVU84
	mov	r0, #1
	bl	SpriteBatch_SetScale
.LVL23:
	.loc 1 26 3 view .LVU85
	.loc 1 28 6 is_stmt 0 view .LVU86
	ldrb	r3, [r4, #2]	@ zero_extendqisi2
	lsl	r7, r6, #1
	cmp	r3, #0
	add	r2, r7, #4
.LVL24:
	.loc 1 27 3 is_stmt 1 view .LVU87
	.loc 1 28 3 view .LVU88
	.loc 1 28 6 is_stmt 0 view .LVU89
	beq	.L23
	.loc 1 28 29 is_stmt 1 discriminator 1 view .LVU90
	mov	r3, #11
	ldrb	r1, [r4, #1]	@ zero_extendqisi2
	str	r3, [sp]
	ldrb	r0, [r4]	@ zero_extendqisi2
	vmov	r3, s16	@ int
	bl	SpriteBatch_PushIcon
.LVL25:
	.loc 1 28 29 is_stmt 0 discriminator 1 view .LVU91
	b	.L23
.L35:
	.loc 1 30 4 is_stmt 1 view .LVU92
	.loc 1 30 14 is_stmt 0 view .LVU93
	ldr	r3, [sp, #80]
	.loc 1 31 4 view .LVU94
	mov	r0, r4
	.loc 1 30 14 view .LVU95
	str	r5, [r3]
	.loc 1 31 4 is_stmt 1 view .LVU96
	bl	clickAtStack
.LVL26:
	b	.L24
.L36:
	.loc 1 35 4 view .LVU97
	ldr	r3, .L37+4
	mov	r0, r6
	str	r3, [sp, #4]
	mov	r3, #18
	mov	r2, #9
	add	r1, r9, #1
	str	r3, [sp]
	bl	SpriteBatch_PushSingleColorQuad
.LVL27:
	.loc 1 36 4 view .LVU98
	mov	r0, #3
	bl	SpriteBatch_BindGuiTexture
.LVL28:
	b	.L25
.LVL29:
.L22:
	.loc 1 36 4 is_stmt 0 view .LVU99
.LBE18:
.LBE14:
	.loc 1 42 2 is_stmt 1 view .LVU100
	.loc 1 44 2 is_stmt 0 view .LVU101
	mov	r4, #22
	mov	r6, #21
	mov	r5, #0
	.loc 1 42 2 view .LVU102
	mov	r0, #1
	bl	SpriteBatch_SetScale
.LVL30:
	.loc 1 44 2 is_stmt 1 view .LVU103
	ldr	r7, [sp, #28]
	mov	r1, r9
	mov	r0, r7
	mov	r3, r6
	mov	r2, #10
	strd	r4, [sp]
	str	r4, [sp, #16]
	str	r6, [sp, #12]
	str	r5, [sp, #8]
	bl	SpriteBatch_PushQuad
.LVL31:
	.loc 1 45 2 view .LVU104
	mov	r2, #161
	.loc 1 45 40 is_stmt 0 view .LVU105
	sub	r8, r8, #2
.LVL32:
	.loc 1 45 31 view .LVU106
	add	r8, r8, r8, lsl #2
.LVL33:
	.loc 1 45 26 view .LVU107
	add	r0, r7, r8, lsl #2
	.loc 1 45 2 view .LVU108
	mov	r3, r6
	mov	r1, r9
	add	r0, r0, r6
	str	r2, [sp, #4]
	str	r4, [sp, #16]
	mov	r2, #10
	str	r6, [sp, #12]
	str	r5, [sp, #8]
	str	r4, [sp]
	bl	SpriteBatch_PushQuad
.LVL34:
	.loc 1 47 2 is_stmt 1 view .LVU109
	.loc 1 47 37 is_stmt 0 view .LVU110
	ldr	r3, [sp, #80]
	.loc 1 47 2 view .LVU111
	mov	r2, #14
	.loc 1 47 37 view .LVU112
	ldr	r3, [r3]
	.loc 1 47 2 view .LVU113
	sub	r1, r9, #1
	.loc 1 47 37 view .LVU114
	add	r3, r3, r3, lsl #2
	.loc 1 47 25 view .LVU115
	add	r0, r7, r3, lsl #2
	.loc 1 47 2 view .LVU116
	mov	r3, #24
	str	r4, [sp, #8]
	str	r5, [sp, #4]
	sub	r0, r0, #1
	str	r3, [sp, #16]
	str	r3, [sp, #12]
	str	r3, [sp]
	bl	SpriteBatch_PushQuad
.LVL35:
	.loc 1 48 1 view .LVU117
	add	sp, sp, #36
	.cfi_def_cfa_offset 44
	@ sp needed
	vldm	sp!, {d8}
	.cfi_restore 80
	.cfi_restore 81
	.cfi_def_cfa_offset 36
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL36:
.L38:
	.loc 1 48 1 view .LVU118
	.align	2
.L37:
	.word	.LANCHOR0
	.word	20642
	.cfi_endproc
.LFE211:
	.size	Inventory_DrawQuickSelect, .-Inventory_DrawQuickSelect
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC1:
	.ascii	" << \000"
	.align	2
.LC2:
	.ascii	" >> \000"
	.section	.text.Inventory_Draw,"ax",%progbits
	.align	2
	.global	Inventory_Draw
	.syntax unified
	.arm
	.fpu vfp
	.type	Inventory_Draw, %function
Inventory_Draw:
.LVL37:
.LFB212:
	.loc 1 50 82 is_stmt 1 view -0
	.cfi_startproc
	@ args = 8, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 51 2 view .LVU120
	.loc 1 50 82 is_stmt 0 view .LVU121
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.cfi_def_cfa_offset 36
	.cfi_offset 4, -36
	.cfi_offset 5, -32
	.cfi_offset 6, -28
	.cfi_offset 7, -24
	.cfi_offset 8, -20
	.cfi_offset 9, -16
	.cfi_offset 10, -12
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	vpush.64	{d8, d9}
	.cfi_def_cfa_offset 52
	.cfi_offset 80, -52
	.cfi_offset 81, -48
	.cfi_offset 82, -44
	.cfi_offset 83, -40
	mov	ip, r0
	sub	sp, sp, #44
	.cfi_def_cfa_offset 96
	.loc 1 51 2 view .LVU122
	mov	r0, #1
.LVL38:
	.loc 1 50 82 view .LVU123
	mov	r4, r3
	mov	fp, r1
	ldr	r10, [sp, #100]
	str	ip, [sp, #20]
	str	r2, [sp, #16]
	.loc 1 51 2 view .LVU124
	bl	SpriteBatch_SetScale
.LVL39:
	.loc 1 53 2 is_stmt 1 view .LVU125
	.loc 1 54 2 view .LVU126
	.loc 1 55 2 view .LVU127
	.loc 1 56 1 view .LVU128
	.loc 1 57 1 view .LVU129
	.loc 1 59 2 view .LVU130
	.loc 1 60 5 is_stmt 0 view .LVU131
	ldr	r3, [sp, #96]
	cmp	r3, #32
	.loc 1 59 16 view .LVU132
	ldr	r3, .L70
	str	r3, [sp, #36]
	.loc 1 60 2 is_stmt 1 view .LVU133
	.loc 1 60 5 is_stmt 0 view .LVU134
	bgt	.L40
	.loc 1 68 38 view .LVU135
	vmov	s18, r10	@ int
	lsl	r3, r10, #5
	sub	r5, r3, #32
.LVL40:
.L41:
	.loc 1 74 2 is_stmt 1 view .LVU136
	.loc 1 75 2 view .LVU137
.LBB19:
	.loc 1 75 7 view .LVU138
	.loc 1 75 31 is_stmt 0 view .LVU139
	vmov	s15, r3	@ int
	vcvt.f64.s32	d0, s15
	vldr.32	s15, [sp, #96]	@ int
	vcvt.f64.s32	d1, s15
	bl	fmin
.LVL41:
	.loc 1 98 68 view .LVU140
	ldr	r3, [sp, #16]
	.loc 1 75 31 view .LVU141
	vmov.f64	d8, d0
	.loc 1 98 68 view .LVU142
	sub	r3, r3, #32
	.loc 1 98 5 view .LVU143
	lsl	r3, r3, #1
	str	r3, [sp, #28]
	add	r3, r5, r5, lsl #1
	add	r4, r4, r3
.LVL42:
	.loc 1 98 5 view .LVU144
.LBE19:
	.loc 1 53 6 view .LVU145
	ldr	r3, [sp, #20]
	.loc 1 56 6 view .LVU146
	mov	r9, #0
	.loc 1 53 6 view .LVU147
	mov	r8, r3
.LBB20:
	.loc 1 98 5 view .LVU148
	lsl	r3, r3, #1
	.loc 1 91 17 view .LVU149
	ldr	r10, .L70+4
	.loc 1 98 5 view .LVU150
	str	r3, [sp, #24]
	.loc 1 75 2 view .LVU151
	b	.L45
.LVL43:
.L51:
	.loc 1 77 3 is_stmt 1 view .LVU152
	.loc 1 77 16 is_stmt 0 view .LVU153
	ldrb	r0, [r4]	@ zero_extendqisi2
	.loc 1 77 6 view .LVU154
	cmp	r0, #0
	beq	.L46
	.loc 1 77 23 discriminator 1 view .LVU155
	ldrb	r3, [r4, #2]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L46
	.loc 1 79 4 is_stmt 1 view .LVU156
.LVL44:
	.loc 1 80 4 view .LVU157
	.loc 1 80 7 is_stmt 0 view .LVU158
	ldr	r2, [sp, #16]
	.loc 1 80 15 view .LVU159
	add	r3, r8, #16
	.loc 1 80 7 view .LVU160
	cmp	r3, r2
	.loc 1 82 5 is_stmt 1 view .LVU161
.LVL45:
	.loc 1 83 5 view .LVU162
	movlt	r6, r8
	movlt	r8, r3
	.loc 1 79 12 is_stmt 0 view .LVU163
	movlt	r3, #0
	.loc 1 82 11 view .LVU164
	ldrge	r3, [sp, #20]
	.loc 1 84 13 view .LVU165
	movge	r2, #1
	.loc 1 82 11 view .LVU166
	movge	r6, r3
	.loc 1 93 10 view .LVU167
	addge	r8, r3, #16
	.loc 1 79 12 view .LVU168
	strlt	r3, [sp, #12]
	.loc 1 87 5 view .LVU169
	mov	r3, #10
	.loc 1 83 11 view .LVU170
	addge	fp, fp, #17
.LVL46:
	.loc 1 84 5 is_stmt 1 view .LVU171
	.loc 1 86 4 view .LVU172
	.loc 1 87 5 view .LVU173
	lsl	r6, r6, #1
	lsl	r7, fp, #1
	.loc 1 84 13 is_stmt 0 view .LVU174
	strge	r2, [sp, #12]
.LVL47:
	.loc 1 87 5 view .LVU175
	ldrb	r1, [r4, #1]	@ zero_extendqisi2
	mov	r2, r6
	str	r3, [sp]
	mov	r3, r7
	bl	SpriteBatch_PushIcon
.LVL48:
	.loc 1 88 4 is_stmt 1 view .LVU176
	.loc 1 88 8 is_stmt 0 view .LVU177
	mov	r3, #32
	mov	r1, r7
	mov	r0, r6
	mov	r2, r3
	bl	Gui_EnteredCursorInside
.LVL49:
	.loc 1 88 7 view .LVU178
	cmp	r0, #0
	bne	.L68
.L48:
	.loc 1 90 4 is_stmt 1 view .LVU179
	ldr	r3, [r10]
	mov	r0, r6
	cmp	r4, r3
	addne	r3, sp, #40
	addne	r3, r3, r9, lsl #1
	ldrshne	r3, [r3, #-4]
	ldreq	r3, .L70+8
	mov	r2, #9
	str	r3, [sp, #4]
	mov	r3, #32
	mov	r1, r7
	str	r3, [sp]
	bl	SpriteBatch_PushSingleColorQuad
.LVL50:
	.loc 1 92 4 view .LVU180
	.loc 1 93 4 view .LVU181
	.loc 1 94 4 view .LVU182
	.loc 1 94 7 is_stmt 0 view .LVU183
	ldr	r3, [sp, #12]
	cmp	r3, #0
	.loc 1 92 9 view .LVU184
	eoreq	r9, r9, #1
.LVL51:
	.loc 1 94 7 view .LVU185
	bne	.L69
.L46:
.LVL52:
	.loc 1 75 55 is_stmt 1 discriminator 2 view .LVU186
	add	r5, r5, #1
.LVL53:
	.loc 1 75 55 is_stmt 0 discriminator 2 view .LVU187
	add	r4, r4, #3
.LVL54:
.L45:
	.loc 1 75 29 is_stmt 1 discriminator 1 view .LVU188
	vmov	s15, r5	@ int
	vcvt.f64.s32	d7, s15
	vcmpe.f64	d7, d8
	vmrs	APSR_nzcv, FPSCR
	bmi	.L51
	.loc 1 75 29 is_stmt 0 discriminator 1 view .LVU189
.LBE20:
	.loc 1 103 2 is_stmt 1 view .LVU190
	mov	r0, #2
	bl	SpriteBatch_SetScale
.LVL55:
	.loc 1 104 2 view .LVU191
	.loc 1 105 1 is_stmt 0 view .LVU192
	vmov	r0, s18	@ int
	add	sp, sp, #44
	.cfi_remember_state
	.cfi_def_cfa_offset 52
	@ sp needed
	vldm	sp!, {d8-d9}
	.cfi_restore 82
	.cfi_restore 83
	.cfi_restore 80
	.cfi_restore 81
	.cfi_def_cfa_offset 36
.LVL56:
	.loc 1 105 1 view .LVU193
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL57:
.L69:
	.cfi_restore_state
.LBB21:
	.loc 1 96 5 is_stmt 1 view .LVU194
	.loc 1 98 5 view .LVU195
	ldr	r3, .L70+12
	mov	r2, #10
	str	r3, [sp, #4]
	mov	r3, #2
	ldr	r0, [sp, #24]
	str	r3, [sp]
	sub	r1, r7, #2
	ldr	r3, [sp, #28]
	bl	SpriteBatch_PushSingleColorQuad
.LVL58:
	.loc 1 96 10 is_stmt 0 view .LVU196
	mov	r9, #0
	b	.L46
.LVL59:
.L68:
	.loc 1 89 5 is_stmt 1 view .LVU197
	mov	r0, r4
	bl	clickAtStack
.LVL60:
	b	.L48
.LVL61:
.L40:
	.loc 1 89 5 is_stmt 0 view .LVU198
.LBE21:
	.loc 1 62 3 is_stmt 1 view .LVU199
	mov	r1, #60
	mov	r0, #0
	bl	Gui_Offset
.LVL62:
	.loc 1 63 3 view .LVU200
	.loc 1 63 7 is_stmt 0 view .LVU201
	ldr	r1, .L70+16
	mov	r0, #0
	bl	Gui_Button
.LVL63:
	.loc 1 63 31 view .LVU202
	cmp	r10, #1
	movle	r0, #0
	andgt	r0, r0, #1
	.loc 1 67 3 view .LVU203
	mov	r1, #60
	.loc 1 63 31 view .LVU204
	cmp	r0, #0
	.loc 1 65 4 is_stmt 1 view .LVU205
	.loc 1 67 3 is_stmt 0 view .LVU206
	ldr	r0, .L70+20
	.loc 1 65 8 view .LVU207
	subne	r10, r10, #1
.LVL64:
	.loc 1 67 3 is_stmt 1 view .LVU208
	bl	Gui_Offset
.LVL65:
	.loc 1 68 3 view .LVU209
	.loc 1 68 7 is_stmt 0 view .LVU210
	mov	r0, #0
	ldr	r1, .L70+24
	bl	Gui_Button
.LVL66:
	.loc 1 68 6 view .LVU211
	cmp	r0, #0
	.loc 1 68 38 view .LVU212
	lsl	r3, r10, #5
	.loc 1 68 6 view .LVU213
	beq	.L67
	.loc 1 68 31 discriminator 1 view .LVU214
	ldr	r2, [sp, #96]
	cmp	r2, r3
	ble	.L67
	.loc 1 70 4 is_stmt 1 view .LVU215
	.loc 1 70 8 is_stmt 0 view .LVU216
	add	r2, r10, #1
.LBB22:
	.loc 1 75 40 view .LVU217
	mov	r5, r3
.LBE22:
	.loc 1 70 8 view .LVU218
	vmov	s18, r2	@ int
.LVL67:
.LBB23:
	.loc 1 75 40 view .LVU219
	add	r3, r3, #32
	b	.L41
.LVL68:
.L67:
	.loc 1 75 40 view .LVU220
.LBE23:
	.loc 1 74 6 view .LVU221
	vmov	s18, r10	@ int
	sub	r5, r3, #32
	b	.L41
.L71:
	.align	2
.L70:
	.word	692727147
	.word	.LANCHOR0
	.word	20642
	.word	7399
	.word	.LC1
	.word	270
	.word	.LC2
	.cfi_endproc
.LFE212:
	.size	Inventory_Draw, .-Inventory_Draw
	.bss
	.align	2
	.set	.LANCHOR0,. + 0
	.type	sourceStack, %object
	.size	sourceStack, 4
sourceStack:
	.space	4
	.type	proposedSourceStack, %object
	.size	proposedSourceStack, 4
proposedSourceStack:
	.space	4
	.text
.Letext0:
	.file 3 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h"
	.file 4 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_stdint.h"
	.file 5 "/home/tobi/Dokumente/Craftus-Next/include/blocks/Block.h"
	.file 6 "/home/tobi/Dokumente/Craftus-Next/include/blocks/Item.h"
	.file 7 "/opt/devkitpro/libctru/include/3ds/services/csnd.h"
	.file 8 "/opt/devkitpro/libctru/include/3ds/services/ndm.h"
	.file 9 "/opt/devkitpro/libctru/include/3ds/gpu/enums.h"
	.file 10 "/opt/devkitpro/libctru/include/3ds/ndsp/channel.h"
	.file 11 "/opt/devkitpro/libctru/include/3ds/applets/error.h"
	.file 12 "/home/tobi/Dokumente/Craftus-Next/include/gui/SpriteBatch.h"
	.file 13 "/opt/devkitpro/devkitARM/arm-none-eabi/include/math.h"
	.file 14 "/home/tobi/Dokumente/Craftus-Next/include/gui/Gui.h"
	.file 15 "/opt/devkitpro/libctru/include/3ds/types.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0xa9a
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x19
	.4byte	.LASF115
	.byte	0x1d
	.4byte	.LASF116
	.4byte	.LASF117
	.4byte	.LLRL25
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x5
	.byte	0x8
	.byte	0x4
	.4byte	.LASF0
	.uleb128 0x1a
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x5
	.byte	0x1
	.byte	0x6
	.4byte	.LASF1
	.uleb128 0x6
	.4byte	.LASF3
	.byte	0x3
	.byte	0x2b
	.byte	0x17
	.4byte	0x47
	.uleb128 0x5
	.byte	0x1
	.byte	0x8
	.4byte	.LASF2
	.uleb128 0x6
	.4byte	.LASF4
	.byte	0x3
	.byte	0x37
	.byte	0x13
	.4byte	0x5a
	.uleb128 0x5
	.byte	0x2
	.byte	0x5
	.4byte	.LASF5
	.uleb128 0x5
	.byte	0x2
	.byte	0x7
	.4byte	.LASF6
	.uleb128 0x5
	.byte	0x4
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x6
	.4byte	.LASF8
	.byte	0x3
	.byte	0x4f
	.byte	0x1b
	.4byte	0x7b
	.uleb128 0x5
	.byte	0x4
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x5
	.byte	0x8
	.byte	0x5
	.4byte	.LASF10
	.uleb128 0x5
	.byte	0x8
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x5
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x6
	.4byte	.LASF13
	.byte	0x4
	.byte	0x18
	.byte	0x13
	.4byte	0x3b
	.uleb128 0x6
	.4byte	.LASF14
	.byte	0x4
	.byte	0x20
	.byte	0x13
	.4byte	0x4e
	.uleb128 0xe
	.4byte	0xa3
	.uleb128 0x6
	.4byte	.LASF15
	.byte	0x4
	.byte	0x30
	.byte	0x14
	.4byte	0x6f
	.uleb128 0x6
	.4byte	.LASF16
	.byte	0x5
	.byte	0x8
	.byte	0x11
	.4byte	0x97
	.uleb128 0x7
	.byte	0x1
	.4byte	0x47
	.byte	0x5
	.byte	0xa
	.byte	0x6
	.4byte	0x1ca
	.uleb128 0x2
	.4byte	.LASF17
	.byte	0
	.uleb128 0x2
	.4byte	.LASF18
	.byte	0x1
	.uleb128 0x2
	.4byte	.LASF19
	.byte	0x2
	.uleb128 0x2
	.4byte	.LASF20
	.byte	0x3
	.uleb128 0x2
	.4byte	.LASF21
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF22
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF23
	.byte	0x6
	.uleb128 0x2
	.4byte	.LASF24
	.byte	0x7
	.uleb128 0x2
	.4byte	.LASF25
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF26
	.byte	0x9
	.uleb128 0x2
	.4byte	.LASF27
	.byte	0xa
	.uleb128 0x2
	.4byte	.LASF28
	.byte	0xb
	.uleb128 0x2
	.4byte	.LASF29
	.byte	0xc
	.uleb128 0x2
	.4byte	.LASF30
	.byte	0xd
	.uleb128 0x2
	.4byte	.LASF31
	.byte	0xe
	.uleb128 0x2
	.4byte	.LASF32
	.byte	0xf
	.uleb128 0x2
	.4byte	.LASF33
	.byte	0x10
	.uleb128 0x2
	.4byte	.LASF34
	.byte	0x11
	.uleb128 0x2
	.4byte	.LASF35
	.byte	0x12
	.uleb128 0x2
	.4byte	.LASF36
	.byte	0x13
	.uleb128 0x2
	.4byte	.LASF37
	.byte	0x14
	.uleb128 0x2
	.4byte	.LASF38
	.byte	0x15
	.uleb128 0x2
	.4byte	.LASF39
	.byte	0x16
	.uleb128 0x2
	.4byte	.LASF40
	.byte	0x17
	.uleb128 0x2
	.4byte	.LASF41
	.byte	0x18
	.uleb128 0x2
	.4byte	.LASF42
	.byte	0x19
	.uleb128 0x2
	.4byte	.LASF43
	.byte	0x1a
	.uleb128 0x2
	.4byte	.LASF44
	.byte	0x1b
	.uleb128 0x2
	.4byte	.LASF45
	.byte	0x1c
	.uleb128 0x2
	.4byte	.LASF46
	.byte	0x1d
	.uleb128 0x2
	.4byte	.LASF47
	.byte	0x1e
	.uleb128 0x2
	.4byte	.LASF48
	.byte	0x1f
	.uleb128 0x2
	.4byte	.LASF49
	.byte	0x20
	.uleb128 0x2
	.4byte	.LASF50
	.byte	0x21
	.uleb128 0x2
	.4byte	.LASF51
	.byte	0x22
	.uleb128 0x2
	.4byte	.LASF52
	.byte	0x23
	.uleb128 0x2
	.4byte	.LASF53
	.byte	0x24
	.uleb128 0x2
	.4byte	.LASF54
	.byte	0x25
	.uleb128 0x2
	.4byte	.LASF55
	.byte	0x26
	.uleb128 0x2
	.4byte	.LASF56
	.byte	0x27
	.byte	0
	.uleb128 0xf
	.4byte	0x1d6
	.uleb128 0x5
	.byte	0x1
	.byte	0x8
	.4byte	.LASF57
	.uleb128 0xe
	.4byte	0x1cf
	.uleb128 0x7
	.byte	0x1
	.4byte	0x47
	.byte	0x6
	.byte	0xa
	.byte	0x6
	.4byte	0x1f5
	.uleb128 0x2
	.4byte	.LASF58
	.byte	0
	.uleb128 0x2
	.4byte	.LASF59
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x8
	.byte	0x4
	.4byte	.LASF60
	.uleb128 0x5
	.byte	0x4
	.byte	0x4
	.4byte	.LASF61
	.uleb128 0x1b
	.byte	0x3
	.byte	0x2
	.byte	0xa
	.byte	0x9
	.4byte	0x231
	.uleb128 0x10
	.4byte	.LASF62
	.byte	0xb
	.byte	0x8
	.4byte	0xc0
	.byte	0
	.uleb128 0x10
	.4byte	.LASF63
	.byte	0xc
	.byte	0xa
	.4byte	0x97
	.byte	0x1
	.uleb128 0x10
	.4byte	.LASF64
	.byte	0xc
	.byte	0x10
	.4byte	0x97
	.byte	0x2
	.byte	0
	.uleb128 0x6
	.4byte	.LASF65
	.byte	0x2
	.byte	0xd
	.byte	0x3
	.4byte	0x203
	.uleb128 0x5
	.byte	0x1
	.byte	0x2
	.4byte	.LASF66
	.uleb128 0xf
	.4byte	0x2d
	.uleb128 0x1c
	.ascii	"u32\000"
	.byte	0xf
	.byte	0x17
	.byte	0x12
	.4byte	0xb4
	.uleb128 0x7
	.byte	0x1
	.4byte	0x47
	.byte	0x7
	.byte	0x28
	.byte	0x1
	.4byte	0x27b
	.uleb128 0x2
	.4byte	.LASF67
	.byte	0
	.uleb128 0x2
	.4byte	.LASF68
	.byte	0x1
	.uleb128 0x2
	.4byte	.LASF69
	.byte	0x2
	.uleb128 0x2
	.4byte	.LASF70
	.byte	0x3
	.byte	0
	.uleb128 0x7
	.byte	0x1
	.4byte	0x47
	.byte	0x7
	.byte	0x31
	.byte	0x1
	.4byte	0x2a1
	.uleb128 0x2
	.4byte	.LASF71
	.byte	0
	.uleb128 0x2
	.4byte	.LASF72
	.byte	0x1
	.uleb128 0x2
	.4byte	.LASF73
	.byte	0x2
	.uleb128 0x2
	.4byte	.LASF74
	.byte	0x3
	.byte	0
	.uleb128 0x7
	.byte	0x1
	.4byte	0x47
	.byte	0x8
	.byte	0x21
	.byte	0xe
	.4byte	0x2c7
	.uleb128 0x2
	.4byte	.LASF75
	.byte	0
	.uleb128 0x2
	.4byte	.LASF76
	.byte	0x1
	.uleb128 0x2
	.4byte	.LASF77
	.byte	0x2
	.uleb128 0x2
	.4byte	.LASF78
	.byte	0x3
	.byte	0
	.uleb128 0x1d
	.byte	0x7
	.byte	0x1
	.4byte	0x47
	.byte	0x9
	.2byte	0x1f5
	.byte	0x1
	.4byte	0x2e3
	.uleb128 0x2
	.4byte	.LASF79
	.byte	0
	.uleb128 0x2
	.4byte	.LASF80
	.byte	0x1
	.byte	0
	.uleb128 0x7
	.byte	0x1
	.4byte	0x47
	.byte	0xa
	.byte	0xb
	.byte	0x1
	.4byte	0x303
	.uleb128 0x2
	.4byte	.LASF81
	.byte	0
	.uleb128 0x2
	.4byte	.LASF82
	.byte	0x1
	.uleb128 0x2
	.4byte	.LASF83
	.byte	0x2
	.byte	0
	.uleb128 0x7
	.byte	0x2
	.4byte	0x61
	.byte	0xb
	.byte	0x9
	.byte	0x1
	.4byte	0x31f
	.uleb128 0x13
	.4byte	.LASF84
	.2byte	0x100
	.uleb128 0x13
	.4byte	.LASF85
	.2byte	0x200
	.byte	0
	.uleb128 0x7
	.byte	0x1
	.4byte	0x47
	.byte	0xc
	.byte	0x10
	.byte	0xe
	.4byte	0x34b
	.uleb128 0x2
	.4byte	.LASF86
	.byte	0
	.uleb128 0x2
	.4byte	.LASF87
	.byte	0x1
	.uleb128 0x2
	.4byte	.LASF88
	.byte	0x2
	.uleb128 0x2
	.4byte	.LASF89
	.byte	0x3
	.uleb128 0x2
	.4byte	.LASF90
	.byte	0x4
	.byte	0
	.uleb128 0x6
	.4byte	.LASF91
	.byte	0xc
	.byte	0x10
	.byte	0x75
	.4byte	0x31f
	.uleb128 0x11
	.4byte	.LASF92
	.byte	0x7
	.byte	0x13
	.4byte	0x368
	.uleb128 0x5
	.byte	0x3
	.4byte	sourceStack
	.uleb128 0xf
	.4byte	0x231
	.uleb128 0x11
	.4byte	.LASF93
	.byte	0x7
	.byte	0x27
	.4byte	0x368
	.uleb128 0x5
	.byte	0x3
	.4byte	proposedSourceStack
	.uleb128 0x1e
	.4byte	.LASF94
	.byte	0xd
	.2byte	0x145
	.byte	0xf
	.4byte	0x26
	.4byte	0x39a
	.uleb128 0x3
	.4byte	0x26
	.uleb128 0x3
	.4byte	0x26
	.byte	0
	.uleb128 0x14
	.4byte	.LASF95
	.byte	0x1e
	.4byte	0x23d
	.4byte	0x3b4
	.uleb128 0x3
	.4byte	0x1fc
	.uleb128 0x3
	.4byte	0x1ca
	.uleb128 0x1f
	.byte	0
	.uleb128 0x8
	.4byte	.LASF96
	.byte	0xe
	.byte	0x12
	.4byte	0x3ca
	.uleb128 0x3
	.4byte	0x2d
	.uleb128 0x3
	.4byte	0x2d
	.byte	0
	.uleb128 0x8
	.4byte	.LASF97
	.byte	0xc
	.byte	0x17
	.4byte	0x403
	.uleb128 0x3
	.4byte	0x2d
	.uleb128 0x3
	.4byte	0x2d
	.uleb128 0x3
	.4byte	0x2d
	.uleb128 0x3
	.4byte	0x2d
	.uleb128 0x3
	.4byte	0x2d
	.uleb128 0x3
	.4byte	0x2d
	.uleb128 0x3
	.4byte	0x2d
	.uleb128 0x3
	.4byte	0x2d
	.uleb128 0x3
	.4byte	0x2d
	.byte	0
	.uleb128 0x8
	.4byte	.LASF98
	.byte	0xc
	.byte	0x15
	.4byte	0x42d
	.uleb128 0x3
	.4byte	0x2d
	.uleb128 0x3
	.4byte	0x2d
	.uleb128 0x3
	.4byte	0x2d
	.uleb128 0x3
	.4byte	0x2d
	.uleb128 0x3
	.4byte	0x2d
	.uleb128 0x3
	.4byte	0xa3
	.byte	0
	.uleb128 0x14
	.4byte	.LASF99
	.byte	0x23
	.4byte	0x23d
	.4byte	0x450
	.uleb128 0x3
	.4byte	0x2d
	.uleb128 0x3
	.4byte	0x2d
	.uleb128 0x3
	.4byte	0x2d
	.uleb128 0x3
	.4byte	0x2d
	.byte	0
	.uleb128 0x8
	.4byte	.LASF100
	.byte	0xc
	.byte	0x18
	.4byte	0x475
	.uleb128 0x3
	.4byte	0xc0
	.uleb128 0x3
	.4byte	0x97
	.uleb128 0x3
	.4byte	0x2d
	.uleb128 0x3
	.4byte	0x2d
	.uleb128 0x3
	.4byte	0x2d
	.byte	0
	.uleb128 0x8
	.4byte	.LASF101
	.byte	0xc
	.byte	0x23
	.4byte	0x486
	.uleb128 0x3
	.4byte	0x2d
	.byte	0
	.uleb128 0x8
	.4byte	.LASF102
	.byte	0xc
	.byte	0x12
	.4byte	0x497
	.uleb128 0x3
	.4byte	0x34b
	.byte	0
	.uleb128 0x20
	.4byte	.LASF118
	.byte	0x1
	.byte	0x32
	.byte	0x5
	.4byte	0x2d
	.4byte	.LFB212
	.4byte	.LFE212-.LFB212
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x706
	.uleb128 0xa
	.ascii	"x\000"
	.byte	0x32
	.byte	0x18
	.4byte	0x2d
	.4byte	.LLST13
	.4byte	.LVUS13
	.uleb128 0xa
	.ascii	"y\000"
	.byte	0x32
	.byte	0x1f
	.4byte	0x2d
	.4byte	.LLST14
	.4byte	.LVUS14
	.uleb128 0xa
	.ascii	"w\000"
	.byte	0x32
	.byte	0x26
	.4byte	0x2d
	.4byte	.LLST15
	.4byte	.LVUS15
	.uleb128 0x12
	.4byte	.LASF103
	.byte	0x32
	.byte	0x34
	.4byte	0x368
	.4byte	.LLST16
	.4byte	.LVUS16
	.uleb128 0xb
	.4byte	.LASF104
	.byte	0x32
	.byte	0x40
	.4byte	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xb
	.4byte	.LASF105
	.byte	0x32
	.byte	0x4b
	.4byte	0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x9
	.4byte	.LASF106
	.byte	0x35
	.4byte	0x2d
	.4byte	.LLST17
	.4byte	.LVUS17
	.uleb128 0x9
	.4byte	.LASF107
	.byte	0x36
	.4byte	0x2d
	.4byte	.LLST18
	.4byte	.LVUS18
	.uleb128 0x9
	.4byte	.LASF108
	.byte	0x37
	.4byte	0x2d
	.4byte	.LLST19
	.4byte	.LVUS19
	.uleb128 0x9
	.4byte	.LASF109
	.byte	0x38
	.4byte	0x23d
	.4byte	.LLST20
	.4byte	.LVUS20
	.uleb128 0x9
	.4byte	.LASF110
	.byte	0x39
	.4byte	0x23d
	.4byte	.LLST21
	.4byte	.LVUS21
	.uleb128 0x11
	.4byte	.LASF111
	.byte	0x3b
	.byte	0x10
	.4byte	0x716
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x9
	.4byte	.LASF112
	.byte	0x4a
	.4byte	0x2d
	.4byte	.LLST22
	.4byte	.LVUS22
	.uleb128 0x21
	.4byte	.LLRL23
	.4byte	0x681
	.uleb128 0xc
	.ascii	"i\000"
	.byte	0x4b
	.byte	0xb
	.4byte	0x2d
	.4byte	.LLST24
	.4byte	.LVUS24
	.uleb128 0x4
	.4byte	.LVL41
	.4byte	0x37e
	.4byte	0x5c7
	.uleb128 0x1
	.uleb128 0x8
	.byte	0x90
	.uleb128 0x42
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x43
	.byte	0x93
	.uleb128 0x4
	.uleb128 0x7
	.byte	0x91
	.sleb128 -8
	.byte	0x6
	.byte	0xa8
	.uleb128 0x2d
	.byte	0xa8
	.uleb128 0x26
	.byte	0
	.uleb128 0x4
	.4byte	.LVL48
	.4byte	0x450
	.4byte	0x5e7
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x1
	.byte	0x3a
	.byte	0
	.uleb128 0x4
	.4byte	.LVL49
	.4byte	0x42d
	.4byte	0x60d
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
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
	.byte	0x8
	.byte	0x20
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.uleb128 0x4
	.4byte	.LVL50
	.4byte	0x403
	.4byte	0x639
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x39
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.uleb128 0x1
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.uleb128 0x4
	.4byte	.LVL58
	.4byte	0x403
	.4byte	0x670
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x4
	.byte	0x91
	.sleb128 -80
	.byte	0x6
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x77
	.sleb128 -2
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x3a
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x4
	.byte	0x91
	.sleb128 -76
	.byte	0x6
	.uleb128 0x1
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x1
	.uleb128 0x2
	.byte	0x7d
	.sleb128 4
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1ce7
	.byte	0
	.uleb128 0xd
	.4byte	.LVL60
	.4byte	0x9d7
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x70
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x4
	.4byte	.LVL39
	.4byte	0x475
	.4byte	0x694
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x4
	.4byte	.LVL55
	.4byte	0x475
	.4byte	0x6a7
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.uleb128 0x4
	.4byte	.LVL62
	.4byte	0x3b4
	.4byte	0x6c0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x3c
	.byte	0
	.uleb128 0x4
	.4byte	.LVL63
	.4byte	0x39a
	.4byte	0x6d7
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.uleb128 0x4
	.4byte	.LVL65
	.4byte	0x3b4
	.4byte	0x6f2
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0xa
	.2byte	0x10e
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x3c
	.byte	0
	.uleb128 0xd
	.4byte	.LVL66
	.4byte	0x39a
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.byte	0
	.uleb128 0x22
	.4byte	0xaf
	.4byte	0x716
	.uleb128 0x23
	.4byte	0x90
	.byte	0x1
	.byte	0
	.uleb128 0xe
	.4byte	0x706
	.uleb128 0x24
	.4byte	.LASF119
	.byte	0x1
	.byte	0x15
	.byte	0x6
	.4byte	.LFB211
	.4byte	.LFE211-.LFB211
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9d7
	.uleb128 0xa
	.ascii	"x\000"
	.byte	0x15
	.byte	0x24
	.4byte	0x2d
	.4byte	.LLST5
	.4byte	.LVUS5
	.uleb128 0xa
	.ascii	"y\000"
	.byte	0x15
	.byte	0x2b
	.4byte	0x2d
	.4byte	.LLST6
	.4byte	.LVUS6
	.uleb128 0x12
	.4byte	.LASF103
	.byte	0x15
	.byte	0x39
	.4byte	0x368
	.4byte	.LLST7
	.4byte	.LVUS7
	.uleb128 0x12
	.4byte	.LASF104
	.byte	0x15
	.byte	0x45
	.4byte	0x2d
	.4byte	.LLST8
	.4byte	.LVUS8
	.uleb128 0xb
	.4byte	.LASF113
	.byte	0x15
	.byte	0x51
	.4byte	0x244
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x25
	.4byte	.LBB14
	.4byte	.LBE14-.LBB14
	.4byte	0x8de
	.uleb128 0xc
	.ascii	"i\000"
	.byte	0x18
	.byte	0xb
	.4byte	0x2d
	.4byte	.LLST9
	.4byte	.LVUS9
	.uleb128 0x26
	.4byte	.LLRL10
	.uleb128 0xc
	.ascii	"rx\000"
	.byte	0x1a
	.byte	0x7
	.4byte	0x2d
	.4byte	.LLST11
	.4byte	.LVUS11
	.uleb128 0xc
	.ascii	"ry\000"
	.byte	0x1b
	.byte	0x7
	.4byte	0x2d
	.4byte	.LLST12
	.4byte	.LVUS12
	.uleb128 0x4
	.4byte	.LVL18
	.4byte	0x42d
	.4byte	0x7f4
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
	.byte	0x7a
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x8
	.byte	0x24
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x8
	.byte	0x24
	.byte	0
	.uleb128 0x4
	.4byte	.LVL19
	.4byte	0x475
	.4byte	0x807
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x4
	.4byte	.LVL21
	.4byte	0x3ca
	.4byte	0x853
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x3a
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1
	.byte	0x44
	.uleb128 0x1
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x1
	.byte	0x46
	.uleb128 0x1
	.uleb128 0x2
	.byte	0x7d
	.sleb128 4
	.uleb128 0xb
	.byte	0x75
	.sleb128 -1
	.byte	0x75
	.sleb128 -1
	.byte	0x32
	.byte	0x24
	.byte	0x22
	.byte	0x32
	.byte	0x24
	.byte	0x23
	.uleb128 0x15
	.uleb128 0x1
	.uleb128 0x2
	.byte	0x7d
	.sleb128 8
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1
	.uleb128 0x2
	.byte	0x7d
	.sleb128 12
	.uleb128 0x1
	.byte	0x44
	.uleb128 0x1
	.uleb128 0x2
	.byte	0x7d
	.sleb128 16
	.uleb128 0x1
	.byte	0x46
	.byte	0
	.uleb128 0x4
	.4byte	.LVL23
	.4byte	0x475
	.4byte	0x866
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x4
	.4byte	.LVL25
	.4byte	0x450
	.4byte	0x887
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x77
	.sleb128 4
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x3
	.byte	0x92
	.uleb128 0x50
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x1
	.byte	0x3b
	.byte	0
	.uleb128 0x4
	.4byte	.LVL26
	.4byte	0x9d7
	.4byte	0x89b
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x70
	.sleb128 0
	.byte	0
	.uleb128 0x4
	.4byte	.LVL27
	.4byte	0x403
	.4byte	0x8cd
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x79
	.sleb128 1
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x39
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1
	.byte	0x42
	.uleb128 0x1
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x1
	.byte	0x42
	.uleb128 0x1
	.uleb128 0x2
	.byte	0x7d
	.sleb128 4
	.uleb128 0x3
	.byte	0xa
	.2byte	0x50a2
	.byte	0
	.uleb128 0xd
	.4byte	.LVL28
	.4byte	0x486
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x33
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x4
	.4byte	.LVL15
	.4byte	0x486
	.4byte	0x8f1
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x33
	.byte	0
	.uleb128 0x4
	.4byte	.LVL30
	.4byte	0x475
	.4byte	0x904
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x4
	.4byte	.LVL31
	.4byte	0x3ca
	.4byte	0x94c
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
	.byte	0x79
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x3a
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x2
	.byte	0x7d
	.sleb128 4
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x2
	.byte	0x7d
	.sleb128 8
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x2
	.byte	0x7d
	.sleb128 12
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x2
	.byte	0x7d
	.sleb128 16
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x4
	.4byte	.LVL34
	.4byte	0x3ca
	.4byte	0x99c
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0xa
	.byte	0x78
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x76
	.sleb128 0
	.byte	0x22
	.byte	0x77
	.sleb128 0
	.byte	0x22
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x3a
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x2
	.byte	0x7d
	.sleb128 4
	.uleb128 0x2
	.byte	0x8
	.byte	0xa1
	.uleb128 0x1
	.uleb128 0x2
	.byte	0x7d
	.sleb128 8
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x2
	.byte	0x7d
	.sleb128 12
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x2
	.byte	0x7d
	.sleb128 16
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0xd
	.4byte	.LVL35
	.4byte	0x3ca
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x79
	.sleb128 -1
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x3e
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1
	.byte	0x48
	.uleb128 0x1
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x1
	.byte	0x48
	.uleb128 0x1
	.uleb128 0x2
	.byte	0x7d
	.sleb128 4
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x2
	.byte	0x7d
	.sleb128 8
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x2
	.byte	0x7d
	.sleb128 12
	.uleb128 0x1
	.byte	0x48
	.uleb128 0x1
	.uleb128 0x2
	.byte	0x7d
	.sleb128 16
	.uleb128 0x1
	.byte	0x48
	.byte	0
	.byte	0
	.uleb128 0x27
	.4byte	.LASF120
	.byte	0x1
	.byte	0x9
	.byte	0xd
	.4byte	.LFB210
	.4byte	.LFE210-.LFB210
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa61
	.uleb128 0xb
	.4byte	.LASF114
	.byte	0x9
	.byte	0x25
	.4byte	0x368
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x28
	.4byte	0xa61
	.4byte	.LBI6
	.byte	.LVU11
	.4byte	.LLRL0
	.byte	0x1
	.byte	0x10
	.byte	0x1d
	.uleb128 0x15
	.4byte	0xa74
	.4byte	.LLST1
	.4byte	.LVUS1
	.uleb128 0x15
	.4byte	0xa6a
	.4byte	.LLST2
	.4byte	.LVUS2
	.uleb128 0x29
	.4byte	0xa8f
	.4byte	.LBB8
	.4byte	.LBE8-.LBB8
	.4byte	0xa44
	.uleb128 0x16
	.4byte	0xa90
	.4byte	.LLST3
	.4byte	.LVUS3
	.byte	0
	.uleb128 0x2a
	.4byte	0xa7e
	.4byte	.LBB9
	.4byte	.LBE9-.LBB9
	.uleb128 0x16
	.4byte	0xa83
	.4byte	.LLST4
	.4byte	.LVUS4
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2b
	.4byte	.LASF121
	.byte	0x2
	.byte	0x12
	.byte	0xd
	.byte	0x3
	.uleb128 0x17
	.ascii	"src\000"
	.byte	0x2b
	.4byte	0x368
	.uleb128 0x17
	.ascii	"dst\000"
	.byte	0x3b
	.4byte	0x368
	.uleb128 0x2c
	.4byte	0xa8f
	.uleb128 0x18
	.ascii	"vol\000"
	.byte	0x14
	.byte	0x7
	.4byte	0x2d
	.byte	0
	.uleb128 0x2d
	.uleb128 0x18
	.ascii	"tmp\000"
	.byte	0x1a
	.byte	0xd
	.4byte	0x231
	.byte	0
	.byte	0
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
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
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
	.byte	0x1
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
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
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0x48
	.byte	0x1
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
	.uleb128 0x3b
	.uleb128 0x21
	.sleb128 18
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x21
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x57
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2b
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
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uleb128 0xb
	.byte	0x1
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
.LVUS13:
	.uleb128 0
	.uleb128 .LVU123
	.uleb128 .LVU123
	.uleb128 .LVU125
	.uleb128 .LVU125
	.uleb128 0
.LLST13:
	.byte	0x6
	.4byte	.LVL37
	.byte	0x4
	.uleb128 .LVL37-.LVL37
	.uleb128 .LVL38-.LVL37
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL38-.LVL37
	.uleb128 .LVL39-1-.LVL37
	.uleb128 0x1
	.byte	0x5c
	.byte	0x4
	.uleb128 .LVL39-1-.LVL37
	.uleb128 .LFE212-.LVL37
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.byte	0
.LVUS14:
	.uleb128 0
	.uleb128 .LVU125
	.uleb128 .LVU125
	.uleb128 .LVU152
	.uleb128 .LVU152
	.uleb128 .LVU198
	.uleb128 .LVU198
	.uleb128 0
.LLST14:
	.byte	0x6
	.4byte	.LVL37
	.byte	0x4
	.uleb128 .LVL37-.LVL37
	.uleb128 .LVL39-1-.LVL37
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL39-1-.LVL37
	.uleb128 .LVL43-.LVL37
	.uleb128 0x1
	.byte	0x5b
	.byte	0x4
	.uleb128 .LVL43-.LVL37
	.uleb128 .LVL61-.LVL37
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL61-.LVL37
	.uleb128 .LFE212-.LVL37
	.uleb128 0x1
	.byte	0x5b
	.byte	0
.LVUS15:
	.uleb128 0
	.uleb128 .LVU125
	.uleb128 .LVU125
	.uleb128 0
.LLST15:
	.byte	0x6
	.4byte	.LVL37
	.byte	0x4
	.uleb128 .LVL37-.LVL37
	.uleb128 .LVL39-1-.LVL37
	.uleb128 0x1
	.byte	0x52
	.byte	0x4
	.uleb128 .LVL39-1-.LVL37
	.uleb128 .LFE212-.LVL37
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.byte	0
.LVUS16:
	.uleb128 0
	.uleb128 .LVU125
	.uleb128 .LVU125
	.uleb128 .LVU144
	.uleb128 .LVU144
	.uleb128 .LVU198
	.uleb128 .LVU198
	.uleb128 0
.LLST16:
	.byte	0x6
	.4byte	.LVL37
	.byte	0x4
	.uleb128 .LVL37-.LVL37
	.uleb128 .LVL39-1-.LVL37
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL39-1-.LVL37
	.uleb128 .LVL42-.LVL37
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL42-.LVL37
	.uleb128 .LVL61-.LVL37
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL61-.LVL37
	.uleb128 .LFE212-.LVL37
	.uleb128 0x1
	.byte	0x54
	.byte	0
.LVUS17:
	.uleb128 .LVU126
	.uleb128 .LVU152
	.uleb128 .LVU152
	.uleb128 .LVU162
	.uleb128 .LVU162
	.uleb128 .LVU172
	.uleb128 .LVU186
	.uleb128 .LVU194
	.uleb128 .LVU198
	.uleb128 0
.LLST17:
	.byte	0x6
	.4byte	.LVL39
	.byte	0x4
	.uleb128 .LVL39-.LVL39
	.uleb128 .LVL43-.LVL39
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.byte	0x4
	.uleb128 .LVL43-.LVL39
	.uleb128 .LVL45-.LVL39
	.uleb128 0x1
	.byte	0x58
	.byte	0x4
	.uleb128 .LVL45-.LVL39
	.uleb128 .LVL46-.LVL39
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.byte	0x4
	.uleb128 .LVL52-.LVL39
	.uleb128 .LVL57-.LVL39
	.uleb128 0x1
	.byte	0x58
	.byte	0x4
	.uleb128 .LVL61-.LVL39
	.uleb128 .LFE212-.LVL39
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.byte	0
.LVUS18:
	.uleb128 .LVU127
	.uleb128 0
.LLST18:
	.byte	0x8
	.4byte	.LVL39
	.uleb128 .LFE212-.LVL39
	.uleb128 0x1
	.byte	0x5b
	.byte	0
.LVUS19:
	.uleb128 .LVU128
	.uleb128 .LVU136
	.uleb128 .LVU136
	.uleb128 .LVU193
	.uleb128 .LVU193
	.uleb128 .LVU194
	.uleb128 .LVU194
	.uleb128 .LVU198
	.uleb128 .LVU198
	.uleb128 .LVU219
	.uleb128 .LVU219
	.uleb128 .LVU220
	.uleb128 .LVU220
	.uleb128 0
.LLST19:
	.byte	0x6
	.4byte	.LVL39
	.byte	0x4
	.uleb128 .LVL39-.LVL39
	.uleb128 .LVL40-.LVL39
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL40-.LVL39
	.uleb128 .LVL56-.LVL39
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x52
	.byte	0x4
	.uleb128 .LVL56-.LVL39
	.uleb128 .LVL57-.LVL39
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL57-.LVL39
	.uleb128 .LVL61-.LVL39
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x52
	.byte	0x4
	.uleb128 .LVL61-.LVL39
	.uleb128 .LVL67-.LVL39
	.uleb128 0x1
	.byte	0x5a
	.byte	0x4
	.uleb128 .LVL67-.LVL39
	.uleb128 .LVL68-.LVL39
	.uleb128 0x1
	.byte	0x52
	.byte	0x4
	.uleb128 .LVL68-.LVL39
	.uleb128 .LFE212-.LVL39
	.uleb128 0x1
	.byte	0x5a
	.byte	0
.LVUS20:
	.uleb128 .LVU129
	.uleb128 .LVU152
	.uleb128 .LVU152
	.uleb128 .LVU181
	.uleb128 .LVU181
	.uleb128 .LVU185
	.uleb128 .LVU186
	.uleb128 .LVU194
	.uleb128 .LVU195
	.uleb128 .LVU197
	.uleb128 .LVU197
	.uleb128 .LVU198
	.uleb128 .LVU198
	.uleb128 0
.LLST20:
	.byte	0x6
	.4byte	.LVL39
	.byte	0x4
	.uleb128 .LVL39-.LVL39
	.uleb128 .LVL43-.LVL39
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL43-.LVL39
	.uleb128 .LVL50-.LVL39
	.uleb128 0x1
	.byte	0x59
	.byte	0x4
	.uleb128 .LVL50-.LVL39
	.uleb128 .LVL51-.LVL39
	.uleb128 0x4
	.byte	0x79
	.sleb128 0
	.byte	0x20
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL52-.LVL39
	.uleb128 .LVL57-.LVL39
	.uleb128 0x1
	.byte	0x59
	.byte	0x4
	.uleb128 .LVL57-.LVL39
	.uleb128 .LVL59-.LVL39
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL59-.LVL39
	.uleb128 .LVL61-.LVL39
	.uleb128 0x1
	.byte	0x59
	.byte	0x4
	.uleb128 .LVL61-.LVL39
	.uleb128 .LFE212-.LVL39
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0
.LVUS21:
	.uleb128 .LVU130
	.uleb128 .LVU152
	.uleb128 .LVU157
	.uleb128 .LVU172
	.uleb128 .LVU172
	.uleb128 .LVU175
	.uleb128 .LVU198
	.uleb128 0
.LLST21:
	.byte	0x6
	.4byte	.LVL39
	.byte	0x4
	.uleb128 .LVL39-.LVL39
	.uleb128 .LVL43-.LVL39
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL44-.LVL39
	.uleb128 .LVL46-.LVL39
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL46-.LVL39
	.uleb128 .LVL47-.LVL39
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.byte	0x4
	.uleb128 .LVL61-.LVL39
	.uleb128 .LFE212-.LVL39
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0
.LVUS22:
	.uleb128 .LVU137
	.uleb128 .LVU193
	.uleb128 .LVU193
	.uleb128 .LVU194
	.uleb128 .LVU194
	.uleb128 .LVU198
.LLST22:
	.byte	0x6
	.4byte	.LVL40
	.byte	0x4
	.uleb128 .LVL40-.LVL40
	.uleb128 .LVL56-.LVL40
	.uleb128 0x6
	.byte	0x92
	.uleb128 0x52
	.sleb128 -1
	.byte	0x35
	.byte	0x24
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL56-.LVL40
	.uleb128 .LVL57-.LVL40
	.uleb128 0x5
	.byte	0x70
	.sleb128 -1
	.byte	0x35
	.byte	0x24
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL57-.LVL40
	.uleb128 .LVL61-.LVL40
	.uleb128 0x6
	.byte	0x92
	.uleb128 0x52
	.sleb128 -1
	.byte	0x35
	.byte	0x24
	.byte	0x9f
	.byte	0
.LVUS24:
	.uleb128 .LVU139
	.uleb128 .LVU152
	.uleb128 .LVU152
	.uleb128 .LVU198
.LLST24:
	.byte	0x6
	.4byte	.LVL40
	.byte	0x4
	.uleb128 .LVL40-.LVL40
	.uleb128 .LVL43-.LVL40
	.uleb128 0x6
	.byte	0x92
	.uleb128 0x52
	.sleb128 -1
	.byte	0x35
	.byte	0x24
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL43-.LVL40
	.uleb128 .LVL61-.LVL40
	.uleb128 0x1
	.byte	0x55
	.byte	0
.LVUS5:
	.uleb128 0
	.uleb128 .LVU61
	.uleb128 .LVU61
	.uleb128 .LVU63
	.uleb128 .LVU63
	.uleb128 .LVU71
	.uleb128 .LVU71
	.uleb128 0
.LLST5:
	.byte	0x6
	.4byte	.LVL13
	.byte	0x4
	.uleb128 .LVL13-.LVL13
	.uleb128 .LVL14-.LVL13
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL14-.LVL13
	.uleb128 .LVL15-1-.LVL13
	.uleb128 0x1
	.byte	0x5c
	.byte	0x4
	.uleb128 .LVL15-1-.LVL13
	.uleb128 .LVL16-.LVL13
	.uleb128 0x1
	.byte	0x56
	.byte	0x4
	.uleb128 .LVL16-.LVL13
	.uleb128 .LFE211-.LVL13
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.byte	0
.LVUS6:
	.uleb128 0
	.uleb128 .LVU63
	.uleb128 .LVU63
	.uleb128 .LVU118
	.uleb128 .LVU118
	.uleb128 0
.LLST6:
	.byte	0x6
	.4byte	.LVL13
	.byte	0x4
	.uleb128 .LVL13-.LVL13
	.uleb128 .LVL15-1-.LVL13
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL15-1-.LVL13
	.uleb128 .LVL36-.LVL13
	.uleb128 0x1
	.byte	0x59
	.byte	0x4
	.uleb128 .LVL36-.LVL13
	.uleb128 .LFE211-.LVL13
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.byte	0
.LVUS7:
	.uleb128 0
	.uleb128 .LVU63
	.uleb128 .LVU63
	.uleb128 .LVU72
	.uleb128 .LVU72
	.uleb128 0
.LLST7:
	.byte	0x6
	.4byte	.LVL13
	.byte	0x4
	.uleb128 .LVL13-.LVL13
	.uleb128 .LVL15-1-.LVL13
	.uleb128 0x1
	.byte	0x52
	.byte	0x4
	.uleb128 .LVL15-1-.LVL13
	.uleb128 .LVL17-.LVL13
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL17-.LVL13
	.uleb128 .LFE211-.LVL13
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.byte	0
.LVUS8:
	.uleb128 0
	.uleb128 .LVU63
	.uleb128 .LVU63
	.uleb128 .LVU106
	.uleb128 .LVU106
	.uleb128 .LVU107
	.uleb128 .LVU107
	.uleb128 0
.LLST8:
	.byte	0x6
	.4byte	.LVL13
	.byte	0x4
	.uleb128 .LVL13-.LVL13
	.uleb128 .LVL15-1-.LVL13
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL15-1-.LVL13
	.uleb128 .LVL32-.LVL13
	.uleb128 0x1
	.byte	0x58
	.byte	0x4
	.uleb128 .LVL32-.LVL13
	.uleb128 .LVL33-.LVL13
	.uleb128 0x3
	.byte	0x78
	.sleb128 2
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL33-.LVL13
	.uleb128 .LFE211-.LVL13
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.byte	0
.LVUS9:
	.uleb128 .LVU65
	.uleb128 .LVU72
	.uleb128 .LVU72
	.uleb128 .LVU81
	.uleb128 .LVU81
	.uleb128 .LVU83
	.uleb128 .LVU83
	.uleb128 .LVU99
.LLST9:
	.byte	0x6
	.4byte	.LVL15
	.byte	0x4
	.uleb128 .LVL15-.LVL15
	.uleb128 .LVL17-.LVL15
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL17-.LVL15
	.uleb128 .LVL20-.LVL15
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL20-.LVL15
	.uleb128 .LVL21-.LVL15
	.uleb128 0x3
	.byte	0x75
	.sleb128 -1
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL21-.LVL15
	.uleb128 .LVL29-.LVL15
	.uleb128 0x1
	.byte	0x55
	.byte	0
.LVUS11:
	.uleb128 .LVU72
	.uleb128 .LVU84
	.uleb128 .LVU87
	.uleb128 .LVU91
	.uleb128 .LVU91
	.uleb128 .LVU99
.LLST11:
	.byte	0x6
	.4byte	.LVL17
	.byte	0x4
	.uleb128 .LVL17-.LVL17
	.uleb128 .LVL22-.LVL17
	.uleb128 0x3
	.byte	0x77
	.sleb128 4
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL24-.LVL17
	.uleb128 .LVL25-1-.LVL17
	.uleb128 0x1
	.byte	0x52
	.byte	0x4
	.uleb128 .LVL25-1-.LVL17
	.uleb128 .LVL29-.LVL17
	.uleb128 0x3
	.byte	0x77
	.sleb128 4
	.byte	0x9f
	.byte	0
.LVUS12:
	.uleb128 .LVU72
	.uleb128 .LVU84
	.uleb128 .LVU88
	.uleb128 .LVU99
.LLST12:
	.byte	0x6
	.4byte	.LVL17
	.byte	0x4
	.uleb128 .LVL17-.LVL17
	.uleb128 .LVL22-.LVL17
	.uleb128 0x5
	.byte	0x79
	.sleb128 3
	.byte	0x31
	.byte	0x24
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL24-.LVL17
	.uleb128 .LVL29-.LVL17
	.uleb128 0x5
	.byte	0x79
	.sleb128 3
	.byte	0x31
	.byte	0x24
	.byte	0x9f
	.byte	0
.LVUS1:
	.uleb128 .LVU11
	.uleb128 .LVU28
	.uleb128 .LVU37
	.uleb128 .LVU54
.LLST1:
	.byte	0x6
	.4byte	.LVL1
	.byte	0x4
	.uleb128 .LVL1-.LVL1
	.uleb128 .LVL5-.LVL1
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL6-.LVL1
	.uleb128 .LVL12-.LVL1
	.uleb128 0x1
	.byte	0x50
	.byte	0
.LVUS2:
	.uleb128 .LVU11
	.uleb128 .LVU28
	.uleb128 .LVU37
	.uleb128 .LVU47
	.uleb128 .LVU47
	.uleb128 .LVU54
.LLST2:
	.byte	0x6
	.4byte	.LVL1
	.byte	0x4
	.uleb128 .LVL1-.LVL1
	.uleb128 .LVL5-.LVL1
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL6-.LVL1
	.uleb128 .LVL11-.LVL1
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL11-.LVL1
	.uleb128 .LVL12-.LVL1
	.uleb128 0x5
	.byte	0x3
	.4byte	sourceStack
	.byte	0
.LVUS3:
	.uleb128 .LVU23
	.uleb128 .LVU25
	.uleb128 .LVU25
	.uleb128 .LVU26
	.uleb128 .LVU26
	.uleb128 .LVU28
.LLST3:
	.byte	0x6
	.4byte	.LVL2
	.byte	0x4
	.uleb128 .LVL2-.LVL2
	.uleb128 .LVL3-.LVL2
	.uleb128 0xa
	.byte	0x93
	.uleb128 0x1
	.byte	0x73
	.sleb128 1
	.byte	0x93
	.uleb128 0x1
	.byte	0x73
	.sleb128 2
	.byte	0x93
	.uleb128 0x1
	.byte	0x4
	.uleb128 .LVL3-.LVL2
	.uleb128 .LVL4-.LVL2
	.uleb128 0x6
	.byte	0x93
	.uleb128 0x2
	.byte	0x73
	.sleb128 2
	.byte	0x93
	.uleb128 0x1
	.byte	0x4
	.uleb128 .LVL4-.LVL2
	.uleb128 .LVL5-.LVL2
	.uleb128 0x5
	.byte	0x93
	.uleb128 0x2
	.byte	0x52
	.byte	0x93
	.uleb128 0x1
	.byte	0
.LVUS4:
	.uleb128 .LVU40
	.uleb128 .LVU42
	.uleb128 .LVU42
	.uleb128 .LVU44
	.uleb128 .LVU44
	.uleb128 .LVU45
.LLST4:
	.byte	0x6
	.4byte	.LVL7
	.byte	0x4
	.uleb128 .LVL7-.LVL7
	.uleb128 .LVL8-.LVL7
	.uleb128 0x17
	.byte	0x8
	.byte	0x40
	.byte	0x72
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x1c
	.byte	0x12
	.byte	0x7c
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x16
	.byte	0x14
	.byte	0x2d
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL8-.LVL7
	.uleb128 .LVL9-.LVL7
	.uleb128 0x19
	.byte	0x8
	.byte	0x40
	.byte	0x70
	.sleb128 2
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x1c
	.byte	0x12
	.byte	0x7c
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x16
	.byte	0x14
	.byte	0x2d
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL9-.LVL7
	.uleb128 .LVL10-.LVL7
	.uleb128 0x1b
	.byte	0x8
	.byte	0x40
	.byte	0x70
	.sleb128 2
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x1c
	.byte	0x12
	.byte	0x73
	.sleb128 2
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x16
	.byte	0x14
	.byte	0x2d
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.byte	0
.Ldebug_loc3:
	.section	.debug_aranges,"",%progbits
	.4byte	0x2c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB210
	.4byte	.LFE210-.LFB210
	.4byte	.LFB211
	.4byte	.LFE211-.LFB211
	.4byte	.LFB212
	.4byte	.LFE212-.LFB212
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
.LLRL0:
	.byte	0x5
	.4byte	.LBB6
	.byte	0x4
	.uleb128 .LBB6-.LBB6
	.uleb128 .LBE6-.LBB6
	.byte	0x4
	.uleb128 .LBB12-.LBB6
	.uleb128 .LBE12-.LBB6
	.byte	0x4
	.uleb128 .LBB13-.LBB6
	.uleb128 .LBE13-.LBB6
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
	.byte	0x4
	.uleb128 .LBB17-.LBB15
	.uleb128 .LBE17-.LBB15
	.byte	0x4
	.uleb128 .LBB18-.LBB15
	.uleb128 .LBE18-.LBB15
	.byte	0
.LLRL23:
	.byte	0x5
	.4byte	.LBB19
	.byte	0x4
	.uleb128 .LBB19-.LBB19
	.uleb128 .LBE19-.LBB19
	.byte	0x4
	.uleb128 .LBB20-.LBB19
	.uleb128 .LBE20-.LBB19
	.byte	0x4
	.uleb128 .LBB21-.LBB19
	.uleb128 .LBE21-.LBB19
	.byte	0x4
	.uleb128 .LBB22-.LBB19
	.uleb128 .LBE22-.LBB19
	.byte	0x4
	.uleb128 .LBB23-.LBB19
	.uleb128 .LBE23-.LBB19
	.byte	0
.LLRL25:
	.byte	0x7
	.4byte	.LFB210
	.uleb128 .LFE210-.LFB210
	.byte	0x7
	.4byte	.LFB211
	.uleb128 .LFE211-.LFB211
	.byte	0x7
	.4byte	.LFB212
	.uleb128 .LFE212-.LFB212
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF95:
	.ascii	"Gui_Button\000"
.LASF104:
	.ascii	"count\000"
.LASF44:
	.ascii	"Block_Lava\000"
.LASF115:
	.ascii	"GNU C17 11.2.0 -mword-relocations -mtune=mpcore -mf"
	.ascii	"loat-abi=hard -mtp=soft -marm -march=armv6k -g -O2 "
	.ascii	"-ffunction-sections -fomit-frame-pointer\000"
.LASF1:
	.ascii	"signed char\000"
.LASF3:
	.ascii	"__uint8_t\000"
.LASF75:
	.ascii	"NDM_DAEMON_CEC\000"
.LASF68:
	.ascii	"CSND_ENCODING_PCM16\000"
.LASF11:
	.ascii	"long long unsigned int\000"
.LASF14:
	.ascii	"int16_t\000"
.LASF83:
	.ascii	"NDSP_ENCODING_ADPCM\000"
.LASF10:
	.ascii	"long long int\000"
.LASF92:
	.ascii	"sourceStack\000"
.LASF46:
	.ascii	"Block_Coal_Ore\000"
.LASF89:
	.ascii	"GuiTexture_Widgets\000"
.LASF39:
	.ascii	"Block_Sandstone\000"
.LASF22:
	.ascii	"Block_Sand\000"
.LASF7:
	.ascii	"long int\000"
.LASF101:
	.ascii	"SpriteBatch_SetScale\000"
.LASF16:
	.ascii	"Block\000"
.LASF37:
	.ascii	"Block_Obsidian\000"
.LASF43:
	.ascii	"Block_Water\000"
.LASF41:
	.ascii	"Block_Crafting_Table\000"
.LASF0:
	.ascii	"double\000"
.LASF42:
	.ascii	"Block_Grass_Path\000"
.LASF90:
	.ascii	"GuiTexture_MenuBackground\000"
.LASF20:
	.ascii	"Block_Grass\000"
.LASF32:
	.ascii	"Block_Coarse\000"
.LASF38:
	.ascii	"Block_Netherrack\000"
.LASF8:
	.ascii	"__uint32_t\000"
.LASF4:
	.ascii	"__int16_t\000"
.LASF40:
	.ascii	"Block_Smooth_Stone\000"
.LASF87:
	.ascii	"GuiTexture_Font\000"
.LASF119:
	.ascii	"Inventory_DrawQuickSelect\000"
.LASF12:
	.ascii	"unsigned int\000"
.LASF27:
	.ascii	"Block_Stonebrick\000"
.LASF21:
	.ascii	"Block_Cobblestone\000"
.LASF9:
	.ascii	"long unsigned int\000"
.LASF45:
	.ascii	"Block_Iron_Ore\000"
.LASF30:
	.ascii	"Block_Wool\000"
.LASF18:
	.ascii	"Block_Stone\000"
.LASF6:
	.ascii	"short unsigned int\000"
.LASF69:
	.ascii	"CSND_ENCODING_ADPCM\000"
.LASF91:
	.ascii	"GuiTexture\000"
.LASF53:
	.ascii	"Block_Iron_Block\000"
.LASF50:
	.ascii	"Block_Gold_Block\000"
.LASF28:
	.ascii	"Block_Brick\000"
.LASF31:
	.ascii	"Block_Bedrock\000"
.LASF25:
	.ascii	"Block_Leaves\000"
.LASF49:
	.ascii	"Block_Emerald_Ore\000"
.LASF48:
	.ascii	"Block_Gold_Ore\000"
.LASF94:
	.ascii	"fmin\000"
.LASF106:
	.ascii	"headX\000"
.LASF107:
	.ascii	"headY\000"
.LASF76:
	.ascii	"NDM_DAEMON_BOSS\000"
.LASF88:
	.ascii	"GuiTexture_Icons\000"
.LASF99:
	.ascii	"Gui_EnteredCursorInside\000"
.LASF109:
	.ascii	"even\000"
.LASF51:
	.ascii	"Block_Diamond_Block\000"
.LASF120:
	.ascii	"clickAtStack\000"
.LASF113:
	.ascii	"selected\000"
.LASF98:
	.ascii	"SpriteBatch_PushSingleColorQuad\000"
.LASF23:
	.ascii	"Block_Log\000"
.LASF54:
	.ascii	"Block_Emerald_Block\000"
.LASF111:
	.ascii	"colors\000"
.LASF33:
	.ascii	"Block_Door_Top\000"
.LASF61:
	.ascii	"float\000"
.LASF108:
	.ascii	"site\000"
.LASF116:
	.ascii	"/home/tobi/Dokumente/Craftus-Next/source/gui/Invent"
	.ascii	"ory.c\000"
.LASF77:
	.ascii	"NDM_DAEMON_NIM\000"
.LASF82:
	.ascii	"NDSP_ENCODING_PCM16\000"
.LASF47:
	.ascii	"Block_Diamond_Ore\000"
.LASF35:
	.ascii	"Block_Snow_Grass\000"
.LASF34:
	.ascii	"Block_Door_Bottom\000"
.LASF86:
	.ascii	"GuiTexture_Blank\000"
.LASF103:
	.ascii	"stacks\000"
.LASF100:
	.ascii	"SpriteBatch_PushIcon\000"
.LASF78:
	.ascii	"NDM_DAEMON_FRIENDS\000"
.LASF97:
	.ascii	"SpriteBatch_PushQuad\000"
.LASF2:
	.ascii	"unsigned char\000"
.LASF67:
	.ascii	"CSND_ENCODING_PCM8\000"
.LASF110:
	.ascii	"newLine\000"
.LASF112:
	.ascii	"startindex\000"
.LASF93:
	.ascii	"proposedSourceStack\000"
.LASF5:
	.ascii	"short int\000"
.LASF63:
	.ascii	"meta\000"
.LASF121:
	.ascii	"ItemStack_Transfer\000"
.LASF65:
	.ascii	"ItemStack\000"
.LASF24:
	.ascii	"Block_Gravel\000"
.LASF36:
	.ascii	"Block_Snow\000"
.LASF55:
	.ascii	"Block_Furnace\000"
.LASF56:
	.ascii	"Blocks_Count\000"
.LASF15:
	.ascii	"uint32_t\000"
.LASF72:
	.ascii	"CSND_LOOPMODE_NORMAL\000"
.LASF66:
	.ascii	"_Bool\000"
.LASF60:
	.ascii	"long double\000"
.LASF57:
	.ascii	"char\000"
.LASF85:
	.ascii	"ERROR_WORD_WRAP_FLAG\000"
.LASF17:
	.ascii	"Block_Air\000"
.LASF96:
	.ascii	"Gui_Offset\000"
.LASF102:
	.ascii	"SpriteBatch_BindGuiTexture\000"
.LASF59:
	.ascii	"Items_Count\000"
.LASF58:
	.ascii	"Item_Totem\000"
.LASF118:
	.ascii	"Inventory_Draw\000"
.LASF71:
	.ascii	"CSND_LOOPMODE_MANUAL\000"
.LASF64:
	.ascii	"amount\000"
.LASF79:
	.ascii	"GPU_VERTEX_SHADER\000"
.LASF52:
	.ascii	"Block_Coal_Block\000"
.LASF80:
	.ascii	"GPU_GEOMETRY_SHADER\000"
.LASF29:
	.ascii	"Block_Planks\000"
.LASF13:
	.ascii	"uint8_t\000"
.LASF84:
	.ascii	"ERROR_LANGUAGE_FLAG\000"
.LASF81:
	.ascii	"NDSP_ENCODING_PCM8\000"
.LASF117:
	.ascii	"/home/tobi/Dokumente/Craftus-Next/build\000"
.LASF26:
	.ascii	"Block_Glass\000"
.LASF62:
	.ascii	"block\000"
.LASF73:
	.ascii	"CSND_LOOPMODE_ONESHOT\000"
.LASF70:
	.ascii	"CSND_ENCODING_PSG\000"
.LASF19:
	.ascii	"Block_Dirt\000"
.LASF114:
	.ascii	"stack\000"
.LASF105:
	.ascii	"_site\000"
.LASF74:
	.ascii	"CSND_LOOPMODE_NORELOAD\000"
	.ident	"GCC: (devkitARM release 57) 11.2.0"
