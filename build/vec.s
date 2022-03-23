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
	.file	"vec.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.vec_expand_,"ax",%progbits
	.align	2
	.global	vec_expand_
	.syntax unified
	.arm
	.fpu vfp
	.type	vec_expand_, %function
vec_expand_:
.LVL0:
.LFB0:
	.file 1 "/home/tobi/Dokumente/Craftus-Next/dependencies/vec/vec.c"
	.loc 1 11 69 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 12 3 view .LVU1
	.loc 1 11 69 is_stmt 0 view .LVU2
	push	{r4, r5, r6, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
	.loc 1 12 6 view .LVU3
	ldr	r1, [r1]
.LVL1:
	.loc 1 11 69 view .LVU4
	mov	r4, r2
	.loc 1 12 21 view .LVU5
	ldr	r2, [r2]
.LVL2:
	.loc 1 12 6 view .LVU6
	cmp	r1, r2
	blt	.L4
.LBB6:
	.loc 1 14 34 view .LVU7
	cmp	r2, #0
	lslne	r5, r2, #1
	.loc 1 15 28 view .LVU8
	mulne	r3, r5, r3
.LVL3:
	.loc 1 15 28 view .LVU9
	mov	r6, r0
	.loc 1 13 5 is_stmt 1 view .LVU10
	.loc 1 14 5 view .LVU11
	.loc 1 15 11 is_stmt 0 view .LVU12
	mov	r1, r3
	ldr	r0, [r0]
.LVL4:
	.loc 1 14 34 view .LVU13
	moveq	r5, #1
.LVL5:
	.loc 1 15 5 is_stmt 1 view .LVU14
	.loc 1 15 11 is_stmt 0 view .LVU15
	bl	realloc
.LVL6:
	.loc 1 16 5 is_stmt 1 view .LVU16
	.loc 1 16 8 is_stmt 0 view .LVU17
	cmp	r0, #0
	.loc 1 16 8 view .LVU18
	beq	.L6
	.loc 1 17 5 is_stmt 1 view .LVU19
	.loc 1 17 11 is_stmt 0 view .LVU20
	str	r0, [r6]
	.loc 1 18 5 is_stmt 1 view .LVU21
.LBE6:
	.loc 1 20 10 is_stmt 0 view .LVU22
	mov	r0, #0
.LVL7:
.LBB7:
	.loc 1 18 15 view .LVU23
	str	r5, [r4]
	pop	{r4, r5, r6, pc}
.LVL8:
.L4:
	.loc 1 18 15 view .LVU24
.LBE7:
	.loc 1 20 10 view .LVU25
	mov	r0, #0
.LVL9:
	.loc 1 20 10 view .LVU26
	pop	{r4, r5, r6, pc}
.LVL10:
.L6:
.LBB8:
	.loc 1 16 28 view .LVU27
	mvn	r0, #0
.LVL11:
	.loc 1 16 28 view .LVU28
.LBE8:
	.loc 1 21 1 view .LVU29
	pop	{r4, r5, r6, pc}
	.cfi_endproc
.LFE0:
	.size	vec_expand_, .-vec_expand_
	.section	.text.vec_reserve_,"ax",%progbits
	.align	2
	.global	vec_reserve_
	.syntax unified
	.arm
	.fpu vfp
	.type	vec_reserve_, %function
vec_reserve_:
.LVL12:
.LFB1:
	.loc 1 24 77 is_stmt 1 view -0
	.cfi_startproc
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 25 3 view .LVU31
	.loc 1 26 3 view .LVU32
	.loc 1 24 77 is_stmt 0 view .LVU33
	push	{r4, r5, r6, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
	.loc 1 24 77 view .LVU34
	ldr	r6, [sp, #16]
	mov	r4, r2
	.loc 1 26 6 view .LVU35
	ldr	r2, [r2]
.LVL13:
	.loc 1 26 6 view .LVU36
	cmp	r2, r6
	blt	.L14
	.loc 1 32 10 view .LVU37
	mov	r0, #0
.LVL14:
	.loc 1 32 10 view .LVU38
	pop	{r4, r5, r6, pc}
.LVL15:
.L14:
.LBB12:
.LBI12:
	.loc 1 24 5 is_stmt 1 view .LVU39
.LBB13:
.LBB14:
	.loc 1 27 5 view .LVU40
	mov	r5, r0
	.loc 1 27 17 is_stmt 0 view .LVU41
	mul	r1, r3, r6
.LVL16:
	.loc 1 27 17 view .LVU42
	ldr	r0, [r0]
.LVL17:
	.loc 1 27 17 view .LVU43
	bl	realloc
.LVL18:
	.loc 1 28 5 is_stmt 1 view .LVU44
	.loc 1 28 8 is_stmt 0 view .LVU45
	cmp	r0, #0
	.loc 1 28 8 view .LVU46
	beq	.L12
	.loc 1 29 5 is_stmt 1 view .LVU47
	.loc 1 29 11 is_stmt 0 view .LVU48
	str	r0, [r5]
	.loc 1 30 5 is_stmt 1 view .LVU49
.LBE14:
	.loc 1 32 10 is_stmt 0 view .LVU50
	mov	r0, #0
.LVL19:
.LBB15:
	.loc 1 30 15 view .LVU51
	str	r6, [r4]
	pop	{r4, r5, r6, pc}
.LVL20:
.L12:
	.loc 1 28 28 view .LVU52
	mvn	r0, #0
.LVL21:
	.loc 1 28 28 view .LVU53
.LBE15:
.LBE13:
.LBE12:
	.loc 1 33 1 view .LVU54
	pop	{r4, r5, r6, pc}
	.cfi_endproc
.LFE1:
	.size	vec_reserve_, .-vec_reserve_
	.section	.text.vec_reserve_po2_,"ax",%progbits
	.align	2
	.global	vec_reserve_po2_
	.syntax unified
	.arm
	.fpu vfp
	.type	vec_reserve_po2_, %function
vec_reserve_po2_:
.LVL22:
.LFB2:
	.loc 1 38 3 is_stmt 1 view -0
	.cfi_startproc
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 39 3 view .LVU56
	.loc 1 40 3 view .LVU57
	.loc 1 38 3 is_stmt 0 view .LVU58
	push	{r4, r5, r6, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
	.loc 1 38 3 view .LVU59
	ldr	ip, [sp, #16]
	.loc 1 40 6 view .LVU60
	cmp	ip, #0
	beq	.L21
	.loc 1 41 13 view .LVU61
	cmp	ip, #1
	mov	r6, r0
	mov	r5, r2
	.loc 1 41 13 is_stmt 1 view .LVU62
	.loc 1 39 7 is_stmt 0 view .LVU63
	mov	r4, #1
	.loc 1 41 13 view .LVU64
	ble	.L17
.LVL23:
.L18:
	.loc 1 41 18 is_stmt 1 discriminator 2 view .LVU65
	.loc 1 41 21 is_stmt 0 discriminator 2 view .LVU66
	lsl	r4, r4, #1
.LVL24:
	.loc 1 41 13 is_stmt 1 discriminator 2 view .LVU67
	cmp	ip, r4
	bgt	.L18
.LVL25:
.L17:
	.loc 1 42 3 view .LVU68
.LBB21:
.LBI21:
	.loc 1 24 5 view .LVU69
.LBB22:
	.loc 1 25 3 view .LVU70
	.loc 1 26 3 view .LVU71
	.loc 1 26 6 is_stmt 0 view .LVU72
	ldr	r2, [r5]
.LVL26:
	.loc 1 26 6 view .LVU73
	cmp	r2, r4
	blt	.L25
.LVL27:
.L21:
	.loc 1 26 6 view .LVU74
.LBE22:
.LBE21:
	.loc 1 40 22 view .LVU75
	mov	r0, #0
.LVL28:
	.loc 1 40 22 view .LVU76
	pop	{r4, r5, r6, pc}
.LVL29:
.L25:
.LBB28:
.LBB27:
.LBB23:
.LBI23:
	.loc 1 24 5 is_stmt 1 view .LVU77
.LBB24:
.LBB25:
	.loc 1 27 5 view .LVU78
	.loc 1 27 17 is_stmt 0 view .LVU79
	mul	r1, r4, r3
.LVL30:
	.loc 1 27 17 view .LVU80
	ldr	r0, [r6]
.LVL31:
	.loc 1 27 17 view .LVU81
	bl	realloc
.LVL32:
	.loc 1 28 5 is_stmt 1 view .LVU82
	.loc 1 28 8 is_stmt 0 view .LVU83
	cmp	r0, #0
	.loc 1 28 8 view .LVU84
	beq	.L22
	.loc 1 29 5 is_stmt 1 view .LVU85
	.loc 1 29 11 is_stmt 0 view .LVU86
	str	r0, [r6]
	.loc 1 30 5 is_stmt 1 view .LVU87
.LBE25:
	.loc 1 32 10 is_stmt 0 view .LVU88
	mov	r0, #0
.LVL33:
.LBB26:
	.loc 1 30 15 view .LVU89
	str	r4, [r5]
	pop	{r4, r5, r6, pc}
.LVL34:
.L22:
	.loc 1 28 28 view .LVU90
	mvn	r0, #0
.LVL35:
	.loc 1 28 28 view .LVU91
.LBE26:
.LBE24:
.LBE23:
.LBE27:
.LBE28:
	.loc 1 43 1 view .LVU92
	pop	{r4, r5, r6, pc}
	.cfi_endproc
.LFE2:
	.size	vec_reserve_po2_, .-vec_reserve_po2_
	.section	.text.vec_compact_,"ax",%progbits
	.align	2
	.global	vec_compact_
	.syntax unified
	.arm
	.fpu vfp
	.type	vec_compact_, %function
vec_compact_:
.LVL36:
.LFB3:
	.loc 1 46 70 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 47 3 view .LVU94
	.loc 1 46 70 is_stmt 0 view .LVU95
	push	{r4, r5, r6, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
	.loc 1 47 7 view .LVU96
	ldr	r4, [r1]
	.loc 1 46 70 view .LVU97
	mov	r5, r0
	.loc 1 47 6 view .LVU98
	cmp	r4, #0
	.loc 1 46 70 view .LVU99
	mov	r6, r2
	.loc 1 48 5 view .LVU100
	ldr	r0, [r0]
.LVL37:
	.loc 1 47 6 view .LVU101
	beq	.L31
.LBB29:
	.loc 1 53 5 is_stmt 1 view .LVU102
	.loc 1 54 5 view .LVU103
.LVL38:
	.loc 1 55 5 view .LVU104
	.loc 1 55 11 is_stmt 0 view .LVU105
	mul	r1, r3, r4
.LVL39:
	.loc 1 55 11 view .LVU106
	bl	realloc
.LVL40:
	.loc 1 56 5 is_stmt 1 view .LVU107
	.loc 1 56 8 is_stmt 0 view .LVU108
	cmp	r0, #0
	.loc 1 57 5 is_stmt 1 view .LVU109
	.loc 1 57 15 is_stmt 0 view .LVU110
	strne	r4, [r6]
	.loc 1 58 5 is_stmt 1 view .LVU111
	.loc 1 56 28 is_stmt 0 view .LVU112
	mvneq	r4, #0
.LVL41:
	.loc 1 56 28 view .LVU113
.LBE29:
	.loc 1 60 10 view .LVU114
	movne	r4, #0
.LBB30:
	.loc 1 58 11 view .LVU115
	strne	r0, [r5]
.LBE30:
	.loc 1 60 3 is_stmt 1 view .LVU116
	.loc 1 61 1 is_stmt 0 view .LVU117
	mov	r0, r4
.LVL42:
	.loc 1 61 1 view .LVU118
	pop	{r4, r5, r6, pc}
.LVL43:
.L31:
	.loc 1 48 5 is_stmt 1 view .LVU119
	bl	free
.LVL44:
	.loc 1 49 5 view .LVU120
	.loc 1 49 11 is_stmt 0 view .LVU121
	str	r4, [r5]
	.loc 1 50 5 is_stmt 1 view .LVU122
	.loc 1 61 1 is_stmt 0 view .LVU123
	mov	r0, r4
	.loc 1 50 15 view .LVU124
	str	r4, [r6]
	.loc 1 51 5 is_stmt 1 view .LVU125
	.loc 1 61 1 is_stmt 0 view .LVU126
	pop	{r4, r5, r6, pc}
	.cfi_endproc
.LFE3:
	.size	vec_compact_, .-vec_compact_
	.section	.text.vec_insert_,"ax",%progbits
	.align	2
	.global	vec_insert_
	.syntax unified
	.arm
	.fpu vfp
	.type	vec_insert_, %function
vec_insert_:
.LVL45:
.LFB4:
	.loc 1 66 3 is_stmt 1 view -0
	.cfi_startproc
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 67 3 view .LVU128
	.loc 1 66 3 is_stmt 0 view .LVU129
	push	{r4, r5, r6, r7, r8, lr}
	.cfi_def_cfa_offset 24
	.cfi_offset 4, -24
	.cfi_offset 5, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	.cfi_offset 8, -8
	.cfi_offset 14, -4
.LBB34:
.LBB35:
	.loc 1 12 21 view .LVU130
	ldr	ip, [r2]
	.loc 1 12 19 view .LVU131
	ldr	lr, [r1]
.LBE35:
.LBE34:
	.loc 1 66 3 view .LVU132
	mov	r4, r3
.LVL46:
.LBB41:
.LBI34:
	.loc 1 11 5 is_stmt 1 view .LVU133
.LBB39:
	.loc 1 12 3 view .LVU134
	.loc 1 12 6 is_stmt 0 view .LVU135
	cmp	lr, ip
.LBB36:
	.loc 1 15 11 view .LVU136
	ldr	r3, [r0]
.LVL47:
	.loc 1 15 11 view .LVU137
.LBE36:
	.loc 1 12 6 view .LVU138
	blt	.L33
.LBB37:
	.loc 1 14 34 view .LVU139
	cmp	ip, #0
	lslne	r5, ip, #1
	mov	r6, r1
	mov	r8, r0
	.loc 1 13 5 is_stmt 1 view .LVU140
	.loc 1 14 5 view .LVU141
	moveq	r1, r4
.LVL48:
	.loc 1 15 11 is_stmt 0 view .LVU142
	mov	r0, r3
.LVL49:
	.loc 1 15 28 view .LVU143
	mulne	r1, r5, r4
	.loc 1 14 34 view .LVU144
	moveq	r5, #1
.LVL50:
	.loc 1 15 5 is_stmt 1 view .LVU145
	mov	r7, r2
	.loc 1 15 11 is_stmt 0 view .LVU146
	bl	realloc
.LVL51:
	.loc 1 16 5 is_stmt 1 view .LVU147
	.loc 1 16 8 is_stmt 0 view .LVU148
	subs	r3, r0, #0
	beq	.L37
	.loc 1 17 5 is_stmt 1 view .LVU149
	.loc 1 17 11 is_stmt 0 view .LVU150
	str	r3, [r8]
	.loc 1 18 5 is_stmt 1 view .LVU151
	.loc 1 18 15 is_stmt 0 view .LVU152
	str	r5, [r7]
.LVL52:
	.loc 1 18 15 view .LVU153
.LBE37:
.LBE39:
.LBE41:
	.loc 1 68 3 is_stmt 1 view .LVU154
	.loc 1 71 12 is_stmt 0 view .LVU155
	ldr	lr, [r6]
.LVL53:
.L33:
	.loc 1 69 3 is_stmt 1 view .LVU156
	.loc 1 69 24 is_stmt 0 view .LVU157
	ldr	r2, [sp, #24]
	add	r0, r2, #1
	.loc 1 69 29 view .LVU158
	mul	r0, r4, r0
	.loc 1 71 20 view .LVU159
	sub	r2, lr, r2
	.loc 1 70 23 view .LVU160
	sub	r1, r0, r4
	.loc 1 69 3 view .LVU161
	mul	r2, r4, r2
	add	r1, r3, r1
	add	r0, r3, r0
	bl	memmove
.LVL54:
	.loc 1 72 3 is_stmt 1 view .LVU162
	.loc 1 72 10 is_stmt 0 view .LVU163
	mov	r0, #0
	pop	{r4, r5, r6, r7, r8, pc}
.LVL55:
.L37:
.LBB42:
.LBB40:
.LBB38:
	.loc 1 16 28 view .LVU164
	mvn	r0, #0
.LVL56:
	.loc 1 16 28 view .LVU165
.LBE38:
.LBE40:
.LBE42:
	.loc 1 73 1 view .LVU166
	pop	{r4, r5, r6, r7, r8, pc}
	.cfi_endproc
.LFE4:
	.size	vec_insert_, .-vec_insert_
	.section	.text.vec_splice_,"ax",%progbits
	.align	2
	.global	vec_splice_
	.syntax unified
	.arm
	.fpu vfp
	.type	vec_splice_, %function
vec_splice_:
.LVL57:
.LFB5:
	.loc 1 78 3 is_stmt 1 view -0
	.cfi_startproc
	@ args = 8, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 79 3 view .LVU168
	.loc 1 80 3 view .LVU169
	.loc 1 78 3 is_stmt 0 view .LVU170
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 1 78 3 view .LVU171
	ldr	ip, [sp, #8]
	.loc 1 82 20 view .LVU172
	ldr	r2, [r1]
.LVL58:
	.loc 1 78 3 view .LVU173
	ldr	lr, [sp, #12]
	.loc 1 80 11 view .LVU174
	ldr	r0, [r0]
.LVL59:
	.loc 1 82 20 view .LVU175
	sub	r2, r2, ip
	.loc 1 81 26 view .LVU176
	add	r4, ip, lr
	.loc 1 82 28 view .LVU177
	sub	r2, r2, lr
	.loc 1 80 3 view .LVU178
	mla	r1, r3, r4, r0
.LVL60:
	.loc 1 83 1 view .LVU179
	pop	{r4, lr}
	.cfi_restore 14
	.cfi_restore 4
	.cfi_def_cfa_offset 0
	.loc 1 80 3 view .LVU180
	mul	r2, r3, r2
	mla	r0, r3, ip, r0
	b	memmove
.LVL61:
	.loc 1 80 3 view .LVU181
	.cfi_endproc
.LFE5:
	.size	vec_splice_, .-vec_splice_
	.section	.text.vec_swapsplice_,"ax",%progbits
	.align	2
	.global	vec_swapsplice_
	.syntax unified
	.arm
	.fpu vfp
	.type	vec_swapsplice_, %function
vec_swapsplice_:
.LVL62:
.LFB6:
	.loc 1 88 3 is_stmt 1 view -0
	.cfi_startproc
	@ args = 8, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 89 3 view .LVU183
	.loc 1 90 3 view .LVU184
	.loc 1 88 3 is_stmt 0 view .LVU185
	ldr	r2, [sp, #4]
.LVL63:
	.loc 1 91 28 view .LVU186
	ldr	r1, [r1]
.LVL64:
	.loc 1 90 11 view .LVU187
	ldr	r0, [r0]
.LVL65:
	.loc 1 88 3 view .LVU188
	ldr	ip, [sp]
	.loc 1 91 28 view .LVU189
	sub	r1, r1, r2
	.loc 1 90 3 view .LVU190
	mla	r1, r3, r1, r0
	mul	r2, r2, r3
	mla	r0, r3, ip, r0
	b	memmove
.LVL66:
	.loc 1 90 3 view .LVU191
	.cfi_endproc
.LFE6:
	.size	vec_swapsplice_, .-vec_swapsplice_
	.section	.text.vec_swap_,"ax",%progbits
	.align	2
	.global	vec_swap_
	.syntax unified
	.arm
	.fpu vfp
	.type	vec_swap_, %function
vec_swap_:
.LVL67:
.LFB7:
	.loc 1 98 3 is_stmt 1 view -0
	.cfi_startproc
	@ args = 8, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 98 3 is_stmt 0 view .LVU193
	ldr	ip, [sp]
	ldr	r2, [sp, #4]
.LVL68:
	.loc 1 103 6 view .LVU194
	cmp	ip, r2
	.loc 1 99 3 is_stmt 1 view .LVU195
	.loc 1 100 3 view .LVU196
	.loc 1 101 3 view .LVU197
	.loc 1 102 3 view .LVU198
	.loc 1 103 3 view .LVU199
	.loc 1 103 6 is_stmt 0 view .LVU200
	bxeq	lr
	.loc 1 104 3 is_stmt 1 view .LVU201
	.loc 1 104 7 is_stmt 0 view .LVU202
	ldr	r1, [r0]
.LVL69:
	.loc 1 107 10 view .LVU203
	cmp	r3, #0
	.loc 1 104 37 view .LVU204
	mul	ip, r3, ip
.LVL70:
	.loc 1 105 3 is_stmt 1 view .LVU205
	.loc 1 105 5 is_stmt 0 view .LVU206
	mla	r2, r3, r2, r1
.LVL71:
	.loc 1 106 3 is_stmt 1 view .LVU207
	.loc 1 107 3 view .LVU208
	.loc 1 107 10 view .LVU209
	.loc 1 107 10 is_stmt 0 view .LVU210
	bxeq	lr
	sub	ip, ip, #1
.LVL72:
	.loc 1 107 10 view .LVU211
	add	r1, r1, ip
.LVL73:
	.loc 1 107 10 view .LVU212
	add	r3, r2, r3
.LVL74:
.L44:
	.loc 1 108 5 is_stmt 1 view .LVU213
	.loc 1 108 9 is_stmt 0 view .LVU214
	ldrb	r0, [r1, #1]!	@ zero_extendqisi2
.LVL75:
	.loc 1 109 5 is_stmt 1 view .LVU215
	.loc 1 109 10 is_stmt 0 view .LVU216
	ldrb	ip, [r2]	@ zero_extendqisi2
	.loc 1 109 8 view .LVU217
	strb	ip, [r1]
	.loc 1 110 5 is_stmt 1 view .LVU218
	.loc 1 110 8 is_stmt 0 view .LVU219
	strb	r0, [r2], #1
.LVL76:
	.loc 1 111 5 is_stmt 1 view .LVU220
	.loc 1 107 10 view .LVU221
	.loc 1 107 10 is_stmt 0 view .LVU222
	cmp	r2, r3
	bne	.L44
	bx	lr
	.cfi_endproc
.LFE7:
	.size	vec_swap_, .-vec_swap_
	.text
.Letext0:
	.file 2 "/opt/devkitpro/devkitARM/arm-none-eabi/include/string.h"
	.file 3 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdlib.h"
	.file 4 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/11.2.0/include/stddef.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x7c6
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x16
	.4byte	.LASF31
	.byte	0x1d
	.4byte	.LASF32
	.4byte	.LASF33
	.4byte	.LLRL72
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x17
	.4byte	.LASF34
	.byte	0x4
	.byte	0xd1
	.byte	0x16
	.4byte	0x32
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x18
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF1
	.uleb128 0x3
	.byte	0x8
	.byte	0x4
	.4byte	.LASF2
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF3
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF4
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF5
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF6
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x19
	.byte	0x4
	.uleb128 0x9
	.4byte	0x55
	.uleb128 0x9
	.4byte	0x8b
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF10
	.uleb128 0x9
	.4byte	0x97
	.uleb128 0x1a
	.uleb128 0x9
	.4byte	0x86
	.uleb128 0x9
	.4byte	0x39
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.4byte	.LASF11
	.uleb128 0x3
	.byte	0x8
	.byte	0x4
	.4byte	.LASF12
	.uleb128 0x11
	.4byte	.LASF13
	.byte	0x2
	.byte	0x20
	.byte	0x8
	.4byte	0x7f
	.4byte	0xd0
	.uleb128 0x6
	.4byte	0x7f
	.uleb128 0x6
	.4byte	0x92
	.uleb128 0x6
	.4byte	0x26
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF35
	.byte	0x3
	.byte	0x5e
	.byte	0x6
	.4byte	0xe2
	.uleb128 0x6
	.4byte	0x7f
	.byte	0
	.uleb128 0x11
	.4byte	.LASF14
	.byte	0x3
	.byte	0x91
	.byte	0x7
	.4byte	0x7f
	.4byte	0xfd
	.uleb128 0x6
	.4byte	0x7f
	.uleb128 0x6
	.4byte	0x26
	.byte	0
	.uleb128 0xd
	.4byte	.LASF22
	.byte	0x60
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1c3
	.uleb128 0x2
	.4byte	.LASF15
	.byte	0x60
	.byte	0x17
	.4byte	0x98
	.4byte	.LLST64
	.4byte	.LVUS64
	.uleb128 0x2
	.4byte	.LASF16
	.byte	0x60
	.byte	0x22
	.4byte	0x9d
	.4byte	.LLST65
	.4byte	.LVUS65
	.uleb128 0x2
	.4byte	.LASF17
	.byte	0x60
	.byte	0x2f
	.4byte	0x9d
	.4byte	.LLST66
	.4byte	.LVUS66
	.uleb128 0x2
	.4byte	.LASF18
	.byte	0x60
	.byte	0x3d
	.4byte	0x39
	.4byte	.LLST67
	.4byte	.LVUS67
	.uleb128 0x7
	.4byte	.LASF19
	.byte	0x61
	.byte	0x14
	.4byte	0x39
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x7
	.4byte	.LASF20
	.byte	0x61
	.byte	0x1e
	.4byte	0x39
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x5
	.ascii	"a\000"
	.byte	0x63
	.byte	0x12
	.4byte	0x81
	.4byte	.LLST68
	.4byte	.LVUS68
	.uleb128 0x5
	.ascii	"b\000"
	.byte	0x63
	.byte	0x16
	.4byte	0x81
	.4byte	.LLST69
	.4byte	.LVUS69
	.uleb128 0x5
	.ascii	"tmp\000"
	.byte	0x63
	.byte	0x19
	.4byte	0x55
	.4byte	.LLST70
	.4byte	.LVUS70
	.uleb128 0x1c
	.4byte	.LASF21
	.byte	0x1
	.byte	0x64
	.byte	0x7
	.4byte	0x39
	.4byte	.LLST71
	.4byte	.LVUS71
	.byte	0
	.uleb128 0xd
	.4byte	.LASF23
	.byte	0x56
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x255
	.uleb128 0x2
	.4byte	.LASF15
	.byte	0x56
	.byte	0x1d
	.4byte	0x98
	.4byte	.LLST60
	.4byte	.LVUS60
	.uleb128 0x2
	.4byte	.LASF16
	.byte	0x56
	.byte	0x28
	.4byte	0x9d
	.4byte	.LLST61
	.4byte	.LVUS61
	.uleb128 0x2
	.4byte	.LASF17
	.byte	0x56
	.byte	0x35
	.4byte	0x9d
	.4byte	.LLST62
	.4byte	.LVUS62
	.uleb128 0x2
	.4byte	.LASF18
	.byte	0x56
	.byte	0x43
	.4byte	0x39
	.4byte	.LLST63
	.4byte	.LVUS63
	.uleb128 0x7
	.4byte	.LASF24
	.byte	0x57
	.byte	0x1a
	.4byte	0x39
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x7
	.4byte	.LASF21
	.byte	0x57
	.byte	0x25
	.4byte	0x39
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1d
	.4byte	.LVL66
	.4byte	0xb0
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x7
	.byte	0x91
	.sleb128 -4
	.byte	0x6
	.byte	0xa3
	.uleb128 0x1
	.byte	0x53
	.byte	0x1e
	.byte	0
	.byte	0
	.uleb128 0xd
	.4byte	.LASF25
	.byte	0x4c
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2db
	.uleb128 0x2
	.4byte	.LASF15
	.byte	0x4c
	.byte	0x19
	.4byte	0x98
	.4byte	.LLST56
	.4byte	.LVUS56
	.uleb128 0x2
	.4byte	.LASF16
	.byte	0x4c
	.byte	0x24
	.4byte	0x9d
	.4byte	.LLST57
	.4byte	.LVUS57
	.uleb128 0x2
	.4byte	.LASF17
	.byte	0x4c
	.byte	0x31
	.4byte	0x9d
	.4byte	.LLST58
	.4byte	.LVUS58
	.uleb128 0x2
	.4byte	.LASF18
	.byte	0x4c
	.byte	0x3f
	.4byte	0x39
	.4byte	.LLST59
	.4byte	.LVUS59
	.uleb128 0x7
	.4byte	.LASF24
	.byte	0x4d
	.byte	0x16
	.4byte	0x39
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x7
	.4byte	.LASF21
	.byte	0x4d
	.byte	0x21
	.4byte	0x39
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1e
	.4byte	.LVL61
	.4byte	0xb0
	.byte	0
	.uleb128 0xe
	.4byte	.LASF26
	.byte	0x40
	.4byte	0x39
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3e1
	.uleb128 0x2
	.4byte	.LASF15
	.byte	0x40
	.byte	0x18
	.4byte	0x98
	.4byte	.LLST43
	.4byte	.LVUS43
	.uleb128 0x2
	.4byte	.LASF16
	.byte	0x40
	.byte	0x23
	.4byte	0x9d
	.4byte	.LLST44
	.4byte	.LVUS44
	.uleb128 0x2
	.4byte	.LASF17
	.byte	0x40
	.byte	0x30
	.4byte	0x9d
	.4byte	.LLST45
	.4byte	.LVUS45
	.uleb128 0x2
	.4byte	.LASF18
	.byte	0x40
	.byte	0x3e
	.4byte	0x39
	.4byte	.LLST46
	.4byte	.LVUS46
	.uleb128 0x12
	.ascii	"idx\000"
	.byte	0x41
	.byte	0x16
	.4byte	0x39
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x5
	.ascii	"err\000"
	.byte	0x43
	.byte	0x7
	.4byte	0x39
	.4byte	.LLST47
	.4byte	.LVUS47
	.uleb128 0x1f
	.4byte	0x638
	.4byte	.LBI34
	.byte	.LVU133
	.4byte	.LLRL48
	.byte	0x1
	.byte	0x43
	.byte	0xd
	.4byte	0x3d7
	.uleb128 0x1
	.4byte	0x667
	.4byte	.LLST49
	.4byte	.LVUS49
	.uleb128 0x1
	.4byte	0x65c
	.4byte	.LLST50
	.4byte	.LVUS50
	.uleb128 0x1
	.4byte	0x651
	.4byte	.LLST51
	.4byte	.LVUS51
	.uleb128 0x1
	.4byte	0x646
	.4byte	.LLST52
	.4byte	.LVUS52
	.uleb128 0xb
	.4byte	0x672
	.4byte	.LLRL53
	.uleb128 0x8
	.4byte	0x673
	.4byte	.LLST54
	.4byte	.LVUS54
	.uleb128 0x8
	.4byte	0x67e
	.4byte	.LLST55
	.4byte	.LVUS55
	.uleb128 0xc
	.4byte	.LVL51
	.4byte	0xe2
	.byte	0
	.byte	0
	.uleb128 0xc
	.4byte	.LVL54
	.4byte	0xb0
	.byte	0
	.uleb128 0xe
	.4byte	.LASF27
	.byte	0x2e
	.4byte	0x39
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x491
	.uleb128 0x2
	.4byte	.LASF15
	.byte	0x2e
	.byte	0x19
	.4byte	0x98
	.4byte	.LLST36
	.4byte	.LVUS36
	.uleb128 0x2
	.4byte	.LASF16
	.byte	0x2e
	.byte	0x24
	.4byte	0x9d
	.4byte	.LLST37
	.4byte	.LVUS37
	.uleb128 0x2
	.4byte	.LASF17
	.byte	0x2e
	.byte	0x31
	.4byte	0x9d
	.4byte	.LLST38
	.4byte	.LVUS38
	.uleb128 0x2
	.4byte	.LASF18
	.byte	0x2e
	.byte	0x3f
	.4byte	0x39
	.4byte	.LLST39
	.4byte	.LVUS39
	.uleb128 0x20
	.4byte	.LLRL40
	.4byte	0x487
	.uleb128 0x5
	.ascii	"ptr\000"
	.byte	0x35
	.byte	0xb
	.4byte	0x7f
	.4byte	.LLST41
	.4byte	.LVUS41
	.uleb128 0x5
	.ascii	"n\000"
	.byte	0x36
	.byte	0x9
	.4byte	0x39
	.4byte	.LLST42
	.4byte	.LVUS42
	.uleb128 0xf
	.4byte	.LVL40
	.4byte	0xe2
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x6
	.byte	0xa3
	.uleb128 0x1
	.byte	0x53
	.byte	0x74
	.sleb128 0
	.byte	0x1e
	.byte	0
	.byte	0
	.uleb128 0xc
	.4byte	.LVL44
	.4byte	0xd0
	.byte	0
	.uleb128 0xe
	.4byte	.LASF28
	.byte	0x24
	.4byte	0x39
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5e6
	.uleb128 0x2
	.4byte	.LASF15
	.byte	0x25
	.byte	0xa
	.4byte	0x98
	.4byte	.LLST18
	.4byte	.LVUS18
	.uleb128 0x2
	.4byte	.LASF16
	.byte	0x25
	.byte	0x15
	.4byte	0x9d
	.4byte	.LLST19
	.4byte	.LVUS19
	.uleb128 0x2
	.4byte	.LASF17
	.byte	0x25
	.byte	0x22
	.4byte	0x9d
	.4byte	.LLST20
	.4byte	.LVUS20
	.uleb128 0x2
	.4byte	.LASF18
	.byte	0x25
	.byte	0x30
	.4byte	0x39
	.4byte	.LLST21
	.4byte	.LVUS21
	.uleb128 0x12
	.ascii	"n\000"
	.byte	0x25
	.byte	0x3b
	.4byte	0x39
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x5
	.ascii	"n2\000"
	.byte	0x27
	.byte	0x7
	.4byte	0x39
	.4byte	.LLST22
	.4byte	.LVUS22
	.uleb128 0x21
	.4byte	0x5e6
	.4byte	.LBI21
	.byte	.LVU69
	.4byte	.LLRL23
	.byte	0x1
	.byte	0x2a
	.byte	0xa
	.uleb128 0x1
	.4byte	0x620
	.4byte	.LLST24
	.4byte	.LVUS24
	.uleb128 0x1
	.4byte	0x615
	.4byte	.LLST25
	.4byte	.LVUS25
	.uleb128 0x1
	.4byte	0x60a
	.4byte	.LLST26
	.4byte	.LVUS26
	.uleb128 0x1
	.4byte	0x5ff
	.4byte	.LLST27
	.4byte	.LVUS27
	.uleb128 0x1
	.4byte	0x5f4
	.4byte	.LLST28
	.4byte	.LVUS28
	.uleb128 0x13
	.4byte	0x5e6
	.4byte	.LBI23
	.byte	.LVU77
	.4byte	.LBB23
	.4byte	.LBE23-.LBB23
	.uleb128 0x1
	.4byte	0x5ff
	.4byte	.LLST29
	.4byte	.LVUS29
	.uleb128 0x1
	.4byte	0x620
	.4byte	.LLST30
	.4byte	.LVUS30
	.uleb128 0x1
	.4byte	0x615
	.4byte	.LLST31
	.4byte	.LVUS31
	.uleb128 0x1
	.4byte	0x60a
	.4byte	.LLST32
	.4byte	.LVUS32
	.uleb128 0x1
	.4byte	0x5f4
	.4byte	.LLST33
	.4byte	.LVUS33
	.uleb128 0xb
	.4byte	0x62a
	.4byte	.LLRL34
	.uleb128 0x8
	.4byte	0x62b
	.4byte	.LLST35
	.4byte	.LVUS35
	.uleb128 0xf
	.4byte	.LVL32
	.4byte	0xe2
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x6
	.byte	0x74
	.sleb128 0
	.byte	0xa3
	.uleb128 0x1
	.byte	0x53
	.byte	0x1e
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x14
	.4byte	.LASF29
	.byte	0x18
	.4byte	0x39
	.4byte	0x638
	.uleb128 0x4
	.4byte	.LASF15
	.byte	0x18
	.byte	0x19
	.4byte	0x98
	.uleb128 0x4
	.4byte	.LASF16
	.byte	0x18
	.byte	0x24
	.4byte	0x9d
	.uleb128 0x4
	.4byte	.LASF17
	.byte	0x18
	.byte	0x31
	.4byte	0x9d
	.uleb128 0x4
	.4byte	.LASF18
	.byte	0x18
	.byte	0x3f
	.4byte	0x39
	.uleb128 0x22
	.ascii	"n\000"
	.byte	0x1
	.byte	0x18
	.byte	0x4a
	.4byte	0x39
	.uleb128 0x15
	.uleb128 0x10
	.ascii	"ptr\000"
	.byte	0x1b
	.byte	0xb
	.4byte	0x7f
	.byte	0
	.byte	0
	.uleb128 0x14
	.4byte	.LASF30
	.byte	0xb
	.4byte	0x39
	.4byte	0x692
	.uleb128 0x4
	.4byte	.LASF15
	.byte	0xb
	.byte	0x18
	.4byte	0x98
	.uleb128 0x4
	.4byte	.LASF16
	.byte	0xb
	.byte	0x23
	.4byte	0x9d
	.uleb128 0x4
	.4byte	.LASF17
	.byte	0xb
	.byte	0x30
	.4byte	0x9d
	.uleb128 0x4
	.4byte	.LASF18
	.byte	0xb
	.byte	0x3e
	.4byte	0x39
	.uleb128 0x15
	.uleb128 0x10
	.ascii	"ptr\000"
	.byte	0xd
	.byte	0xb
	.4byte	0x7f
	.uleb128 0x10
	.ascii	"n\000"
	.byte	0xe
	.byte	0x9
	.4byte	0x39
	.uleb128 0xc
	.4byte	.LVL6
	.4byte	0xe2
	.byte	0
	.byte	0
	.uleb128 0x23
	.4byte	0x638
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6fe
	.uleb128 0x1
	.4byte	0x646
	.4byte	.LLST0
	.4byte	.LVUS0
	.uleb128 0x1
	.4byte	0x651
	.4byte	.LLST1
	.4byte	.LVUS1
	.uleb128 0x1
	.4byte	0x65c
	.4byte	.LLST2
	.4byte	.LVUS2
	.uleb128 0x1
	.4byte	0x667
	.4byte	.LLST3
	.4byte	.LVUS3
	.uleb128 0xb
	.4byte	0x672
	.4byte	.LLRL4
	.uleb128 0x8
	.4byte	0x673
	.4byte	.LLST5
	.4byte	.LVUS5
	.uleb128 0x8
	.4byte	0x67e
	.4byte	.LLST6
	.4byte	.LVUS6
	.byte	0
	.byte	0
	.uleb128 0x24
	.4byte	0x5e6
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1
	.4byte	0x5f4
	.4byte	.LLST7
	.4byte	.LVUS7
	.uleb128 0x1
	.4byte	0x5ff
	.4byte	.LLST8
	.4byte	.LVUS8
	.uleb128 0x1
	.4byte	0x60a
	.4byte	.LLST9
	.4byte	.LVUS9
	.uleb128 0x1
	.4byte	0x615
	.4byte	.LLST10
	.4byte	.LVUS10
	.uleb128 0x25
	.4byte	0x620
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x13
	.4byte	0x5e6
	.4byte	.LBI12
	.byte	.LVU39
	.4byte	.LBB12
	.4byte	.LBE12-.LBB12
	.uleb128 0x1
	.4byte	0x5ff
	.4byte	.LLST11
	.4byte	.LVUS11
	.uleb128 0x1
	.4byte	0x620
	.4byte	.LLST12
	.4byte	.LVUS12
	.uleb128 0x1
	.4byte	0x615
	.4byte	.LLST13
	.4byte	.LVUS13
	.uleb128 0x1
	.4byte	0x60a
	.4byte	.LLST14
	.4byte	.LVUS14
	.uleb128 0x1
	.4byte	0x5f4
	.4byte	.LLST15
	.4byte	.LVUS15
	.uleb128 0xb
	.4byte	0x62a
	.4byte	.LLRL16
	.uleb128 0x8
	.4byte	0x62b
	.4byte	.LLST17
	.4byte	.LVUS17
	.uleb128 0xf
	.4byte	.LVL18
	.4byte	0xe2
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x6
	.byte	0xa3
	.uleb128 0x1
	.byte	0x53
	.byte	0x76
	.sleb128 0
	.byte	0x1e
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",%progbits
.Ldebug_abbrev0:
	.uleb128 0x1
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
	.uleb128 0x2
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
	.uleb128 0x3
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
	.uleb128 0x4
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
	.uleb128 0x5
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
	.uleb128 0x6
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x49
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x7e
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x48
	.byte	0
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0x48
	.byte	0x1
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x12
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x21
	.sleb128 24
	.uleb128 0x57
	.uleb128 0x21
	.sleb128 5
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
	.uleb128 0x20
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0xb
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x26
	.byte	0
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
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
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
.LVUS64:
	.uleb128 0
	.uleb128 .LVU213
	.uleb128 .LVU213
	.uleb128 0
.LLST64:
	.byte	0x6
	.4byte	.LVL67
	.byte	0x4
	.uleb128 .LVL67-.LVL67
	.uleb128 .LVL74-.LVL67
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL74-.LVL67
	.uleb128 .LFE7-.LVL67
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.byte	0
.LVUS65:
	.uleb128 0
	.uleb128 .LVU203
	.uleb128 .LVU203
	.uleb128 0
.LLST65:
	.byte	0x6
	.4byte	.LVL67
	.byte	0x4
	.uleb128 .LVL67-.LVL67
	.uleb128 .LVL69-.LVL67
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL69-.LVL67
	.uleb128 .LFE7-.LVL67
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.byte	0
.LVUS66:
	.uleb128 0
	.uleb128 .LVU194
	.uleb128 .LVU194
	.uleb128 0
.LLST66:
	.byte	0x6
	.4byte	.LVL67
	.byte	0x4
	.uleb128 .LVL67-.LVL67
	.uleb128 .LVL68-.LVL67
	.uleb128 0x1
	.byte	0x52
	.byte	0x4
	.uleb128 .LVL68-.LVL67
	.uleb128 .LFE7-.LVL67
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.byte	0
.LVUS67:
	.uleb128 0
	.uleb128 .LVU213
	.uleb128 .LVU213
	.uleb128 0
.LLST67:
	.byte	0x6
	.4byte	.LVL67
	.byte	0x4
	.uleb128 .LVL67-.LVL67
	.uleb128 .LVL74-.LVL67
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL74-.LVL67
	.uleb128 .LFE7-.LVL67
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.byte	0
.LVUS68:
	.uleb128 .LVU205
	.uleb128 .LVU211
	.uleb128 .LVU211
	.uleb128 .LVU212
	.uleb128 .LVU212
	.uleb128 .LVU213
	.uleb128 .LVU213
	.uleb128 .LVU215
	.uleb128 .LVU215
	.uleb128 .LVU221
	.uleb128 .LVU221
	.uleb128 0
.LLST68:
	.byte	0x6
	.4byte	.LVL70
	.byte	0x4
	.uleb128 .LVL70-.LVL70
	.uleb128 .LVL72-.LVL70
	.uleb128 0x6
	.byte	0x71
	.sleb128 0
	.byte	0x7c
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL72-.LVL70
	.uleb128 .LVL73-.LVL70
	.uleb128 0x8
	.byte	0x71
	.sleb128 0
	.byte	0x7c
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL73-.LVL70
	.uleb128 .LVL74-.LVL70
	.uleb128 0x9
	.byte	0x70
	.sleb128 0
	.byte	0x6
	.byte	0x7c
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL74-.LVL70
	.uleb128 .LVL75-.LVL70
	.uleb128 0x3
	.byte	0x71
	.sleb128 1
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL75-.LVL70
	.uleb128 .LVL76-.LVL70
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL76-.LVL70
	.uleb128 .LFE7-.LVL70
	.uleb128 0x3
	.byte	0x71
	.sleb128 1
	.byte	0x9f
	.byte	0
.LVUS69:
	.uleb128 .LVU207
	.uleb128 .LVU220
	.uleb128 .LVU220
	.uleb128 .LVU221
	.uleb128 .LVU221
	.uleb128 0
.LLST69:
	.byte	0x6
	.4byte	.LVL71
	.byte	0x4
	.uleb128 .LVL71-.LVL71
	.uleb128 .LVL76-.LVL71
	.uleb128 0x1
	.byte	0x52
	.byte	0x4
	.uleb128 .LVL76-.LVL71
	.uleb128 .LVL76-.LVL71
	.uleb128 0x3
	.byte	0x72
	.sleb128 -1
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL76-.LVL71
	.uleb128 .LFE7-.LVL71
	.uleb128 0x1
	.byte	0x52
	.byte	0
.LVUS70:
	.uleb128 .LVU215
	.uleb128 0
.LLST70:
	.byte	0x8
	.4byte	.LVL75
	.uleb128 .LFE7-.LVL75
	.uleb128 0x1
	.byte	0x50
	.byte	0
.LVUS71:
	.uleb128 .LVU208
	.uleb128 .LVU210
	.uleb128 .LVU210
	.uleb128 .LVU213
.LLST71:
	.byte	0x6
	.4byte	.LVL71
	.byte	0x4
	.uleb128 .LVL71-.LVL71
	.uleb128 .LVL71-.LVL71
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL71-.LVL71
	.uleb128 .LVL74-.LVL71
	.uleb128 0x3
	.byte	0x73
	.sleb128 -1
	.byte	0x9f
	.byte	0
.LVUS60:
	.uleb128 0
	.uleb128 .LVU188
	.uleb128 .LVU188
	.uleb128 0
.LLST60:
	.byte	0x6
	.4byte	.LVL62
	.byte	0x4
	.uleb128 .LVL62-.LVL62
	.uleb128 .LVL65-.LVL62
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL65-.LVL62
	.uleb128 .LFE6-.LVL62
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.byte	0
.LVUS61:
	.uleb128 0
	.uleb128 .LVU187
	.uleb128 .LVU187
	.uleb128 0
.LLST61:
	.byte	0x6
	.4byte	.LVL62
	.byte	0x4
	.uleb128 .LVL62-.LVL62
	.uleb128 .LVL64-.LVL62
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL64-.LVL62
	.uleb128 .LFE6-.LVL62
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.byte	0
.LVUS62:
	.uleb128 0
	.uleb128 .LVU186
	.uleb128 .LVU186
	.uleb128 0
.LLST62:
	.byte	0x6
	.4byte	.LVL62
	.byte	0x4
	.uleb128 .LVL62-.LVL62
	.uleb128 .LVL63-.LVL62
	.uleb128 0x1
	.byte	0x52
	.byte	0x4
	.uleb128 .LVL63-.LVL62
	.uleb128 .LFE6-.LVL62
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.byte	0
.LVUS63:
	.uleb128 0
	.uleb128 .LVU191
	.uleb128 .LVU191
	.uleb128 0
.LLST63:
	.byte	0x6
	.4byte	.LVL62
	.byte	0x4
	.uleb128 .LVL62-.LVL62
	.uleb128 .LVL66-1-.LVL62
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL66-1-.LVL62
	.uleb128 .LFE6-.LVL62
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.byte	0
.LVUS56:
	.uleb128 0
	.uleb128 .LVU175
	.uleb128 .LVU175
	.uleb128 0
.LLST56:
	.byte	0x6
	.4byte	.LVL57
	.byte	0x4
	.uleb128 .LVL57-.LVL57
	.uleb128 .LVL59-.LVL57
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL59-.LVL57
	.uleb128 .LFE5-.LVL57
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.byte	0
.LVUS57:
	.uleb128 0
	.uleb128 .LVU179
	.uleb128 .LVU179
	.uleb128 0
.LLST57:
	.byte	0x6
	.4byte	.LVL57
	.byte	0x4
	.uleb128 .LVL57-.LVL57
	.uleb128 .LVL60-.LVL57
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL60-.LVL57
	.uleb128 .LFE5-.LVL57
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.byte	0
.LVUS58:
	.uleb128 0
	.uleb128 .LVU173
	.uleb128 .LVU173
	.uleb128 0
.LLST58:
	.byte	0x6
	.4byte	.LVL57
	.byte	0x4
	.uleb128 .LVL57-.LVL57
	.uleb128 .LVL58-.LVL57
	.uleb128 0x1
	.byte	0x52
	.byte	0x4
	.uleb128 .LVL58-.LVL57
	.uleb128 .LFE5-.LVL57
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.byte	0
.LVUS59:
	.uleb128 0
	.uleb128 .LVU181
	.uleb128 .LVU181
	.uleb128 0
.LLST59:
	.byte	0x6
	.4byte	.LVL57
	.byte	0x4
	.uleb128 .LVL57-.LVL57
	.uleb128 .LVL61-1-.LVL57
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL61-1-.LVL57
	.uleb128 .LFE5-.LVL57
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.byte	0
.LVUS43:
	.uleb128 0
	.uleb128 .LVU143
	.uleb128 .LVU143
	.uleb128 .LVU156
	.uleb128 .LVU156
	.uleb128 .LVU164
	.uleb128 .LVU164
	.uleb128 0
.LLST43:
	.byte	0x6
	.4byte	.LVL45
	.byte	0x4
	.uleb128 .LVL45-.LVL45
	.uleb128 .LVL49-.LVL45
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL49-.LVL45
	.uleb128 .LVL53-.LVL45
	.uleb128 0x1
	.byte	0x58
	.byte	0x4
	.uleb128 .LVL53-.LVL45
	.uleb128 .LVL55-.LVL45
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL55-.LVL45
	.uleb128 .LFE4-.LVL45
	.uleb128 0x1
	.byte	0x58
	.byte	0
.LVUS44:
	.uleb128 0
	.uleb128 .LVU142
	.uleb128 .LVU142
	.uleb128 .LVU156
	.uleb128 .LVU156
	.uleb128 .LVU164
	.uleb128 .LVU164
	.uleb128 0
.LLST44:
	.byte	0x6
	.4byte	.LVL45
	.byte	0x4
	.uleb128 .LVL45-.LVL45
	.uleb128 .LVL48-.LVL45
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL48-.LVL45
	.uleb128 .LVL53-.LVL45
	.uleb128 0x1
	.byte	0x56
	.byte	0x4
	.uleb128 .LVL53-.LVL45
	.uleb128 .LVL55-.LVL45
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL55-.LVL45
	.uleb128 .LFE4-.LVL45
	.uleb128 0x1
	.byte	0x56
	.byte	0
.LVUS45:
	.uleb128 0
	.uleb128 .LVU147
	.uleb128 .LVU147
	.uleb128 .LVU156
	.uleb128 .LVU156
	.uleb128 .LVU164
	.uleb128 .LVU164
	.uleb128 0
.LLST45:
	.byte	0x6
	.4byte	.LVL45
	.byte	0x4
	.uleb128 .LVL45-.LVL45
	.uleb128 .LVL51-1-.LVL45
	.uleb128 0x1
	.byte	0x52
	.byte	0x4
	.uleb128 .LVL51-1-.LVL45
	.uleb128 .LVL53-.LVL45
	.uleb128 0x1
	.byte	0x57
	.byte	0x4
	.uleb128 .LVL53-.LVL45
	.uleb128 .LVL55-.LVL45
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL55-.LVL45
	.uleb128 .LFE4-.LVL45
	.uleb128 0x1
	.byte	0x57
	.byte	0
.LVUS46:
	.uleb128 0
	.uleb128 .LVU137
	.uleb128 .LVU137
	.uleb128 0
.LLST46:
	.byte	0x6
	.4byte	.LVL45
	.byte	0x4
	.uleb128 .LVL45-.LVL45
	.uleb128 .LVL47-.LVL45
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL47-.LVL45
	.uleb128 .LFE4-.LVL45
	.uleb128 0x1
	.byte	0x54
	.byte	0
.LVUS47:
	.uleb128 .LVU153
	.uleb128 .LVU156
.LLST47:
	.byte	0x8
	.4byte	.LVL52
	.uleb128 .LVL53-.LVL52
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0
.LVUS49:
	.uleb128 .LVU133
	.uleb128 .LVU137
	.uleb128 .LVU137
	.uleb128 .LVU153
	.uleb128 .LVU164
	.uleb128 .LVU165
.LLST49:
	.byte	0x6
	.4byte	.LVL46
	.byte	0x4
	.uleb128 .LVL46-.LVL46
	.uleb128 .LVL47-.LVL46
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL47-.LVL46
	.uleb128 .LVL52-.LVL46
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL55-.LVL46
	.uleb128 .LVL56-.LVL46
	.uleb128 0x1
	.byte	0x54
	.byte	0
.LVUS50:
	.uleb128 .LVU129
	.uleb128 .LVU147
	.uleb128 .LVU147
	.uleb128 .LVU153
	.uleb128 .LVU164
	.uleb128 .LVU165
.LLST50:
	.byte	0x6
	.4byte	.LVL45
	.byte	0x4
	.uleb128 .LVL45-.LVL45
	.uleb128 .LVL51-1-.LVL45
	.uleb128 0x1
	.byte	0x52
	.byte	0x4
	.uleb128 .LVL51-1-.LVL45
	.uleb128 .LVL52-.LVL45
	.uleb128 0x1
	.byte	0x57
	.byte	0x4
	.uleb128 .LVL55-.LVL45
	.uleb128 .LVL56-.LVL45
	.uleb128 0x1
	.byte	0x57
	.byte	0
.LVUS51:
	.uleb128 .LVU129
	.uleb128 .LVU142
	.uleb128 .LVU142
	.uleb128 .LVU153
	.uleb128 .LVU164
	.uleb128 .LVU165
.LLST51:
	.byte	0x6
	.4byte	.LVL45
	.byte	0x4
	.uleb128 .LVL45-.LVL45
	.uleb128 .LVL48-.LVL45
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL48-.LVL45
	.uleb128 .LVL52-.LVL45
	.uleb128 0x1
	.byte	0x56
	.byte	0x4
	.uleb128 .LVL55-.LVL45
	.uleb128 .LVL56-.LVL45
	.uleb128 0x1
	.byte	0x56
	.byte	0
.LVUS52:
	.uleb128 .LVU129
	.uleb128 .LVU143
	.uleb128 .LVU143
	.uleb128 .LVU153
	.uleb128 .LVU164
	.uleb128 .LVU165
.LLST52:
	.byte	0x6
	.4byte	.LVL45
	.byte	0x4
	.uleb128 .LVL45-.LVL45
	.uleb128 .LVL49-.LVL45
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL49-.LVL45
	.uleb128 .LVL52-.LVL45
	.uleb128 0x1
	.byte	0x58
	.byte	0x4
	.uleb128 .LVL55-.LVL45
	.uleb128 .LVL56-.LVL45
	.uleb128 0x1
	.byte	0x58
	.byte	0
.LVUS54:
	.uleb128 .LVU147
	.uleb128 .LVU153
	.uleb128 .LVU164
	.uleb128 .LVU165
.LLST54:
	.byte	0x6
	.4byte	.LVL51
	.byte	0x4
	.uleb128 .LVL51-.LVL51
	.uleb128 .LVL52-.LVL51
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL55-.LVL51
	.uleb128 .LVL56-.LVL51
	.uleb128 0x1
	.byte	0x50
	.byte	0
.LVUS55:
	.uleb128 .LVU145
	.uleb128 .LVU156
	.uleb128 .LVU164
	.uleb128 0
.LLST55:
	.byte	0x6
	.4byte	.LVL50
	.byte	0x4
	.uleb128 .LVL50-.LVL50
	.uleb128 .LVL53-.LVL50
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL55-.LVL50
	.uleb128 .LFE4-.LVL50
	.uleb128 0x1
	.byte	0x55
	.byte	0
.LVUS36:
	.uleb128 0
	.uleb128 .LVU101
	.uleb128 .LVU101
	.uleb128 0
.LLST36:
	.byte	0x6
	.4byte	.LVL36
	.byte	0x4
	.uleb128 .LVL36-.LVL36
	.uleb128 .LVL37-.LVL36
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL37-.LVL36
	.uleb128 .LFE3-.LVL36
	.uleb128 0x1
	.byte	0x55
	.byte	0
.LVUS37:
	.uleb128 0
	.uleb128 .LVU106
	.uleb128 .LVU106
	.uleb128 .LVU119
	.uleb128 .LVU119
	.uleb128 .LVU120
	.uleb128 .LVU120
	.uleb128 0
.LLST37:
	.byte	0x6
	.4byte	.LVL36
	.byte	0x4
	.uleb128 .LVL36-.LVL36
	.uleb128 .LVL39-.LVL36
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL39-.LVL36
	.uleb128 .LVL43-.LVL36
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL43-.LVL36
	.uleb128 .LVL44-1-.LVL36
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL44-1-.LVL36
	.uleb128 .LFE3-.LVL36
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.byte	0
.LVUS38:
	.uleb128 0
	.uleb128 .LVU107
	.uleb128 .LVU107
	.uleb128 .LVU119
	.uleb128 .LVU119
	.uleb128 .LVU120
	.uleb128 .LVU120
	.uleb128 0
.LLST38:
	.byte	0x6
	.4byte	.LVL36
	.byte	0x4
	.uleb128 .LVL36-.LVL36
	.uleb128 .LVL40-1-.LVL36
	.uleb128 0x1
	.byte	0x52
	.byte	0x4
	.uleb128 .LVL40-1-.LVL36
	.uleb128 .LVL43-.LVL36
	.uleb128 0x1
	.byte	0x56
	.byte	0x4
	.uleb128 .LVL43-.LVL36
	.uleb128 .LVL44-1-.LVL36
	.uleb128 0x1
	.byte	0x52
	.byte	0x4
	.uleb128 .LVL44-1-.LVL36
	.uleb128 .LFE3-.LVL36
	.uleb128 0x1
	.byte	0x56
	.byte	0
.LVUS39:
	.uleb128 0
	.uleb128 .LVU107
	.uleb128 .LVU107
	.uleb128 .LVU119
	.uleb128 .LVU119
	.uleb128 .LVU120
	.uleb128 .LVU120
	.uleb128 0
.LLST39:
	.byte	0x6
	.4byte	.LVL36
	.byte	0x4
	.uleb128 .LVL36-.LVL36
	.uleb128 .LVL40-1-.LVL36
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL40-1-.LVL36
	.uleb128 .LVL43-.LVL36
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL43-.LVL36
	.uleb128 .LVL44-1-.LVL36
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL44-1-.LVL36
	.uleb128 .LFE3-.LVL36
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.byte	0
.LVUS41:
	.uleb128 .LVU107
	.uleb128 .LVU118
.LLST41:
	.byte	0x8
	.4byte	.LVL40
	.uleb128 .LVL42-.LVL40
	.uleb128 0x1
	.byte	0x50
	.byte	0
.LVUS42:
	.uleb128 .LVU104
	.uleb128 .LVU113
.LLST42:
	.byte	0x8
	.4byte	.LVL38
	.uleb128 .LVL41-.LVL38
	.uleb128 0x1
	.byte	0x54
	.byte	0
.LVUS18:
	.uleb128 0
	.uleb128 .LVU76
	.uleb128 .LVU76
	.uleb128 .LVU77
	.uleb128 .LVU77
	.uleb128 .LVU81
	.uleb128 .LVU81
	.uleb128 0
.LLST18:
	.byte	0x6
	.4byte	.LVL22
	.byte	0x4
	.uleb128 .LVL22-.LVL22
	.uleb128 .LVL28-.LVL22
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL28-.LVL22
	.uleb128 .LVL29-.LVL22
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL29-.LVL22
	.uleb128 .LVL31-.LVL22
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL31-.LVL22
	.uleb128 .LFE2-.LVL22
	.uleb128 0x1
	.byte	0x56
	.byte	0
.LVUS19:
	.uleb128 0
	.uleb128 .LVU80
	.uleb128 .LVU80
	.uleb128 0
.LLST19:
	.byte	0x6
	.4byte	.LVL22
	.byte	0x4
	.uleb128 .LVL22-.LVL22
	.uleb128 .LVL30-.LVL22
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL30-.LVL22
	.uleb128 .LFE2-.LVL22
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.byte	0
.LVUS20:
	.uleb128 0
	.uleb128 .LVU73
	.uleb128 .LVU73
	.uleb128 .LVU74
	.uleb128 .LVU74
	.uleb128 .LVU77
	.uleb128 .LVU77
	.uleb128 0
.LLST20:
	.byte	0x6
	.4byte	.LVL22
	.byte	0x4
	.uleb128 .LVL22-.LVL22
	.uleb128 .LVL26-.LVL22
	.uleb128 0x1
	.byte	0x52
	.byte	0x4
	.uleb128 .LVL26-.LVL22
	.uleb128 .LVL27-.LVL22
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL27-.LVL22
	.uleb128 .LVL29-.LVL22
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL29-.LVL22
	.uleb128 .LFE2-.LVL22
	.uleb128 0x1
	.byte	0x55
	.byte	0
.LVUS21:
	.uleb128 0
	.uleb128 .LVU82
	.uleb128 .LVU82
	.uleb128 0
.LLST21:
	.byte	0x6
	.4byte	.LVL22
	.byte	0x4
	.uleb128 .LVL22-.LVL22
	.uleb128 .LVL32-1-.LVL22
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL32-1-.LVL22
	.uleb128 .LFE2-.LVL22
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.byte	0
.LVUS22:
	.uleb128 .LVU57
	.uleb128 .LVU65
	.uleb128 .LVU65
	.uleb128 .LVU68
.LLST22:
	.byte	0x6
	.4byte	.LVL22
	.byte	0x4
	.uleb128 .LVL22-.LVL22
	.uleb128 .LVL23-.LVL22
	.uleb128 0x2
	.byte	0x31
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL23-.LVL22
	.uleb128 .LVL25-.LVL22
	.uleb128 0x1
	.byte	0x54
	.byte	0
.LVUS24:
	.uleb128 .LVU69
	.uleb128 .LVU74
	.uleb128 .LVU77
	.uleb128 .LVU91
.LLST24:
	.byte	0x6
	.4byte	.LVL25
	.byte	0x4
	.uleb128 .LVL25-.LVL25
	.uleb128 .LVL27-.LVL25
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL29-.LVL25
	.uleb128 .LVL35-.LVL25
	.uleb128 0x1
	.byte	0x54
	.byte	0
.LVUS25:
	.uleb128 .LVU69
	.uleb128 .LVU74
	.uleb128 .LVU77
	.uleb128 .LVU82
	.uleb128 .LVU82
	.uleb128 .LVU91
.LLST25:
	.byte	0x6
	.4byte	.LVL25
	.byte	0x4
	.uleb128 .LVL25-.LVL25
	.uleb128 .LVL27-.LVL25
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL29-.LVL25
	.uleb128 .LVL32-1-.LVL25
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL32-1-.LVL25
	.uleb128 .LVL35-.LVL25
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.byte	0
.LVUS26:
	.uleb128 .LVU69
	.uleb128 .LVU73
	.uleb128 .LVU73
	.uleb128 .LVU74
	.uleb128 .LVU77
	.uleb128 .LVU91
.LLST26:
	.byte	0x6
	.4byte	.LVL25
	.byte	0x4
	.uleb128 .LVL25-.LVL25
	.uleb128 .LVL26-.LVL25
	.uleb128 0x1
	.byte	0x52
	.byte	0x4
	.uleb128 .LVL26-.LVL25
	.uleb128 .LVL27-.LVL25
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL29-.LVL25
	.uleb128 .LVL35-.LVL25
	.uleb128 0x1
	.byte	0x55
	.byte	0
.LVUS27:
	.uleb128 .LVU69
	.uleb128 .LVU74
	.uleb128 .LVU77
	.uleb128 .LVU80
	.uleb128 .LVU80
	.uleb128 .LVU91
.LLST27:
	.byte	0x6
	.4byte	.LVL25
	.byte	0x4
	.uleb128 .LVL25-.LVL25
	.uleb128 .LVL27-.LVL25
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL29-.LVL25
	.uleb128 .LVL30-.LVL25
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL30-.LVL25
	.uleb128 .LVL35-.LVL25
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.byte	0
.LVUS28:
	.uleb128 .LVU69
	.uleb128 .LVU74
	.uleb128 .LVU77
	.uleb128 .LVU81
	.uleb128 .LVU81
	.uleb128 .LVU91
.LLST28:
	.byte	0x6
	.4byte	.LVL25
	.byte	0x4
	.uleb128 .LVL25-.LVL25
	.uleb128 .LVL27-.LVL25
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL29-.LVL25
	.uleb128 .LVL31-.LVL25
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL31-.LVL25
	.uleb128 .LVL35-.LVL25
	.uleb128 0x1
	.byte	0x56
	.byte	0
.LVUS29:
	.uleb128 .LVU78
	.uleb128 .LVU80
	.uleb128 .LVU80
	.uleb128 .LVU91
.LLST29:
	.byte	0x6
	.4byte	.LVL29
	.byte	0x4
	.uleb128 .LVL29-.LVL29
	.uleb128 .LVL30-.LVL29
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL30-.LVL29
	.uleb128 .LVL35-.LVL29
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.byte	0
.LVUS30:
	.uleb128 .LVU77
	.uleb128 .LVU91
.LLST30:
	.byte	0x8
	.4byte	.LVL29
	.uleb128 .LVL35-.LVL29
	.uleb128 0x1
	.byte	0x54
	.byte	0
.LVUS31:
	.uleb128 .LVU77
	.uleb128 .LVU82
	.uleb128 .LVU82
	.uleb128 .LVU91
.LLST31:
	.byte	0x6
	.4byte	.LVL29
	.byte	0x4
	.uleb128 .LVL29-.LVL29
	.uleb128 .LVL32-1-.LVL29
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL32-1-.LVL29
	.uleb128 .LVL35-.LVL29
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.byte	0
.LVUS32:
	.uleb128 .LVU77
	.uleb128 .LVU91
.LLST32:
	.byte	0x8
	.4byte	.LVL29
	.uleb128 .LVL35-.LVL29
	.uleb128 0x1
	.byte	0x55
	.byte	0
.LVUS33:
	.uleb128 .LVU77
	.uleb128 .LVU81
	.uleb128 .LVU81
	.uleb128 .LVU91
.LLST33:
	.byte	0x6
	.4byte	.LVL29
	.byte	0x4
	.uleb128 .LVL29-.LVL29
	.uleb128 .LVL31-.LVL29
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL31-.LVL29
	.uleb128 .LVL35-.LVL29
	.uleb128 0x1
	.byte	0x56
	.byte	0
.LVUS35:
	.uleb128 .LVU82
	.uleb128 .LVU89
	.uleb128 .LVU89
	.uleb128 .LVU90
	.uleb128 .LVU90
	.uleb128 .LVU91
.LLST35:
	.byte	0x6
	.4byte	.LVL32
	.byte	0x4
	.uleb128 .LVL32-.LVL32
	.uleb128 .LVL33-.LVL32
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL33-.LVL32
	.uleb128 .LVL34-.LVL32
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0x4
	.uleb128 .LVL34-.LVL32
	.uleb128 .LVL35-.LVL32
	.uleb128 0x1
	.byte	0x50
	.byte	0
.LVUS0:
	.uleb128 0
	.uleb128 .LVU13
	.uleb128 .LVU13
	.uleb128 .LVU24
	.uleb128 .LVU24
	.uleb128 .LVU26
	.uleb128 .LVU26
	.uleb128 .LVU27
	.uleb128 .LVU27
	.uleb128 0
.LLST0:
	.byte	0x6
	.4byte	.LVL0
	.byte	0x4
	.uleb128 .LVL0-.LVL0
	.uleb128 .LVL4-.LVL0
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL4-.LVL0
	.uleb128 .LVL8-.LVL0
	.uleb128 0x1
	.byte	0x56
	.byte	0x4
	.uleb128 .LVL8-.LVL0
	.uleb128 .LVL9-.LVL0
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL9-.LVL0
	.uleb128 .LVL10-.LVL0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL10-.LVL0
	.uleb128 .LFE0-.LVL0
	.uleb128 0x1
	.byte	0x56
	.byte	0
.LVUS1:
	.uleb128 0
	.uleb128 .LVU4
	.uleb128 .LVU4
	.uleb128 0
.LLST1:
	.byte	0x6
	.4byte	.LVL0
	.byte	0x4
	.uleb128 .LVL0-.LVL0
	.uleb128 .LVL1-.LVL0
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL1-.LVL0
	.uleb128 .LFE0-.LVL0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.byte	0
.LVUS2:
	.uleb128 0
	.uleb128 .LVU6
	.uleb128 .LVU6
	.uleb128 0
.LLST2:
	.byte	0x6
	.4byte	.LVL0
	.byte	0x4
	.uleb128 .LVL0-.LVL0
	.uleb128 .LVL2-.LVL0
	.uleb128 0x1
	.byte	0x52
	.byte	0x4
	.uleb128 .LVL2-.LVL0
	.uleb128 .LFE0-.LVL0
	.uleb128 0x1
	.byte	0x54
	.byte	0
.LVUS3:
	.uleb128 0
	.uleb128 .LVU9
	.uleb128 .LVU9
	.uleb128 .LVU24
	.uleb128 .LVU24
	.uleb128 .LVU27
	.uleb128 .LVU27
	.uleb128 0
.LLST3:
	.byte	0x6
	.4byte	.LVL0
	.byte	0x4
	.uleb128 .LVL0-.LVL0
	.uleb128 .LVL3-.LVL0
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL3-.LVL0
	.uleb128 .LVL8-.LVL0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL8-.LVL0
	.uleb128 .LVL10-.LVL0
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL10-.LVL0
	.uleb128 .LFE0-.LVL0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.byte	0
.LVUS5:
	.uleb128 .LVU16
	.uleb128 .LVU23
	.uleb128 .LVU23
	.uleb128 .LVU24
	.uleb128 .LVU27
	.uleb128 .LVU28
.LLST5:
	.byte	0x6
	.4byte	.LVL6
	.byte	0x4
	.uleb128 .LVL6-.LVL6
	.uleb128 .LVL7-.LVL6
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL7-.LVL6
	.uleb128 .LVL8-.LVL6
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0x4
	.uleb128 .LVL10-.LVL6
	.uleb128 .LVL11-.LVL6
	.uleb128 0x1
	.byte	0x50
	.byte	0
.LVUS6:
	.uleb128 .LVU14
	.uleb128 .LVU24
	.uleb128 .LVU27
	.uleb128 0
.LLST6:
	.byte	0x6
	.4byte	.LVL5
	.byte	0x4
	.uleb128 .LVL5-.LVL5
	.uleb128 .LVL8-.LVL5
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL10-.LVL5
	.uleb128 .LFE0-.LVL5
	.uleb128 0x1
	.byte	0x55
	.byte	0
.LVUS7:
	.uleb128 0
	.uleb128 .LVU38
	.uleb128 .LVU38
	.uleb128 .LVU39
	.uleb128 .LVU39
	.uleb128 .LVU43
	.uleb128 .LVU43
	.uleb128 0
.LLST7:
	.byte	0x6
	.4byte	.LVL12
	.byte	0x4
	.uleb128 .LVL12-.LVL12
	.uleb128 .LVL14-.LVL12
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL14-.LVL12
	.uleb128 .LVL15-.LVL12
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL15-.LVL12
	.uleb128 .LVL17-.LVL12
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL17-.LVL12
	.uleb128 .LFE1-.LVL12
	.uleb128 0x1
	.byte	0x55
	.byte	0
.LVUS8:
	.uleb128 0
	.uleb128 .LVU42
	.uleb128 .LVU42
	.uleb128 0
.LLST8:
	.byte	0x6
	.4byte	.LVL12
	.byte	0x4
	.uleb128 .LVL12-.LVL12
	.uleb128 .LVL16-.LVL12
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL16-.LVL12
	.uleb128 .LFE1-.LVL12
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.byte	0
.LVUS9:
	.uleb128 0
	.uleb128 .LVU36
	.uleb128 .LVU36
	.uleb128 0
.LLST9:
	.byte	0x6
	.4byte	.LVL12
	.byte	0x4
	.uleb128 .LVL12-.LVL12
	.uleb128 .LVL13-.LVL12
	.uleb128 0x1
	.byte	0x52
	.byte	0x4
	.uleb128 .LVL13-.LVL12
	.uleb128 .LFE1-.LVL12
	.uleb128 0x1
	.byte	0x54
	.byte	0
.LVUS10:
	.uleb128 0
	.uleb128 .LVU44
	.uleb128 .LVU44
	.uleb128 0
.LLST10:
	.byte	0x6
	.4byte	.LVL12
	.byte	0x4
	.uleb128 .LVL12-.LVL12
	.uleb128 .LVL18-1-.LVL12
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL18-1-.LVL12
	.uleb128 .LFE1-.LVL12
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.byte	0
.LVUS11:
	.uleb128 .LVU40
	.uleb128 .LVU42
	.uleb128 .LVU42
	.uleb128 .LVU53
.LLST11:
	.byte	0x6
	.4byte	.LVL15
	.byte	0x4
	.uleb128 .LVL15-.LVL15
	.uleb128 .LVL16-.LVL15
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL16-.LVL15
	.uleb128 .LVL21-.LVL15
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.byte	0
.LVUS12:
	.uleb128 .LVU39
	.uleb128 .LVU53
.LLST12:
	.byte	0x8
	.4byte	.LVL15
	.uleb128 .LVL21-.LVL15
	.uleb128 0x1
	.byte	0x56
	.byte	0
.LVUS13:
	.uleb128 .LVU39
	.uleb128 .LVU44
	.uleb128 .LVU44
	.uleb128 .LVU53
.LLST13:
	.byte	0x6
	.4byte	.LVL15
	.byte	0x4
	.uleb128 .LVL15-.LVL15
	.uleb128 .LVL18-1-.LVL15
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL18-1-.LVL15
	.uleb128 .LVL21-.LVL15
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.byte	0
.LVUS14:
	.uleb128 .LVU39
	.uleb128 .LVU53
.LLST14:
	.byte	0x8
	.4byte	.LVL15
	.uleb128 .LVL21-.LVL15
	.uleb128 0x1
	.byte	0x54
	.byte	0
.LVUS15:
	.uleb128 .LVU39
	.uleb128 .LVU43
	.uleb128 .LVU43
	.uleb128 .LVU53
.LLST15:
	.byte	0x6
	.4byte	.LVL15
	.byte	0x4
	.uleb128 .LVL15-.LVL15
	.uleb128 .LVL17-.LVL15
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL17-.LVL15
	.uleb128 .LVL21-.LVL15
	.uleb128 0x1
	.byte	0x55
	.byte	0
.LVUS17:
	.uleb128 .LVU44
	.uleb128 .LVU51
	.uleb128 .LVU51
	.uleb128 .LVU52
	.uleb128 .LVU52
	.uleb128 .LVU53
.LLST17:
	.byte	0x6
	.4byte	.LVL18
	.byte	0x4
	.uleb128 .LVL18-.LVL18
	.uleb128 .LVL19-.LVL18
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL19-.LVL18
	.uleb128 .LVL20-.LVL18
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0x4
	.uleb128 .LVL20-.LVL18
	.uleb128 .LVL21-.LVL18
	.uleb128 0x1
	.byte	0x50
	.byte	0
.Ldebug_loc3:
	.section	.debug_aranges,"",%progbits
	.4byte	0x54
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
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
	.4byte	.LBB6
	.byte	0x4
	.uleb128 .LBB6-.LBB6
	.uleb128 .LBE6-.LBB6
	.byte	0x4
	.uleb128 .LBB7-.LBB6
	.uleb128 .LBE7-.LBB6
	.byte	0x4
	.uleb128 .LBB8-.LBB6
	.uleb128 .LBE8-.LBB6
	.byte	0
.LLRL16:
	.byte	0x5
	.4byte	.LBB14
	.byte	0x4
	.uleb128 .LBB14-.LBB14
	.uleb128 .LBE14-.LBB14
	.byte	0x4
	.uleb128 .LBB15-.LBB14
	.uleb128 .LBE15-.LBB14
	.byte	0
.LLRL23:
	.byte	0x5
	.4byte	.LBB21
	.byte	0x4
	.uleb128 .LBB21-.LBB21
	.uleb128 .LBE21-.LBB21
	.byte	0x4
	.uleb128 .LBB28-.LBB21
	.uleb128 .LBE28-.LBB21
	.byte	0
.LLRL34:
	.byte	0x5
	.4byte	.LBB25
	.byte	0x4
	.uleb128 .LBB25-.LBB25
	.uleb128 .LBE25-.LBB25
	.byte	0x4
	.uleb128 .LBB26-.LBB25
	.uleb128 .LBE26-.LBB25
	.byte	0
.LLRL40:
	.byte	0x5
	.4byte	.LBB29
	.byte	0x4
	.uleb128 .LBB29-.LBB29
	.uleb128 .LBE29-.LBB29
	.byte	0x4
	.uleb128 .LBB30-.LBB29
	.uleb128 .LBE30-.LBB29
	.byte	0
.LLRL48:
	.byte	0x5
	.4byte	.LBB34
	.byte	0x4
	.uleb128 .LBB34-.LBB34
	.uleb128 .LBE34-.LBB34
	.byte	0x4
	.uleb128 .LBB41-.LBB34
	.uleb128 .LBE41-.LBB34
	.byte	0x4
	.uleb128 .LBB42-.LBB34
	.uleb128 .LBE42-.LBB34
	.byte	0
.LLRL53:
	.byte	0x5
	.4byte	.LBB36
	.byte	0x4
	.uleb128 .LBB36-.LBB36
	.uleb128 .LBE36-.LBB36
	.byte	0x4
	.uleb128 .LBB37-.LBB36
	.uleb128 .LBE37-.LBB36
	.byte	0x4
	.uleb128 .LBB38-.LBB36
	.uleb128 .LBE38-.LBB36
	.byte	0
.LLRL72:
	.byte	0x7
	.4byte	.LFB0
	.uleb128 .LFE0-.LFB0
	.byte	0x7
	.4byte	.LFB1
	.uleb128 .LFE1-.LFB1
	.byte	0x7
	.4byte	.LFB2
	.uleb128 .LFE2-.LFB2
	.byte	0x7
	.4byte	.LFB3
	.uleb128 .LFE3-.LFB3
	.byte	0x7
	.4byte	.LFB4
	.uleb128 .LFE4-.LFB4
	.byte	0x7
	.4byte	.LFB5
	.uleb128 .LFE5-.LFB5
	.byte	0x7
	.4byte	.LFB6
	.uleb128 .LFE6-.LFB6
	.byte	0x7
	.4byte	.LFB7
	.uleb128 .LFE7-.LFB7
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF19:
	.ascii	"idx1\000"
.LASF34:
	.ascii	"size_t\000"
.LASF17:
	.ascii	"capacity\000"
.LASF27:
	.ascii	"vec_compact_\000"
.LASF21:
	.ascii	"count\000"
.LASF20:
	.ascii	"idx2\000"
.LASF24:
	.ascii	"start\000"
.LASF6:
	.ascii	"short unsigned int\000"
.LASF26:
	.ascii	"vec_insert_\000"
.LASF11:
	.ascii	"float\000"
.LASF15:
	.ascii	"data\000"
.LASF32:
	.ascii	"/home/tobi/Dokumente/Craftus-Next/dependencies/vec/"
	.ascii	"vec.c\000"
.LASF18:
	.ascii	"memsz\000"
.LASF8:
	.ascii	"long unsigned int\000"
.LASF33:
	.ascii	"/home/tobi/Dokumente/Craftus-Next/build\000"
.LASF23:
	.ascii	"vec_swapsplice_\000"
.LASF28:
	.ascii	"vec_reserve_po2_\000"
.LASF4:
	.ascii	"unsigned char\000"
.LASF12:
	.ascii	"double\000"
.LASF14:
	.ascii	"realloc\000"
.LASF30:
	.ascii	"vec_expand_\000"
.LASF0:
	.ascii	"unsigned int\000"
.LASF9:
	.ascii	"long long unsigned int\000"
.LASF13:
	.ascii	"memmove\000"
.LASF31:
	.ascii	"GNU C17 11.2.0 -mword-relocations -mtune=mpcore -mf"
	.ascii	"loat-abi=hard -mtp=soft -marm -march=armv6k -g -O2 "
	.ascii	"-ffunction-sections -fomit-frame-pointer\000"
.LASF2:
	.ascii	"long double\000"
.LASF35:
	.ascii	"free\000"
.LASF1:
	.ascii	"long long int\000"
.LASF10:
	.ascii	"char\000"
.LASF25:
	.ascii	"vec_splice_\000"
.LASF5:
	.ascii	"short int\000"
.LASF22:
	.ascii	"vec_swap_\000"
.LASF7:
	.ascii	"long int\000"
.LASF29:
	.ascii	"vec_reserve_\000"
.LASF3:
	.ascii	"signed char\000"
.LASF16:
	.ascii	"length\000"
	.ident	"GCC: (devkitARM release 57) 11.2.0"
