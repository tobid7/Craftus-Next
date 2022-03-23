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
	.file	"WorldRenderer.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"Clusters drawn %d with %d steps. %d vertices\000"
	.align	2
.LC1:
	.ascii	"T: %u P: %u %d\000"
	.section	.text.renderWorld,"ax",%progbits
	.align	2
	.syntax unified
	.arm
	.fpu vfp
	.type	renderWorld, %function
renderWorld:
.LFB226:
	.file 1 "/home/tobi/Dokumente/Craftus-Next/source/rendering/WorldRenderer.c"
	.loc 1 91 27 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 216
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 93 2 view .LVU1
	.loc 1 91 27 is_stmt 0 view .LVU2
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
	vpush.64	{d8, d9, d10, d11}
	.cfi_def_cfa_offset 68
	.cfi_offset 80, -68
	.cfi_offset 81, -64
	.cfi_offset 82, -60
	.cfi_offset 83, -56
	.cfi_offset 84, -52
	.cfi_offset 85, -48
	.cfi_offset 86, -44
	.cfi_offset 87, -40
	.loc 1 95 2 view .LVU3
	ldr	fp, .L58+20
	.loc 1 91 27 view .LVU4
	sub	sp, sp, #228
	.cfi_def_cfa_offset 296
	.loc 1 93 2 view .LVU5
	ldr	r0, .L58+24
	bl	C3D_FogColor
.LVL0:
	.loc 1 95 2 is_stmt 1 view .LVU6
	mov	r2, #648
	mov	r1, #0
	mov	r0, fp
	bl	memset
.LVL1:
	.loc 1 97 2 view .LVU7
	.loc 1 99 2 view .LVU8
	.loc 1 102 49 is_stmt 0 view .LVU9
	ldr	r3, [fp, #672]
	.loc 1 99 29 view .LVU10
	mov	r2, #0
	.loc 1 102 15 view .LVU11
	vldr.32	s10, [r3, #4]
.LBB99:
.LBB100:
	.file 2 "/home/tobi/Dokumente/Craftus-Next/include/misc/NumberUtils.h"
	.loc 2 25 47 view .LVU12
	vcvt.s32.f32	s13, s10
	.loc 2 25 58 view .LVU13
	vcvt.f32.s32	s7, s13
.LBE100:
.LBE99:
	.loc 1 104 6 view .LVU14
	vldr.32	s11, [r3]
.LBB106:
.LBB101:
	.loc 2 25 58 view .LVU15
	vcmpe.f32	s10, s7
.LBE101:
.LBE106:
.LBB107:
.LBB108:
	.loc 2 25 47 view .LVU16
	vcvt.s32.f32	s14, s11
.LBE108:
.LBE107:
	.loc 1 104 6 view .LVU17
	vldr.32	s12, [r3, #8]
.LBB115:
.LBB102:
	.loc 2 25 58 view .LVU18
	vmrs	APSR_nzcv, FPSCR
.LBE102:
.LBE115:
.LBB116:
.LBB109:
	vcvt.f32.s32	s8, s14
.LBE109:
.LBE116:
.LBB117:
.LBB118:
	.loc 2 25 47 view .LVU19
	vcvt.s32.f32	s15, s12
.LBE118:
.LBE117:
.LBB125:
.LBB103:
	.loc 2 25 58 view .LVU20
	movpl	r3, r2
	movmi	r3, #1
.LBE103:
.LBE125:
	.loc 1 99 29 view .LVU21
	str	r2, [fp, #652]
	.loc 1 100 2 is_stmt 1 view .LVU22
	.loc 1 100 34 is_stmt 0 view .LVU23
	str	r2, [fp, #664]
	.loc 1 102 2 is_stmt 1 view .LVU24
.LVL2:
.LBB126:
.LBI99:
	.loc 2 25 19 view .LVU25
.LBB104:
	.loc 2 25 40 view .LVU26
	.loc 2 25 56 is_stmt 0 view .LVU27
	vmov	r2, s13	@ int
.LBE104:
.LBE126:
.LBB127:
.LBB110:
	.loc 2 25 58 view .LVU28
	vcmpe.f32	s11, s8
.LBE110:
.LBE127:
.LBB128:
.LBB119:
	vcvt.f32.s32	s9, s15
.LBE119:
.LBE128:
.LBB129:
.LBB105:
	.loc 2 25 56 view .LVU29
	sub	r3, r2, r3
.LVL3:
	.loc 2 25 56 view .LVU30
.LBE105:
.LBE129:
.LBB130:
.LBI130:
	.file 3 "/home/tobi/Dokumente/Craftus-Next/include/world/World.h"
	.loc 3 51 19 is_stmt 1 view .LVU31
.LBB131:
	.loc 3 51 46 view .LVU32
	.loc 3 51 56 is_stmt 0 view .LVU33
	add	r2, r3, r3, lsr #31
	.loc 3 51 72 view .LVU34
	cmp	r2, #0
	add	r4, r2, #15
	movge	r4, r2
.LBE131:
.LBE130:
.LBB133:
.LBB111:
	.loc 2 25 58 view .LVU35
	vmrs	APSR_nzcv, FPSCR
.LBE111:
.LBE133:
.LBB134:
.LBB120:
	vcmpe.f32	s12, s9
.LBE120:
.LBE134:
.LBB135:
.LBB132:
	.loc 3 51 72 view .LVU36
	asr	r4, r4, #4
	.loc 3 51 79 view .LVU37
	sub	r4, r4, r3, lsr #31
.LBE132:
.LBE135:
.LBB136:
.LBB112:
	.loc 2 25 56 view .LVU38
	vmov	r2, s14	@ int
	.loc 2 25 58 view .LVU39
	movmi	r3, #1
	movpl	r3, #0
.LBE112:
.LBE136:
.LBB137:
.LBB121:
	vmrs	APSR_nzcv, FPSCR
.LBE121:
.LBE137:
.LBB138:
.LBB113:
	.loc 2 25 56 view .LVU40
	sub	r2, r2, r3
.LBE113:
.LBE138:
.LBB139:
.LBB140:
	.loc 3 51 56 view .LVU41
	add	r3, r2, r2, lsr #31
.LBE140:
.LBE139:
.LBB144:
.LBB122:
	.loc 2 25 58 view .LVU42
	movmi	ip, #1
	movpl	ip, #0
.LBE122:
.LBE144:
.LBB145:
.LBB141:
	.loc 3 51 72 view .LVU43
	cmp	r3, #0
	add	r1, r3, #15
	movge	r1, r3
.LBE141:
.LBE145:
.LBB146:
.LBB123:
	.loc 2 25 56 view .LVU44
	vmov	r3, s15	@ int
	sub	r3, r3, ip
.LBE123:
.LBE146:
.LBB147:
.LBB148:
	.loc 3 51 56 view .LVU45
	add	ip, r3, r3, lsr #31
	.loc 3 51 72 view .LVU46
	cmp	ip, #0
.LBE148:
.LBE147:
.LBB151:
.LBB142:
	asr	r1, r1, #4
.LBE142:
.LBE151:
	.loc 1 104 6 view .LVU47
	sub	r1, r1, r2, lsr #31
.LBB152:
.LBB149:
	.loc 3 51 72 view .LVU48
	add	r2, ip, #15
	movge	r2, ip
	asr	r2, r2, #4
.LBE149:
.LBE152:
	.loc 1 104 6 view .LVU49
	sub	r2, r2, r3, lsr #31
	ldr	r0, [fp, #676]
	bl	World_GetChunk
.LVL4:
	.loc 1 105 4 view .LVU50
	mov	r3, #12
	.loc 1 104 6 view .LVU51
	mov	r5, r0
	.loc 1 105 4 view .LVU52
	add	r1, fp, #652
	add	r2, fp, #656
	add	r0, fp, #648
	bl	vec_expand_
.LVL5:
	.loc 1 105 147 view .LVU53
	cmp	r0, #0
	usat	r4, #3, r4
.LVL6:
	.loc 1 103 2 is_stmt 1 view .LVU54
.LBB153:
.LBI107:
	.loc 2 25 19 view .LVU55
.LBB114:
	.loc 2 25 40 view .LVU56
	.loc 2 25 40 is_stmt 0 view .LVU57
.LBE114:
.LBE153:
.LBB154:
.LBI139:
	.loc 3 51 19 is_stmt 1 view .LVU58
.LBB143:
	.loc 3 51 46 view .LVU59
	.loc 3 51 46 is_stmt 0 view .LVU60
.LBE143:
.LBE154:
.LBB155:
.LBI117:
	.loc 2 25 19 is_stmt 1 view .LVU61
.LBB124:
	.loc 2 25 40 view .LVU62
	.loc 2 25 40 is_stmt 0 view .LVU63
.LBE124:
.LBE155:
.LBB156:
.LBI147:
	.loc 3 51 19 is_stmt 1 view .LVU64
.LBB150:
	.loc 3 51 46 view .LVU65
	.loc 3 51 46 is_stmt 0 view .LVU66
.LBE150:
.LBE156:
	.loc 1 105 2 is_stmt 1 view .LVU67
	.loc 1 105 147 is_stmt 0 view .LVU68
	beq	.L2
	.loc 1 105 191 view .LVU69
	ldr	r2, [fp, #652]
.L3:
	.loc 1 106 2 is_stmt 1 view .LVU70
	.loc 1 106 38 is_stmt 0 view .LVU71
	mov	r0, #1
	add	r4, r4, r4, lsl #3
.LVL7:
	.loc 1 108 27 view .LVU72
	ldr	r1, [fp, #672]
	.loc 1 106 38 view .LVU73
	add	r3, fp, r4
	strb	r0, [r3, #292]
	.loc 1 108 2 is_stmt 1 view .LVU74
	.loc 1 110 31 is_stmt 0 view .LVU75
	cmp	r2, #0
	.loc 1 108 9 view .LVU76
	vldr.32	s20, [r1]
.LVL8:
	.loc 1 108 9 view .LVU77
	vldr.32	s19, [r1, #4]
.LVL9:
	.loc 1 108 9 view .LVU78
	vldr.32	s18, [r1, #8]
.LVL10:
	.loc 1 110 2 is_stmt 1 view .LVU79
	.loc 1 110 31 view .LVU80
	ble	.L25
.LBB157:
.LBB158:
	.loc 1 129 6 is_stmt 0 view .LVU81
	ldr	r3, .L58+72
.LBE158:
.LBE157:
	.loc 1 97 22 view .LVU82
	mov	r1, #0
.LBB184:
.LBB159:
.LBB160:
	.loc 1 162 20 view .LVU83
	sub	r3, r3, #20
	str	r3, [sp, #36]
	.loc 1 146 7 view .LVU84
	vldr.32	s21, .L58+8
.LBE160:
.LBE159:
.LBB180:
	.loc 1 120 4 view .LVU85
	vldr.64	d8, .L58	@ int
	mov	r3, r2
.LBE180:
.LBE184:
	.loc 1 97 22 view .LVU86
	str	r1, [sp, #32]
	.loc 1 97 6 view .LVU87
	str	r1, [sp, #24]
.LVL11:
.L13:
.LBB185:
	.loc 1 111 3 is_stmt 1 view .LVU88
	.loc 1 111 38 is_stmt 0 view .LVU89
	ldr	r2, [fp, #648]
	.loc 1 111 45 view .LVU90
	sub	r3, r3, #1
	.loc 1 111 44 view .LVU91
	add	r1, r3, r3, lsl #1
	.loc 1 111 14 view .LVU92
	ldr	r0, [r2, r1, lsl #2]
	str	r3, [fp, #652]
	.loc 1 111 44 view .LVU93
	add	r3, r2, r1, lsl #2
	.loc 1 111 14 view .LVU94
	ldr	r8, [r3, #4]
	ldrb	r3, [r3, #8]	@ zero_extendqisi2
	.loc 1 115 14 view .LVU95
	add	r2, r0, #8192
	.loc 1 111 14 view .LVU96
	str	r3, [sp, #20]
	.loc 1 115 6 view .LVU97
	ldr	r3, [r2, #32]
	.loc 1 111 14 view .LVU98
	str	r0, [sp, #12]
.LVL12:
	.loc 1 112 3 is_stmt 1 view .LVU99
	.loc 1 113 3 view .LVU100
	.loc 1 115 3 view .LVU101
	.loc 1 115 6 is_stmt 0 view .LVU102
	cmp	r3, #0
	.loc 1 115 14 view .LVU103
	str	r2, [sp, #16]
	.loc 1 115 6 view .LVU104
	beq	.L5
	.loc 1 115 29 discriminator 1 view .LVU105
	ldr	r3, [r2, #16]
	cmp	r3, #0
	bne	.L54
.LVL13:
.L5:
	.loc 1 128 3 is_stmt 1 view .LVU106
	.loc 1 128 6 is_stmt 0 view .LVU107
	ldr	r2, [sp, #16]
	ldr	r3, [r2, #36]
	cmp	r3, #0
	beq	.L7
	.loc 1 128 40 discriminator 1 view .LVU108
	ldr	r3, [r2, #24]
	cmp	r3, #0
	bne	.L55
.L7:
	vldr.32	s23, .L58+12
	vldr.32	s22, .L58+16
	ldr	r3, [sp, #20]
	ldr	r4, .L58+28
	add	r7, r3, r3, lsl #1
	ldr	r3, .L58+32
	ldr	r10, .L58+36
	add	r7, r3, r7, lsl #1
.L10:
.LVL14:
.LBB181:
.LBB179:
	.loc 1 134 4 is_stmt 1 view .LVU109
	.loc 1 135 4 view .LVU110
	.loc 1 137 4 view .LVU111
	.loc 1 137 8 is_stmt 0 view .LVU112
	ldr	r2, [r4]
	.loc 1 138 20 view .LVU113
	ldr	r3, [fp, #676]
	.loc 1 137 8 view .LVU114
	ldr	r5, [r8, #16]
	.loc 1 138 20 view .LVU115
	ldr	r0, [r3, #32]
	.loc 1 137 8 view .LVU116
	add	r5, r5, r2
.LVL15:
	.loc 1 137 51 view .LVU117
	ldr	r2, [sp, #12]
	.loc 1 137 63 view .LVU118
	ldr	r1, [r4, #4]
	.loc 1 137 51 view .LVU119
	ldr	r9, [r2]
.LVL16:
	.loc 1 138 50 view .LVU120
	sub	r2, r0, #3
	.loc 1 138 7 view .LVU121
	cmp	r2, r5
	.loc 1 137 80 view .LVU122
	ldr	r6, [r8, #20]
	.loc 1 137 92 view .LVU123
	ldr	r2, [r4, #8]
.LVL17:
	.loc 1 138 4 is_stmt 1 view .LVU124
	.loc 1 138 7 is_stmt 0 view .LVU125
	bgt	.L12
	.loc 1 139 50 discriminator 2 view .LVU126
	add	ip, r0, #3
	.loc 1 138 54 discriminator 2 view .LVU127
	cmp	ip, r5
	blt	.L12
	.loc 1 140 20 view .LVU128
	ldr	ip, [r3, #36]
	.loc 1 137 68 view .LVU129
	add	r6, r6, r2
.LVL18:
	.loc 1 140 50 view .LVU130
	sub	r3, ip, #3
	.loc 1 139 54 view .LVU131
	cmp	r3, r6
	bgt	.L12
	.loc 1 141 50 view .LVU132
	add	r3, ip, #3
	.loc 1 140 54 view .LVU133
	cmp	r3, r6
	blt	.L12
	.loc 1 137 37 view .LVU134
	add	r9, r9, r1
.LVL19:
	.loc 1 141 66 view .LVU135
	cmp	r9, #7
	bhi	.L12
	.loc 1 143 4 is_stmt 1 view .LVU136
	.loc 1 143 61 is_stmt 0 view .LVU137
	lsl	r2, r9, #4
	.loc 1 143 68 view .LVU138
	add	r3, r2, #8
	vmov	s15, r3	@ int
	.loc 1 143 37 view .LVU139
	lsl	r3, r5, #4
	.loc 1 143 44 view .LVU140
	add	r1, r3, #8
	vmov	s13, r1	@ int
	.loc 1 143 18 view .LVU141
	vcvt.f32.s32	s15, s15
	.loc 1 144 16 view .LVU142
	lsl	r1, r6, #4
.LVL20:
.LBB161:
.LBI161:
	.file 4 "/home/tobi/Dokumente/Craftus-Next/include/misc/VecMath.h"
	.loc 4 17 15 is_stmt 1 view .LVU143
.LBB162:
	.loc 4 17 44 view .LVU144
.LBE162:
.LBE161:
	.loc 1 144 23 is_stmt 0 view .LVU145
	add	lr, r1, #8
	.loc 1 143 18 view .LVU146
	vcvt.f32.s32	s13, s13
.LVL21:
	.loc 1 144 23 view .LVU147
	vmov	s14, lr	@ int
.LBB166:
.LBB163:
	.loc 4 17 51 view .LVU148
	vsub.f32	s15, s15, s19
.LVL22:
	.loc 4 17 51 view .LVU149
.LBE163:
.LBE166:
	.loc 1 143 18 view .LVU150
	vcvt.f32.s32	s14, s14
.LVL23:
.LBB167:
.LBB164:
	.loc 4 17 51 view .LVU151
	vsub.f32	s13, s13, s20
.LVL24:
	.loc 4 17 51 view .LVU152
.LBE164:
.LBE167:
.LBB168:
.LBB169:
	.loc 4 20 66 view .LVU153
	vmul.f32	s15, s15, s15
.LBE169:
.LBE168:
.LBB171:
.LBB165:
	.loc 4 17 51 view .LVU154
	vsub.f32	s14, s14, s18
.LVL25:
	.loc 4 17 51 view .LVU155
.LBE165:
.LBE171:
	.loc 1 146 4 is_stmt 1 view .LVU156
.LBB172:
.LBI168:
	.loc 4 20 14 view .LVU157
.LBB170:
	.loc 4 20 43 view .LVU158
	.loc 4 20 60 is_stmt 0 view .LVU159
	vmla.f32	s15, s13, s13
	.loc 4 20 72 view .LVU160
	vmla.f32	s15, s14, s14
.LBE170:
.LBE172:
	.loc 1 146 7 view .LVU161
	vcmpe.f32	s15, s21
	vmrs	APSR_nzcv, FPSCR
	bgt	.L12
	.loc 1 150 4 is_stmt 1 view .LVU162
	.loc 1 150 27 is_stmt 0 view .LVU163
	sub	r0, r0, #4
	sub	r0, r5, r0
	.loc 1 150 74 view .LVU164
	add	lr, r9, r9, lsl #3
	add	r0, r0, r0, lsl #3
	.loc 1 150 80 view .LVU165
	sub	ip, ip, #4
	.loc 1 150 74 view .LVU166
	add	r0, lr, r0, lsl #3
	.loc 1 150 80 view .LVU167
	sub	ip, r6, ip
	.loc 1 150 74 view .LVU168
	add	r0, fp, r0
	.loc 1 150 7 view .LVU169
	ldrb	r0, [r0, ip]	@ zero_extendqisi2
	.loc 1 150 74 view .LVU170
	str	lr, [sp, #28]
	.loc 1 150 7 view .LVU171
	tst	r0, #1
	bne	.L12
	.loc 1 152 4 is_stmt 1 view .LVU172
.LVL26:
.LBB173:
.LBI173:
	.file 5 "/home/tobi/Dokumente/Craftus-Next/include/world/Chunk.h"
	.loc 5 66 12 view .LVU173
.LBB174:
	.loc 5 67 2 view .LVU174
	.loc 5 67 24 is_stmt 0 view .LVU175
	mov	lr, #1
	.loc 5 67 19 view .LVU176
	ldr	r0, [sp, #16]
	.loc 5 67 27 view .LVU177
	ldrb	ip, [r7]	@ zero_extendqisi2
	.loc 5 67 19 view .LVU178
	ldrh	r0, [r0, #8]
.LBE174:
.LBE173:
	.loc 1 152 7 view .LVU179
	and	r0, r0, lr, lsl ip
	.loc 1 152 73 view .LVU180
	ldr	ip, [sp, #20]
	subs	ip, ip, #6
	movne	ip, #1
	cmp	r0, #0
	movne	ip, #0
	cmp	ip, #0
	bne	.L12
	.loc 1 155 4 is_stmt 1 view .LVU181
.LVL27:
.LBB175:
.LBI175:
	.file 6 "/opt/devkitpro/libctru/include/c3d/maths.h"
	.loc 6 156 24 view .LVU182
	.loc 6 158 2 view .LVU183
.LBB176:
.LBI176:
	.loc 6 48 24 view .LVU184
	.loc 6 50 2 view .LVU185
	.loc 6 50 2 is_stmt 0 view .LVU186
.LBE176:
.LBE175:
	.loc 1 155 29 view .LVU187
	vmov	s15, r1	@ int
	vcvt.f32.s32	s1, s15
.LVL28:
	.loc 1 155 29 view .LVU188
	vmov	s15, r2	@ int
	vcvt.f32.s32	s2, s15
.LVL29:
	.loc 1 155 29 view .LVU189
	vmov	s15, r3	@ int
	.loc 1 156 9 view .LVU190
	vldr.32	s5, .L58+16
	vldr.32	s4, .L58+12
	.loc 1 155 29 view .LVU191
	vcvt.f32.s32	s3, s15
.LVL30:
	.loc 1 156 9 view .LVU192
	vmov.f32	s6, s5
	vmov.f32	s7, s5
	vmov.f32	s0, s4
	ldr	r0, .L58+40
	vstr.32	s23, [sp, #72]
	vstr.32	s23, [sp, #56]
	vstr.32	s22, [sp, #60]
	vstr.32	s22, [sp, #64]
	vstr.32	s22, [sp, #68]
	.loc 1 155 29 view .LVU193
	vstr.32	s1, [sp, #76]
	vstr.32	s2, [sp, #80]
	vstr.32	s3, [sp, #84]
.LVL31:
	.loc 1 156 4 is_stmt 1 view .LVU194
.LBB177:
.LBI177:
	.loc 6 156 24 view .LVU195
	.loc 6 158 2 view .LVU196
.LBB178:
.LBI178:
	.loc 6 48 24 view .LVU197
	.loc 6 50 2 view .LVU198
	.loc 6 50 2 is_stmt 0 view .LVU199
.LBE178:
.LBE177:
	.loc 1 156 9 view .LVU200
	bl	Camera_IsAABBVisible
.LVL32:
	.loc 1 156 7 view .LVU201
	cmp	r0, #0
	beq	.L12
	.loc 1 158 4 is_stmt 1 view .LVU202
	.loc 1 158 31 is_stmt 0 view .LVU203
	ldr	r0, [fp, #676]
	.loc 1 158 118 view .LVU204
	ldr	lr, [sp, #28]
	ldr	r3, [r0, #32]
	ldr	ip, [r0, #36]
	sub	r3, r3, #4
	sub	r3, r5, r3
	add	r3, r3, r3, lsl #3
	add	r3, lr, r3, lsl #3
	sub	ip, ip, #4
	add	r3, fp, r3
	.loc 1 160 22 view .LVU205
	mov	r2, r6
	.loc 1 158 118 view .LVU206
	sub	r6, r6, ip
.LVL33:
	.loc 1 158 118 view .LVU207
	ldrb	ip, [r3, r6]	@ zero_extendqisi2
	.loc 1 160 22 view .LVU208
	mov	r1, r5
	.loc 1 158 118 view .LVU209
	orr	ip, ip, #1
	strb	ip, [r3, r6]
	.loc 1 160 4 is_stmt 1 view .LVU210
	.loc 1 160 22 is_stmt 0 view .LVU211
	bl	World_GetChunk
.LVL34:
	.loc 1 161 4 is_stmt 1 view .LVU212
	.loc 1 162 7 is_stmt 0 view .LVU213
	subs	r5, r0, #0
.LVL35:
	.loc 1 161 93 view .LVU214
	ldrb	r6, [r10]	@ zero_extendqisi2
.LVL36:
	.loc 1 162 4 is_stmt 1 view .LVU215
	.loc 1 162 7 is_stmt 0 view .LVU216
	beq	.L12
	.loc 1 162 18 is_stmt 1 discriminator 1 view .LVU217
	.loc 1 162 20 is_stmt 0 discriminator 1 view .LVU218
	ldr	r1, .L58+44
	mov	r3, #12
	ldr	r0, [sp, #36]
.LVL37:
	.loc 1 162 20 discriminator 1 view .LVU219
	add	r2, r1, #4
	bl	vec_expand_
.LVL38:
	.loc 1 162 163 discriminator 1 view .LVU220
	cmp	r0, #0
	bne	.L12
	.loc 1 161 39 discriminator 2 view .LVU221
	add	r3, r9, r9, lsl #8
	.loc 1 162 207 discriminator 2 view .LVU222
	ldr	r1, [fp, #652]
	.loc 1 161 39 discriminator 2 view .LVU223
	add	r3, r9, r3, lsl #1
	.loc 1 162 183 discriminator 2 view .LVU224
	ldr	r2, [fp, #648]
	.loc 1 161 39 discriminator 2 view .LVU225
	add	r3, r5, r3, lsl #4
	.loc 1 162 189 discriminator 2 view .LVU226
	add	r0, r1, r1, lsl #1
	.loc 1 161 39 discriminator 2 view .LVU227
	add	r3, r3, #24
	.loc 1 162 215 discriminator 2 view .LVU228
	add	r1, r1, #1
	str	r1, [fp, #652]
	.loc 1 162 219 discriminator 2 view .LVU229
	str	r3, [r2, r0, lsl #2]
	.loc 1 162 189 discriminator 2 view .LVU230
	add	r3, r2, r0, lsl #2
	.loc 1 162 219 discriminator 2 view .LVU231
	str	r5, [r3, #4]
	strb	r6, [r3, #8]
.LVL39:
.L12:
	.loc 1 162 219 discriminator 2 view .LVU232
.LBE179:
	.loc 1 133 27 is_stmt 1 view .LVU233
	.loc 1 133 21 view .LVU234
	ldr	r3, .L58+48
	add	r4, r4, #12
.LVL40:
	.loc 1 133 21 is_stmt 0 view .LVU235
	cmp	r3, r4
	add	r10, r10, #1
.LVL41:
	.loc 1 133 21 view .LVU236
	add	r7, r7, #1
	bne	.L10
.LVL42:
	.loc 1 133 21 view .LVU237
.LBE181:
.LBE185:
	.loc 1 110 31 is_stmt 1 view .LVU238
	.loc 1 110 23 is_stmt 0 view .LVU239
	ldr	r3, [fp, #652]
	.loc 1 110 31 view .LVU240
	cmp	r3, #0
	bgt	.L13
.LVL43:
.L4:
.LBB186:
	.loc 1 166 11 view .LVU241
	mov	r10, #1
.LBB187:
.LBB188:
.LBB189:
.LBB190:
	.loc 1 172 14 view .LVU242
	ldr	r3, .L58+52
.LBE190:
.LBE189:
	.loc 1 168 11 view .LVU243
	ldr	r7, .L58+56
.LBB206:
.LBB193:
	.loc 1 172 14 view .LVU244
	str	r3, [sp, #12]
.L14:
.LVL44:
	.loc 1 172 14 view .LVU245
.LBE193:
.LBE206:
.LBE188:
	.loc 1 167 21 is_stmt 1 view .LVU246
	.loc 1 167 12 is_stmt 0 view .LVU247
	mov	r4, #1
.LBE187:
.LBE186:
	.loc 1 97 6 view .LVU248
	ldr	r5, [sp, #12]
.LBB216:
.LBB215:
.LBB211:
	.loc 1 168 11 view .LVU249
	add	r9, r10, r10, lsl #3
	b	.L21
.LVL45:
.L15:
	.loc 1 170 77 discriminator 3 view .LVU250
	ldr	r3, [ip]
	cmp	r3, #0
.LBB207:
.LBB194:
	.loc 1 172 14 discriminator 3 view .LVU251
	mvneq	r6, #0
	addeq	r0, r0, r5
.LBE194:
.LBE207:
	.loc 1 170 77 discriminator 3 view .LVU252
	beq	.L17
.L16:
	.loc 1 170 77 discriminator 3 view .LVU253
.LBE211:
	.loc 1 167 33 is_stmt 1 discriminator 2 view .LVU254
	add	r4, r4, #1
.LVL46:
	.loc 1 167 21 discriminator 2 view .LVU255
	cmp	r4, #8
	add	r5, r5, #4
	beq	.L56
.LVL47:
.L21:
.LBB212:
	.loc 1 168 4 view .LVU256
	.loc 1 168 24 is_stmt 0 view .LVU257
	ldr	r0, [fp, #676]
	.loc 1 168 11 view .LVU258
	add	r3, r9, r4
	add	r3, r3, r7
	ldr	ip, [r0, r3, lsl #2]
.LVL48:
	.loc 1 170 4 is_stmt 1 view .LVU259
	.loc 1 170 14 is_stmt 0 view .LVU260
	add	r3, ip, #65536
	.loc 1 170 7 view .LVU261
	ldr	r1, [r3, #668]
	ldr	r2, [r3, #672]
	cmp	r1, r2
	bne	.L15
	.loc 1 170 51 discriminator 2 view .LVU262
	ldrb	r3, [r3, #676]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L16
	b	.L15
.LVL49:
.L57:
.LBB208:
.LBB195:
	.loc 1 172 48 is_stmt 1 discriminator 2 view .LVU263
	add	r6, r6, #1
.LVL50:
	.loc 1 172 34 discriminator 2 view .LVU264
	cmp	r6, #1
	movgt	r2, #0
	andle	r2, r2, #1
.LVL51:
	.loc 1 172 34 is_stmt 0 discriminator 2 view .LVU265
	cmp	r2, #0
	add	r0, r0, #36
	beq	.L19
.LVL52:
.L17:
.LBB191:
	.loc 1 173 35 is_stmt 1 view .LVU266
.LBE191:
.LBE195:
.LBE208:
.LBE212:
	.loc 1 167 12 is_stmt 0 view .LVU267
	mov	r1, r0
.LBB213:
.LBB209:
.LBB196:
.LBB192:
	.loc 1 173 15 view .LVU268
	mvn	r3, #0
.LVL53:
.L18:
	.loc 1 174 7 is_stmt 1 view .LVU269
	.loc 1 174 38 is_stmt 0 view .LVU270
	ldr	r2, [r1], #4
	.loc 1 173 49 view .LVU271
	add	r3, r3, #1
.LVL54:
	.loc 1 174 48 view .LVU272
	ldrb	lr, [r2, #12]	@ zero_extendqisi2
	.loc 1 174 10 view .LVU273
	subs	r2, lr, #0
	movne	r2, #1
.LVL55:
	.loc 1 173 49 is_stmt 1 view .LVU274
	.loc 1 173 35 view .LVU275
	cmp	r3, #1
	movgt	r8, #0
	andle	r8, r2, #1
	cmp	r8, #0
	bne	.L18
	b	.L57
.L59:
	.align	3
.L58:
	.word	12816
	.word	0
	.word	1158676480
	.word	0
	.word	1098907648
	.word	.LANCHOR0
	.word	16767376
	.word	DirectionToOffset
	.word	_seethroughTable
	.word	DirectionOpposite
	.word	.LANCHOR0+680
	.word	.LANCHOR0+652
	.word	DirectionToOffset+72
	.word	11919640
	.word	2979910
	.word	12816
	.word	.LC0
	.word	.LC1
	.word	.LANCHOR0+668
.LVL56:
.L19:
	.loc 1 173 35 is_stmt 0 view .LVU276
.LBE192:
.LBE196:
	.loc 1 176 5 is_stmt 1 view .LVU277
	.loc 1 176 8 is_stmt 0 view .LVU278
	cmp	lr, #0
	beq	.L16
.LBB197:
	.loc 1 176 16 is_stmt 1 discriminator 1 view .LVU279
	ldr	r6, [fp, #1076]
.LVL57:
	.loc 1 176 57 is_stmt 0 discriminator 1 view .LVU280
	mov	r3, #4
.LVL58:
.LBB198:
.LBB199:
	.file 7 "/home/tobi/Dokumente/Craftus-Next/include/world/WorkQueue.h"
	.loc 7 44 2 discriminator 1 view .LVU281
	mov	lr, #1
.LVL59:
	.loc 7 44 2 discriminator 1 view .LVU282
	str	r2, [sp, #52]
	.loc 7 46 2 discriminator 1 view .LVU283
	add	r1, r6, #20
.LVL60:
	.loc 7 46 2 discriminator 1 view .LVU284
	add	r2, sp, #72
	mov	r8, r2
	vmov	s16, r1	@ int
.LBE199:
.LBE198:
	.loc 1 176 57 discriminator 1 view .LVU285
	str	r3, [sp, #44]
.LBB203:
.LBB200:
	.loc 7 45 43 discriminator 1 view .LVU286
	ldr	r3, [ip, #4]
	.loc 7 43 24 discriminator 1 view .LVU287
	ldr	r1, [ip, #8]
	.loc 7 45 43 discriminator 1 view .LVU288
	add	r3, r3, lr
	str	ip, [sp, #48]
	add	r2, sp, #44
	.loc 7 43 24 discriminator 1 view .LVU289
	str	r1, [sp, #16]
	ldm	r2, {r0, r1, r2}
	stm	r8, {r0, r1, r2}
.LVL61:
	.loc 7 43 24 discriminator 1 view .LVU290
.LBE200:
.LBI198:
	.loc 7 42 13 is_stmt 1 discriminator 1 view .LVU291
.LBB201:
	.loc 7 43 2 discriminator 1 view .LVU292
	.loc 7 44 2 discriminator 1 view .LVU293
	.loc 7 45 43 is_stmt 0 discriminator 1 view .LVU294
	str	r3, [ip, #4]
	.loc 7 46 2 discriminator 1 view .LVU295
	vmov	r0, s16	@ int
	.loc 7 44 2 discriminator 1 view .LVU296
	str	lr, [ip]
	.loc 7 45 2 is_stmt 1 discriminator 1 view .LVU297
	.loc 7 45 43 discriminator 1 view .LVU298
	.loc 7 46 2 discriminator 1 view .LVU299
	bl	LightLock_Lock
.LVL62:
	.loc 7 47 2 discriminator 1 view .LVU300
	.loc 7 47 4 is_stmt 0 discriminator 1 view .LVU301
	mov	r3, #12
	mov	r0, r6
	add	r2, r6, #8
	add	r1, r6, #4
	bl	vec_expand_
.LVL63:
	.loc 7 47 139 discriminator 1 view .LVU302
	cmp	r0, #0
	bne	.L20
	.loc 7 47 179 view .LVU303
	ldr	r2, [r6, #4]
	.loc 7 47 157 view .LVU304
	ldr	r3, [r6]
	.loc 7 47 187 view .LVU305
	add	r1, r2, #1
	str	r1, [r6, #4]
.LVL64:
	.loc 7 47 191 view .LVU306
	ldr	r1, [sp, #16]
	add	r2, r2, r2, lsl #1
	str	r1, [sp, #80]
	add	r3, r3, r2, lsl #2
	ldm	r8, {r0, r1, r2}
	stm	r3, {r0, r1, r2}
.LVL65:
.L20:
	.loc 7 48 2 is_stmt 1 view .LVU307
	vmov	r0, s16	@ int
	bl	LightLock_Unlock
.LVL66:
	.loc 7 50 2 view .LVU308
.LBE201:
.LBE203:
.LBE197:
.LBE209:
.LBE213:
	.loc 1 167 33 is_stmt 0 view .LVU309
	add	r4, r4, #1
.LVL67:
.LBB214:
.LBB210:
.LBB205:
.LBB204:
.LBB202:
	.loc 7 50 2 view .LVU310
	add	r0, r6, #12
	bl	LightEvent_Signal
.LVL68:
	.loc 7 50 2 view .LVU311
.LBE202:
.LBE204:
.LBE205:
.LBE210:
.LBE214:
	.loc 1 167 33 is_stmt 1 view .LVU312
	.loc 1 167 21 view .LVU313
	cmp	r4, #8
	add	r5, r5, #4
	bne	.L21
.LVL69:
.L56:
	.loc 1 167 21 is_stmt 0 view .LVU314
.LBE215:
	.loc 1 166 32 is_stmt 1 discriminator 2 view .LVU315
	.loc 1 166 20 is_stmt 0 discriminator 2 view .LVU316
	ldr	r3, [sp, #12]
	.loc 1 166 32 discriminator 2 view .LVU317
	add	r10, r10, #1
.LVL70:
	.loc 1 166 20 is_stmt 1 discriminator 2 view .LVU318
	add	r3, r3, #36
	cmp	r10, #8
	str	r3, [sp, #12]
	bne	.L14
.LBE216:
	.loc 1 181 2 view .LVU319
	mov	r2, #255
	mov	r1, #7
	mov	r0, #1
	bl	C3D_AlphaTest
.LVL71:
	.loc 1 183 2 view .LVU320
	.loc 1 184 2 view .LVU321
	.loc 1 185 2 view .LVU322
	.loc 1 185 29 is_stmt 0 view .LVU323
	ldr	r4, [fp, #664]
.LVL72:
	.loc 1 185 5 view .LVU324
	cmp	r4, #0
	ble	.L23
	.loc 1 185 44 is_stmt 1 discriminator 1 view .LVU325
.LBB217:
	.loc 1 188 3 is_stmt 0 discriminator 1 view .LVU326
	mov	r9, #0
	ldr	r8, .L58+60
	ldr	r7, [sp, #24]
.LBE217:
	.loc 1 185 54 discriminator 1 view .LVU327
	sub	r4, r4, #1
.LVL73:
	.loc 1 185 101 is_stmt 1 discriminator 1 view .LVU328
	add	r6, sp, #72
.L24:
	.loc 1 185 115 is_stmt 0 discriminator 4 view .LVU329
	ldr	r5, [fp, #660]
.LVL74:
.LBB218:
	.loc 1 186 3 is_stmt 1 discriminator 4 view .LVU330
	.loc 1 187 3 discriminator 4 view .LVU331
	mov	r0, r6
	bl	BufInfo_Init
.LVL75:
	.loc 1 188 3 discriminator 4 view .LVU332
	.loc 1 188 56 is_stmt 0 discriminator 4 view .LVU333
	ldr	r2, [r5, r4, lsl #3]
	.loc 1 188 3 discriminator 4 view .LVU334
	mov	r3, #4
	.loc 1 188 56 discriminator 4 view .LVU335
	add	r2, r2, #8192
	.loc 1 188 3 discriminator 4 view .LVU336
	ldr	r1, [r2, #28]
	mov	r0, r6
	mov	r2, #16
	strd	r8, [sp]
	bl	BufInfo_Add
.LVL76:
	.loc 1 189 3 is_stmt 1 discriminator 4 view .LVU337
	mov	r0, r6
	bl	C3D_SetBufInfo
.LVL77:
	.loc 1 190 3 discriminator 4 view .LVU338
	mov	r1, #0
	.loc 1 190 51 is_stmt 0 discriminator 4 view .LVU339
	ldr	r3, [r5, r4, lsl #3]
	.loc 1 190 3 discriminator 4 view .LVU340
	mov	r0, r1
	.loc 1 190 51 discriminator 4 view .LVU341
	add	r3, r3, #8192
	.loc 1 190 3 discriminator 4 view .LVU342
	ldr	r2, [r3, #36]
	bl	C3D_DrawArrays
.LVL78:
	.loc 1 192 3 is_stmt 1 discriminator 4 view .LVU343
	.loc 1 192 32 is_stmt 0 discriminator 4 view .LVU344
	ldr	r3, [r5, r4, lsl #3]
.LBE218:
	.loc 1 185 158 discriminator 4 view .LVU345
	sub	r4, r4, #1
.LVL79:
.LBB219:
	.loc 1 192 32 discriminator 4 view .LVU346
	add	r3, r3, #8192
	.loc 1 192 14 discriminator 4 view .LVU347
	ldr	r3, [r3, #36]
.LBE219:
	.loc 1 185 101 discriminator 4 view .LVU348
	cmn	r4, #1
.LBB220:
	.loc 1 192 14 discriminator 4 view .LVU349
	add	r7, r7, r3
.LVL80:
	.loc 1 192 14 discriminator 4 view .LVU350
.LBE220:
	.loc 1 185 158 is_stmt 1 discriminator 4 view .LVU351
	.loc 1 185 101 discriminator 4 view .LVU352
	bne	.L24
	str	r7, [sp, #24]
.LVL81:
.L23:
	.loc 1 194 2 view .LVU353
	mov	r2, #0
	mov	r1, #6
	mov	r0, r2
	bl	C3D_AlphaTest
.LVL82:
	.loc 1 196 2 view .LVU354
	ldr	r3, [sp, #24]
	ldr	r1, [sp, #32]
	mov	r2, #0
	ldr	r0, .L58+64
	bl	DebugUI_Text
.LVL83:
	.loc 1 197 2 view .LVU355
	.loc 1 197 59 is_stmt 0 view .LVU356
	ldr	r3, [fp, #676]
	.loc 1 197 2 view .LVU357
	ldr	r2, [fp, #1076]
	.loc 1 197 59 view .LVU358
	add	r3, r3, #11862016
	add	r3, r3, #57344
	ldr	r1, [r3, #440]
	.loc 1 197 2 view .LVU359
	ldr	r0, .L58+68
	ldr	r3, [r2, #4]
	ldrb	r2, [r1, #12]	@ zero_extendqisi2
	ldr	r1, [r1]
	.loc 1 199 1 view .LVU360
	add	sp, sp, #228
	.cfi_remember_state
	.cfi_def_cfa_offset 68
	@ sp needed
	vldm	sp!, {d8-d11}
	.cfi_restore 86
	.cfi_restore 87
	.cfi_restore 84
	.cfi_restore 85
	.cfi_restore 82
	.cfi_restore 83
	.cfi_restore 80
	.cfi_restore 81
	.cfi_def_cfa_offset 36
.LVL84:
	.loc 1 199 1 view .LVU361
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
	.cfi_def_cfa_offset 0
.LVL85:
	.loc 1 197 2 view .LVU362
	b	DebugUI_Text
.LVL86:
.L55:
	.cfi_restore_state
.LBB221:
.LBB182:
	.loc 1 129 4 is_stmt 1 view .LVU363
	.loc 1 129 6 is_stmt 0 view .LVU364
	ldr	r2, .L58+72
	mov	r3, #8
	sub	r1, r2, #4
	sub	r0, r2, #8
	bl	vec_expand_
.LVL87:
	.loc 1 129 169 view .LVU365
	cmp	r0, #0
	bne	.L7
	.loc 1 129 223 discriminator 1 view .LVU366
	ldr	r2, [fp, #664]
	.loc 1 129 194 discriminator 1 view .LVU367
	ldr	r3, [fp, #660]
	.loc 1 129 231 discriminator 1 view .LVU368
	add	r1, r2, #1
	str	r1, [fp, #664]
	.loc 1 129 235 discriminator 1 view .LVU369
	ldr	r1, [sp, #12]
	str	r1, [r3, r2, lsl #3]
	.loc 1 129 200 discriminator 1 view .LVU370
	add	r3, r3, r2, lsl #3
	.loc 1 129 235 discriminator 1 view .LVU371
	str	r8, [r3, #4]
	b	.L7
.LVL88:
.L54:
	.loc 1 129 235 discriminator 1 view .LVU372
.LBE182:
.LBB183:
	.loc 1 116 4 is_stmt 1 view .LVU373
	.loc 1 126 17 is_stmt 0 view .LVU374
	ldr	r3, [sp, #32]
	.loc 1 116 35 view .LVU375
	ldr	r1, [fp, #676]
	.loc 1 126 17 view .LVU376
	add	r3, r3, #1
	.loc 1 116 132 view .LVU377
	ldr	r2, [r1, #32]
	.loc 1 126 17 view .LVU378
	str	r3, [sp, #32]
.LVL89:
	.loc 1 116 132 view .LVU379
	ldr	r3, [r8, #16]
	sub	r2, r2, #4
	sub	r3, r3, r2
	add	r2, r3, r3, lsl #3
	.loc 1 116 76 view .LVU380
	ldr	r3, [r0]
	.loc 1 116 132 view .LVU381
	ldr	r1, [r1, #36]
	add	r3, r3, r3, lsl #3
	add	r3, r3, r2, lsl #3
	ldr	r2, [r8, #20]
	sub	r1, r1, #4
	add	r3, fp, r3
	sub	r2, r2, r1
	ldrb	r1, [r3, r2]	@ zero_extendqisi2
	.loc 1 119 4 view .LVU382
	add	r4, sp, #72
	.loc 1 116 132 view .LVU383
	orr	r1, r1, #2
	strb	r1, [r3, r2]
	.loc 1 118 4 is_stmt 1 view .LVU384
	.loc 1 119 4 view .LVU385
	mov	r0, r4
	bl	BufInfo_Init
.LVL90:
	.loc 1 120 4 view .LVU386
	ldr	r5, [sp, #16]
	mov	r3, #4
	ldr	r1, [r5, #20]
	mov	r2, #16
	vstr.64	d8, [sp]	@ int
	mov	r0, r4
	bl	BufInfo_Add
.LVL91:
	.loc 1 121 4 view .LVU387
	mov	r0, r4
	bl	C3D_SetBufInfo
.LVL92:
	.loc 1 122 4 view .LVU388
	mov	r1, #0
	ldr	r2, [r5, #32]
	mov	r0, r1
	bl	C3D_DrawArrays
.LVL93:
	.loc 1 124 4 view .LVU389
	.loc 1 124 15 is_stmt 0 view .LVU390
	ldr	r2, [sp, #24]
	ldr	r3, [r5, #32]
	add	r3, r2, r3
	str	r3, [sp, #24]
.LVL94:
	.loc 1 126 4 is_stmt 1 view .LVU391
	.loc 1 126 4 is_stmt 0 view .LVU392
	b	.L5
.LVL95:
.L2:
	.loc 1 126 4 view .LVU393
.LBE183:
.LBE221:
	.loc 1 105 203 discriminator 1 view .LVU394
	mov	ip, #6
	.loc 1 105 220 discriminator 1 view .LVU395
	add	r3, r4, r4, lsl #8
	.loc 1 105 191 discriminator 1 view .LVU396
	ldr	r2, [fp, #652]
	.loc 1 105 220 discriminator 1 view .LVU397
	add	r3, r4, r3, lsl #1
	.loc 1 105 167 discriminator 1 view .LVU398
	ldr	r1, [fp, #648]
	.loc 1 105 220 discriminator 1 view .LVU399
	add	r3, r5, r3, lsl #4
	.loc 1 105 173 discriminator 1 view .LVU400
	add	r0, r2, r2, lsl #1
	.loc 1 105 220 discriminator 1 view .LVU401
	add	r3, r3, #24
	.loc 1 105 199 discriminator 1 view .LVU402
	add	r2, r2, #1
	str	r2, [fp, #652]
	.loc 1 105 203 discriminator 1 view .LVU403
	str	r3, [r1, r0, lsl #2]
	.loc 1 105 173 discriminator 1 view .LVU404
	add	r3, r1, r0, lsl #2
	.loc 1 105 203 discriminator 1 view .LVU405
	str	r5, [r3, #4]
	strb	ip, [r3, #8]
	b	.L3
.LVL96:
.L25:
	.loc 1 97 22 view .LVU406
	mov	r3, #0
	str	r3, [sp, #32]
	.loc 1 97 6 view .LVU407
	str	r3, [sp, #24]
	b	.L4
	.cfi_endproc
.LFE226:
	.size	renderWorld, .-renderWorld
	.section	.text.WorldRenderer_Init,"ax",%progbits
	.align	2
	.global	WorldRenderer_Init
	.syntax unified
	.arm
	.fpu vfp
	.type	WorldRenderer_Init, %function
WorldRenderer_Init:
.LVL97:
.LFB224:
	.loc 1 50 104 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 1024
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 51 2 view .LVU409
	.loc 1 50 104 is_stmt 0 view .LVU410
	push	{r4, r5, r6, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
	.loc 1 56 2 view .LVU411
	mov	r4, #0
	.loc 1 50 104 view .LVU412
	mov	r6, r0
	.loc 1 51 8 view .LVU413
	ldr	ip, .L71+8
	.loc 1 50 104 view .LVU414
	sub	sp, sp, #1024
	.cfi_def_cfa_offset 1040
	.loc 1 59 2 view .LVU415
	add	r0, ip, #680
.LVL98:
	.loc 1 56 2 view .LVU416
	str	r4, [ip, #648]
	.loc 1 57 2 view .LVU417
	str	r4, [ip, #660]
	.loc 1 56 2 view .LVU418
	str	r4, [ip, #652]
	str	r4, [ip, #656]
	.loc 1 57 2 view .LVU419
	str	r4, [ip, #664]
	str	r4, [ip, #668]
	.loc 1 51 8 view .LVU420
	str	r1, [ip, #676]
	.loc 1 52 2 is_stmt 1 view .LVU421
	.loc 1 54 12 is_stmt 0 view .LVU422
	str	r2, [ip, #1076]
	.loc 1 53 20 view .LVU423
	str	r3, [ip, #1080]
	.loc 1 52 9 view .LVU424
	str	r6, [ip, #672]
	.loc 1 53 2 is_stmt 1 view .LVU425
	.loc 1 54 2 view .LVU426
	.loc 1 56 2 view .LVU427
	.loc 1 57 2 view .LVU428
	.loc 1 59 2 view .LVU429
	bl	Camera_Init
.LVL99:
	.loc 1 61 2 view .LVU430
	bl	Cursor_Init
.LVL100:
	.loc 1 62 2 view .LVU431
	bl	Hand_Init
.LVL101:
	.loc 1 64 2 view .LVU432
	.loc 1 65 2 view .LVU433
.LBB222:
	.loc 1 65 7 view .LVU434
	.loc 1 65 20 view .LVU435
	mov	r2, sp
.LBE222:
	.loc 1 62 2 is_stmt 0 view .LVU436
	mov	r1, #1
	mov	r3, r4
.LBB226:
.LBB223:
	.loc 1 71 24 view .LVU437
	vldr.32	s12, .L71
	vldr.32	s13, .L71+4
	mov	r0, #0
	b	.L65
.LVL102:
.L70:
	.loc 1 71 16 is_stmt 1 view .LVU438
	.loc 1 69 11 is_stmt 0 view .LVU439
	cmp	r3, #1
	beq	.L62
	.loc 1 71 6 view .LVU440
	cmp	r3, #128
	.loc 1 71 24 view .LVU441
	vstrne.32	s13, [r2]
	.loc 1 72 3 is_stmt 1 view .LVU442
	.loc 1 66 9 is_stmt 0 view .LVU443
	vmovne.f32	s15, s13
	vmoveq.f32	s15, s13
.LVL103:
.L66:
	.loc 1 72 14 is_stmt 1 discriminator 1 view .LVU444
	.loc 1 72 34 is_stmt 0 discriminator 1 view .LVU445
	vldr.32	s14, [r2, #-4]
	vsub.f32	s15, s15, s14
.LBE223:
	.loc 1 65 20 discriminator 1 view .LVU446
	cmp	r1, #129
.LBB224:
	.loc 1 72 28 discriminator 1 view .LVU447
	vstr.32	s15, [r2, #508]
.LBE224:
	.loc 1 65 29 is_stmt 1 discriminator 1 view .LVU448
.LVL104:
	.loc 1 65 20 discriminator 1 view .LVU449
	beq	.L64
.LVL105:
.L67:
	.loc 1 65 20 is_stmt 0 discriminator 1 view .LVU450
	add	r3, r3, #1
	add	r1, r1, #1
	add	r2, r2, #4
.L65:
.LVL106:
.LBB225:
	.loc 1 66 3 is_stmt 1 view .LVU451
	.loc 1 67 3 view .LVU452
	.loc 1 69 8 view .LVU453
	.loc 1 71 3 view .LVU454
	.loc 1 67 6 is_stmt 0 view .LVU455
	cmp	r3, #0
	bne	.L70
.LVL107:
	.loc 1 71 3 is_stmt 1 view .LVU456
	.loc 1 71 16 view .LVU457
	.loc 1 71 24 is_stmt 0 view .LVU458
	str	r0, [r2]	@ float
	.loc 1 72 3 is_stmt 1 view .LVU459
	.loc 1 72 3 is_stmt 0 view .LVU460
	b	.L67
.LVL108:
.L62:
	.loc 1 71 3 is_stmt 1 view .LVU461
	.loc 1 71 16 view .LVU462
	.loc 1 71 24 is_stmt 0 view .LVU463
	vstr.32	s12, [r2]
	.loc 1 72 3 is_stmt 1 view .LVU464
	.loc 1 70 8 is_stmt 0 view .LVU465
	vmov.f32	s15, s12
	b	.L66
.LVL109:
.L64:
	.loc 1 70 8 view .LVU466
.LBE225:
.LBE226:
	.loc 1 74 2 is_stmt 1 view .LVU467
	mov	r1, sp
	ldr	r0, .L71+12
	bl	FogLut_FromArray
.LVL110:
	.loc 1 75 2 view .LVU468
	mov	r2, #0
	mov	r0, #5
	mov	r1, r2
	bl	C3D_FogGasMode
.LVL111:
	.loc 1 76 2 view .LVU469
	ldr	r0, .L71+16
	bl	C3D_FogColor
.LVL112:
	.loc 1 77 2 view .LVU470
	ldr	r0, .L71+12
	bl	C3D_FogLutBind
.LVL113:
	.loc 1 79 2 view .LVU471
	bl	Clouds_Init
.LVL114:
	.loc 1 80 1 is_stmt 0 view .LVU472
	add	sp, sp, #1024
	.cfi_def_cfa_offset 16
	@ sp needed
	pop	{r4, r5, r6, pc}
.LVL115:
.L72:
	.loc 1 80 1 view .LVU473
	.align	2
.L71:
	.word	1063675494
	.word	1065353216
	.word	.LANCHOR0
	.word	.LANCHOR0+1084
	.word	16767376
	.cfi_endproc
.LFE224:
	.size	WorldRenderer_Init, .-WorldRenderer_Init
	.section	.text.WorldRenderer_Deinit,"ax",%progbits
	.align	2
	.global	WorldRenderer_Deinit
	.syntax unified
	.arm
	.fpu vfp
	.type	WorldRenderer_Deinit, %function
WorldRenderer_Deinit:
.LFB225:
	.loc 1 81 29 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 82 2 view .LVU475
	.loc 1 81 29 is_stmt 0 view .LVU476
	push	{r4, r5, r6, r7, r8, lr}
	.cfi_def_cfa_offset 24
	.cfi_offset 4, -24
	.cfi_offset 5, -20
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	.cfi_offset 8, -8
	.cfi_offset 14, -4
	.loc 1 82 26 view .LVU477
	ldr	r6, .L75
	.loc 1 82 35 view .LVU478
	mov	r4, #0
	.loc 1 82 4 view .LVU479
	mov	r7, r6
	.loc 1 83 4 view .LVU480
	mov	r5, r6
	.loc 1 82 4 view .LVU481
	ldr	r0, [r7, #648]!
	bl	free
.LVL116:
	.loc 1 83 4 view .LVU482
	ldr	r0, [r5, #660]!
	.loc 1 82 35 view .LVU483
	str	r4, [r6, #648]
	str	r4, [r7, #4]
	str	r4, [r7, #8]
	.loc 1 83 2 is_stmt 1 view .LVU484
	.loc 1 83 4 is_stmt 0 view .LVU485
	bl	free
.LVL117:
	.loc 1 83 40 view .LVU486
	str	r4, [r6, #660]
	str	r4, [r5, #4]
	str	r4, [r5, #8]
	.loc 1 84 2 is_stmt 1 view .LVU487
	bl	Cursor_Deinit
.LVL118:
	.loc 1 86 2 view .LVU488
	bl	Hand_Deinit
.LVL119:
	.loc 1 88 2 view .LVU489
	.loc 1 89 1 is_stmt 0 view .LVU490
	pop	{r4, r5, r6, r7, r8, lr}
	.cfi_restore 14
	.cfi_restore 8
	.cfi_restore 7
	.cfi_restore 6
	.cfi_restore 5
	.cfi_restore 4
	.cfi_def_cfa_offset 0
	.loc 1 88 2 view .LVU491
	b	Clouds_Deinit
.LVL120:
.L76:
	.align	2
.L75:
	.word	.LANCHOR0
	.cfi_endproc
.LFE225:
	.size	WorldRenderer_Deinit, .-WorldRenderer_Deinit
	.section	.text.WorldRenderer_Render,"ax",%progbits
	.align	2
	.global	WorldRenderer_Render
	.syntax unified
	.arm
	.fpu vfp
	.type	WorldRenderer_Render, %function
WorldRenderer_Render:
.LVL121:
.LFB227:
	.loc 1 201 38 is_stmt 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 202 2 view .LVU493
	.loc 1 201 38 is_stmt 0 view .LVU494
	push	{r4, r5, lr}
	.cfi_def_cfa_offset 12
	.cfi_offset 4, -12
	.cfi_offset 5, -8
	.cfi_offset 14, -4
	.loc 1 202 2 view .LVU495
	ldr	r4, .L84
	.loc 1 201 38 view .LVU496
	sub	sp, sp, #20
	.cfi_def_cfa_offset 32
	.loc 1 202 2 view .LVU497
	ldr	r1, [r4, #672]
	add	r0, r4, #680
	bl	Camera_Update
.LVL122:
	.loc 1 204 2 is_stmt 1 view .LVU498
	.loc 1 204 17 is_stmt 0 view .LVU499
	bl	Block_GetTextureMap
.LVL123:
	mov	r1, r0
	.loc 1 204 2 view .LVU500
	mov	r0, #0
	bl	C3D_TexBind
.LVL124:
	.loc 1 206 2 is_stmt 1 view .LVU501
.LBB235:
.LBB236:
.LBB237:
	.file 8 "/opt/devkitpro/libctru/include/c3d/uniforms.h"
	.loc 8 35 10 is_stmt 0 view .LVU502
	add	r5, r4, #808
.LBB238:
.LBB239:
	.loc 8 19 31 view .LVU503
	mov	r2, #1
.LBE239:
.LBE238:
	.loc 8 35 10 view .LVU504
	mov	lr, r5
.LBB243:
.LBB240:
	.loc 8 19 31 view .LVU505
	ldr	r3, .L84+4
.LBE240:
.LBE243:
.LBE237:
.LBE236:
.LBE235:
	.loc 1 206 2 view .LVU506
	ldr	r1, [r4, #1080]
.LVL125:
.LBB248:
.LBI235:
	.loc 8 38 20 is_stmt 1 view .LVU507
	.loc 8 40 2 view .LVU508
.LBB247:
.LBI236:
	.loc 8 30 20 view .LVU509
.LBB246:
.LBB244:
.LBB241:
	.loc 8 18 16 view .LVU510
	.loc 8 19 3 view .LVU511
	.loc 8 20 9 is_stmt 0 view .LVU512
	ldr	ip, .L84+8
	.loc 8 19 31 view .LVU513
	strb	r2, [r3, r1]!
	.loc 8 18 26 is_stmt 1 view .LVU514
.LVL126:
	.loc 8 18 16 view .LVU515
	.loc 8 19 3 view .LVU516
.LBE241:
.LBE244:
	.loc 8 35 10 is_stmt 0 view .LVU517
	add	ip, ip, r1, lsl #4
.LBB245:
.LBB242:
	.loc 8 19 31 view .LVU518
	strb	r2, [r3, #1]
	.loc 8 18 26 is_stmt 1 view .LVU519
.LVL127:
	.loc 8 18 16 view .LVU520
	.loc 8 19 3 view .LVU521
	.loc 8 19 31 is_stmt 0 view .LVU522
	strb	r2, [r3, #2]
	.loc 8 18 26 is_stmt 1 view .LVU523
.LVL128:
	.loc 8 18 16 view .LVU524
	.loc 8 19 3 view .LVU525
	.loc 8 19 31 is_stmt 0 view .LVU526
	strb	r2, [r3, #3]
	.loc 8 18 26 is_stmt 1 view .LVU527
.LVL129:
	.loc 8 18 16 view .LVU528
	.loc 8 20 2 view .LVU529
	.loc 8 20 2 is_stmt 0 view .LVU530
.LBE242:
.LBE245:
	.loc 8 34 2 is_stmt 1 view .LVU531
	.loc 8 34 16 view .LVU532
	.loc 8 35 10 is_stmt 0 view .LVU533
	ldmia	lr!, {r0, r1, r2, r3}
.LVL130:
	.loc 8 35 10 view .LVU534
	stmia	ip!, {r0, r1, r2, r3}
	ldmia	lr!, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2, r3}
	ldmia	lr!, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2, r3}
	ldm	lr, {r0, r1, r2, r3}
	stm	ip, {r0, r1, r2, r3}
.LVL131:
	.loc 8 35 10 view .LVU535
.LBE246:
.LBE247:
.LBE248:
	.loc 1 208 2 is_stmt 1 view .LVU536
	bl	renderWorld
.LVL132:
	.loc 1 210 2 view .LVU537
	.loc 1 210 60 is_stmt 0 view .LVU538
	ldr	r3, [r4, #672]
	.loc 1 210 2 view .LVU539
	mov	r1, r5
	vldr.32	s1, [r3, #8]
	vldr.32	s0, [r3]
	ldr	r2, [r4, #676]
	ldr	r0, [r4, #1080]
	bl	Clouds_Render
.LVL133:
	.loc 1 211 9 is_stmt 1 view .LVU540
	.loc 1 211 64 is_stmt 0 view .LVU541
	ldr	r3, [r4, #672]
	.loc 1 211 9 view .LVU542
	ldr	r1, [r3, #136]
	add	r1, r1, r1, lsl #1
	add	r1, r3, r1
	ldrb	r0, [r1, #145]	@ zero_extendqisi2
	ldrb	r2, [r1, #144]	@ zero_extendqisi2
	ldrb	r1, [r1, #146]	@ zero_extendqisi2
	orr	r2, r2, r0, lsl #8
	orr	r2, r2, r1, lsl #16
	bic	r2, r2, #-16777216
	ldr	r0, [r4, #1080]
	add	r1, r4, #680
	bl	Hand_Draw
.LVL134:
	.loc 1 213 2 is_stmt 1 view .LVU543
	.loc 1 213 12 is_stmt 0 view .LVU544
	ldr	r2, [r4, #672]
	.loc 1 213 5 view .LVU545
	ldrb	r3, [r2, #193]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L83
	.loc 1 216 1 view .LVU546
	add	sp, sp, #20
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	@ sp needed
	pop	{r4, r5, pc}
.L83:
	.cfi_restore_state
	.loc 1 214 3 is_stmt 1 view .LVU547
	ldrb	r1, [r2, #188]	@ zero_extendqisi2
	ldr	r3, [r2, #172]
	str	r1, [sp, #8]
	ldr	r1, [r2, #180]
	ldr	r0, [r4, #1080]
	str	r1, [sp, #4]
	ldr	ip, [r2, #176]
	mov	r1, r5
	ldr	r2, [r4, #676]
	str	ip, [sp]
	bl	Cursor_Draw
.LVL135:
	.loc 1 216 1 is_stmt 0 view .LVU548
	add	sp, sp, #20
	.cfi_def_cfa_offset 12
	@ sp needed
	pop	{r4, r5, pc}
.L85:
	.align	2
.L84:
	.word	.LANCHOR0
	.word	C3D_FVUnifDirty
	.word	C3D_FVUnif
	.cfi_endproc
.LFE227:
	.size	WorldRenderer_Render, .-WorldRenderer_Render
	.global	sky_time
	.bss
	.align	2
	.set	.LANCHOR0,. + 0
	.type	chunkRendered, %object
	.size	chunkRendered, 648
chunkRendered:
	.space	648
	.type	renderingQueue, %object
	.size	renderingQueue, 12
renderingQueue:
	.space	12
	.type	transparentClusters, %object
	.size	transparentClusters, 12
transparentClusters:
	.space	12
	.type	player, %object
	.size	player, 4
player:
	.space	4
	.type	world, %object
	.size	world, 4
world:
	.space	4
	.type	camera, %object
	.size	camera, 396
camera:
	.space	396
	.type	workqueue, %object
	.size	workqueue, 4
workqueue:
	.space	4
	.type	projectionUniform, %object
	.size	projectionUniform, 4
projectionUniform:
	.space	4
	.type	fogLut, %object
	.size	fogLut, 512
fogLut:
	.space	512
	.type	sky_time, %object
	.size	sky_time, 4
sky_time:
	.space	4
	.text
.Letext0:
	.file 9 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h"
	.file 10 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_stdint.h"
	.file 11 "/home/tobi/Dokumente/Craftus-Next/include/world/Direction.h"
	.file 12 "/home/tobi/Dokumente/Craftus-Next/include/blocks/Block.h"
	.file 13 "/home/tobi/Dokumente/Craftus-Next/include/misc/Xorshift.h"
	.file 14 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/11.2.0/include/stddef.h"
	.file 15 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/lock.h"
	.file 16 "/home/tobi/Dokumente/Craftus-Next/include/rendering/VBOCache.h"
	.file 17 "/opt/devkitpro/libctru/include/3ds/types.h"
	.file 18 "/opt/devkitpro/libctru/include/3ds/synchronization.h"
	.file 19 "/opt/devkitpro/libctru/include/3ds/services/csnd.h"
	.file 20 "/opt/devkitpro/libctru/include/3ds/services/ndm.h"
	.file 21 "/opt/devkitpro/libctru/include/3ds/gpu/enums.h"
	.file 22 "/opt/devkitpro/libctru/include/3ds/ndsp/channel.h"
	.file 23 "/opt/devkitpro/libctru/include/3ds/applets/error.h"
	.file 24 "/home/tobi/Dokumente/Craftus-Next/include/blocks/Item.h"
	.file 25 "/home/tobi/Dokumente/Craftus-Next/include/inventory/ItemStack.h"
	.file 26 "/home/tobi/Dokumente/Craftus-Next/include/misc/Raycast.h"
	.file 27 "/home/tobi/Dokumente/Craftus-Next/include/entity/Player.h"
	.file 28 "/opt/devkitpro/libctru/include/c3d/types.h"
	.file 29 "/opt/devkitpro/libctru/include/c3d/buffers.h"
	.file 30 "/opt/devkitpro/libctru/include/c3d/texture.h"
	.file 31 "/opt/devkitpro/libctru/include/c3d/fog.h"
	.file 32 "/home/tobi/Dokumente/Craftus-Next/include/rendering/Camera.h"
	.file 33 "/home/tobi/Dokumente/Craftus-Next/include/gui/DebugUI.h"
	.file 34 "/opt/devkitpro/libctru/include/c3d/effect.h"
	.file 35 "/opt/devkitpro/libctru/include/c3d/base.h"
	.file 36 "/home/tobi/Dokumente/Craftus-Next/dependencies/vec/vec.h"
	.file 37 "/home/tobi/Dokumente/Craftus-Next/include/rendering/Cursor.h"
	.file 38 "/home/tobi/Dokumente/Craftus-Next/include/rendering/Hand.h"
	.file 39 "/home/tobi/Dokumente/Craftus-Next/include/rendering/Clouds.h"
	.file 40 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdlib.h"
	.file 41 "/opt/devkitpro/devkitARM/arm-none-eabi/include/string.h"
	.file 42 "<built-in>"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x2378
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x39
	.4byte	.LASF382
	.byte	0x1d
	.4byte	.LASF383
	.4byte	.LASF384
	.4byte	.LLRL86
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x10
	.byte	0x4
	.byte	0x4
	.4byte	.LASF0
	.uleb128 0x3a
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x10
	.byte	0x8
	.byte	0x7
	.4byte	.LASF1
	.uleb128 0x10
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.uleb128 0x5
	.4byte	.LASF5
	.byte	0x9
	.byte	0x2b
	.byte	0x17
	.4byte	0x4e
	.uleb128 0x10
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x10
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x5
	.4byte	.LASF6
	.byte	0x9
	.byte	0x39
	.byte	0x1c
	.4byte	0x68
	.uleb128 0x10
	.byte	0x2
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x5
	.4byte	.LASF8
	.byte	0x9
	.byte	0x4d
	.byte	0x12
	.4byte	0x7b
	.uleb128 0x10
	.byte	0x4
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x5
	.4byte	.LASF10
	.byte	0x9
	.byte	0x4f
	.byte	0x1b
	.4byte	0x8e
	.uleb128 0x10
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x10
	.byte	0x8
	.byte	0x5
	.4byte	.LASF12
	.uleb128 0x5
	.4byte	.LASF13
	.byte	0x9
	.byte	0x69
	.byte	0x20
	.4byte	0x34
	.uleb128 0x1d
	.4byte	0x2d
	.uleb128 0x10
	.byte	0x4
	.byte	0x7
	.4byte	.LASF14
	.uleb128 0x5
	.4byte	.LASF15
	.byte	0xa
	.byte	0x18
	.byte	0x13
	.4byte	0x42
	.uleb128 0x1d
	.4byte	0xb4
	.uleb128 0x5
	.4byte	.LASF16
	.byte	0xa
	.byte	0x24
	.byte	0x14
	.4byte	0x5c
	.uleb128 0x5
	.4byte	.LASF17
	.byte	0xa
	.byte	0x2c
	.byte	0x13
	.4byte	0x6f
	.uleb128 0x5
	.4byte	.LASF18
	.byte	0xa
	.byte	0x30
	.byte	0x14
	.4byte	0x82
	.uleb128 0x5
	.4byte	.LASF19
	.byte	0xa
	.byte	0x3c
	.byte	0x14
	.4byte	0x9c
	.uleb128 0x11
	.byte	0x1
	.4byte	0x4e
	.byte	0xb
	.byte	0x3
	.byte	0xe
	.4byte	0x12d
	.uleb128 0x1
	.4byte	.LASF20
	.byte	0
	.uleb128 0x1
	.4byte	.LASF21
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF22
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF23
	.byte	0x3
	.uleb128 0x1
	.4byte	.LASF24
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF25
	.byte	0x5
	.uleb128 0x1
	.4byte	.LASF26
	.byte	0x6
	.byte	0
	.uleb128 0x5
	.4byte	.LASF27
	.byte	0xb
	.byte	0xb
	.byte	0x3
	.4byte	0xf5
	.uleb128 0x8
	.4byte	0x2d
	.4byte	0x14f
	.uleb128 0x6
	.4byte	0xad
	.byte	0x6
	.uleb128 0x6
	.4byte	0xad
	.byte	0x2
	.byte	0
	.uleb128 0x21
	.4byte	.LASF28
	.byte	0xb
	.byte	0x13
	.byte	0xc
	.4byte	0x139
	.uleb128 0x8
	.4byte	0x12d
	.4byte	0x16b
	.uleb128 0x6
	.4byte	0xad
	.byte	0x6
	.byte	0
	.uleb128 0x21
	.4byte	.LASF29
	.byte	0xb
	.byte	0x14
	.byte	0x12
	.4byte	0x15b
	.uleb128 0x5
	.4byte	.LASF30
	.byte	0xc
	.byte	0x8
	.byte	0x11
	.4byte	0xb4
	.uleb128 0x11
	.byte	0x1
	.4byte	0x4e
	.byte	0xc
	.byte	0xa
	.byte	0x6
	.4byte	0x281
	.uleb128 0x1
	.4byte	.LASF31
	.byte	0
	.uleb128 0x1
	.4byte	.LASF32
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF33
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF34
	.byte	0x3
	.uleb128 0x1
	.4byte	.LASF35
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF36
	.byte	0x5
	.uleb128 0x1
	.4byte	.LASF37
	.byte	0x6
	.uleb128 0x1
	.4byte	.LASF38
	.byte	0x7
	.uleb128 0x1
	.4byte	.LASF39
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF40
	.byte	0x9
	.uleb128 0x1
	.4byte	.LASF41
	.byte	0xa
	.uleb128 0x1
	.4byte	.LASF42
	.byte	0xb
	.uleb128 0x1
	.4byte	.LASF43
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF44
	.byte	0xd
	.uleb128 0x1
	.4byte	.LASF45
	.byte	0xe
	.uleb128 0x1
	.4byte	.LASF46
	.byte	0xf
	.uleb128 0x1
	.4byte	.LASF47
	.byte	0x10
	.uleb128 0x1
	.4byte	.LASF48
	.byte	0x11
	.uleb128 0x1
	.4byte	.LASF49
	.byte	0x12
	.uleb128 0x1
	.4byte	.LASF50
	.byte	0x13
	.uleb128 0x1
	.4byte	.LASF51
	.byte	0x14
	.uleb128 0x1
	.4byte	.LASF52
	.byte	0x15
	.uleb128 0x1
	.4byte	.LASF53
	.byte	0x16
	.uleb128 0x1
	.4byte	.LASF54
	.byte	0x17
	.uleb128 0x1
	.4byte	.LASF55
	.byte	0x18
	.uleb128 0x1
	.4byte	.LASF56
	.byte	0x19
	.uleb128 0x1
	.4byte	.LASF57
	.byte	0x1a
	.uleb128 0x1
	.4byte	.LASF58
	.byte	0x1b
	.uleb128 0x1
	.4byte	.LASF59
	.byte	0x1c
	.uleb128 0x1
	.4byte	.LASF60
	.byte	0x1d
	.uleb128 0x1
	.4byte	.LASF61
	.byte	0x1e
	.uleb128 0x1
	.4byte	.LASF62
	.byte	0x1f
	.uleb128 0x1
	.4byte	.LASF63
	.byte	0x20
	.uleb128 0x1
	.4byte	.LASF64
	.byte	0x21
	.uleb128 0x1
	.4byte	.LASF65
	.byte	0x22
	.uleb128 0x1
	.4byte	.LASF66
	.byte	0x23
	.uleb128 0x1
	.4byte	.LASF67
	.byte	0x24
	.uleb128 0x1
	.4byte	.LASF68
	.byte	0x25
	.uleb128 0x1
	.4byte	.LASF69
	.byte	0x26
	.uleb128 0x1
	.4byte	.LASF70
	.byte	0x27
	.byte	0
	.uleb128 0x9
	.4byte	0x28d
	.uleb128 0x10
	.byte	0x1
	.byte	0x8
	.4byte	.LASF71
	.uleb128 0x1d
	.4byte	0x286
	.uleb128 0x5
	.4byte	.LASF72
	.byte	0xd
	.byte	0x5
	.byte	0x12
	.4byte	0xdd
	.uleb128 0x5
	.4byte	.LASF73
	.byte	0xe
	.byte	0xd1
	.byte	0x16
	.4byte	0xad
	.uleb128 0x5
	.4byte	.LASF74
	.byte	0xe
	.byte	0x8f
	.byte	0xd
	.4byte	0x2d
	.uleb128 0x10
	.byte	0x8
	.byte	0x4
	.4byte	.LASF75
	.uleb128 0x3b
	.byte	0x4
	.uleb128 0x5
	.4byte	.LASF76
	.byte	0xf
	.byte	0x7
	.byte	0x11
	.4byte	0xd1
	.uleb128 0x9
	.4byte	0x286
	.uleb128 0xc
	.byte	0x8
	.byte	0x10
	.byte	0x8
	.byte	0x9
	.4byte	0x2f4
	.uleb128 0x2
	.4byte	.LASF77
	.byte	0x10
	.byte	0x9
	.byte	0x9
	.4byte	0x29e
	.byte	0
	.uleb128 0x2
	.4byte	.LASF78
	.byte	0x10
	.byte	0xa
	.byte	0x8
	.4byte	0x2bd
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.4byte	.LASF79
	.byte	0x10
	.byte	0xb
	.byte	0x3
	.4byte	0x2d0
	.uleb128 0x29
	.2byte	0x2030
	.byte	0x5
	.byte	0x10
	.4byte	0x3bc
	.uleb128 0xd
	.ascii	"y\000"
	.byte	0x5
	.byte	0x11
	.byte	0x6
	.4byte	0x2d
	.byte	0
	.uleb128 0x2
	.4byte	.LASF80
	.byte	0x5
	.byte	0x12
	.byte	0x8
	.4byte	0x3bc
	.byte	0x4
	.uleb128 0x13
	.4byte	.LASF81
	.byte	0x5
	.byte	0x13
	.byte	0xa
	.4byte	0x3d8
	.2byte	0x1004
	.uleb128 0x13
	.4byte	.LASF82
	.byte	0x5
	.byte	0x15
	.byte	0xb
	.4byte	0xdd
	.2byte	0x2004
	.uleb128 0x13
	.4byte	.LASF83
	.byte	0x5
	.byte	0x17
	.byte	0xb
	.4byte	0xc5
	.2byte	0x2008
	.uleb128 0x13
	.4byte	.LASF84
	.byte	0x5
	.byte	0x19
	.byte	0x6
	.4byte	0x3f4
	.2byte	0x200a
	.uleb128 0x13
	.4byte	.LASF85
	.byte	0x5
	.byte	0x1a
	.byte	0xb
	.4byte	0xdd
	.2byte	0x200c
	.uleb128 0x2f
	.ascii	"vbo\000"
	.byte	0x5
	.byte	0x1c
	.byte	0xc
	.4byte	0x2f4
	.2byte	0x2010
	.uleb128 0x13
	.4byte	.LASF86
	.byte	0x5
	.byte	0x1c
	.byte	0x11
	.4byte	0x2f4
	.2byte	0x2018
	.uleb128 0x13
	.4byte	.LASF87
	.byte	0x5
	.byte	0x1d
	.byte	0x9
	.4byte	0x29e
	.2byte	0x2020
	.uleb128 0x13
	.4byte	.LASF88
	.byte	0x5
	.byte	0x1d
	.byte	0x13
	.4byte	0x29e
	.2byte	0x2024
	.uleb128 0x13
	.4byte	.LASF89
	.byte	0x5
	.byte	0x1e
	.byte	0xb
	.4byte	0xdd
	.2byte	0x2028
	.uleb128 0x13
	.4byte	.LASF90
	.byte	0x5
	.byte	0x1f
	.byte	0x6
	.4byte	0x3f4
	.2byte	0x202c
	.byte	0
	.uleb128 0x8
	.4byte	0x177
	.4byte	0x3d8
	.uleb128 0x6
	.4byte	0xad
	.byte	0xf
	.uleb128 0x6
	.4byte	0xad
	.byte	0xf
	.uleb128 0x6
	.4byte	0xad
	.byte	0xf
	.byte	0
	.uleb128 0x8
	.4byte	0xb4
	.4byte	0x3f4
	.uleb128 0x6
	.4byte	0xad
	.byte	0xf
	.uleb128 0x6
	.4byte	0xad
	.byte	0xf
	.uleb128 0x6
	.4byte	0xad
	.byte	0xf
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.byte	0x2
	.4byte	.LASF91
	.uleb128 0x5
	.4byte	.LASF92
	.byte	0x5
	.byte	0x20
	.byte	0x3
	.4byte	0x300
	.uleb128 0x11
	.byte	0x1
	.4byte	0x4e
	.byte	0x5
	.byte	0x22
	.byte	0xe
	.4byte	0x427
	.uleb128 0x1
	.4byte	.LASF93
	.byte	0
	.uleb128 0x1
	.4byte	.LASF94
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF95
	.byte	0x2
	.byte	0
	.uleb128 0x5
	.4byte	.LASF96
	.byte	0x5
	.byte	0x26
	.byte	0x3
	.4byte	0x407
	.uleb128 0x32
	.4byte	0x102ac
	.byte	0x5
	.byte	0x28
	.4byte	0x4f6
	.uleb128 0x2
	.4byte	.LASF97
	.byte	0x5
	.byte	0x2a
	.byte	0xb
	.4byte	0xdd
	.byte	0
	.uleb128 0x2
	.4byte	.LASF98
	.byte	0x5
	.byte	0x2b
	.byte	0xb
	.4byte	0xdd
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF99
	.byte	0x5
	.byte	0x2d
	.byte	0xb
	.4byte	0xdd
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF100
	.byte	0x5
	.byte	0x2f
	.byte	0x13
	.4byte	0x427
	.byte	0xc
	.uleb128 0xd
	.ascii	"x\000"
	.byte	0x5
	.byte	0x31
	.byte	0x6
	.4byte	0x2d
	.byte	0x10
	.uleb128 0xd
	.ascii	"z\000"
	.byte	0x5
	.byte	0x31
	.byte	0x9
	.4byte	0x2d
	.byte	0x14
	.uleb128 0x2
	.4byte	.LASF101
	.byte	0x5
	.byte	0x32
	.byte	0xa
	.4byte	0x4f6
	.byte	0x18
	.uleb128 0x14
	.4byte	.LASF102
	.byte	0x5
	.byte	0x34
	.byte	0xa
	.4byte	0x506
	.4byte	0x10198
	.uleb128 0x14
	.4byte	.LASF103
	.byte	0x5
	.byte	0x35
	.byte	0xb
	.4byte	0xdd
	.4byte	0x10298
	.uleb128 0x14
	.4byte	.LASF82
	.byte	0x5
	.byte	0x37
	.byte	0x9
	.4byte	0x29e
	.4byte	0x1029c
	.uleb128 0x14
	.4byte	.LASF104
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.4byte	0xdd
	.4byte	0x102a0
	.uleb128 0x14
	.4byte	.LASF90
	.byte	0x5
	.byte	0x3a
	.byte	0x6
	.4byte	0x3f4
	.4byte	0x102a4
	.uleb128 0x14
	.4byte	.LASF105
	.byte	0x5
	.byte	0x3c
	.byte	0x6
	.4byte	0x2d
	.4byte	0x102a8
	.byte	0
	.uleb128 0x8
	.4byte	0x3fb
	.4byte	0x506
	.uleb128 0x6
	.4byte	0xad
	.byte	0x7
	.byte	0
	.uleb128 0x8
	.4byte	0xb4
	.4byte	0x51c
	.uleb128 0x6
	.4byte	0xad
	.byte	0xf
	.uleb128 0x6
	.4byte	0xad
	.byte	0xf
	.byte	0
	.uleb128 0x5
	.4byte	.LASF106
	.byte	0x5
	.byte	0x3d
	.byte	0x3
	.4byte	0x433
	.uleb128 0x8
	.4byte	0xc0
	.4byte	0x53e
	.uleb128 0x6
	.4byte	0xad
	.byte	0x5
	.uleb128 0x6
	.4byte	0xad
	.byte	0x5
	.byte	0
	.uleb128 0x1d
	.4byte	0x528
	.uleb128 0x21
	.4byte	.LASF107
	.byte	0x5
	.byte	0x40
	.byte	0x16
	.4byte	0x53e
	.uleb128 0x9
	.4byte	0x554
	.uleb128 0x3c
	.uleb128 0x9
	.4byte	0x2cb
	.uleb128 0x9
	.4byte	0x2d
	.uleb128 0x1d
	.4byte	0x26
	.uleb128 0x10
	.byte	0x8
	.byte	0x4
	.4byte	.LASF108
	.uleb128 0x22
	.ascii	"u8\000"
	.byte	0x15
	.byte	0x11
	.4byte	0xb4
	.uleb128 0x22
	.ascii	"u16\000"
	.byte	0x16
	.byte	0x12
	.4byte	0xc5
	.uleb128 0x22
	.ascii	"u32\000"
	.byte	0x17
	.byte	0x12
	.4byte	0xdd
	.uleb128 0x22
	.ascii	"u64\000"
	.byte	0x18
	.byte	0x12
	.4byte	0xe9
	.uleb128 0x22
	.ascii	"s32\000"
	.byte	0x1c
	.byte	0x11
	.4byte	0xd1
	.uleb128 0x8
	.4byte	0x580
	.4byte	0x5b1
	.uleb128 0x6
	.4byte	0xad
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.4byte	.LASF109
	.byte	0x12
	.byte	0xa
	.byte	0x11
	.4byte	0x2bf
	.uleb128 0xc
	.byte	0x8
	.byte	0x12
	.byte	0x13
	.byte	0x9
	.4byte	0x5e1
	.uleb128 0x2
	.4byte	.LASF110
	.byte	0x12
	.byte	0x15
	.byte	0x6
	.4byte	0x596
	.byte	0
	.uleb128 0x2
	.4byte	.LASF111
	.byte	0x12
	.byte	0x16
	.byte	0xc
	.4byte	0x5b1
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.4byte	.LASF112
	.byte	0x12
	.byte	0x17
	.byte	0x3
	.4byte	0x5bd
	.uleb128 0x11
	.byte	0x1
	.4byte	0x4e
	.byte	0x13
	.byte	0x28
	.byte	0x1
	.4byte	0x613
	.uleb128 0x1
	.4byte	.LASF113
	.byte	0
	.uleb128 0x1
	.4byte	.LASF114
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF115
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF116
	.byte	0x3
	.byte	0
	.uleb128 0x11
	.byte	0x1
	.4byte	0x4e
	.byte	0x13
	.byte	0x31
	.byte	0x1
	.4byte	0x639
	.uleb128 0x1
	.4byte	.LASF117
	.byte	0
	.uleb128 0x1
	.4byte	.LASF118
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF119
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF120
	.byte	0x3
	.byte	0
	.uleb128 0x11
	.byte	0x1
	.4byte	0x4e
	.byte	0x14
	.byte	0x21
	.byte	0xe
	.4byte	0x65f
	.uleb128 0x1
	.4byte	.LASF121
	.byte	0
	.uleb128 0x1
	.4byte	.LASF122
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF123
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF124
	.byte	0x3
	.byte	0
	.uleb128 0x11
	.byte	0x1
	.4byte	0x4e
	.byte	0x15
	.byte	0x40
	.byte	0x1
	.4byte	0x6c1
	.uleb128 0x1
	.4byte	.LASF125
	.byte	0
	.uleb128 0x1
	.4byte	.LASF126
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF127
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF128
	.byte	0x3
	.uleb128 0x1
	.4byte	.LASF129
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF130
	.byte	0x5
	.uleb128 0x1
	.4byte	.LASF131
	.byte	0x6
	.uleb128 0x1
	.4byte	.LASF132
	.byte	0x7
	.uleb128 0x1
	.4byte	.LASF133
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF134
	.byte	0x9
	.uleb128 0x1
	.4byte	.LASF135
	.byte	0xa
	.uleb128 0x1
	.4byte	.LASF136
	.byte	0xb
	.uleb128 0x1
	.4byte	.LASF137
	.byte	0xc
	.uleb128 0x1
	.4byte	.LASF138
	.byte	0xd
	.byte	0
	.uleb128 0x5
	.4byte	.LASF139
	.byte	0x15
	.byte	0x4f
	.byte	0x3
	.4byte	0x65f
	.uleb128 0x11
	.byte	0x1
	.4byte	0x4e
	.byte	0x15
	.byte	0xa7
	.byte	0x1
	.4byte	0x70b
	.uleb128 0x1
	.4byte	.LASF140
	.byte	0
	.uleb128 0x1
	.4byte	.LASF141
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF142
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF143
	.byte	0x3
	.uleb128 0x1
	.4byte	.LASF144
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF145
	.byte	0x5
	.uleb128 0x1
	.4byte	.LASF146
	.byte	0x6
	.uleb128 0x1
	.4byte	.LASF147
	.byte	0x7
	.byte	0
	.uleb128 0x5
	.4byte	.LASF148
	.byte	0x15
	.byte	0xb0
	.byte	0x3
	.4byte	0x6cd
	.uleb128 0x2a
	.byte	0x1
	.4byte	0x4e
	.2byte	0x1d6
	.4byte	0x736
	.uleb128 0x1
	.4byte	.LASF149
	.byte	0
	.uleb128 0x1
	.4byte	.LASF150
	.byte	0x5
	.uleb128 0x1
	.4byte	.LASF151
	.byte	0x7
	.byte	0
	.uleb128 0x2b
	.4byte	.LASF152
	.2byte	0x1da
	.4byte	0x717
	.uleb128 0x2a
	.byte	0x1
	.4byte	0x4e
	.2byte	0x1de
	.4byte	0x75a
	.uleb128 0x1
	.4byte	.LASF153
	.byte	0
	.uleb128 0x1
	.4byte	.LASF154
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.4byte	.LASF155
	.2byte	0x1e1
	.4byte	0x741
	.uleb128 0x2a
	.byte	0x2
	.4byte	0x68
	.2byte	0x1ec
	.4byte	0x78d
	.uleb128 0x1
	.4byte	.LASF156
	.byte	0
	.uleb128 0x23
	.4byte	.LASF157
	.2byte	0x100
	.uleb128 0x23
	.4byte	.LASF158
	.2byte	0x200
	.uleb128 0x23
	.4byte	.LASF159
	.2byte	0x300
	.byte	0
	.uleb128 0x2b
	.4byte	.LASF160
	.2byte	0x1f1
	.4byte	0x765
	.uleb128 0x2a
	.byte	0x1
	.4byte	0x4e
	.2byte	0x1f5
	.4byte	0x7b1
	.uleb128 0x1
	.4byte	.LASF161
	.byte	0
	.uleb128 0x1
	.4byte	.LASF162
	.byte	0x1
	.byte	0
	.uleb128 0x2b
	.4byte	.LASF163
	.2byte	0x1f8
	.4byte	0x798
	.uleb128 0x11
	.byte	0x1
	.4byte	0x4e
	.byte	0x16
	.byte	0xb
	.byte	0x1
	.4byte	0x7dc
	.uleb128 0x1
	.4byte	.LASF164
	.byte	0
	.uleb128 0x1
	.4byte	.LASF165
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF166
	.byte	0x2
	.byte	0
	.uleb128 0x11
	.byte	0x2
	.4byte	0x68
	.byte	0x17
	.byte	0x9
	.byte	0x1
	.4byte	0x7f8
	.uleb128 0x23
	.4byte	.LASF167
	.2byte	0x100
	.uleb128 0x23
	.4byte	.LASF168
	.2byte	0x200
	.byte	0
	.uleb128 0x11
	.byte	0x1
	.4byte	0x4e
	.byte	0x7
	.byte	0xd
	.byte	0xe
	.4byte	0x82a
	.uleb128 0x1
	.4byte	.LASF169
	.byte	0
	.uleb128 0x1
	.4byte	.LASF170
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF171
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF172
	.byte	0x3
	.uleb128 0x1
	.4byte	.LASF173
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF174
	.byte	0x5
	.byte	0
	.uleb128 0x5
	.4byte	.LASF175
	.byte	0x7
	.byte	0x14
	.byte	0x3
	.4byte	0x7f8
	.uleb128 0xc
	.byte	0xc
	.byte	0x7
	.byte	0x16
	.byte	0x9
	.4byte	0x867
	.uleb128 0x2
	.4byte	.LASF176
	.byte	0x7
	.byte	0x17
	.byte	0x11
	.4byte	0x82a
	.byte	0
	.uleb128 0x2
	.4byte	.LASF177
	.byte	0x7
	.byte	0x18
	.byte	0x9
	.4byte	0x867
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF99
	.byte	0x7
	.byte	0x19
	.byte	0xb
	.4byte	0xdd
	.byte	0x8
	.byte	0
	.uleb128 0x9
	.4byte	0x51c
	.uleb128 0x5
	.4byte	.LASF178
	.byte	0x7
	.byte	0x1a
	.byte	0x3
	.4byte	0x836
	.uleb128 0xc
	.byte	0xc
	.byte	0x7
	.byte	0x1d
	.byte	0x2
	.4byte	0x8a9
	.uleb128 0x2
	.4byte	.LASF179
	.byte	0x7
	.byte	0x1d
	.byte	0x17
	.4byte	0x8a9
	.byte	0
	.uleb128 0x2
	.4byte	.LASF180
	.byte	0x7
	.byte	0x1d
	.byte	0x21
	.4byte	0x2d
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF181
	.byte	0x7
	.byte	0x1d
	.byte	0x29
	.4byte	0x2d
	.byte	0x8
	.byte	0
	.uleb128 0x9
	.4byte	0x86c
	.uleb128 0xc
	.byte	0x18
	.byte	0x7
	.byte	0x1c
	.byte	0x9
	.4byte	0x8df
	.uleb128 0x2
	.4byte	.LASF182
	.byte	0x7
	.byte	0x1d
	.byte	0x35
	.4byte	0x878
	.byte	0
	.uleb128 0x2
	.4byte	.LASF183
	.byte	0x7
	.byte	0x1f
	.byte	0xd
	.4byte	0x5e1
	.byte	0xc
	.uleb128 0x2
	.4byte	.LASF184
	.byte	0x7
	.byte	0x20
	.byte	0xc
	.4byte	0x5b1
	.byte	0x14
	.byte	0
	.uleb128 0x5
	.4byte	.LASF185
	.byte	0x7
	.byte	0x21
	.byte	0x3
	.4byte	0x8ae
	.uleb128 0x11
	.byte	0x1
	.4byte	0x4e
	.byte	0x3
	.byte	0x11
	.byte	0xe
	.4byte	0x917
	.uleb128 0x1
	.4byte	.LASF186
	.byte	0
	.uleb128 0x1
	.4byte	.LASF187
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF188
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF189
	.byte	0x3
	.uleb128 0x1
	.4byte	.LASF190
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.4byte	.LASF191
	.byte	0x3
	.byte	0x11
	.byte	0x71
	.4byte	0x8eb
	.uleb128 0x3d
	.byte	0
	.byte	0x3
	.byte	0x18
	.byte	0x3
	.uleb128 0x1a
	.byte	0
	.byte	0x3
	.byte	0x17
	.byte	0x2
	.4byte	0x93e
	.uleb128 0x2c
	.4byte	.LASF213
	.byte	0x3
	.byte	0x1a
	.byte	0x5
	.4byte	0x923
	.byte	0
	.uleb128 0xc
	.byte	0x10
	.byte	0x3
	.byte	0x13
	.byte	0x9
	.4byte	0x96f
	.uleb128 0x2
	.4byte	.LASF192
	.byte	0x3
	.byte	0x14
	.byte	0xb
	.4byte	0xe9
	.byte	0
	.uleb128 0x2
	.4byte	.LASF176
	.byte	0x3
	.byte	0x15
	.byte	0xf
	.4byte	0x917
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF193
	.byte	0x3
	.byte	0x1b
	.byte	0x4
	.4byte	0x928
	.byte	0x9
	.byte	0
	.uleb128 0x5
	.4byte	.LASF194
	.byte	0x3
	.byte	0x1c
	.byte	0x3
	.4byte	0x93e
	.uleb128 0xc
	.byte	0xc
	.byte	0x3
	.byte	0x2a
	.byte	0x2
	.4byte	0x9ac
	.uleb128 0x2
	.4byte	.LASF179
	.byte	0x3
	.byte	0x2a
	.byte	0x13
	.4byte	0x9ac
	.byte	0
	.uleb128 0x2
	.4byte	.LASF180
	.byte	0x3
	.byte	0x2a
	.byte	0x1d
	.4byte	0x2d
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF181
	.byte	0x3
	.byte	0x2a
	.byte	0x25
	.4byte	0x2d
	.byte	0x8
	.byte	0
	.uleb128 0x9
	.4byte	0x867
	.uleb128 0x32
	.4byte	0xb5e278
	.byte	0x3
	.byte	0x1f
	.4byte	0xa5b
	.uleb128 0x2
	.4byte	.LASF195
	.byte	0x3
	.byte	0x20
	.byte	0x6
	.4byte	0x2d
	.byte	0
	.uleb128 0x2
	.4byte	.LASF196
	.byte	0x3
	.byte	0x22
	.byte	0x7
	.4byte	0xa5b
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF197
	.byte	0x3
	.byte	0x24
	.byte	0x14
	.4byte	0x96f
	.byte	0x10
	.uleb128 0x2
	.4byte	.LASF198
	.byte	0x3
	.byte	0x26
	.byte	0x6
	.4byte	0x2d
	.byte	0x20
	.uleb128 0x2
	.4byte	.LASF199
	.byte	0x3
	.byte	0x26
	.byte	0x19
	.4byte	0x2d
	.byte	0x24
	.uleb128 0x2
	.4byte	.LASF200
	.byte	0x3
	.byte	0x28
	.byte	0x8
	.4byte	0xa6b
	.byte	0x28
	.uleb128 0x14
	.4byte	.LASF201
	.byte	0x3
	.byte	0x29
	.byte	0x9
	.4byte	0xa7b
	.4byte	0xb5e118
	.uleb128 0x14
	.4byte	.LASF202
	.byte	0x3
	.byte	0x2a
	.byte	0x31
	.4byte	0x97b
	.4byte	0xb5e25c
	.uleb128 0x14
	.4byte	.LASF203
	.byte	0x3
	.byte	0x2c
	.byte	0xd
	.4byte	0xa91
	.4byte	0xb5e268
	.uleb128 0x14
	.4byte	.LASF204
	.byte	0x3
	.byte	0x2e
	.byte	0xd
	.4byte	0x292
	.4byte	0xb5e26c
	.uleb128 0x14
	.4byte	.LASF205
	.byte	0x3
	.byte	0x30
	.byte	0x6
	.4byte	0x2d
	.4byte	0xb5e270
	.byte	0
	.uleb128 0x8
	.4byte	0x286
	.4byte	0xa6b
	.uleb128 0x6
	.4byte	0xad
	.byte	0xb
	.byte	0
	.uleb128 0x8
	.4byte	0x51c
	.4byte	0xa7b
	.uleb128 0x6
	.4byte	0xad
	.byte	0xb3
	.byte	0
	.uleb128 0x8
	.4byte	0x867
	.4byte	0xa91
	.uleb128 0x6
	.4byte	0xad
	.byte	0x8
	.uleb128 0x6
	.4byte	0xad
	.byte	0x8
	.byte	0
	.uleb128 0x9
	.4byte	0x8df
	.uleb128 0x5
	.4byte	.LASF206
	.byte	0x3
	.byte	0x31
	.byte	0x3
	.4byte	0x9b1
	.uleb128 0x11
	.byte	0x1
	.4byte	0x4e
	.byte	0x18
	.byte	0xa
	.byte	0x6
	.4byte	0xabc
	.uleb128 0x1
	.4byte	.LASF207
	.byte	0
	.uleb128 0x1
	.4byte	.LASF208
	.byte	0x1
	.byte	0
	.uleb128 0xc
	.byte	0x3
	.byte	0x19
	.byte	0xa
	.byte	0x9
	.4byte	0xaed
	.uleb128 0x2
	.4byte	.LASF209
	.byte	0x19
	.byte	0xb
	.byte	0x8
	.4byte	0x177
	.byte	0
	.uleb128 0x2
	.4byte	.LASF210
	.byte	0x19
	.byte	0xc
	.byte	0xa
	.4byte	0xb4
	.byte	0x1
	.uleb128 0x2
	.4byte	.LASF211
	.byte	0x19
	.byte	0xc
	.byte	0x10
	.4byte	0xb4
	.byte	0x2
	.byte	0
	.uleb128 0x5
	.4byte	.LASF212
	.byte	0x19
	.byte	0xd
	.byte	0x3
	.4byte	0xabc
	.uleb128 0xc
	.byte	0xc
	.byte	0x4
	.byte	0x9
	.byte	0x2
	.4byte	0xb24
	.uleb128 0xd
	.ascii	"x\000"
	.byte	0x4
	.byte	0xa
	.byte	0x9
	.4byte	0x26
	.byte	0
	.uleb128 0xd
	.ascii	"y\000"
	.byte	0x4
	.byte	0xa
	.byte	0xc
	.4byte	0x26
	.byte	0x4
	.uleb128 0xd
	.ascii	"z\000"
	.byte	0x4
	.byte	0xa
	.byte	0xf
	.4byte	0x26
	.byte	0x8
	.byte	0
	.uleb128 0x1a
	.byte	0xc
	.byte	0x4
	.byte	0x7
	.byte	0x9
	.4byte	0xb3d
	.uleb128 0x24
	.ascii	"v\000"
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.4byte	0xb3d
	.uleb128 0x25
	.4byte	0xaf9
	.byte	0
	.uleb128 0x8
	.4byte	0x26
	.4byte	0xb4d
	.uleb128 0x6
	.4byte	0xad
	.byte	0x2
	.byte	0
	.uleb128 0x5
	.4byte	.LASF214
	.byte	0x4
	.byte	0xc
	.byte	0x3
	.4byte	0xb24
	.uleb128 0xc
	.byte	0x14
	.byte	0x1a
	.byte	0x7
	.byte	0x9
	.4byte	0xb9e
	.uleb128 0xd
	.ascii	"x\000"
	.byte	0x1a
	.byte	0x8
	.byte	0x6
	.4byte	0x2d
	.byte	0
	.uleb128 0xd
	.ascii	"y\000"
	.byte	0x1a
	.byte	0x8
	.byte	0x9
	.4byte	0x2d
	.byte	0x4
	.uleb128 0xd
	.ascii	"z\000"
	.byte	0x1a
	.byte	0x8
	.byte	0xc
	.4byte	0x2d
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF215
	.byte	0x1a
	.byte	0x9
	.byte	0x8
	.4byte	0x26
	.byte	0xc
	.uleb128 0x2
	.4byte	.LASF216
	.byte	0x1a
	.byte	0xa
	.byte	0xc
	.4byte	0x12d
	.byte	0x10
	.byte	0
	.uleb128 0x5
	.4byte	.LASF217
	.byte	0x1a
	.byte	0xb
	.byte	0x3
	.4byte	0xb59
	.uleb128 0x29
	.2byte	0x184
	.byte	0x1b
	.byte	0x15
	.4byte	0xda1
	.uleb128 0x2
	.4byte	.LASF218
	.byte	0x1b
	.byte	0x16
	.byte	0x9
	.4byte	0xb4d
	.byte	0
	.uleb128 0x2
	.4byte	.LASF219
	.byte	0x1b
	.byte	0x17
	.byte	0x8
	.4byte	0x26
	.byte	0xc
	.uleb128 0xd
	.ascii	"yaw\000"
	.byte	0x1b
	.byte	0x17
	.byte	0xf
	.4byte	0x26
	.byte	0x10
	.uleb128 0x2
	.4byte	.LASF220
	.byte	0x1b
	.byte	0x18
	.byte	0x8
	.4byte	0x26
	.byte	0x14
	.uleb128 0x2
	.4byte	.LASF221
	.byte	0x1b
	.byte	0x18
	.byte	0x11
	.4byte	0x26
	.byte	0x18
	.uleb128 0x2
	.4byte	.LASF222
	.byte	0x1b
	.byte	0x18
	.byte	0x19
	.4byte	0x26
	.byte	0x1c
	.uleb128 0x2
	.4byte	.LASF223
	.byte	0x1b
	.byte	0x19
	.byte	0x6
	.4byte	0x3f4
	.byte	0x20
	.uleb128 0x2
	.4byte	.LASF224
	.byte	0x1b
	.byte	0x19
	.byte	0x10
	.4byte	0x3f4
	.byte	0x21
	.uleb128 0x2
	.4byte	.LASF225
	.byte	0x1b
	.byte	0x19
	.byte	0x18
	.4byte	0x3f4
	.byte	0x22
	.uleb128 0x2
	.4byte	.LASF226
	.byte	0x1b
	.byte	0x19
	.byte	0x23
	.4byte	0x3f4
	.byte	0x23
	.uleb128 0x2
	.4byte	.LASF227
	.byte	0x1b
	.byte	0x19
	.byte	0x2b
	.4byte	0x3f4
	.byte	0x24
	.uleb128 0x2
	.4byte	.LASF228
	.byte	0x1b
	.byte	0x1a
	.byte	0x9
	.4byte	0xda1
	.byte	0x28
	.uleb128 0x2
	.4byte	.LASF229
	.byte	0x1b
	.byte	0x1c
	.byte	0x9
	.4byte	0xb4d
	.byte	0x2c
	.uleb128 0x2
	.4byte	.LASF230
	.byte	0x1b
	.byte	0x1e
	.byte	0x6
	.4byte	0x3f4
	.byte	0x38
	.uleb128 0x2
	.4byte	.LASF231
	.byte	0x1b
	.byte	0x20
	.byte	0x9
	.4byte	0xb4d
	.byte	0x3c
	.uleb128 0x2
	.4byte	.LASF232
	.byte	0x1b
	.byte	0x21
	.byte	0x8
	.4byte	0x26
	.byte	0x48
	.uleb128 0x2
	.4byte	.LASF233
	.byte	0x1b
	.byte	0x23
	.byte	0x8
	.4byte	0x26
	.byte	0x4c
	.uleb128 0x2
	.4byte	.LASF234
	.byte	0x1b
	.byte	0x24
	.byte	0x6
	.4byte	0x2d
	.byte	0x50
	.uleb128 0xd
	.ascii	"hp\000"
	.byte	0x1b
	.byte	0x26
	.byte	0x6
	.4byte	0x2d
	.byte	0x54
	.uleb128 0x2
	.4byte	.LASF235
	.byte	0x1b
	.byte	0x27
	.byte	0x6
	.4byte	0x2d
	.byte	0x58
	.uleb128 0x2
	.4byte	.LASF236
	.byte	0x1b
	.byte	0x28
	.byte	0x6
	.4byte	0x2d
	.byte	0x5c
	.uleb128 0x2
	.4byte	.LASF237
	.byte	0x1b
	.byte	0x29
	.byte	0x6
	.4byte	0x2d
	.byte	0x60
	.uleb128 0x2
	.4byte	.LASF238
	.byte	0x1b
	.byte	0x2a
	.byte	0x6
	.4byte	0x2d
	.byte	0x64
	.uleb128 0x2
	.4byte	.LASF239
	.byte	0x1b
	.byte	0x2b
	.byte	0x8
	.4byte	0x26
	.byte	0x68
	.uleb128 0x2
	.4byte	.LASF240
	.byte	0x1b
	.byte	0x2d
	.byte	0x8
	.4byte	0x26
	.byte	0x6c
	.uleb128 0x2
	.4byte	.LASF241
	.byte	0x1b
	.byte	0x2e
	.byte	0x8
	.4byte	0x26
	.byte	0x70
	.uleb128 0x2
	.4byte	.LASF242
	.byte	0x1b
	.byte	0x2f
	.byte	0x8
	.4byte	0x26
	.byte	0x74
	.uleb128 0x2
	.4byte	.LASF243
	.byte	0x1b
	.byte	0x30
	.byte	0x6
	.4byte	0x2d
	.byte	0x78
	.uleb128 0x2
	.4byte	.LASF244
	.byte	0x1b
	.byte	0x32
	.byte	0x6
	.4byte	0x2d
	.byte	0x7c
	.uleb128 0x2
	.4byte	.LASF245
	.byte	0x1b
	.byte	0x33
	.byte	0x6
	.4byte	0x3f4
	.byte	0x80
	.uleb128 0x2
	.4byte	.LASF246
	.byte	0x1b
	.byte	0x35
	.byte	0x6
	.4byte	0x2d
	.byte	0x84
	.uleb128 0x2
	.4byte	.LASF247
	.byte	0x1b
	.byte	0x36
	.byte	0x6
	.4byte	0x2d
	.byte	0x88
	.uleb128 0x2
	.4byte	.LASF248
	.byte	0x1b
	.byte	0x37
	.byte	0x6
	.4byte	0x2d
	.byte	0x8c
	.uleb128 0x2
	.4byte	.LASF249
	.byte	0x1b
	.byte	0x38
	.byte	0xc
	.4byte	0xda6
	.byte	0x90
	.uleb128 0x2
	.4byte	.LASF250
	.byte	0x1b
	.byte	0x3a
	.byte	0x11
	.4byte	0xb9e
	.byte	0xac
	.uleb128 0x2
	.4byte	.LASF251
	.byte	0x1b
	.byte	0x3b
	.byte	0x6
	.4byte	0x3f4
	.byte	0xc0
	.uleb128 0x2
	.4byte	.LASF252
	.byte	0x1b
	.byte	0x3b
	.byte	0x14
	.4byte	0x3f4
	.byte	0xc1
	.uleb128 0x2
	.4byte	.LASF253
	.byte	0x1b
	.byte	0x3c
	.byte	0xc
	.4byte	0xdb6
	.byte	0xc2
	.byte	0
	.uleb128 0x9
	.4byte	0xa96
	.uleb128 0x8
	.4byte	0xaed
	.4byte	0xdb6
	.uleb128 0x6
	.4byte	0xad
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.4byte	0xaed
	.4byte	0xdc6
	.uleb128 0x6
	.4byte	0xad
	.byte	0x3f
	.byte	0
	.uleb128 0x5
	.4byte	.LASF254
	.byte	0x1b
	.byte	0x3d
	.byte	0x3
	.4byte	0xbaa
	.uleb128 0xc
	.byte	0x10
	.byte	0x1c
	.byte	0x29
	.byte	0x2
	.4byte	0xe08
	.uleb128 0xd
	.ascii	"w\000"
	.byte	0x1c
	.byte	0x2b
	.byte	0x9
	.4byte	0x26
	.byte	0
	.uleb128 0xd
	.ascii	"z\000"
	.byte	0x1c
	.byte	0x2c
	.byte	0x9
	.4byte	0x26
	.byte	0x4
	.uleb128 0xd
	.ascii	"y\000"
	.byte	0x1c
	.byte	0x2d
	.byte	0x9
	.4byte	0x26
	.byte	0x8
	.uleb128 0xd
	.ascii	"x\000"
	.byte	0x1c
	.byte	0x2e
	.byte	0x9
	.4byte	0x26
	.byte	0xc
	.byte	0
	.uleb128 0xc
	.byte	0x10
	.byte	0x1c
	.byte	0x34
	.byte	0x2
	.4byte	0xe3e
	.uleb128 0xd
	.ascii	"r\000"
	.byte	0x1c
	.byte	0x36
	.byte	0x9
	.4byte	0x26
	.byte	0
	.uleb128 0xd
	.ascii	"k\000"
	.byte	0x1c
	.byte	0x37
	.byte	0x9
	.4byte	0x26
	.byte	0x4
	.uleb128 0xd
	.ascii	"j\000"
	.byte	0x1c
	.byte	0x38
	.byte	0x9
	.4byte	0x26
	.byte	0x8
	.uleb128 0xd
	.ascii	"i\000"
	.byte	0x1c
	.byte	0x39
	.byte	0x9
	.4byte	0x26
	.byte	0xc
	.byte	0
	.uleb128 0x1a
	.byte	0x10
	.byte	0x1c
	.byte	0x24
	.byte	0x9
	.4byte	0xe5c
	.uleb128 0x25
	.4byte	0xdd2
	.uleb128 0x25
	.4byte	0xe08
	.uleb128 0x24
	.ascii	"c\000"
	.byte	0x1c
	.byte	0x3f
	.byte	0x8
	.4byte	0xe5c
	.byte	0
	.uleb128 0x8
	.4byte	0x26
	.4byte	0xe6c
	.uleb128 0x6
	.4byte	0xad
	.byte	0x3
	.byte	0
	.uleb128 0x5
	.4byte	.LASF255
	.byte	0x1c
	.byte	0x40
	.byte	0x3
	.4byte	0xe3e
	.uleb128 0x1a
	.byte	0x40
	.byte	0x1c
	.byte	0x4c
	.byte	0x9
	.4byte	0xe96
	.uleb128 0x24
	.ascii	"r\000"
	.byte	0x1c
	.byte	0x4e
	.byte	0xb
	.4byte	0xe96
	.uleb128 0x24
	.ascii	"m\000"
	.byte	0x1c
	.byte	0x4f
	.byte	0x8
	.4byte	0xea6
	.byte	0
	.uleb128 0x8
	.4byte	0xe6c
	.4byte	0xea6
	.uleb128 0x6
	.4byte	0xad
	.byte	0x3
	.byte	0
	.uleb128 0x8
	.4byte	0x26
	.4byte	0xeb6
	.uleb128 0x6
	.4byte	0xad
	.byte	0xf
	.byte	0
	.uleb128 0x5
	.4byte	.LASF256
	.byte	0x1c
	.byte	0x50
	.byte	0x3
	.4byte	0xe78
	.uleb128 0x1d
	.4byte	0xeb6
	.uleb128 0x8
	.4byte	0xe6c
	.4byte	0xedd
	.uleb128 0x6
	.4byte	0xad
	.byte	0x1
	.uleb128 0x6
	.4byte	0xad
	.byte	0x5f
	.byte	0
	.uleb128 0x21
	.4byte	.LASF257
	.byte	0x8
	.byte	0x7
	.byte	0x11
	.4byte	0xec7
	.uleb128 0x8
	.4byte	0x3f4
	.4byte	0xeff
	.uleb128 0x6
	.4byte	0xad
	.byte	0x1
	.uleb128 0x6
	.4byte	0xad
	.byte	0x5f
	.byte	0
	.uleb128 0x21
	.4byte	.LASF258
	.byte	0x8
	.byte	0xb
	.byte	0xc
	.4byte	0xee9
	.uleb128 0xc
	.byte	0xc
	.byte	0x1d
	.byte	0x4
	.byte	0x9
	.4byte	0xf2f
	.uleb128 0x2
	.4byte	.LASF259
	.byte	0x1d
	.byte	0x6
	.byte	0x6
	.4byte	0x580
	.byte	0
	.uleb128 0x2
	.4byte	.LASF260
	.byte	0x1d
	.byte	0x7
	.byte	0x6
	.4byte	0x5a1
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.4byte	.LASF261
	.byte	0x1d
	.byte	0x8
	.byte	0x3
	.4byte	0xf0b
	.uleb128 0xc
	.byte	0x98
	.byte	0x1d
	.byte	0xa
	.byte	0x9
	.4byte	0xf6c
	.uleb128 0x2
	.4byte	.LASF262
	.byte	0x1d
	.byte	0xc
	.byte	0x6
	.4byte	0x580
	.byte	0
	.uleb128 0x2
	.4byte	.LASF263
	.byte	0x1d
	.byte	0xd
	.byte	0x6
	.4byte	0x2d
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF264
	.byte	0x1d
	.byte	0xe
	.byte	0xd
	.4byte	0xf6c
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.4byte	0xf2f
	.4byte	0xf7c
	.uleb128 0x6
	.4byte	0xad
	.byte	0xb
	.byte	0
	.uleb128 0x5
	.4byte	.LASF265
	.byte	0x1d
	.byte	0xf
	.byte	0x3
	.4byte	0xf3b
	.uleb128 0xc
	.byte	0x18
	.byte	0x1e
	.byte	0x4
	.byte	0x9
	.4byte	0xf9f
	.uleb128 0x2
	.4byte	.LASF179
	.byte	0x1e
	.byte	0x6
	.byte	0x8
	.4byte	0xf9f
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	0x2bd
	.4byte	0xfaf
	.uleb128 0x6
	.4byte	0xad
	.byte	0x5
	.byte	0
	.uleb128 0x5
	.4byte	.LASF266
	.byte	0x1e
	.byte	0x7
	.byte	0x3
	.4byte	0xf88
	.uleb128 0x1a
	.byte	0x4
	.byte	0x1e
	.byte	0xb
	.byte	0x2
	.4byte	0xfdd
	.uleb128 0x2c
	.4byte	.LASF179
	.byte	0x1e
	.byte	0xd
	.byte	0x9
	.4byte	0x2bd
	.uleb128 0x2c
	.4byte	.LASF267
	.byte	0x1e
	.byte	0xe
	.byte	0x10
	.4byte	0xfdd
	.byte	0
	.uleb128 0x9
	.4byte	0xfaf
	.uleb128 0xc
	.byte	0x4
	.byte	0x1e
	.byte	0x17
	.byte	0x3
	.4byte	0x1006
	.uleb128 0x2
	.4byte	.LASF268
	.byte	0x1e
	.byte	0x19
	.byte	0x8
	.4byte	0x575
	.byte	0
	.uleb128 0x2
	.4byte	.LASF269
	.byte	0x1e
	.byte	0x1a
	.byte	0x8
	.4byte	0x575
	.byte	0x2
	.byte	0
	.uleb128 0x1a
	.byte	0x4
	.byte	0x1e
	.byte	0x14
	.byte	0x2
	.4byte	0x1021
	.uleb128 0x24
	.ascii	"dim\000"
	.byte	0x1e
	.byte	0x16
	.byte	0x7
	.4byte	0x580
	.uleb128 0x25
	.4byte	0xfe2
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.byte	0x1e
	.byte	0x23
	.byte	0x3
	.4byte	0x1052
	.uleb128 0x2
	.4byte	.LASF270
	.byte	0x1e
	.byte	0x25
	.byte	0x8
	.4byte	0x575
	.byte	0
	.uleb128 0x2
	.4byte	.LASF271
	.byte	0x1e
	.byte	0x26
	.byte	0x7
	.4byte	0x56b
	.byte	0x2
	.uleb128 0x2
	.4byte	.LASF272
	.byte	0x1e
	.byte	0x27
	.byte	0x7
	.4byte	0x56b
	.byte	0x3
	.byte	0
	.uleb128 0x1a
	.byte	0x4
	.byte	0x1e
	.byte	0x20
	.byte	0x2
	.4byte	0x106d
	.uleb128 0x2c
	.4byte	.LASF273
	.byte	0x1e
	.byte	0x22
	.byte	0x7
	.4byte	0x580
	.uleb128 0x25
	.4byte	0x1021
	.byte	0
	.uleb128 0xc
	.byte	0x18
	.byte	0x1e
	.byte	0x9
	.byte	0x9
	.4byte	0x10bf
	.uleb128 0x30
	.4byte	0xfbb
	.byte	0
	.uleb128 0x3e
	.ascii	"fmt\000"
	.byte	0x1e
	.byte	0x11
	.byte	0xf
	.4byte	0x6c1
	.byte	0x4
	.byte	0x20
	.uleb128 0x3f
	.4byte	.LASF77
	.byte	0x1e
	.byte	0x12
	.byte	0x9
	.4byte	0x29e
	.byte	0x1c
	.byte	0x24
	.uleb128 0x30
	.4byte	0x1006
	.byte	0x8
	.uleb128 0x2
	.4byte	.LASF274
	.byte	0x1e
	.byte	0x1e
	.byte	0x6
	.4byte	0x580
	.byte	0xc
	.uleb128 0x2
	.4byte	.LASF275
	.byte	0x1e
	.byte	0x1f
	.byte	0x6
	.4byte	0x580
	.byte	0x10
	.uleb128 0x30
	.4byte	0x1052
	.byte	0x14
	.byte	0
	.uleb128 0x5
	.4byte	.LASF276
	.byte	0x1e
	.byte	0x2a
	.byte	0x3
	.4byte	0x106d
	.uleb128 0x8
	.4byte	0x580
	.4byte	0x10db
	.uleb128 0x6
	.4byte	0xad
	.byte	0x7f
	.byte	0
	.uleb128 0x29
	.2byte	0x200
	.byte	0x1f
	.byte	0x5
	.4byte	0x10f2
	.uleb128 0x2
	.4byte	.LASF179
	.byte	0x1f
	.byte	0x7
	.byte	0x6
	.4byte	0x10cb
	.byte	0
	.byte	0
	.uleb128 0x5
	.4byte	.LASF277
	.byte	0x1f
	.byte	0x8
	.byte	0x3
	.4byte	0x10db
	.uleb128 0x33
	.4byte	.LASF285
	.4byte	0x4e
	.byte	0x9
	.4byte	0x1137
	.uleb128 0x1
	.4byte	.LASF278
	.byte	0
	.uleb128 0x1
	.4byte	.LASF279
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF280
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF281
	.byte	0x3
	.uleb128 0x1
	.4byte	.LASF282
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF283
	.byte	0x5
	.uleb128 0x1
	.4byte	.LASF284
	.byte	0x6
	.byte	0
	.uleb128 0x33
	.4byte	.LASF286
	.4byte	0x4e
	.byte	0x14
	.4byte	0x117c
	.uleb128 0x1
	.4byte	.LASF287
	.byte	0
	.uleb128 0x1
	.4byte	.LASF288
	.byte	0x1
	.uleb128 0x1
	.4byte	.LASF289
	.byte	0x2
	.uleb128 0x1
	.4byte	.LASF290
	.byte	0x3
	.uleb128 0x1
	.4byte	.LASF291
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF292
	.byte	0x5
	.uleb128 0x1
	.4byte	.LASF293
	.byte	0x6
	.uleb128 0x1
	.4byte	.LASF294
	.byte	0x7
	.uleb128 0x1
	.4byte	.LASF295
	.byte	0x8
	.byte	0
	.uleb128 0x29
	.2byte	0x18c
	.byte	0x20
	.byte	0x21
	.4byte	0x11f1
	.uleb128 0x2
	.4byte	.LASF296
	.byte	0x20
	.byte	0x22
	.byte	0xa
	.4byte	0xeb6
	.byte	0
	.uleb128 0x2
	.4byte	.LASF229
	.byte	0x20
	.byte	0x22
	.byte	0x16
	.4byte	0xeb6
	.byte	0x40
	.uleb128 0xd
	.ascii	"vp\000"
	.byte	0x20
	.byte	0x22
	.byte	0x1c
	.4byte	0xeb6
	.byte	0x80
	.uleb128 0x2
	.4byte	.LASF297
	.byte	0x20
	.byte	0x23
	.byte	0xb
	.4byte	0x11f1
	.byte	0xc0
	.uleb128 0x13
	.4byte	.LASF298
	.byte	0x20
	.byte	0x24
	.byte	0x9
	.4byte	0x1201
	.2byte	0x120
	.uleb128 0x13
	.4byte	.LASF299
	.byte	0x20
	.byte	0x26
	.byte	0x8
	.4byte	0x26
	.2byte	0x180
	.uleb128 0x2f
	.ascii	"far\000"
	.byte	0x20
	.byte	0x26
	.byte	0xe
	.4byte	0x26
	.2byte	0x184
	.uleb128 0x2f
	.ascii	"fov\000"
	.byte	0x20
	.byte	0x26
	.byte	0x13
	.4byte	0x26
	.2byte	0x188
	.byte	0
	.uleb128 0x8
	.4byte	0xe6c
	.4byte	0x1201
	.uleb128 0x6
	.4byte	0xad
	.byte	0x5
	.byte	0
	.uleb128 0x8
	.4byte	0xb4d
	.4byte	0x1211
	.uleb128 0x6
	.4byte	0xad
	.byte	0x7
	.byte	0
	.uleb128 0x5
	.4byte	.LASF300
	.byte	0x20
	.byte	0x27
	.byte	0x3
	.4byte	0x117c
	.uleb128 0x40
	.4byte	.LASF301
	.byte	0x1
	.byte	0x13
	.byte	0x5
	.4byte	0x2d
	.uleb128 0x5
	.byte	0x3
	.4byte	sky_time
	.uleb128 0x12
	.4byte	.LASF302
	.byte	0x15
	.byte	0x10
	.4byte	0x1240
	.uleb128 0x5
	.byte	0x3
	.4byte	player
	.uleb128 0x9
	.4byte	0xdc6
	.uleb128 0x12
	.4byte	.LASF228
	.byte	0x16
	.byte	0xf
	.4byte	0xda1
	.uleb128 0x5
	.byte	0x3
	.4byte	world
	.uleb128 0x12
	.4byte	.LASF203
	.byte	0x18
	.byte	0x13
	.4byte	0xa91
	.uleb128 0x5
	.byte	0x3
	.4byte	workqueue
	.uleb128 0x12
	.4byte	.LASF303
	.byte	0x1a
	.byte	0xf
	.4byte	0x1211
	.uleb128 0x5
	.byte	0x3
	.4byte	camera
	.uleb128 0x12
	.4byte	.LASF304
	.byte	0x1c
	.byte	0xc
	.4byte	0x2d
	.uleb128 0x5
	.byte	0x3
	.4byte	projectionUniform
	.uleb128 0xc
	.byte	0xc
	.byte	0x1
	.byte	0x1e
	.byte	0x9
	.4byte	0x12ba
	.uleb128 0x2
	.4byte	.LASF305
	.byte	0x1
	.byte	0x1f
	.byte	0xb
	.4byte	0x12ba
	.byte	0
	.uleb128 0x2
	.4byte	.LASF177
	.byte	0x1
	.byte	0x20
	.byte	0x9
	.4byte	0x867
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF306
	.byte	0x1
	.byte	0x21
	.byte	0xc
	.4byte	0x12d
	.byte	0x8
	.byte	0
	.uleb128 0x9
	.4byte	0x3fb
	.uleb128 0x5
	.4byte	.LASF307
	.byte	0x1
	.byte	0x22
	.byte	0x3
	.4byte	0x1289
	.uleb128 0xc
	.byte	0x8
	.byte	0x1
	.byte	0x24
	.byte	0x9
	.4byte	0x12ef
	.uleb128 0x2
	.4byte	.LASF305
	.byte	0x1
	.byte	0x25
	.byte	0xb
	.4byte	0x12ba
	.byte	0
	.uleb128 0x2
	.4byte	.LASF177
	.byte	0x1
	.byte	0x26
	.byte	0x9
	.4byte	0x867
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.4byte	.LASF308
	.byte	0x1
	.byte	0x27
	.byte	0x3
	.4byte	0x12cb
	.uleb128 0xc
	.byte	0xc
	.byte	0x1
	.byte	0x29
	.byte	0x8
	.4byte	0x132c
	.uleb128 0x2
	.4byte	.LASF179
	.byte	0x1
	.byte	0x29
	.byte	0x1d
	.4byte	0x132c
	.byte	0
	.uleb128 0x2
	.4byte	.LASF180
	.byte	0x1
	.byte	0x29
	.byte	0x27
	.4byte	0x2d
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF181
	.byte	0x1
	.byte	0x29
	.byte	0x2f
	.4byte	0x2d
	.byte	0x8
	.byte	0
	.uleb128 0x9
	.4byte	0x12bf
	.uleb128 0x12
	.4byte	.LASF309
	.byte	0x29
	.byte	0x3b
	.4byte	0x12fb
	.uleb128 0x5
	.byte	0x3
	.4byte	renderingQueue
	.uleb128 0x8
	.4byte	0xb4
	.4byte	0x135e
	.uleb128 0x6
	.4byte	0xad
	.byte	0x8
	.uleb128 0x6
	.4byte	0xad
	.byte	0x7
	.uleb128 0x6
	.4byte	0xad
	.byte	0x8
	.byte	0
	.uleb128 0x12
	.4byte	.LASF310
	.byte	0x2a
	.byte	0x10
	.4byte	0x1342
	.uleb128 0x5
	.byte	0x3
	.4byte	chunkRendered
	.uleb128 0xc
	.byte	0xc
	.byte	0x1
	.byte	0x2b
	.byte	0x8
	.4byte	0x13a0
	.uleb128 0x2
	.4byte	.LASF179
	.byte	0x1
	.byte	0x2b
	.byte	0x24
	.4byte	0x13a0
	.byte	0
	.uleb128 0x2
	.4byte	.LASF180
	.byte	0x1
	.byte	0x2b
	.byte	0x2e
	.4byte	0x2d
	.byte	0x4
	.uleb128 0x2
	.4byte	.LASF181
	.byte	0x1
	.byte	0x2b
	.byte	0x36
	.4byte	0x2d
	.byte	0x8
	.byte	0
	.uleb128 0x9
	.4byte	0x12ef
	.uleb128 0x12
	.4byte	.LASF311
	.byte	0x2b
	.byte	0x42
	.4byte	0x136f
	.uleb128 0x5
	.byte	0x3
	.4byte	transparentClusters
	.uleb128 0x12
	.4byte	.LASF312
	.byte	0x2d
	.byte	0x13
	.4byte	0x10f2
	.uleb128 0x5
	.byte	0x3
	.4byte	fogLut
	.uleb128 0x41
	.4byte	.LASF313
	.byte	0x12
	.2byte	0x125
	.byte	0x6
	.4byte	0x13da
	.uleb128 0x4
	.4byte	0x13da
	.byte	0
	.uleb128 0x9
	.4byte	0x5e1
	.uleb128 0xf
	.4byte	.LASF314
	.byte	0x12
	.byte	0xc4
	.4byte	0x13f0
	.uleb128 0x4
	.4byte	0x13f0
	.byte	0
	.uleb128 0x9
	.4byte	0x5b1
	.uleb128 0xf
	.4byte	.LASF315
	.byte	0x12
	.byte	0xb7
	.4byte	0x1406
	.uleb128 0x4
	.4byte	0x13f0
	.byte	0
	.uleb128 0xf
	.4byte	.LASF316
	.byte	0x21
	.byte	0x6
	.4byte	0x1418
	.uleb128 0x4
	.4byte	0x281
	.uleb128 0x18
	.byte	0
	.uleb128 0xf
	.4byte	.LASF317
	.byte	0x22
	.byte	0xb
	.4byte	0x1433
	.uleb128 0x4
	.4byte	0x3f4
	.uleb128 0x4
	.4byte	0x70b
	.uleb128 0x4
	.4byte	0x2d
	.byte	0
	.uleb128 0x26
	.4byte	.LASF320
	.byte	0x20
	.byte	0x2d
	.byte	0x5
	.4byte	0x3f4
	.4byte	0x1453
	.uleb128 0x4
	.4byte	0x1453
	.uleb128 0x4
	.4byte	0xe6c
	.uleb128 0x4
	.4byte	0xe6c
	.byte	0
	.uleb128 0x9
	.4byte	0x1211
	.uleb128 0xf
	.4byte	.LASF318
	.byte	0x23
	.byte	0x17
	.4byte	0x1473
	.uleb128 0x4
	.4byte	0x78d
	.uleb128 0x4
	.4byte	0x2d
	.uleb128 0x4
	.4byte	0x2d
	.byte	0
	.uleb128 0xf
	.4byte	.LASF319
	.byte	0x1d
	.byte	0x15
	.4byte	0x1484
	.uleb128 0x4
	.4byte	0x1484
	.byte	0
	.uleb128 0x9
	.4byte	0xf7c
	.uleb128 0x26
	.4byte	.LASF321
	.byte	0x1d
	.byte	0x12
	.byte	0x5
	.4byte	0x2d
	.4byte	0x14b3
	.uleb128 0x4
	.4byte	0x1484
	.uleb128 0x4
	.4byte	0x54f
	.uleb128 0x4
	.4byte	0x2aa
	.uleb128 0x4
	.4byte	0x2d
	.uleb128 0x4
	.4byte	0x58b
	.byte	0
	.uleb128 0xf
	.4byte	.LASF322
	.byte	0x1d
	.byte	0x11
	.4byte	0x14c4
	.uleb128 0x4
	.4byte	0x1484
	.byte	0
	.uleb128 0x26
	.4byte	.LASF323
	.byte	0x24
	.byte	0x9f
	.byte	0x5
	.4byte	0x2d
	.4byte	0x14e9
	.uleb128 0x4
	.4byte	0x555
	.uleb128 0x4
	.4byte	0x55a
	.uleb128 0x4
	.4byte	0x55a
	.uleb128 0x4
	.4byte	0x2d
	.byte	0
	.uleb128 0x26
	.4byte	.LASF324
	.byte	0x3
	.byte	0x3f
	.byte	0x8
	.4byte	0x867
	.4byte	0x1509
	.uleb128 0x4
	.4byte	0xda1
	.uleb128 0x4
	.4byte	0x2d
	.uleb128 0x4
	.4byte	0x2d
	.byte	0
	.uleb128 0xf
	.4byte	.LASF325
	.byte	0x25
	.byte	0xb
	.4byte	0x1538
	.uleb128 0x4
	.4byte	0x2d
	.uleb128 0x4
	.4byte	0x1538
	.uleb128 0x4
	.4byte	0xda1
	.uleb128 0x4
	.4byte	0x2d
	.uleb128 0x4
	.4byte	0x2d
	.uleb128 0x4
	.4byte	0x2d
	.uleb128 0x4
	.4byte	0x12d
	.byte	0
	.uleb128 0x9
	.4byte	0xeb6
	.uleb128 0xf
	.4byte	.LASF326
	.byte	0x26
	.byte	0xb
	.4byte	0x155d
	.uleb128 0x4
	.4byte	0x2d
	.uleb128 0x4
	.4byte	0x1538
	.uleb128 0x4
	.4byte	0xaed
	.uleb128 0x4
	.4byte	0x1240
	.byte	0
	.uleb128 0xf
	.4byte	.LASF327
	.byte	0x27
	.byte	0xa
	.4byte	0x1582
	.uleb128 0x4
	.4byte	0x2d
	.uleb128 0x4
	.4byte	0x1538
	.uleb128 0x4
	.4byte	0xda1
	.uleb128 0x4
	.4byte	0x26
	.uleb128 0x4
	.4byte	0x26
	.byte	0
	.uleb128 0xf
	.4byte	.LASF328
	.byte	0x1e
	.byte	0x39
	.4byte	0x1598
	.uleb128 0x4
	.4byte	0x2d
	.uleb128 0x4
	.4byte	0x1598
	.byte	0
	.uleb128 0x9
	.4byte	0x10bf
	.uleb128 0x42
	.4byte	.LASF329
	.byte	0xc
	.byte	0x37
	.byte	0x7
	.4byte	0x2bd
	.4byte	0x15af
	.uleb128 0x18
	.byte	0
	.uleb128 0xf
	.4byte	.LASF330
	.byte	0x20
	.byte	0x2a
	.4byte	0x15ca
	.uleb128 0x4
	.4byte	0x1453
	.uleb128 0x4
	.4byte	0x1240
	.uleb128 0x4
	.4byte	0x26
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF331
	.byte	0x27
	.byte	0x8
	.4byte	0x15d7
	.uleb128 0x18
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF332
	.byte	0x26
	.byte	0x9
	.4byte	0x15e4
	.uleb128 0x18
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF333
	.byte	0x25
	.byte	0x9
	.4byte	0x15f1
	.uleb128 0x18
	.byte	0
	.uleb128 0xf
	.4byte	.LASF334
	.byte	0x28
	.byte	0x5e
	.4byte	0x1602
	.uleb128 0x4
	.4byte	0x2bd
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF335
	.byte	0x27
	.byte	0x7
	.4byte	0x160f
	.uleb128 0x18
	.byte	0
	.uleb128 0xf
	.4byte	.LASF336
	.byte	0x1f
	.byte	0x1a
	.4byte	0x1620
	.uleb128 0x4
	.4byte	0x1620
	.byte	0
	.uleb128 0x9
	.4byte	0x10f2
	.uleb128 0xf
	.4byte	.LASF337
	.byte	0x1f
	.byte	0x19
	.4byte	0x1636
	.uleb128 0x4
	.4byte	0x580
	.byte	0
	.uleb128 0xf
	.4byte	.LASF338
	.byte	0x1f
	.byte	0x18
	.4byte	0x1651
	.uleb128 0x4
	.4byte	0x736
	.uleb128 0x4
	.4byte	0x75a
	.uleb128 0x4
	.4byte	0x3f4
	.byte	0
	.uleb128 0xf
	.4byte	.LASF339
	.byte	0x1f
	.byte	0x15
	.4byte	0x1667
	.uleb128 0x4
	.4byte	0x1620
	.uleb128 0x4
	.4byte	0x1667
	.byte	0
	.uleb128 0x9
	.4byte	0x55f
	.uleb128 0x1e
	.4byte	.LASF340
	.byte	0x26
	.byte	0x8
	.4byte	0x1679
	.uleb128 0x18
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF341
	.byte	0x25
	.byte	0x8
	.4byte	0x1686
	.uleb128 0x18
	.byte	0
	.uleb128 0xf
	.4byte	.LASF342
	.byte	0x20
	.byte	0x29
	.4byte	0x1697
	.uleb128 0x4
	.4byte	0x1453
	.byte	0
	.uleb128 0x26
	.4byte	.LASF343
	.byte	0x29
	.byte	0x21
	.byte	0x8
	.4byte	0x2bd
	.4byte	0x16b7
	.uleb128 0x4
	.4byte	0x2bd
	.uleb128 0x4
	.4byte	0x2d
	.uleb128 0x4
	.4byte	0x29e
	.byte	0
	.uleb128 0x34
	.4byte	.LASF362
	.byte	0xc9
	.4byte	.LFB227
	.4byte	.LFE227-.LFB227
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1828
	.uleb128 0x43
	.ascii	"iod\000"
	.byte	0x1
	.byte	0xc9
	.byte	0x21
	.4byte	0x26
	.4byte	.LLST74
	.4byte	.LVUS74
	.uleb128 0x16
	.4byte	0x2139
	.4byte	.LBI235
	.2byte	.LVU507
	.4byte	.LLRL75
	.byte	0xce
	.byte	0x2
	.4byte	0x17aa
	.uleb128 0x7
	.4byte	0x215a
	.4byte	.LLST76
	.4byte	.LVUS76
	.uleb128 0x7
	.4byte	0x214f
	.4byte	.LLST77
	.4byte	.LVUS77
	.uleb128 0x7
	.4byte	0x2143
	.4byte	.LLST78
	.4byte	.LVUS78
	.uleb128 0x35
	.4byte	0x216c
	.4byte	.LBI236
	.2byte	.LVU509
	.4byte	.LLRL75
	.byte	0x8
	.byte	0x28
	.byte	0x2
	.uleb128 0x7
	.4byte	0x2176
	.4byte	.LLST79
	.4byte	.LVUS79
	.uleb128 0x7
	.4byte	0x218d
	.4byte	.LLST80
	.4byte	.LVUS80
	.uleb128 0x7
	.4byte	0x2199
	.4byte	.LLST81
	.4byte	.LVUS81
	.uleb128 0x7
	.4byte	0x2182
	.4byte	.LLST82
	.4byte	.LVUS82
	.uleb128 0x19
	.4byte	.LLRL75
	.uleb128 0x36
	.4byte	0x21a5
	.4byte	.LLST83
	.4byte	.LVUS83
	.uleb128 0x44
	.4byte	0x21af
	.uleb128 0x45
	.4byte	0x21c1
	.4byte	.LLRL84
	.byte	0x8
	.byte	0x21
	.byte	0x12
	.uleb128 0x17
	.4byte	0x21e8
	.uleb128 0x17
	.4byte	0x21dd
	.uleb128 0x17
	.4byte	0x21d1
	.uleb128 0x19
	.4byte	.LLRL84
	.uleb128 0x36
	.4byte	0x21f4
	.4byte	.LLST85
	.4byte	.LVUS85
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xa
	.4byte	.LVL122
	.4byte	0x15af
	.4byte	0x17c9
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x74
	.sleb128 680
	.uleb128 0x3
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x40
	.uleb128 0x5
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0x40
	.uleb128 0x26
	.byte	0
	.uleb128 0x15
	.4byte	.LVL123
	.4byte	0x159d
	.uleb128 0xa
	.4byte	.LVL124
	.4byte	0x1582
	.4byte	0x17e5
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x15
	.4byte	.LVL132
	.4byte	0x1828
	.uleb128 0xa
	.4byte	.LVL133
	.4byte	0x155d
	.4byte	0x1802
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0xa
	.4byte	.LVL134
	.4byte	0x153d
	.4byte	0x1817
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0x74
	.sleb128 680
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL135
	.4byte	0x1509
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x46
	.4byte	.LASF385
	.byte	0x1
	.byte	0x5b
	.byte	0xd
	.4byte	.LFB226
	.4byte	.LFE226-.LFB226
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1fa3
	.uleb128 0xe
	.4byte	.LASF344
	.byte	0x61
	.byte	0x6
	.4byte	0x2d
	.4byte	.LLST0
	.4byte	.LVUS0
	.uleb128 0xe
	.4byte	.LASF345
	.byte	0x61
	.byte	0x16
	.4byte	0x2d
	.4byte	.LLST1
	.4byte	.LVUS1
	.uleb128 0x47
	.4byte	.LASF346
	.byte	0x1
	.byte	0x61
	.byte	0x29
	.4byte	0x2d
	.byte	0
	.uleb128 0x20
	.ascii	"pY\000"
	.byte	0x66
	.byte	0x6
	.4byte	0x2d
	.4byte	.LLST2
	.4byte	.LVUS2
	.uleb128 0xe
	.4byte	.LASF347
	.byte	0x67
	.byte	0x9
	.4byte	0x867
	.4byte	.LLST3
	.4byte	.LVUS3
	.uleb128 0xe
	.4byte	.LASF348
	.byte	0x6c
	.byte	0x9
	.4byte	0xb4d
	.4byte	.LLST4
	.4byte	.LVUS4
	.uleb128 0x20
	.ascii	"i\000"
	.byte	0xb7
	.byte	0x6
	.4byte	0x2d
	.4byte	.LLST5
	.4byte	.LVUS5
	.uleb128 0xe
	.4byte	.LASF349
	.byte	0xb8
	.byte	0x15
	.4byte	0x13a0
	.4byte	.LLST6
	.4byte	.LVUS6
	.uleb128 0x1b
	.4byte	.LLRL15
	.4byte	0x1c6b
	.uleb128 0xe
	.4byte	.LASF350
	.byte	0x6f
	.byte	0xe
	.4byte	0x12bf
	.4byte	.LLST16
	.4byte	.LVUS16
	.uleb128 0xe
	.4byte	.LASF177
	.byte	0x70
	.byte	0xa
	.4byte	0x867
	.4byte	.LLST17
	.4byte	.LVUS17
	.uleb128 0xe
	.4byte	.LASF305
	.byte	0x71
	.byte	0xc
	.4byte	0x12ba
	.4byte	.LLST18
	.4byte	.LVUS18
	.uleb128 0x1b
	.4byte	.LLRL49
	.4byte	0x198d
	.uleb128 0x12
	.4byte	.LASF351
	.byte	0x76
	.byte	0x10
	.4byte	0xf7c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.uleb128 0xa
	.4byte	.LVL90
	.4byte	0x14b3
	.4byte	0x193c
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.byte	0
	.uleb128 0xa
	.4byte	.LVL91
	.4byte	0x1489
	.4byte	0x1963
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x40
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1
	.byte	0x34
	.uleb128 0x3
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0x50
	.uleb128 0x34
	.byte	0
	.uleb128 0xa
	.4byte	.LVL92
	.4byte	0x1473
	.4byte	0x1978
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL93
	.4byte	0x1458
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	.LLRL19
	.4byte	0x1c40
	.uleb128 0x27
	.ascii	"i\000"
	.byte	0x1
	.byte	0x85
	.byte	0xc
	.4byte	0x2d
	.uleb128 0x19
	.4byte	.LLRL20
	.uleb128 0x27
	.ascii	"dir\000"
	.byte	0x1
	.byte	0x86
	.byte	0xe
	.4byte	0x12d
	.uleb128 0xe
	.4byte	.LASF259
	.byte	0x87
	.byte	0xf
	.4byte	0x1fa3
	.4byte	.LLST21
	.4byte	.LVUS21
	.uleb128 0xe
	.4byte	.LASF352
	.byte	0x89
	.byte	0x8
	.4byte	0x2d
	.4byte	.LLST22
	.4byte	.LVUS22
	.uleb128 0xe
	.4byte	.LASF353
	.byte	0x89
	.byte	0x25
	.4byte	0x2d
	.4byte	.LLST23
	.4byte	.LVUS23
	.uleb128 0xe
	.4byte	.LASF354
	.byte	0x89
	.byte	0x44
	.4byte	0x2d
	.4byte	.LLST24
	.4byte	.LVUS24
	.uleb128 0xe
	.4byte	.LASF355
	.byte	0x8f
	.byte	0xb
	.4byte	0xb4d
	.4byte	.LLST25
	.4byte	.LVUS25
	.uleb128 0x12
	.4byte	.LASF356
	.byte	0x9b
	.byte	0xd
	.4byte	0xe6c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.uleb128 0xe
	.4byte	.LASF357
	.byte	0xa0
	.byte	0xb
	.4byte	0x867
	.4byte	.LLST26
	.4byte	.LVUS26
	.uleb128 0xe
	.4byte	.LASF358
	.byte	0xa1
	.byte	0xf
	.4byte	0x12bf
	.4byte	.LLST27
	.4byte	.LVUS27
	.uleb128 0x16
	.4byte	0x228c
	.4byte	.LBI161
	.2byte	.LVU143
	.4byte	.LLRL28
	.byte	0x8f
	.byte	0x12
	.4byte	0x1a75
	.uleb128 0x7
	.4byte	0x22a6
	.4byte	.LLST29
	.4byte	.LVUS29
	.uleb128 0x7
	.4byte	0x229c
	.4byte	.LLST30
	.4byte	.LVUS30
	.byte	0
	.uleb128 0x16
	.4byte	0x2267
	.4byte	.LBI168
	.2byte	.LVU157
	.4byte	.LLRL31
	.byte	0x92
	.byte	0x8
	.4byte	0x1aa5
	.uleb128 0x7
	.4byte	0x2281
	.4byte	.LLST32
	.4byte	.LVUS32
	.uleb128 0x7
	.4byte	0x2277
	.4byte	.LLST32
	.4byte	.LVUS32
	.byte	0
	.uleb128 0x31
	.4byte	0x233c
	.4byte	.LBI173
	.2byte	.LVU173
	.4byte	.LBB173
	.4byte	.LBE173-.LBB173
	.byte	0x98
	.byte	0x9
	.4byte	0x1ad6
	.uleb128 0x17
	.4byte	0x2363
	.uleb128 0x7
	.4byte	0x2358
	.4byte	.LLST34
	.4byte	.LVUS34
	.uleb128 0x17
	.4byte	0x234c
	.byte	0
	.uleb128 0x31
	.4byte	0x21ff
	.4byte	.LBI175
	.2byte	.LVU182
	.4byte	.LBB175
	.4byte	.LBE175-.LBB175
	.byte	0x9b
	.byte	0x1d
	.4byte	0x1b60
	.uleb128 0x7
	.4byte	0x2223
	.4byte	.LLST35
	.4byte	.LVUS35
	.uleb128 0x7
	.4byte	0x2219
	.4byte	.LLST36
	.4byte	.LVUS36
	.uleb128 0x7
	.4byte	0x220f
	.4byte	.LLST37
	.4byte	.LVUS37
	.uleb128 0x37
	.4byte	0x222e
	.4byte	.LBI176
	.2byte	.LVU184
	.4byte	.LBB176
	.4byte	.LBE176-.LBB176
	.byte	0x9e
	.uleb128 0x7
	.4byte	0x225c
	.4byte	.LLST38
	.4byte	.LVUS38
	.uleb128 0x7
	.4byte	0x2252
	.4byte	.LLST39
	.4byte	.LVUS39
	.uleb128 0x7
	.4byte	0x2248
	.4byte	.LLST40
	.4byte	.LVUS40
	.uleb128 0x7
	.4byte	0x223e
	.4byte	.LLST41
	.4byte	.LVUS41
	.byte	0
	.byte	0
	.uleb128 0x31
	.4byte	0x21ff
	.4byte	.LBI177
	.2byte	.LVU195
	.4byte	.LBB177
	.4byte	.LBE177-.LBB177
	.byte	0x9c
	.byte	0x9
	.4byte	0x1bea
	.uleb128 0x7
	.4byte	0x2223
	.4byte	.LLST42
	.4byte	.LVUS42
	.uleb128 0x7
	.4byte	0x2219
	.4byte	.LLST42
	.4byte	.LVUS42
	.uleb128 0x7
	.4byte	0x220f
	.4byte	.LLST42
	.4byte	.LVUS42
	.uleb128 0x37
	.4byte	0x222e
	.4byte	.LBI178
	.2byte	.LVU197
	.4byte	.LBB178
	.4byte	.LBE178-.LBB178
	.byte	0x9e
	.uleb128 0x7
	.4byte	0x225c
	.4byte	.LLST45
	.4byte	.LVUS45
	.uleb128 0x7
	.4byte	0x2252
	.4byte	.LLST46
	.4byte	.LVUS46
	.uleb128 0x7
	.4byte	0x2248
	.4byte	.LLST46
	.4byte	.LVUS46
	.uleb128 0x7
	.4byte	0x223e
	.4byte	.LLST46
	.4byte	.LVUS46
	.byte	0
	.byte	0
	.uleb128 0xa
	.4byte	.LVL32
	.4byte	0x1433
	.4byte	0x1c01
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LANCHOR0+680
	.byte	0
	.uleb128 0xa
	.4byte	.LVL34
	.4byte	0x14e9
	.4byte	0x1c15
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL38
	.4byte	0x14c4
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x4
	.byte	0x91
	.sleb128 -268
	.byte	0x6
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LANCHOR0+652
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x5
	.byte	0x3
	.4byte	.LANCHOR0+656
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1
	.byte	0x3c
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL87
	.4byte	0x14c4
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LANCHOR0+660
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LANCHOR0+664
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x5
	.byte	0x3
	.4byte	.LANCHOR0+668
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1
	.byte	0x38
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	.LLRL50
	.4byte	0x1d91
	.uleb128 0x20
	.ascii	"x\000"
	.byte	0xa6
	.byte	0xb
	.4byte	0x2d
	.4byte	.LLST51
	.4byte	.LVUS51
	.uleb128 0x19
	.4byte	.LLRL52
	.uleb128 0x20
	.ascii	"z\000"
	.byte	0xa7
	.byte	0xc
	.4byte	0x2d
	.4byte	.LLST53
	.4byte	.LVUS53
	.uleb128 0x19
	.4byte	.LLRL54
	.uleb128 0xe
	.4byte	.LASF177
	.byte	0xa8
	.byte	0xb
	.4byte	0x867
	.4byte	.LLST55
	.4byte	.LVUS55
	.uleb128 0x19
	.4byte	.LLRL56
	.uleb128 0xe
	.4byte	.LASF359
	.byte	0xab
	.byte	0x9
	.4byte	0x3f4
	.4byte	.LLST57
	.4byte	.LVUS57
	.uleb128 0x1b
	.4byte	.LLRL58
	.4byte	0x1d01
	.uleb128 0xe
	.4byte	.LASF360
	.byte	0xac
	.byte	0xe
	.4byte	0x2d
	.4byte	.LLST59
	.4byte	.LVUS59
	.uleb128 0x19
	.4byte	.LLRL60
	.uleb128 0xe
	.4byte	.LASF361
	.byte	0xad
	.byte	0xf
	.4byte	0x2d
	.4byte	.LLST61
	.4byte	.LVUS61
	.byte	0
	.byte	0
	.uleb128 0x35
	.4byte	0x2316
	.4byte	.LBI198
	.2byte	.LVU291
	.4byte	.LLRL62
	.byte	0x1
	.byte	0xb0
	.byte	0x10
	.uleb128 0x7
	.4byte	0x232f
	.4byte	.LLST63
	.4byte	.LVUS63
	.uleb128 0x7
	.4byte	0x2323
	.4byte	.LLST64
	.4byte	.LVUS64
	.uleb128 0xa
	.4byte	.LVL62
	.4byte	0x13f5
	.4byte	0x1d42
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x92
	.uleb128 0x50
	.sleb128 0
	.byte	0
	.uleb128 0xa
	.4byte	.LVL63
	.4byte	0x14c4
	.4byte	0x1d67
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x76
	.sleb128 4
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x76
	.sleb128 8
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1
	.byte	0x3c
	.byte	0
	.uleb128 0xa
	.4byte	.LVL66
	.4byte	0x13df
	.4byte	0x1d7c
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x92
	.uleb128 0x50
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL68
	.4byte	0x13c7
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x76
	.sleb128 12
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	.LLRL65
	.4byte	0x1e0e
	.uleb128 0x12
	.4byte	.LASF351
	.byte	0xba
	.byte	0xf
	.4byte	0xf7c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.uleb128 0xa
	.4byte	.LVL75
	.4byte	0x14b3
	.4byte	0x1dbd
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0xa
	.4byte	.LVL76
	.4byte	0x1489
	.4byte	0x1de3
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x40
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1
	.byte	0x34
	.uleb128 0x3
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0x8
	.uleb128 0x34
	.byte	0
	.uleb128 0xa
	.4byte	.LVL77
	.4byte	0x1473
	.4byte	0x1df7
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.4byte	.LVL78
	.4byte	0x1458
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x16
	.4byte	0x22fb
	.4byte	.LBI99
	.2byte	.LVU25
	.4byte	.LLRL7
	.byte	0x66
	.byte	0xf
	.4byte	0x1e31
	.uleb128 0x7
	.4byte	0x230b
	.4byte	.LLST8
	.4byte	.LVUS8
	.byte	0
	.uleb128 0x16
	.4byte	0x22fb
	.4byte	.LBI107
	.2byte	.LVU55
	.4byte	.LLRL9
	.byte	0x68
	.byte	0x6
	.4byte	0x1e4c
	.uleb128 0x17
	.4byte	0x230b
	.byte	0
	.uleb128 0x16
	.4byte	0x22fb
	.4byte	.LBI117
	.2byte	.LVU61
	.4byte	.LLRL10
	.byte	0x68
	.byte	0x6
	.4byte	0x1e67
	.uleb128 0x17
	.4byte	0x230b
	.byte	0
	.uleb128 0x16
	.4byte	0x22e0
	.4byte	.LBI130
	.2byte	.LVU31
	.4byte	.LLRL11
	.byte	0x66
	.byte	0xf
	.4byte	0x1e8a
	.uleb128 0x7
	.4byte	0x22f0
	.4byte	.LLST12
	.4byte	.LVUS12
	.byte	0
	.uleb128 0x16
	.4byte	0x22e0
	.4byte	.LBI139
	.2byte	.LVU58
	.4byte	.LLRL13
	.byte	0x68
	.byte	0x6
	.4byte	0x1ea5
	.uleb128 0x17
	.4byte	0x22f0
	.byte	0
	.uleb128 0x16
	.4byte	0x22e0
	.4byte	.LBI147
	.2byte	.LVU64
	.4byte	.LLRL14
	.byte	0x68
	.byte	0x6
	.4byte	0x1ec0
	.uleb128 0x17
	.4byte	0x22f0
	.byte	0
	.uleb128 0xa
	.4byte	.LVL0
	.4byte	0x1625
	.4byte	0x1ed7
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0xc
	.4byte	0xffd990
	.byte	0
	.uleb128 0xa
	.4byte	.LVL1
	.4byte	0x2370
	.4byte	0x1ef7
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x7b
	.sleb128 0
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0xa
	.2byte	0x288
	.byte	0
	.uleb128 0x15
	.4byte	.LVL4
	.4byte	0x14e9
	.uleb128 0xa
	.4byte	.LVL5
	.4byte	0x14c4
	.4byte	0x1f28
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x7b
	.sleb128 648
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0x7b
	.sleb128 652
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0x7b
	.sleb128 656
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1
	.byte	0x3c
	.byte	0
	.uleb128 0xa
	.4byte	.LVL71
	.4byte	0x1418
	.4byte	0x1f46
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x37
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x8
	.byte	0xff
	.byte	0
	.uleb128 0xa
	.4byte	.LVL82
	.4byte	0x1418
	.4byte	0x1f63
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x36
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0xa
	.4byte	.LVL83
	.4byte	0x1406
	.4byte	0x1f8f
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x4
	.byte	0x91
	.sleb128 -272
	.byte	0x6
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x4
	.byte	0x91
	.sleb128 -280
	.byte	0x6
	.byte	0
	.uleb128 0x48
	.4byte	.LVL86
	.4byte	0x1406
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.byte	0
	.uleb128 0x9
	.4byte	0xa8
	.uleb128 0x49
	.4byte	.LASF386
	.byte	0x1
	.byte	0x51
	.byte	0x6
	.4byte	.LFB225
	.4byte	.LFE225-.LFB225
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1fec
	.uleb128 0x15
	.4byte	.LVL116
	.4byte	0x15f1
	.uleb128 0x15
	.4byte	.LVL117
	.4byte	0x15f1
	.uleb128 0x15
	.4byte	.LVL118
	.4byte	0x15e4
	.uleb128 0x15
	.4byte	.LVL119
	.4byte	0x15d7
	.uleb128 0x4a
	.4byte	.LVL120
	.4byte	0x15ca
	.byte	0
	.uleb128 0x34
	.4byte	.LASF363
	.byte	0x32
	.4byte	.LFB224
	.4byte	.LFE224-.LFB224
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2129
	.uleb128 0x2d
	.4byte	.LASF364
	.byte	0x21
	.4byte	0x1240
	.4byte	.LLST66
	.4byte	.LVUS66
	.uleb128 0x2d
	.4byte	.LASF365
	.byte	0x31
	.4byte	0xda1
	.4byte	.LLST67
	.4byte	.LVUS67
	.uleb128 0x2d
	.4byte	.LASF366
	.byte	0x44
	.4byte	0xa91
	.4byte	.LLST68
	.4byte	.LVUS68
	.uleb128 0x2d
	.4byte	.LASF367
	.byte	0x54
	.4byte	0x2d
	.4byte	.LLST69
	.4byte	.LVUS69
	.uleb128 0x12
	.4byte	.LASF179
	.byte	0x40
	.byte	0x8
	.4byte	0x2129
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1040
	.uleb128 0x1b
	.4byte	.LLRL70
	.4byte	0x208b
	.uleb128 0x20
	.ascii	"i\000"
	.byte	0x41
	.byte	0xb
	.4byte	0x2d
	.4byte	.LLST71
	.4byte	.LVUS71
	.uleb128 0x19
	.4byte	.LLRL72
	.uleb128 0x20
	.ascii	"val\000"
	.byte	0x42
	.byte	0x9
	.4byte	0x26
	.4byte	.LLST73
	.4byte	.LVUS73
	.byte	0
	.byte	0
	.uleb128 0xa
	.4byte	.LVL99
	.4byte	0x1686
	.4byte	0x20a2
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LANCHOR0+680
	.byte	0
	.uleb128 0x15
	.4byte	.LVL100
	.4byte	0x1679
	.uleb128 0x15
	.4byte	.LVL101
	.4byte	0x166c
	.uleb128 0xa
	.4byte	.LVL110
	.4byte	0x1651
	.4byte	0x20d2
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LANCHOR0+1084
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1048
	.byte	0
	.uleb128 0xa
	.4byte	.LVL111
	.4byte	0x1636
	.4byte	0x20f1
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x35
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0xa
	.4byte	.LVL112
	.4byte	0x1625
	.4byte	0x2108
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0xc
	.4byte	0xffd990
	.byte	0
	.uleb128 0xa
	.4byte	.LVL113
	.4byte	0x160f
	.4byte	0x211f
	.uleb128 0x3
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LANCHOR0+1084
	.byte	0
	.uleb128 0x15
	.4byte	.LVL114
	.4byte	0x1602
	.byte	0
	.uleb128 0x8
	.4byte	0x26
	.4byte	0x2139
	.uleb128 0x6
	.4byte	0xad
	.byte	0xff
	.byte	0
	.uleb128 0x38
	.4byte	.LASF368
	.byte	0x26
	.4byte	0x2167
	.uleb128 0x1c
	.4byte	.LASF176
	.byte	0x8
	.byte	0x26
	.byte	0x35
	.4byte	0x7b1
	.uleb128 0xb
	.ascii	"id\000"
	.byte	0x8
	.byte	0x26
	.byte	0x3f
	.4byte	0x2d
	.uleb128 0xb
	.ascii	"mtx\000"
	.byte	0x8
	.byte	0x26
	.byte	0x52
	.4byte	0x2167
	.byte	0
	.uleb128 0x9
	.4byte	0xec2
	.uleb128 0x38
	.4byte	.LASF369
	.byte	0x1e
	.4byte	0x21bc
	.uleb128 0x1c
	.4byte	.LASF176
	.byte	0x8
	.byte	0x1e
	.byte	0x35
	.4byte	0x7b1
	.uleb128 0xb
	.ascii	"id\000"
	.byte	0x8
	.byte	0x1e
	.byte	0x3f
	.4byte	0x2d
	.uleb128 0xb
	.ascii	"mtx\000"
	.byte	0x8
	.byte	0x1e
	.byte	0x52
	.4byte	0x2167
	.uleb128 0xb
	.ascii	"num\000"
	.byte	0x8
	.byte	0x1e
	.byte	0x5b
	.4byte	0x2d
	.uleb128 0x27
	.ascii	"i\000"
	.byte	0x8
	.byte	0x20
	.byte	0x6
	.4byte	0x2d
	.uleb128 0x27
	.ascii	"ptr\000"
	.byte	0x8
	.byte	0x21
	.byte	0xc
	.4byte	0x21bc
	.byte	0
	.uleb128 0x9
	.4byte	0xe6c
	.uleb128 0x28
	.4byte	.LASF370
	.byte	0x8
	.byte	0xf
	.byte	0x19
	.4byte	0x21bc
	.4byte	0x21ff
	.uleb128 0x1c
	.4byte	.LASF176
	.byte	0x8
	.byte	0xf
	.byte	0x3c
	.4byte	0x7b1
	.uleb128 0xb
	.ascii	"id\000"
	.byte	0x8
	.byte	0xf
	.byte	0x46
	.4byte	0x2d
	.uleb128 0x1c
	.4byte	.LASF77
	.byte	0x8
	.byte	0xf
	.byte	0x4e
	.4byte	0x2d
	.uleb128 0x27
	.ascii	"i\000"
	.byte	0x8
	.byte	0x11
	.byte	0x6
	.4byte	0x2d
	.byte	0
	.uleb128 0x28
	.4byte	.LASF371
	.byte	0x6
	.byte	0x9c
	.byte	0x18
	.4byte	0xe6c
	.4byte	0x222e
	.uleb128 0xb
	.ascii	"x\000"
	.byte	0x6
	.byte	0x9c
	.byte	0x28
	.4byte	0x26
	.uleb128 0xb
	.ascii	"y\000"
	.byte	0x6
	.byte	0x9c
	.byte	0x31
	.4byte	0x26
	.uleb128 0xb
	.ascii	"z\000"
	.byte	0x6
	.byte	0x9c
	.byte	0x3a
	.4byte	0x26
	.byte	0
	.uleb128 0x28
	.4byte	.LASF372
	.byte	0x6
	.byte	0x30
	.byte	0x18
	.4byte	0xe6c
	.4byte	0x2267
	.uleb128 0xb
	.ascii	"x\000"
	.byte	0x6
	.byte	0x30
	.byte	0x28
	.4byte	0x26
	.uleb128 0xb
	.ascii	"y\000"
	.byte	0x6
	.byte	0x30
	.byte	0x31
	.4byte	0x26
	.uleb128 0xb
	.ascii	"z\000"
	.byte	0x6
	.byte	0x30
	.byte	0x3a
	.4byte	0x26
	.uleb128 0xb
	.ascii	"w\000"
	.byte	0x6
	.byte	0x30
	.byte	0x43
	.4byte	0x26
	.byte	0
	.uleb128 0x2e
	.4byte	.LASF373
	.byte	0x4
	.byte	0x14
	.byte	0xe
	.4byte	0x26
	.4byte	0x228c
	.uleb128 0xb
	.ascii	"a\000"
	.byte	0x4
	.byte	0x14
	.byte	0x1c
	.4byte	0xb4d
	.uleb128 0xb
	.ascii	"b\000"
	.byte	0x4
	.byte	0x14
	.byte	0x26
	.4byte	0xb4d
	.byte	0
	.uleb128 0x2e
	.4byte	.LASF374
	.byte	0x4
	.byte	0x11
	.byte	0xf
	.4byte	0xb4d
	.4byte	0x22b1
	.uleb128 0xb
	.ascii	"a\000"
	.byte	0x4
	.byte	0x11
	.byte	0x1d
	.4byte	0xb4d
	.uleb128 0xb
	.ascii	"b\000"
	.byte	0x4
	.byte	0x11
	.byte	0x27
	.4byte	0xb4d
	.byte	0
	.uleb128 0x2e
	.4byte	.LASF375
	.byte	0x4
	.byte	0xe
	.byte	0xf
	.4byte	0xb4d
	.4byte	0x22e0
	.uleb128 0xb
	.ascii	"x\000"
	.byte	0x4
	.byte	0xe
	.byte	0x1c
	.4byte	0x26
	.uleb128 0xb
	.ascii	"y\000"
	.byte	0x4
	.byte	0xe
	.byte	0x25
	.4byte	0x26
	.uleb128 0xb
	.ascii	"z\000"
	.byte	0x4
	.byte	0xe
	.byte	0x2e
	.4byte	0x26
	.byte	0
	.uleb128 0x28
	.4byte	.LASF376
	.byte	0x3
	.byte	0x33
	.byte	0x13
	.4byte	0x2d
	.4byte	0x22fb
	.uleb128 0xb
	.ascii	"x\000"
	.byte	0x3
	.byte	0x33
	.byte	0x29
	.4byte	0x2d
	.byte	0
	.uleb128 0x28
	.4byte	.LASF377
	.byte	0x2
	.byte	0x19
	.byte	0x13
	.4byte	0x2d
	.4byte	0x2316
	.uleb128 0xb
	.ascii	"x\000"
	.byte	0x2
	.byte	0x19
	.byte	0x23
	.4byte	0x26
	.byte	0
	.uleb128 0x4b
	.4byte	.LASF378
	.byte	0x7
	.byte	0x2a
	.byte	0xd
	.byte	0x3
	.4byte	0x233c
	.uleb128 0x1c
	.4byte	.LASF182
	.byte	0x7
	.byte	0x2a
	.byte	0x2a
	.4byte	0xa91
	.uleb128 0x1c
	.4byte	.LASF379
	.byte	0x7
	.byte	0x2a
	.byte	0x3c
	.4byte	0x86c
	.byte	0
	.uleb128 0x2e
	.4byte	.LASF380
	.byte	0x5
	.byte	0x42
	.byte	0xc
	.4byte	0x3f4
	.4byte	0x2370
	.uleb128 0x1c
	.4byte	.LASF381
	.byte	0x5
	.byte	0x42
	.byte	0x2b
	.4byte	0xc5
	.uleb128 0xb
	.ascii	"in\000"
	.byte	0x5
	.byte	0x42
	.byte	0x40
	.4byte	0x12d
	.uleb128 0xb
	.ascii	"out\000"
	.byte	0x5
	.byte	0x42
	.byte	0x4e
	.4byte	0x12d
	.byte	0
	.uleb128 0x4c
	.4byte	.LASF343
	.4byte	.LASF387
	.byte	0x2a
	.byte	0
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
	.uleb128 0x3
	.uleb128 0x49
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x7e
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
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
	.uleb128 0x6
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0x8
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0xd
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
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x48
	.byte	0
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x2138
	.uleb128 0x5
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
	.uleb128 0x17
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x1b
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x5
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
	.uleb128 0x1d
	.uleb128 0x26
	.byte	0
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
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 6
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x48
	.byte	0x1
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 17
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0xd
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
	.uleb128 0x25
	.uleb128 0xd
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uleb128 0x27
	.uleb128 0x34
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
	.uleb128 0x28
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
	.uleb128 0x21
	.sleb128 3
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0x5
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
	.uleb128 0x2a
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
	.uleb128 0x21
	.sleb128 21
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 21
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 3
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2c
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
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x21
	.sleb128 50
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
	.uleb128 0x2e
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
	.uleb128 0x20
	.uleb128 0x21
	.sleb128 3
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uleb128 0xd
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
	.uleb128 0x38
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x30
	.uleb128 0xd
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x31
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x2138
	.uleb128 0x5
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
	.uleb128 0x32
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0x6
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
	.uleb128 0x33
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3e
	.uleb128 0x21
	.sleb128 7
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 32
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x34
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
	.uleb128 0x35
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x2138
	.uleb128 0x5
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
	.uleb128 0x36
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
	.uleb128 0x37
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x2138
	.uleb128 0x5
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0x21
	.sleb128 6
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x57
	.uleb128 0x21
	.sleb128 9
	.byte	0
	.byte	0
	.uleb128 0x38
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 20
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x20
	.uleb128 0x21
	.sleb128 3
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x39
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
	.uleb128 0x3a
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
	.uleb128 0x3b
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x3c
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3d
	.uleb128 0x13
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x3e
	.uleb128 0xd
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
	.uleb128 0xd
	.uleb128 0xb
	.uleb128 0x6b
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x3f
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
	.uleb128 0xd
	.uleb128 0xb
	.uleb128 0x6b
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x40
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x41
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
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x42
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x43
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
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x44
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x45
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x46
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
	.uleb128 0x47
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
	.uleb128 0x48
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
	.uleb128 0x49
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
	.uleb128 0x4a
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
	.uleb128 0x4b
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
	.uleb128 0x4c
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
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
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
.LVUS74:
	.uleb128 0
	.uleb128 .LVU498
	.uleb128 .LVU498
	.uleb128 0
.LLST74:
	.byte	0x6
	.4byte	.LVL121
	.byte	0x4
	.uleb128 .LVL121-.LVL121
	.uleb128 .LVL122-1-.LVL121
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x40
	.byte	0x4
	.uleb128 .LVL122-1-.LVL121
	.uleb128 .LFE227-.LVL121
	.uleb128 0x6
	.byte	0xa3
	.uleb128 0x3
	.byte	0xa5
	.uleb128 0x40
	.uleb128 0x26
	.byte	0x9f
	.byte	0
.LVUS76:
	.uleb128 .LVU507
	.uleb128 .LVU535
.LLST76:
	.byte	0x8
	.4byte	.LVL125
	.uleb128 .LVL131-.LVL125
	.uleb128 0x6
	.byte	0x3
	.4byte	camera+128
	.byte	0x9f
	.byte	0
.LVUS77:
	.uleb128 .LVU507
	.uleb128 .LVU534
	.uleb128 .LVU534
	.uleb128 .LVU535
.LLST77:
	.byte	0x6
	.4byte	.LVL125
	.byte	0x4
	.uleb128 .LVL125-.LVL125
	.uleb128 .LVL130-.LVL125
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL130-.LVL125
	.uleb128 .LVL131-.LVL125
	.uleb128 0x5
	.byte	0x3
	.4byte	projectionUniform
	.byte	0
.LVUS78:
	.uleb128 .LVU507
	.uleb128 .LVU535
.LLST78:
	.byte	0x8
	.4byte	.LVL125
	.uleb128 .LVL131-.LVL125
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0
.LVUS79:
	.uleb128 .LVU510
	.uleb128 .LVU535
.LLST79:
	.byte	0x8
	.4byte	.LVL125
	.uleb128 .LVL131-.LVL125
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0
.LVUS80:
	.uleb128 .LVU510
	.uleb128 .LVU535
.LLST80:
	.byte	0x8
	.4byte	.LVL125
	.uleb128 .LVL131-.LVL125
	.uleb128 0x6
	.byte	0x3
	.4byte	camera+128
	.byte	0x9f
	.byte	0
.LVUS81:
	.uleb128 .LVU510
	.uleb128 .LVU535
.LLST81:
	.byte	0x8
	.4byte	.LVL125
	.uleb128 .LVL131-.LVL125
	.uleb128 0x2
	.byte	0x34
	.byte	0x9f
	.byte	0
.LVUS82:
	.uleb128 .LVU509
	.uleb128 .LVU534
	.uleb128 .LVU534
	.uleb128 .LVU535
.LLST82:
	.byte	0x6
	.4byte	.LVL125
	.byte	0x4
	.uleb128 .LVL125-.LVL125
	.uleb128 .LVL130-.LVL125
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL130-.LVL125
	.uleb128 .LVL131-.LVL125
	.uleb128 0x5
	.byte	0x3
	.4byte	projectionUniform
	.byte	0
.LVUS83:
	.uleb128 .LVU532
	.uleb128 .LVU535
.LLST83:
	.byte	0x8
	.4byte	.LVL129
	.uleb128 .LVL131-.LVL129
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0
.LVUS85:
	.uleb128 .LVU510
	.uleb128 .LVU515
	.uleb128 .LVU515
	.uleb128 .LVU520
	.uleb128 .LVU520
	.uleb128 .LVU524
	.uleb128 .LVU524
	.uleb128 .LVU528
	.uleb128 .LVU528
	.uleb128 .LVU530
.LLST85:
	.byte	0x6
	.4byte	.LVL125
	.byte	0x4
	.uleb128 .LVL125-.LVL125
	.uleb128 .LVL126-.LVL125
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL126-.LVL125
	.uleb128 .LVL127-.LVL125
	.uleb128 0x2
	.byte	0x31
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL127-.LVL125
	.uleb128 .LVL128-.LVL125
	.uleb128 0x2
	.byte	0x32
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL128-.LVL125
	.uleb128 .LVL129-.LVL125
	.uleb128 0x2
	.byte	0x33
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL129-.LVL125
	.uleb128 .LVL129-.LVL125
	.uleb128 0x2
	.byte	0x34
	.byte	0x9f
	.byte	0
.LVUS0:
	.uleb128 .LVU8
	.uleb128 .LVU88
	.uleb128 .LVU88
	.uleb128 .LVU241
	.uleb128 .LVU328
	.uleb128 .LVU353
	.uleb128 .LVU353
	.uleb128 .LVU391
	.uleb128 .LVU391
	.uleb128 .LVU393
	.uleb128 .LVU393
	.uleb128 0
.LLST0:
	.byte	0x6
	.4byte	.LVL1
	.byte	0x4
	.uleb128 .LVL1-.LVL1
	.uleb128 .LVL11-.LVL1
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL11-.LVL1
	.uleb128 .LVL43-.LVL1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -280
	.byte	0x4
	.uleb128 .LVL73-.LVL1
	.uleb128 .LVL81-.LVL1
	.uleb128 0x1
	.byte	0x57
	.byte	0x4
	.uleb128 .LVL81-.LVL1
	.uleb128 .LVL94-.LVL1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -280
	.byte	0x4
	.uleb128 .LVL94-.LVL1
	.uleb128 .LVL95-.LVL1
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL95-.LVL1
	.uleb128 .LFE226-.LVL1
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0
.LVUS1:
	.uleb128 .LVU8
	.uleb128 .LVU88
	.uleb128 .LVU88
	.uleb128 .LVU241
	.uleb128 .LVU363
	.uleb128 .LVU379
	.uleb128 .LVU392
	.uleb128 .LVU393
	.uleb128 .LVU393
	.uleb128 0
.LLST1:
	.byte	0x6
	.4byte	.LVL1
	.byte	0x4
	.uleb128 .LVL1-.LVL1
	.uleb128 .LVL11-.LVL1
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL11-.LVL1
	.uleb128 .LVL43-.LVL1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -272
	.byte	0x4
	.uleb128 .LVL86-.LVL1
	.uleb128 .LVL89-.LVL1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -272
	.byte	0x4
	.uleb128 .LVL94-.LVL1
	.uleb128 .LVL95-.LVL1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -272
	.byte	0x4
	.uleb128 .LVL95-.LVL1
	.uleb128 .LFE226-.LVL1
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0
.LVUS2:
	.uleb128 .LVU54
	.uleb128 .LVU72
	.uleb128 .LVU393
	.uleb128 .LVU406
.LLST2:
	.byte	0x6
	.4byte	.LVL6
	.byte	0x4
	.uleb128 .LVL6-.LVL6
	.uleb128 .LVL7-.LVL6
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL95-.LVL6
	.uleb128 .LVL96-.LVL6
	.uleb128 0x1
	.byte	0x54
	.byte	0
.LVUS3:
	.uleb128 .LVU66
	.uleb128 .LVU88
	.uleb128 .LVU393
	.uleb128 0
.LLST3:
	.byte	0x6
	.4byte	.LVL6
	.byte	0x4
	.uleb128 .LVL6-.LVL6
	.uleb128 .LVL11-.LVL6
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL95-.LVL6
	.uleb128 .LFE226-.LVL6
	.uleb128 0x1
	.byte	0x55
	.byte	0
.LVUS4:
	.uleb128 .LVU77
	.uleb128 .LVU78
	.uleb128 .LVU78
	.uleb128 .LVU79
	.uleb128 .LVU79
	.uleb128 .LVU361
	.uleb128 .LVU361
	.uleb128 .LVU363
	.uleb128 .LVU363
	.uleb128 .LVU393
	.uleb128 .LVU406
	.uleb128 0
.LLST4:
	.byte	0x6
	.4byte	.LVL8
	.byte	0x4
	.uleb128 .LVL8-.LVL8
	.uleb128 .LVL9-.LVL8
	.uleb128 0x6
	.byte	0x90
	.uleb128 0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x8
	.byte	0x4
	.uleb128 .LVL9-.LVL8
	.uleb128 .LVL10-.LVL8
	.uleb128 0xa
	.byte	0x90
	.uleb128 0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x53
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.byte	0x4
	.uleb128 .LVL10-.LVL8
	.uleb128 .LVL84-.LVL8
	.uleb128 0xc
	.byte	0x90
	.uleb128 0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x53
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x4
	.uleb128 .LVL84-.LVL8
	.uleb128 .LVL86-.LVL8
	.uleb128 0x8
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x53
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.byte	0x4
	.uleb128 .LVL86-.LVL8
	.uleb128 .LVL95-.LVL8
	.uleb128 0xc
	.byte	0x90
	.uleb128 0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x53
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x4
	.uleb128 .LVL96-.LVL8
	.uleb128 .LFE226-.LVL8
	.uleb128 0xc
	.byte	0x90
	.uleb128 0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x53
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0
.LVUS5:
	.uleb128 .LVU328
	.uleb128 .LVU346
	.uleb128 .LVU346
	.uleb128 .LVU352
	.uleb128 .LVU352
	.uleb128 .LVU353
.LLST5:
	.byte	0x6
	.4byte	.LVL73
	.byte	0x4
	.uleb128 .LVL73-.LVL73
	.uleb128 .LVL79-.LVL73
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL79-.LVL73
	.uleb128 .LVL80-.LVL73
	.uleb128 0x3
	.byte	0x74
	.sleb128 1
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL80-.LVL73
	.uleb128 .LVL81-.LVL73
	.uleb128 0x1
	.byte	0x54
	.byte	0
.LVUS6:
	.uleb128 .LVU330
	.uleb128 .LVU346
	.uleb128 .LVU346
	.uleb128 .LVU353
.LLST6:
	.byte	0x6
	.4byte	.LVL74
	.byte	0x4
	.uleb128 .LVL74-.LVL74
	.uleb128 .LVL79-.LVL74
	.uleb128 0x8
	.byte	0x74
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL79-.LVL74
	.uleb128 .LVL81-.LVL74
	.uleb128 0x8
	.byte	0x74
	.sleb128 1
	.byte	0x33
	.byte	0x24
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.byte	0
.LVUS16:
	.uleb128 .LVU99
	.uleb128 .LVU106
	.uleb128 .LVU106
	.uleb128 .LVU237
	.uleb128 .LVU363
	.uleb128 .LVU372
	.uleb128 .LVU372
	.uleb128 .LVU386
	.uleb128 .LVU386
	.uleb128 .LVU393
.LLST16:
	.byte	0x6
	.4byte	.LVL12
	.byte	0x4
	.uleb128 .LVL12-.LVL12
	.uleb128 .LVL13-.LVL12
	.uleb128 0xd
	.byte	0x50
	.byte	0x93
	.uleb128 0x4
	.byte	0x58
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -284
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0x3
	.byte	0x4
	.uleb128 .LVL13-.LVL12
	.uleb128 .LVL42-.LVL12
	.uleb128 0xf
	.byte	0x91
	.sleb128 -292
	.byte	0x93
	.uleb128 0x4
	.byte	0x58
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -284
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0x3
	.byte	0x4
	.uleb128 .LVL86-.LVL12
	.uleb128 .LVL88-.LVL12
	.uleb128 0xf
	.byte	0x91
	.sleb128 -292
	.byte	0x93
	.uleb128 0x4
	.byte	0x58
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -284
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0x3
	.byte	0x4
	.uleb128 .LVL88-.LVL12
	.uleb128 .LVL90-1-.LVL12
	.uleb128 0xd
	.byte	0x50
	.byte	0x93
	.uleb128 0x4
	.byte	0x58
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -284
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0x3
	.byte	0x4
	.uleb128 .LVL90-1-.LVL12
	.uleb128 .LVL95-.LVL12
	.uleb128 0xf
	.byte	0x91
	.sleb128 -292
	.byte	0x93
	.uleb128 0x4
	.byte	0x58
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -284
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0x3
	.byte	0
.LVUS17:
	.uleb128 .LVU100
	.uleb128 .LVU241
	.uleb128 .LVU363
	.uleb128 .LVU393
.LLST17:
	.byte	0x6
	.4byte	.LVL12
	.byte	0x4
	.uleb128 .LVL12-.LVL12
	.uleb128 .LVL43-.LVL12
	.uleb128 0x1
	.byte	0x58
	.byte	0x4
	.uleb128 .LVL86-.LVL12
	.uleb128 .LVL95-.LVL12
	.uleb128 0x1
	.byte	0x58
	.byte	0
.LVUS18:
	.uleb128 .LVU101
	.uleb128 .LVU106
	.uleb128 .LVU106
	.uleb128 .LVU241
	.uleb128 .LVU363
	.uleb128 .LVU372
	.uleb128 .LVU372
	.uleb128 .LVU386
	.uleb128 .LVU386
	.uleb128 .LVU393
.LLST18:
	.byte	0x6
	.4byte	.LVL12
	.byte	0x4
	.uleb128 .LVL12-.LVL12
	.uleb128 .LVL13-.LVL12
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL13-.LVL12
	.uleb128 .LVL43-.LVL12
	.uleb128 0x3
	.byte	0x91
	.sleb128 -292
	.byte	0x4
	.uleb128 .LVL86-.LVL12
	.uleb128 .LVL88-.LVL12
	.uleb128 0x3
	.byte	0x91
	.sleb128 -292
	.byte	0x4
	.uleb128 .LVL88-.LVL12
	.uleb128 .LVL90-1-.LVL12
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL90-1-.LVL12
	.uleb128 .LVL95-.LVL12
	.uleb128 0x3
	.byte	0x91
	.sleb128 -292
	.byte	0
.LVUS21:
	.uleb128 .LVU111
	.uleb128 .LVU235
	.uleb128 .LVU235
	.uleb128 .LVU241
.LLST21:
	.byte	0x6
	.4byte	.LVL14
	.byte	0x4
	.uleb128 .LVL14-.LVL14
	.uleb128 .LVL40-.LVL14
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL40-.LVL14
	.uleb128 .LVL43-.LVL14
	.uleb128 0x3
	.byte	0x74
	.sleb128 -12
	.byte	0x9f
	.byte	0
.LVUS22:
	.uleb128 .LVU117
	.uleb128 .LVU214
.LLST22:
	.byte	0x8
	.4byte	.LVL15
	.uleb128 .LVL35-.LVL15
	.uleb128 0x1
	.byte	0x55
	.byte	0
.LVUS23:
	.uleb128 .LVU120
	.uleb128 .LVU135
	.uleb128 .LVU135
	.uleb128 .LVU232
.LLST23:
	.byte	0x6
	.4byte	.LVL16
	.byte	0x4
	.uleb128 .LVL16-.LVL16
	.uleb128 .LVL19-.LVL16
	.uleb128 0x6
	.byte	0x79
	.sleb128 0
	.byte	0x71
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL19-.LVL16
	.uleb128 .LVL39-.LVL16
	.uleb128 0x1
	.byte	0x59
	.byte	0
.LVUS24:
	.uleb128 .LVU124
	.uleb128 .LVU130
	.uleb128 .LVU130
	.uleb128 .LVU207
	.uleb128 .LVU207
	.uleb128 .LVU212
.LLST24:
	.byte	0x6
	.4byte	.LVL17
	.byte	0x4
	.uleb128 .LVL17-.LVL17
	.uleb128 .LVL18-.LVL17
	.uleb128 0x6
	.byte	0x76
	.sleb128 0
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL18-.LVL17
	.uleb128 .LVL33-.LVL17
	.uleb128 0x1
	.byte	0x56
	.byte	0x4
	.uleb128 .LVL33-.LVL17
	.uleb128 .LVL34-1-.LVL17
	.uleb128 0x1
	.byte	0x52
	.byte	0
.LVUS25:
	.uleb128 .LVU155
	.uleb128 .LVU201
	.uleb128 .LVU201
	.uleb128 .LVU207
	.uleb128 .LVU207
	.uleb128 .LVU212
	.uleb128 .LVU212
	.uleb128 .LVU214
.LLST25:
	.byte	0x6
	.4byte	.LVL25
	.byte	0x4
	.uleb128 .LVL25-.LVL25
	.uleb128 .LVL32-1-.LVL25
	.uleb128 0xa
	.byte	0x90
	.uleb128 0x4d
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x4e
	.byte	0x93
	.uleb128 0x4
	.byte	0x4
	.uleb128 .LVL32-1-.LVL25
	.uleb128 .LVL33-.LVL25
	.uleb128 0x24
	.byte	0x75
	.sleb128 0
	.byte	0x34
	.byte	0x24
	.byte	0x23
	.uleb128 0x8
	.byte	0xa8
	.uleb128 0x2d
	.byte	0xa8
	.uleb128 0x26
	.byte	0xa5
	.uleb128 0x54
	.uleb128 0x26
	.byte	0x1c
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.byte	0x76
	.sleb128 0
	.byte	0x34
	.byte	0x24
	.byte	0x23
	.uleb128 0x8
	.byte	0xa8
	.uleb128 0x2d
	.byte	0xa8
	.uleb128 0x26
	.byte	0xa5
	.uleb128 0x52
	.uleb128 0x26
	.byte	0x1c
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0x4
	.uleb128 .LVL33-.LVL25
	.uleb128 .LVL34-1-.LVL25
	.uleb128 0x24
	.byte	0x75
	.sleb128 0
	.byte	0x34
	.byte	0x24
	.byte	0x23
	.uleb128 0x8
	.byte	0xa8
	.uleb128 0x2d
	.byte	0xa8
	.uleb128 0x26
	.byte	0xa5
	.uleb128 0x54
	.uleb128 0x26
	.byte	0x1c
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.byte	0x72
	.sleb128 0
	.byte	0x34
	.byte	0x24
	.byte	0x23
	.uleb128 0x8
	.byte	0xa8
	.uleb128 0x2d
	.byte	0xa8
	.uleb128 0x26
	.byte	0xa5
	.uleb128 0x52
	.uleb128 0x26
	.byte	0x1c
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0x4
	.uleb128 .LVL34-1-.LVL25
	.uleb128 .LVL35-.LVL25
	.uleb128 0x13
	.byte	0x75
	.sleb128 0
	.byte	0x34
	.byte	0x24
	.byte	0x23
	.uleb128 0x8
	.byte	0xa8
	.uleb128 0x2d
	.byte	0xa8
	.uleb128 0x26
	.byte	0xa5
	.uleb128 0x54
	.uleb128 0x26
	.byte	0x1c
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x8
	.byte	0
.LVUS26:
	.uleb128 .LVU212
	.uleb128 .LVU219
	.uleb128 .LVU219
	.uleb128 .LVU232
.LLST26:
	.byte	0x6
	.4byte	.LVL34
	.byte	0x4
	.uleb128 .LVL34-.LVL34
	.uleb128 .LVL37-.LVL34
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL37-.LVL34
	.uleb128 .LVL39-.LVL34
	.uleb128 0x1
	.byte	0x55
	.byte	0
.LVUS27:
	.uleb128 .LVU213
	.uleb128 .LVU215
	.uleb128 .LVU215
	.uleb128 .LVU219
	.uleb128 .LVU219
	.uleb128 .LVU232
.LLST27:
	.byte	0x6
	.4byte	.LVL34
	.byte	0x4
	.uleb128 .LVL34-.LVL34
	.uleb128 .LVL36-.LVL34
	.uleb128 0x13
	.byte	0x79
	.sleb128 0
	.byte	0xa
	.2byte	0x2030
	.byte	0x1e
	.byte	0x70
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x18
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0x50
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.byte	0x4
	.uleb128 .LVL36-.LVL34
	.uleb128 .LVL37-.LVL34
	.uleb128 0x16
	.byte	0x79
	.sleb128 0
	.byte	0xa
	.2byte	0x2030
	.byte	0x1e
	.byte	0x70
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x18
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0x50
	.byte	0x93
	.uleb128 0x4
	.byte	0x56
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0x3
	.byte	0x4
	.uleb128 .LVL37-.LVL34
	.uleb128 .LVL39-.LVL34
	.uleb128 0x16
	.byte	0x79
	.sleb128 0
	.byte	0xa
	.2byte	0x2030
	.byte	0x1e
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x18
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.byte	0x56
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0x3
	.byte	0
.LVUS29:
	.uleb128 .LVU143
	.uleb128 .LVU155
.LLST29:
	.byte	0x8
	.4byte	.LVL20
	.uleb128 .LVL25-.LVL20
	.uleb128 0xc
	.byte	0x90
	.uleb128 0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x53
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0
.LVUS30:
	.uleb128 .LVU143
	.uleb128 .LVU147
	.uleb128 .LVU147
	.uleb128 .LVU149
	.uleb128 .LVU149
	.uleb128 .LVU151
	.uleb128 .LVU151
	.uleb128 .LVU152
	.uleb128 .LVU152
	.uleb128 .LVU155
.LLST30:
	.byte	0x6
	.4byte	.LVL20
	.byte	0x4
	.uleb128 .LVL20-.LVL20
	.uleb128 .LVL21-.LVL20
	.uleb128 0x16
	.byte	0x73
	.sleb128 8
	.byte	0xa8
	.uleb128 0x2d
	.byte	0xa8
	.uleb128 0x26
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x4f
	.byte	0x93
	.uleb128 0x4
	.byte	0x71
	.sleb128 8
	.byte	0xa8
	.uleb128 0x2d
	.byte	0xa8
	.uleb128 0x26
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0x4
	.uleb128 .LVL21-.LVL20
	.uleb128 .LVL22-.LVL20
	.uleb128 0x11
	.byte	0x90
	.uleb128 0x4d
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x4f
	.byte	0x93
	.uleb128 0x4
	.byte	0x71
	.sleb128 8
	.byte	0xa8
	.uleb128 0x2d
	.byte	0xa8
	.uleb128 0x26
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0x4
	.uleb128 .LVL22-.LVL20
	.uleb128 .LVL23-.LVL20
	.uleb128 0x16
	.byte	0x90
	.uleb128 0x4d
	.byte	0x93
	.uleb128 0x4
	.byte	0x72
	.sleb128 8
	.byte	0xa8
	.uleb128 0x2d
	.byte	0xa8
	.uleb128 0x26
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0x71
	.sleb128 8
	.byte	0xa8
	.uleb128 0x2d
	.byte	0xa8
	.uleb128 0x26
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0x4
	.uleb128 .LVL23-.LVL20
	.uleb128 .LVL24-.LVL20
	.uleb128 0x11
	.byte	0x90
	.uleb128 0x4d
	.byte	0x93
	.uleb128 0x4
	.byte	0x72
	.sleb128 8
	.byte	0xa8
	.uleb128 0x2d
	.byte	0xa8
	.uleb128 0x26
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x4e
	.byte	0x93
	.uleb128 0x4
	.byte	0x4
	.uleb128 .LVL24-.LVL20
	.uleb128 .LVL25-.LVL20
	.uleb128 0x16
	.byte	0x73
	.sleb128 8
	.byte	0xa8
	.uleb128 0x2d
	.byte	0xa8
	.uleb128 0x26
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0x72
	.sleb128 8
	.byte	0xa8
	.uleb128 0x2d
	.byte	0xa8
	.uleb128 0x26
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x4e
	.byte	0x93
	.uleb128 0x4
	.byte	0
.LVUS32:
	.uleb128 .LVU157
	.uleb128 .LVU159
.LLST32:
	.byte	0x8
	.4byte	.LVL25
	.uleb128 .LVL25-.LVL25
	.uleb128 0xa
	.byte	0x90
	.uleb128 0x4d
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x4e
	.byte	0x93
	.uleb128 0x4
	.byte	0
.LVUS34:
	.uleb128 .LVU173
	.uleb128 .LVU175
.LLST34:
	.byte	0x8
	.4byte	.LVL26
	.uleb128 .LVL26-.LVL26
	.uleb128 0x3
	.byte	0x91
	.sleb128 -284
	.byte	0
.LVUS35:
	.uleb128 .LVU182
	.uleb128 .LVU188
	.uleb128 .LVU188
	.uleb128 .LVU194
.LLST35:
	.byte	0x6
	.4byte	.LVL27
	.byte	0x4
	.uleb128 .LVL27-.LVL27
	.uleb128 .LVL28-.LVL27
	.uleb128 0x7
	.byte	0x71
	.sleb128 0
	.byte	0xa8
	.uleb128 0x2d
	.byte	0xa8
	.uleb128 0x26
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL28-.LVL27
	.uleb128 .LVL31-.LVL27
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x41
	.byte	0
.LVUS36:
	.uleb128 .LVU182
	.uleb128 .LVU189
	.uleb128 .LVU189
	.uleb128 .LVU194
.LLST36:
	.byte	0x6
	.4byte	.LVL27
	.byte	0x4
	.uleb128 .LVL27-.LVL27
	.uleb128 .LVL29-.LVL27
	.uleb128 0x7
	.byte	0x72
	.sleb128 0
	.byte	0xa8
	.uleb128 0x2d
	.byte	0xa8
	.uleb128 0x26
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL29-.LVL27
	.uleb128 .LVL31-.LVL27
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x42
	.byte	0
.LVUS37:
	.uleb128 .LVU182
	.uleb128 .LVU192
	.uleb128 .LVU192
	.uleb128 .LVU194
.LLST37:
	.byte	0x6
	.4byte	.LVL27
	.byte	0x4
	.uleb128 .LVL27-.LVL27
	.uleb128 .LVL30-.LVL27
	.uleb128 0x7
	.byte	0x73
	.sleb128 0
	.byte	0xa8
	.uleb128 0x2d
	.byte	0xa8
	.uleb128 0x26
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL30-.LVL27
	.uleb128 .LVL31-.LVL27
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x43
	.byte	0
.LVUS38:
	.uleb128 .LVU184
	.uleb128 .LVU186
.LLST38:
	.byte	0x8
	.4byte	.LVL27
	.uleb128 .LVL27-.LVL27
	.uleb128 0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0
	.byte	0
.LVUS39:
	.uleb128 .LVU184
	.uleb128 .LVU186
.LLST39:
	.byte	0x8
	.4byte	.LVL27
	.uleb128 .LVL27-.LVL27
	.uleb128 0x7
	.byte	0x71
	.sleb128 0
	.byte	0xa8
	.uleb128 0x2d
	.byte	0xa8
	.uleb128 0x26
	.byte	0x9f
	.byte	0
.LVUS40:
	.uleb128 .LVU184
	.uleb128 .LVU186
.LLST40:
	.byte	0x8
	.4byte	.LVL27
	.uleb128 .LVL27-.LVL27
	.uleb128 0x7
	.byte	0x72
	.sleb128 0
	.byte	0xa8
	.uleb128 0x2d
	.byte	0xa8
	.uleb128 0x26
	.byte	0x9f
	.byte	0
.LVUS41:
	.uleb128 .LVU184
	.uleb128 .LVU186
.LLST41:
	.byte	0x8
	.4byte	.LVL27
	.uleb128 .LVL27-.LVL27
	.uleb128 0x7
	.byte	0x73
	.sleb128 0
	.byte	0xa8
	.uleb128 0x2d
	.byte	0xa8
	.uleb128 0x26
	.byte	0x9f
	.byte	0
.LVUS42:
	.uleb128 .LVU195
	.uleb128 .LVU199
.LLST42:
	.byte	0x8
	.4byte	.LVL31
	.uleb128 .LVL31-.LVL31
	.uleb128 0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0x41800000
	.byte	0
.LVUS45:
	.uleb128 .LVU197
	.uleb128 .LVU199
.LLST45:
	.byte	0x8
	.4byte	.LVL31
	.uleb128 .LVL31-.LVL31
	.uleb128 0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0
	.byte	0
.LVUS46:
	.uleb128 .LVU197
	.uleb128 .LVU199
.LLST46:
	.byte	0x8
	.4byte	.LVL31
	.uleb128 .LVL31-.LVL31
	.uleb128 0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0x41800000
	.byte	0
.LVUS51:
	.uleb128 .LVU245
	.uleb128 .LVU362
.LLST51:
	.byte	0x8
	.4byte	.LVL44
	.uleb128 .LVL85-.LVL44
	.uleb128 0x1
	.byte	0x5a
	.byte	0
.LVUS53:
	.uleb128 .LVU245
	.uleb128 .LVU250
	.uleb128 .LVU250
	.uleb128 .LVU310
	.uleb128 .LVU310
	.uleb128 .LVU313
	.uleb128 .LVU313
	.uleb128 .LVU324
.LLST53:
	.byte	0x6
	.4byte	.LVL44
	.byte	0x4
	.uleb128 .LVL44-.LVL44
	.uleb128 .LVL45-.LVL44
	.uleb128 0x2
	.byte	0x31
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL45-.LVL44
	.uleb128 .LVL67-.LVL44
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL67-.LVL44
	.uleb128 .LVL68-.LVL44
	.uleb128 0x3
	.byte	0x74
	.sleb128 -1
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL68-.LVL44
	.uleb128 .LVL72-.LVL44
	.uleb128 0x1
	.byte	0x54
	.byte	0
.LVUS55:
	.uleb128 .LVU250
	.uleb128 .LVU256
	.uleb128 .LVU259
	.uleb128 .LVU300
	.uleb128 .LVU300
	.uleb128 .LVU314
.LLST55:
	.byte	0x6
	.4byte	.LVL45
	.byte	0x4
	.uleb128 .LVL45-.LVL45
	.uleb128 .LVL47-.LVL45
	.uleb128 0x1
	.byte	0x5c
	.byte	0x4
	.uleb128 .LVL48-.LVL45
	.uleb128 .LVL62-1-.LVL45
	.uleb128 0x1
	.byte	0x5c
	.byte	0x4
	.uleb128 .LVL62-1-.LVL45
	.uleb128 .LVL69-.LVL45
	.uleb128 0x3
	.byte	0x91
	.sleb128 -256
	.byte	0
.LVUS57:
	.uleb128 .LVU263
	.uleb128 .LVU265
	.uleb128 .LVU265
	.uleb128 .LVU266
	.uleb128 .LVU266
	.uleb128 .LVU274
	.uleb128 .LVU274
	.uleb128 .LVU276
	.uleb128 .LVU276
	.uleb128 .LVU282
	.uleb128 .LVU282
	.uleb128 .LVU284
.LLST57:
	.byte	0x6
	.4byte	.LVL49
	.byte	0x4
	.uleb128 .LVL49-.LVL49
	.uleb128 .LVL51-.LVL49
	.uleb128 0x1
	.byte	0x52
	.byte	0x4
	.uleb128 .LVL51-.LVL49
	.uleb128 .LVL52-.LVL49
	.uleb128 0xd
	.byte	0x31
	.byte	0x7e
	.sleb128 0
	.byte	0x7e
	.sleb128 0
	.byte	0x30
	.byte	0x2e
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL52-.LVL49
	.uleb128 .LVL55-.LVL49
	.uleb128 0x2
	.byte	0x31
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL55-.LVL49
	.uleb128 .LVL56-.LVL49
	.uleb128 0x1
	.byte	0x52
	.byte	0x4
	.uleb128 .LVL56-.LVL49
	.uleb128 .LVL59-.LVL49
	.uleb128 0xd
	.byte	0x31
	.byte	0x7e
	.sleb128 0
	.byte	0x7e
	.sleb128 0
	.byte	0x30
	.byte	0x2e
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL59-.LVL49
	.uleb128 .LVL60-.LVL49
	.uleb128 0x1d
	.byte	0x31
	.byte	0x71
	.sleb128 -4
	.byte	0x6
	.byte	0x23
	.uleb128 0xc
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x71
	.sleb128 -4
	.byte	0x6
	.byte	0x23
	.uleb128 0xc
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x30
	.byte	0x2e
	.byte	0x28
	.2byte	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.byte	0
.LVUS59:
	.uleb128 .LVU264
	.uleb128 .LVU266
	.uleb128 .LVU276
	.uleb128 .LVU280
.LLST59:
	.byte	0x6
	.4byte	.LVL50
	.byte	0x4
	.uleb128 .LVL50-.LVL50
	.uleb128 .LVL52-.LVL50
	.uleb128 0x1
	.byte	0x56
	.byte	0x4
	.uleb128 .LVL56-.LVL50
	.uleb128 .LVL57-.LVL50
	.uleb128 0x1
	.byte	0x56
	.byte	0
.LVUS61:
	.uleb128 .LVU263
	.uleb128 .LVU266
	.uleb128 .LVU266
	.uleb128 .LVU269
	.uleb128 .LVU269
	.uleb128 .LVU272
	.uleb128 .LVU272
	.uleb128 .LVU275
	.uleb128 .LVU275
	.uleb128 .LVU281
.LLST61:
	.byte	0x6
	.4byte	.LVL49
	.byte	0x4
	.uleb128 .LVL49-.LVL49
	.uleb128 .LVL52-.LVL49
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL52-.LVL49
	.uleb128 .LVL53-.LVL49
	.uleb128 0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL53-.LVL49
	.uleb128 .LVL54-.LVL49
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL54-.LVL49
	.uleb128 .LVL55-.LVL49
	.uleb128 0x3
	.byte	0x73
	.sleb128 -1
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL55-.LVL49
	.uleb128 .LVL58-.LVL49
	.uleb128 0x1
	.byte	0x53
	.byte	0
.LVUS63:
	.uleb128 .LVU290
	.uleb128 .LVU300
	.uleb128 .LVU300
	.uleb128 .LVU306
	.uleb128 .LVU306
	.uleb128 .LVU307
	.uleb128 .LVU307
	.uleb128 .LVU311
.LLST63:
	.byte	0x6
	.4byte	.LVL61
	.byte	0x4
	.uleb128 .LVL61-.LVL61
	.uleb128 .LVL62-1-.LVL61
	.uleb128 0xd
	.byte	0x34
	.byte	0x9f
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0x3
	.byte	0x51
	.byte	0x93
	.uleb128 0x4
	.byte	0x30
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0x4
	.uleb128 .LVL62-1-.LVL61
	.uleb128 .LVL64-.LVL61
	.uleb128 0xf
	.byte	0x34
	.byte	0x9f
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0x3
	.byte	0x91
	.sleb128 -256
	.byte	0x93
	.uleb128 0x4
	.byte	0x30
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.byte	0x4
	.uleb128 .LVL64-.LVL61
	.uleb128 .LVL65-.LVL61
	.uleb128 0x10
	.byte	0x34
	.byte	0x9f
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0x3
	.byte	0x91
	.sleb128 -256
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -288
	.byte	0x93
	.uleb128 0x4
	.byte	0x4
	.uleb128 .LVL65-.LVL61
	.uleb128 .LVL68-.LVL61
	.uleb128 0xd
	.byte	0x34
	.byte	0x9f
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0x3
	.byte	0x91
	.sleb128 -256
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.byte	0
.LVUS64:
	.uleb128 .LVU280
	.uleb128 .LVU311
.LLST64:
	.byte	0x8
	.4byte	.LVL57
	.uleb128 .LVL68-.LVL57
	.uleb128 0x1
	.byte	0x56
	.byte	0
.LVUS8:
	.uleb128 .LVU25
	.uleb128 .LVU30
.LLST8:
	.byte	0x8
	.4byte	.LVL2
	.uleb128 .LVL3-.LVL2
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x4a
	.byte	0
.LVUS12:
	.uleb128 .LVU30
	.uleb128 .LVU33
.LLST12:
	.byte	0x8
	.4byte	.LVL3
	.uleb128 .LVL3-.LVL3
	.uleb128 0x1
	.byte	0x53
	.byte	0
.LVUS66:
	.uleb128 0
	.uleb128 .LVU416
	.uleb128 .LVU416
	.uleb128 .LVU473
	.uleb128 .LVU473
	.uleb128 0
.LLST66:
	.byte	0x6
	.4byte	.LVL97
	.byte	0x4
	.uleb128 .LVL97-.LVL97
	.uleb128 .LVL98-.LVL97
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL98-.LVL97
	.uleb128 .LVL115-.LVL97
	.uleb128 0x1
	.byte	0x56
	.byte	0x4
	.uleb128 .LVL115-.LVL97
	.uleb128 .LFE224-.LVL97
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.byte	0
.LVUS67:
	.uleb128 0
	.uleb128 .LVU430
	.uleb128 .LVU430
	.uleb128 0
.LLST67:
	.byte	0x6
	.4byte	.LVL97
	.byte	0x4
	.uleb128 .LVL97-.LVL97
	.uleb128 .LVL99-1-.LVL97
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL99-1-.LVL97
	.uleb128 .LFE224-.LVL97
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.byte	0
.LVUS68:
	.uleb128 0
	.uleb128 .LVU430
	.uleb128 .LVU430
	.uleb128 0
.LLST68:
	.byte	0x6
	.4byte	.LVL97
	.byte	0x4
	.uleb128 .LVL97-.LVL97
	.uleb128 .LVL99-1-.LVL97
	.uleb128 0x1
	.byte	0x52
	.byte	0x4
	.uleb128 .LVL99-1-.LVL97
	.uleb128 .LFE224-.LVL97
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.byte	0
.LVUS69:
	.uleb128 0
	.uleb128 .LVU430
	.uleb128 .LVU430
	.uleb128 0
.LLST69:
	.byte	0x6
	.4byte	.LVL97
	.byte	0x4
	.uleb128 .LVL97-.LVL97
	.uleb128 .LVL99-1-.LVL97
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL99-1-.LVL97
	.uleb128 .LFE224-.LVL97
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.byte	0
.LVUS71:
	.uleb128 .LVU435
	.uleb128 .LVU438
	.uleb128 .LVU438
	.uleb128 .LVU449
	.uleb128 .LVU449
	.uleb128 .LVU450
	.uleb128 .LVU451
	.uleb128 .LVU466
	.uleb128 .LVU466
	.uleb128 .LVU468
.LLST71:
	.byte	0x6
	.4byte	.LVL101
	.byte	0x4
	.uleb128 .LVL101-.LVL101
	.uleb128 .LVL102-.LVL101
	.uleb128 0x2
	.byte	0x30
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL102-.LVL101
	.uleb128 .LVL104-.LVL101
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL104-.LVL101
	.uleb128 .LVL105-.LVL101
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL106-.LVL101
	.uleb128 .LVL109-.LVL101
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL109-.LVL101
	.uleb128 .LVL110-1-.LVL101
	.uleb128 0x1
	.byte	0x51
	.byte	0
.LVUS73:
	.uleb128 .LVU438
	.uleb128 .LVU444
	.uleb128 .LVU452
	.uleb128 .LVU456
	.uleb128 .LVU456
	.uleb128 .LVU461
	.uleb128 .LVU461
	.uleb128 .LVU466
.LLST73:
	.byte	0x6
	.4byte	.LVL102
	.byte	0x4
	.uleb128 .LVL102-.LVL102
	.uleb128 .LVL103-.LVL102
	.uleb128 0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0x3f800000
	.byte	0x4
	.uleb128 .LVL106-.LVL102
	.uleb128 .LVL107-.LVL102
	.uleb128 0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0x3f800000
	.byte	0x4
	.uleb128 .LVL107-.LVL102
	.uleb128 .LVL108-.LVL102
	.uleb128 0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0
	.byte	0x4
	.uleb128 .LVL108-.LVL102
	.uleb128 .LVL109-.LVL102
	.uleb128 0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0x3f666666
	.byte	0
.Ldebug_loc3:
	.section	.debug_aranges,"",%progbits
	.4byte	0x34
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB226
	.4byte	.LFE226-.LFB226
	.4byte	.LFB224
	.4byte	.LFE224-.LFB224
	.4byte	.LFB225
	.4byte	.LFE225-.LFB225
	.4byte	.LFB227
	.4byte	.LFE227-.LFB227
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
.LLRL7:
	.byte	0x5
	.4byte	.LBB99
	.byte	0x4
	.uleb128 .LBB99-.LBB99
	.uleb128 .LBE99-.LBB99
	.byte	0x4
	.uleb128 .LBB106-.LBB99
	.uleb128 .LBE106-.LBB99
	.byte	0x4
	.uleb128 .LBB115-.LBB99
	.uleb128 .LBE115-.LBB99
	.byte	0x4
	.uleb128 .LBB125-.LBB99
	.uleb128 .LBE125-.LBB99
	.byte	0x4
	.uleb128 .LBB126-.LBB99
	.uleb128 .LBE126-.LBB99
	.byte	0x4
	.uleb128 .LBB129-.LBB99
	.uleb128 .LBE129-.LBB99
	.byte	0
.LLRL9:
	.byte	0x5
	.4byte	.LBB107
	.byte	0x4
	.uleb128 .LBB107-.LBB107
	.uleb128 .LBE107-.LBB107
	.byte	0x4
	.uleb128 .LBB116-.LBB107
	.uleb128 .LBE116-.LBB107
	.byte	0x4
	.uleb128 .LBB127-.LBB107
	.uleb128 .LBE127-.LBB107
	.byte	0x4
	.uleb128 .LBB133-.LBB107
	.uleb128 .LBE133-.LBB107
	.byte	0x4
	.uleb128 .LBB136-.LBB107
	.uleb128 .LBE136-.LBB107
	.byte	0x4
	.uleb128 .LBB138-.LBB107
	.uleb128 .LBE138-.LBB107
	.byte	0x4
	.uleb128 .LBB153-.LBB107
	.uleb128 .LBE153-.LBB107
	.byte	0
.LLRL10:
	.byte	0x5
	.4byte	.LBB117
	.byte	0x4
	.uleb128 .LBB117-.LBB117
	.uleb128 .LBE117-.LBB117
	.byte	0x4
	.uleb128 .LBB128-.LBB117
	.uleb128 .LBE128-.LBB117
	.byte	0x4
	.uleb128 .LBB134-.LBB117
	.uleb128 .LBE134-.LBB117
	.byte	0x4
	.uleb128 .LBB137-.LBB117
	.uleb128 .LBE137-.LBB117
	.byte	0x4
	.uleb128 .LBB144-.LBB117
	.uleb128 .LBE144-.LBB117
	.byte	0x4
	.uleb128 .LBB146-.LBB117
	.uleb128 .LBE146-.LBB117
	.byte	0x4
	.uleb128 .LBB155-.LBB117
	.uleb128 .LBE155-.LBB117
	.byte	0
.LLRL11:
	.byte	0x5
	.4byte	.LBB130
	.byte	0x4
	.uleb128 .LBB130-.LBB130
	.uleb128 .LBE130-.LBB130
	.byte	0x4
	.uleb128 .LBB135-.LBB130
	.uleb128 .LBE135-.LBB130
	.byte	0
.LLRL13:
	.byte	0x5
	.4byte	.LBB139
	.byte	0x4
	.uleb128 .LBB139-.LBB139
	.uleb128 .LBE139-.LBB139
	.byte	0x4
	.uleb128 .LBB145-.LBB139
	.uleb128 .LBE145-.LBB139
	.byte	0x4
	.uleb128 .LBB151-.LBB139
	.uleb128 .LBE151-.LBB139
	.byte	0x4
	.uleb128 .LBB154-.LBB139
	.uleb128 .LBE154-.LBB139
	.byte	0
.LLRL14:
	.byte	0x5
	.4byte	.LBB147
	.byte	0x4
	.uleb128 .LBB147-.LBB147
	.uleb128 .LBE147-.LBB147
	.byte	0x4
	.uleb128 .LBB152-.LBB147
	.uleb128 .LBE152-.LBB147
	.byte	0x4
	.uleb128 .LBB156-.LBB147
	.uleb128 .LBE156-.LBB147
	.byte	0
.LLRL15:
	.byte	0x5
	.4byte	.LBB157
	.byte	0x4
	.uleb128 .LBB157-.LBB157
	.uleb128 .LBE157-.LBB157
	.byte	0x4
	.uleb128 .LBB184-.LBB157
	.uleb128 .LBE184-.LBB157
	.byte	0x4
	.uleb128 .LBB185-.LBB157
	.uleb128 .LBE185-.LBB157
	.byte	0x4
	.uleb128 .LBB221-.LBB157
	.uleb128 .LBE221-.LBB157
	.byte	0
.LLRL19:
	.byte	0x5
	.4byte	.LBB159
	.byte	0x4
	.uleb128 .LBB159-.LBB159
	.uleb128 .LBE159-.LBB159
	.byte	0x4
	.uleb128 .LBB181-.LBB159
	.uleb128 .LBE181-.LBB159
	.byte	0
.LLRL20:
	.byte	0x5
	.4byte	.LBB160
	.byte	0x4
	.uleb128 .LBB160-.LBB160
	.uleb128 .LBE160-.LBB160
	.byte	0x4
	.uleb128 .LBB179-.LBB160
	.uleb128 .LBE179-.LBB160
	.byte	0
.LLRL28:
	.byte	0x5
	.4byte	.LBB161
	.byte	0x4
	.uleb128 .LBB161-.LBB161
	.uleb128 .LBE161-.LBB161
	.byte	0x4
	.uleb128 .LBB166-.LBB161
	.uleb128 .LBE166-.LBB161
	.byte	0x4
	.uleb128 .LBB167-.LBB161
	.uleb128 .LBE167-.LBB161
	.byte	0x4
	.uleb128 .LBB171-.LBB161
	.uleb128 .LBE171-.LBB161
	.byte	0
.LLRL31:
	.byte	0x5
	.4byte	.LBB168
	.byte	0x4
	.uleb128 .LBB168-.LBB168
	.uleb128 .LBE168-.LBB168
	.byte	0x4
	.uleb128 .LBB172-.LBB168
	.uleb128 .LBE172-.LBB168
	.byte	0
.LLRL49:
	.byte	0x5
	.4byte	.LBB180
	.byte	0x4
	.uleb128 .LBB180-.LBB180
	.uleb128 .LBE180-.LBB180
	.byte	0x4
	.uleb128 .LBB183-.LBB180
	.uleb128 .LBE183-.LBB180
	.byte	0
.LLRL50:
	.byte	0x5
	.4byte	.LBB186
	.byte	0x4
	.uleb128 .LBB186-.LBB186
	.uleb128 .LBE186-.LBB186
	.byte	0x4
	.uleb128 .LBB216-.LBB186
	.uleb128 .LBE216-.LBB186
	.byte	0
.LLRL52:
	.byte	0x5
	.4byte	.LBB187
	.byte	0x4
	.uleb128 .LBB187-.LBB187
	.uleb128 .LBE187-.LBB187
	.byte	0x4
	.uleb128 .LBB215-.LBB187
	.uleb128 .LBE215-.LBB187
	.byte	0
.LLRL54:
	.byte	0x5
	.4byte	.LBB188
	.byte	0x4
	.uleb128 .LBB188-.LBB188
	.uleb128 .LBE188-.LBB188
	.byte	0x4
	.uleb128 .LBB211-.LBB188
	.uleb128 .LBE211-.LBB188
	.byte	0x4
	.uleb128 .LBB212-.LBB188
	.uleb128 .LBE212-.LBB188
	.byte	0x4
	.uleb128 .LBB213-.LBB188
	.uleb128 .LBE213-.LBB188
	.byte	0x4
	.uleb128 .LBB214-.LBB188
	.uleb128 .LBE214-.LBB188
	.byte	0
.LLRL56:
	.byte	0x5
	.4byte	.LBB189
	.byte	0x4
	.uleb128 .LBB189-.LBB189
	.uleb128 .LBE189-.LBB189
	.byte	0x4
	.uleb128 .LBB206-.LBB189
	.uleb128 .LBE206-.LBB189
	.byte	0x4
	.uleb128 .LBB207-.LBB189
	.uleb128 .LBE207-.LBB189
	.byte	0x4
	.uleb128 .LBB208-.LBB189
	.uleb128 .LBE208-.LBB189
	.byte	0x4
	.uleb128 .LBB209-.LBB189
	.uleb128 .LBE209-.LBB189
	.byte	0x4
	.uleb128 .LBB210-.LBB189
	.uleb128 .LBE210-.LBB189
	.byte	0
.LLRL58:
	.byte	0x5
	.4byte	.LBB190
	.byte	0x4
	.uleb128 .LBB190-.LBB190
	.uleb128 .LBE190-.LBB190
	.byte	0x4
	.uleb128 .LBB193-.LBB190
	.uleb128 .LBE193-.LBB190
	.byte	0x4
	.uleb128 .LBB194-.LBB190
	.uleb128 .LBE194-.LBB190
	.byte	0x4
	.uleb128 .LBB195-.LBB190
	.uleb128 .LBE195-.LBB190
	.byte	0x4
	.uleb128 .LBB196-.LBB190
	.uleb128 .LBE196-.LBB190
	.byte	0
.LLRL60:
	.byte	0x5
	.4byte	.LBB191
	.byte	0x4
	.uleb128 .LBB191-.LBB191
	.uleb128 .LBE191-.LBB191
	.byte	0x4
	.uleb128 .LBB192-.LBB191
	.uleb128 .LBE192-.LBB191
	.byte	0
.LLRL62:
	.byte	0x5
	.4byte	.LBB198
	.byte	0x4
	.uleb128 .LBB198-.LBB198
	.uleb128 .LBE198-.LBB198
	.byte	0x4
	.uleb128 .LBB203-.LBB198
	.uleb128 .LBE203-.LBB198
	.byte	0x4
	.uleb128 .LBB204-.LBB198
	.uleb128 .LBE204-.LBB198
	.byte	0
.LLRL65:
	.byte	0x5
	.4byte	.LBB217
	.byte	0x4
	.uleb128 .LBB217-.LBB217
	.uleb128 .LBE217-.LBB217
	.byte	0x4
	.uleb128 .LBB218-.LBB217
	.uleb128 .LBE218-.LBB217
	.byte	0x4
	.uleb128 .LBB219-.LBB217
	.uleb128 .LBE219-.LBB217
	.byte	0x4
	.uleb128 .LBB220-.LBB217
	.uleb128 .LBE220-.LBB217
	.byte	0
.LLRL70:
	.byte	0x5
	.4byte	.LBB222
	.byte	0x4
	.uleb128 .LBB222-.LBB222
	.uleb128 .LBE222-.LBB222
	.byte	0x4
	.uleb128 .LBB226-.LBB222
	.uleb128 .LBE226-.LBB222
	.byte	0
.LLRL72:
	.byte	0x5
	.4byte	.LBB223
	.byte	0x4
	.uleb128 .LBB223-.LBB223
	.uleb128 .LBE223-.LBB223
	.byte	0x4
	.uleb128 .LBB224-.LBB223
	.uleb128 .LBE224-.LBB223
	.byte	0x4
	.uleb128 .LBB225-.LBB223
	.uleb128 .LBE225-.LBB223
	.byte	0
.LLRL75:
	.byte	0x5
	.4byte	.LBB235
	.byte	0x4
	.uleb128 .LBB235-.LBB235
	.uleb128 .LBE235-.LBB235
	.byte	0x4
	.uleb128 .LBB248-.LBB235
	.uleb128 .LBE248-.LBB235
	.byte	0
.LLRL84:
	.byte	0x5
	.4byte	.LBB238
	.byte	0x4
	.uleb128 .LBB238-.LBB238
	.uleb128 .LBE238-.LBB238
	.byte	0x4
	.uleb128 .LBB243-.LBB238
	.uleb128 .LBE243-.LBB238
	.byte	0x4
	.uleb128 .LBB244-.LBB238
	.uleb128 .LBE244-.LBB238
	.byte	0x4
	.uleb128 .LBB245-.LBB238
	.uleb128 .LBE245-.LBB238
	.byte	0
.LLRL86:
	.byte	0x7
	.4byte	.LFB226
	.uleb128 .LFE226-.LFB226
	.byte	0x7
	.4byte	.LFB224
	.uleb128 .LFE224-.LFB224
	.byte	0x7
	.4byte	.LFB225
	.uleb128 .LFE225-.LFB225
	.byte	0x7
	.4byte	.LFB227
	.uleb128 .LFE227-.LFB227
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF289:
	.ascii	"Frustum_NearTopLeft\000"
.LASF216:
	.ascii	"direction\000"
.LASF369:
	.ascii	"C3D_FVUnifMtxNx4\000"
.LASF43:
	.ascii	"Block_Planks\000"
.LASF86:
	.ascii	"transparentVBO\000"
.LASF337:
	.ascii	"C3D_FogColor\000"
.LASF122:
	.ascii	"NDM_DAEMON_BOSS\000"
.LASF341:
	.ascii	"Cursor_Init\000"
.LASF159:
	.ascii	"GPU_GEOMETRY_PRIM\000"
.LASF69:
	.ascii	"Block_Furnace\000"
.LASF178:
	.ascii	"WorkerItem\000"
.LASF126:
	.ascii	"GPU_RGB8\000"
.LASF181:
	.ascii	"capacity\000"
.LASF227:
	.ascii	"crouching\000"
.LASF338:
	.ascii	"C3D_FogGasMode\000"
.LASF211:
	.ascii	"amount\000"
.LASF260:
	.ascii	"flags\000"
.LASF153:
	.ascii	"GPU_PLAIN_DENSITY\000"
.LASF50:
	.ascii	"Block_Snow\000"
.LASF286:
	.ascii	"FrustumCorners\000"
.LASF54:
	.ascii	"Block_Smooth_Stone\000"
.LASF26:
	.ascii	"Direction_Invalid\000"
.LASF206:
	.ascii	"World\000"
.LASF221:
	.ascii	"fovAdd\000"
.LASF14:
	.ascii	"unsigned int\000"
.LASF292:
	.ascii	"Frustum_FarBottomRight\000"
.LASF183:
	.ascii	"itemAddedEvent\000"
.LASF191:
	.ascii	"WorldGenType\000"
.LASF42:
	.ascii	"Block_Brick\000"
.LASF37:
	.ascii	"Block_Log\000"
.LASF120:
	.ascii	"CSND_LOOPMODE_NORELOAD\000"
.LASF8:
	.ascii	"__int32_t\000"
.LASF72:
	.ascii	"Xorshift32\000"
.LASF271:
	.ascii	"maxLevel\000"
.LASF370:
	.ascii	"C3D_FVUnifWritePtr\000"
.LASF215:
	.ascii	"distSqr\000"
.LASF222:
	.ascii	"crouchAdd\000"
.LASF51:
	.ascii	"Block_Obsidian\000"
.LASF56:
	.ascii	"Block_Grass_Path\000"
.LASF256:
	.ascii	"C3D_Mtx\000"
.LASF266:
	.ascii	"C3D_TexCube\000"
.LASF262:
	.ascii	"base_paddr\000"
.LASF107:
	.ascii	"_seethroughTable\000"
.LASF142:
	.ascii	"GPU_EQUAL\000"
.LASF113:
	.ascii	"CSND_ENCODING_PCM8\000"
.LASF238:
	.ascii	"difficulty\000"
.LASF96:
	.ascii	"ChunkGenProgress\000"
.LASF365:
	.ascii	"world_\000"
.LASF349:
	.ascii	"render\000"
.LASF303:
	.ascii	"camera\000"
.LASF24:
	.ascii	"Direction_North\000"
.LASF309:
	.ascii	"renderingQueue\000"
.LASF284:
	.ascii	"FrustumPlanes_Count\000"
.LASF252:
	.ascii	"blockInActionRange\000"
.LASF249:
	.ascii	"quickSelectBar\000"
.LASF161:
	.ascii	"GPU_VERTEX_SHADER\000"
.LASF357:
	.ascii	"newChunk\000"
.LASF80:
	.ascii	"blocks\000"
.LASF251:
	.ascii	"blockInSight\000"
.LASF342:
	.ascii	"Camera_Init\000"
.LASF177:
	.ascii	"chunk\000"
.LASF90:
	.ascii	"forceVBOUpdate\000"
.LASF319:
	.ascii	"C3D_SetBufInfo\000"
.LASF160:
	.ascii	"GPU_Primitive_t\000"
.LASF335:
	.ascii	"Clouds_Init\000"
.LASF79:
	.ascii	"VBO_Block\000"
.LASF18:
	.ascii	"uint32_t\000"
.LASF166:
	.ascii	"NDSP_ENCODING_ADPCM\000"
.LASF325:
	.ascii	"Cursor_Draw\000"
.LASF384:
	.ascii	"/home/tobi/Dokumente/Craftus-Next/build\000"
.LASF124:
	.ascii	"NDM_DAEMON_FRIENDS\000"
.LASF19:
	.ascii	"uint64_t\000"
.LASF130:
	.ascii	"GPU_LA8\000"
.LASF306:
	.ascii	"enteredFrom\000"
.LASF307:
	.ascii	"RenderStep\000"
.LASF253:
	.ascii	"inventory\000"
.LASF210:
	.ascii	"meta\000"
.LASF123:
	.ascii	"NDM_DAEMON_NIM\000"
.LASF34:
	.ascii	"Block_Grass\000"
.LASF263:
	.ascii	"bufCount\000"
.LASF235:
	.ascii	"armour\000"
.LASF1:
	.ascii	"long long unsigned int\000"
.LASF236:
	.ascii	"oxygen\000"
.LASF259:
	.ascii	"offset\000"
.LASF219:
	.ascii	"pitch\000"
.LASF151:
	.ascii	"GPU_GAS\000"
.LASF198:
	.ascii	"cacheTranslationX\000"
.LASF291:
	.ascii	"Frustum_FarBottomLeft\000"
.LASF199:
	.ascii	"cacheTranslationZ\000"
.LASF320:
	.ascii	"Camera_IsAABBVisible\000"
.LASF246:
	.ascii	"quickSelectBarSlots\000"
.LASF48:
	.ascii	"Block_Door_Bottom\000"
.LASF6:
	.ascii	"__uint16_t\000"
.LASF356:
	.ascii	"chunkPosition\000"
.LASF129:
	.ascii	"GPU_RGBA4\000"
.LASF125:
	.ascii	"GPU_RGBA8\000"
.LASF275:
	.ascii	"border\000"
.LASF186:
	.ascii	"WorldGen_Smea\000"
.LASF200:
	.ascii	"chunkPool\000"
.LASF136:
	.ascii	"GPU_A4\000"
.LASF359:
	.ascii	"clear\000"
.LASF180:
	.ascii	"length\000"
.LASF195:
	.ascii	"HighestBlock\000"
.LASF208:
	.ascii	"Items_Count\000"
.LASF387:
	.ascii	"__builtin_memset\000"
.LASF58:
	.ascii	"Block_Lava\000"
.LASF244:
	.ascii	"gamemode\000"
.LASF118:
	.ascii	"CSND_LOOPMODE_NORMAL\000"
.LASF270:
	.ascii	"lodBias\000"
.LASF386:
	.ascii	"WorldRenderer_Deinit\000"
.LASF30:
	.ascii	"Block\000"
.LASF73:
	.ascii	"size_t\000"
.LASF70:
	.ascii	"Blocks_Count\000"
.LASF9:
	.ascii	"long int\000"
.LASF269:
	.ascii	"width\000"
.LASF381:
	.ascii	"visiblity\000"
.LASF385:
	.ascii	"renderWorld\000"
.LASF91:
	.ascii	"_Bool\000"
.LASF371:
	.ascii	"FVec3_New\000"
.LASF170:
	.ascii	"WorkerItemType_Save\000"
.LASF31:
	.ascii	"Block_Air\000"
.LASF373:
	.ascii	"f3_dot\000"
.LASF366:
	.ascii	"workqueue_\000"
.LASF57:
	.ascii	"Block_Water\000"
.LASF310:
	.ascii	"chunkRendered\000"
.LASF99:
	.ascii	"uuid\000"
.LASF334:
	.ascii	"free\000"
.LASF13:
	.ascii	"__uint64_t\000"
.LASF203:
	.ascii	"workqueue\000"
.LASF302:
	.ascii	"player\000"
.LASF225:
	.ascii	"sprinting\000"
.LASF204:
	.ascii	"randomTickGen\000"
.LASF47:
	.ascii	"Block_Door_Top\000"
.LASF226:
	.ascii	"flying\000"
.LASF362:
	.ascii	"WorldRenderer_Render\000"
.LASF135:
	.ascii	"GPU_L4\000"
.LASF305:
	.ascii	"cluster\000"
.LASF360:
	.ascii	"xOff\000"
.LASF193:
	.ascii	"settings\000"
.LASF344:
	.ascii	"polysTotal\000"
.LASF157:
	.ascii	"GPU_TRIANGLE_STRIP\000"
.LASF65:
	.ascii	"Block_Diamond_Block\000"
.LASF61:
	.ascii	"Block_Diamond_Ore\000"
.LASF207:
	.ascii	"Item_Totem\000"
.LASF279:
	.ascii	"Frustum_Right\000"
.LASF247:
	.ascii	"quickSelectBarSlot\000"
.LASF32:
	.ascii	"Block_Stone\000"
.LASF71:
	.ascii	"char\000"
.LASF109:
	.ascii	"LightLock\000"
.LASF117:
	.ascii	"CSND_LOOPMODE_MANUAL\000"
.LASF171:
	.ascii	"WorkerItemType_BaseGen\000"
.LASF116:
	.ascii	"CSND_ENCODING_PSG\000"
.LASF74:
	.ascii	"ptrdiff_t\000"
.LASF28:
	.ascii	"DirectionToOffset\000"
.LASF82:
	.ascii	"revision\000"
.LASF103:
	.ascii	"heightmapRevision\000"
.LASF197:
	.ascii	"genSettings\000"
.LASF297:
	.ascii	"frustumPlanes\000"
.LASF332:
	.ascii	"Hand_Deinit\000"
.LASF112:
	.ascii	"LightEvent\000"
.LASF323:
	.ascii	"vec_expand_\000"
.LASF15:
	.ascii	"uint8_t\000"
.LASF294:
	.ascii	"Frustum_FarTopRight\000"
.LASF348:
	.ascii	"playerPos\000"
.LASF250:
	.ascii	"viewRayCast\000"
.LASF67:
	.ascii	"Block_Iron_Block\000"
.LASF340:
	.ascii	"Hand_Init\000"
.LASF97:
	.ascii	"tasksRunning\000"
.LASF68:
	.ascii	"Block_Emerald_Block\000"
.LASF287:
	.ascii	"Frustum_NearBottomLeft\000"
.LASF336:
	.ascii	"C3D_FogLutBind\000"
.LASF114:
	.ascii	"CSND_ENCODING_PCM16\000"
.LASF23:
	.ascii	"Direction_Top\000"
.LASF288:
	.ascii	"Frustum_NearBottomRight\000"
.LASF174:
	.ascii	"WorkerItemTypes_Count\000"
.LASF314:
	.ascii	"LightLock_Unlock\000"
.LASF64:
	.ascii	"Block_Gold_Block\000"
.LASF234:
	.ascii	"hungertimer\000"
.LASF339:
	.ascii	"FogLut_FromArray\000"
.LASF12:
	.ascii	"long long int\000"
.LASF149:
	.ascii	"GPU_NO_FOG\000"
.LASF128:
	.ascii	"GPU_RGB565\000"
.LASF63:
	.ascii	"Block_Emerald_Ore\000"
.LASF111:
	.ascii	"lock\000"
.LASF248:
	.ascii	"inventorySite\000"
.LASF127:
	.ascii	"GPU_RGBA5551\000"
.LASF333:
	.ascii	"Cursor_Deinit\000"
.LASF298:
	.ascii	"frustumCorners\000"
.LASF190:
	.ascii	"WorldGenTypes_Count\000"
.LASF353:
	.ascii	"newY\000"
.LASF354:
	.ascii	"newZ\000"
.LASF346:
	.ascii	"steps\000"
.LASF255:
	.ascii	"C3D_FVec\000"
.LASF296:
	.ascii	"projection\000"
.LASF274:
	.ascii	"param\000"
.LASF331:
	.ascii	"Clouds_Deinit\000"
.LASF343:
	.ascii	"memset\000"
.LASF158:
	.ascii	"GPU_TRIANGLE_FAN\000"
.LASF213:
	.ascii	"superflat\000"
.LASF55:
	.ascii	"Block_Crafting_Table\000"
.LASF187:
	.ascii	"WorldGen_SuperFlat\000"
.LASF233:
	.ascii	"breakPlaceTimeout\000"
.LASF278:
	.ascii	"Frustum_Near\000"
.LASF350:
	.ascii	"step\000"
.LASF382:
	.ascii	"GNU C17 11.2.0 -mword-relocations -mtune=mpcore -mf"
	.ascii	"loat-abi=hard -mtp=soft -marm -march=armv6k -g -O2 "
	.ascii	"-ffunction-sections -fomit-frame-pointer\000"
.LASF281:
	.ascii	"Frustum_Top\000"
.LASF77:
	.ascii	"size\000"
.LASF311:
	.ascii	"transparentClusters\000"
.LASF379:
	.ascii	"item\000"
.LASF299:
	.ascii	"near\000"
.LASF355:
	.ascii	"dist\000"
.LASF119:
	.ascii	"CSND_LOOPMODE_ONESHOT\000"
.LASF328:
	.ascii	"C3D_TexBind\000"
.LASF205:
	.ascii	"weather\000"
.LASF383:
	.ascii	"/home/tobi/Dokumente/Craftus-Next/source/rendering/"
	.ascii	"WorldRenderer.c\000"
.LASF217:
	.ascii	"Raycast_Result\000"
.LASF268:
	.ascii	"height\000"
.LASF240:
	.ascii	"spawnx\000"
.LASF241:
	.ascii	"spawny\000"
.LASF242:
	.ascii	"spawnz\000"
.LASF168:
	.ascii	"ERROR_WORD_WRAP_FLAG\000"
.LASF121:
	.ascii	"NDM_DAEMON_CEC\000"
.LASF101:
	.ascii	"clusters\000"
.LASF192:
	.ascii	"seed\000"
.LASF257:
	.ascii	"C3D_FVUnif\000"
.LASF25:
	.ascii	"Direction_South\000"
.LASF189:
	.ascii	"WorldGen_Default\000"
.LASF313:
	.ascii	"LightEvent_Signal\000"
.LASF146:
	.ascii	"GPU_GREATER\000"
.LASF321:
	.ascii	"BufInfo_Add\000"
.LASF327:
	.ascii	"Clouds_Render\000"
.LASF95:
	.ascii	"ChunkGen_Finished\000"
.LASF59:
	.ascii	"Block_Iron_Ore\000"
.LASF283:
	.ascii	"Frustum_Far\000"
.LASF179:
	.ascii	"data\000"
.LASF85:
	.ascii	"emptyRevision\000"
.LASF33:
	.ascii	"Block_Dirt\000"
.LASF267:
	.ascii	"cube\000"
.LASF212:
	.ascii	"ItemStack\000"
.LASF104:
	.ascii	"displayRevision\000"
.LASF75:
	.ascii	"long double\000"
.LASF76:
	.ascii	"_LOCK_T\000"
.LASF16:
	.ascii	"uint16_t\000"
.LASF239:
	.ascii	"rndy\000"
.LASF163:
	.ascii	"GPU_SHADER_TYPE\000"
.LASF20:
	.ascii	"Direction_West\000"
.LASF265:
	.ascii	"C3D_BufInfo\000"
.LASF326:
	.ascii	"Hand_Draw\000"
.LASF285:
	.ascii	"FrustumPlanes\000"
.LASF143:
	.ascii	"GPU_NOTEQUAL\000"
.LASF380:
	.ascii	"ChunkCanBeSeenThrough\000"
.LASF282:
	.ascii	"Frustum_Bottom\000"
.LASF324:
	.ascii	"World_GetChunk\000"
.LASF375:
	.ascii	"f3_new\000"
.LASF145:
	.ascii	"GPU_LEQUAL\000"
.LASF223:
	.ascii	"grounded\000"
.LASF21:
	.ascii	"Direction_East\000"
.LASF133:
	.ascii	"GPU_A8\000"
.LASF220:
	.ascii	"bobbing\000"
.LASF304:
	.ascii	"projectionUniform\000"
.LASF4:
	.ascii	"short int\000"
.LASF374:
	.ascii	"f3_sub\000"
.LASF376:
	.ascii	"WorldToChunkCoord\000"
.LASF115:
	.ascii	"CSND_ENCODING_ADPCM\000"
.LASF147:
	.ascii	"GPU_GEQUAL\000"
.LASF243:
	.ascii	"spawnset\000"
.LASF363:
	.ascii	"WorldRenderer_Init\000"
.LASF368:
	.ascii	"C3D_FVUnifMtx4x4\000"
.LASF237:
	.ascii	"hunger\000"
.LASF277:
	.ascii	"C3D_FogLut\000"
.LASF202:
	.ascii	"freeChunks\000"
.LASF347:
	.ascii	"pChunk\000"
.LASF167:
	.ascii	"ERROR_LANGUAGE_FLAG\000"
.LASF98:
	.ascii	"graphicalTasksRunning\000"
.LASF272:
	.ascii	"minLevel\000"
.LASF230:
	.ascii	"autoJumpEnabled\000"
.LASF173:
	.ascii	"WorkerItemType_PolyGen\000"
.LASF162:
	.ascii	"GPU_GEOMETRY_SHADER\000"
.LASF164:
	.ascii	"NDSP_ENCODING_PCM8\000"
.LASF22:
	.ascii	"Direction_Bottom\000"
.LASF358:
	.ascii	"nextStep\000"
.LASF280:
	.ascii	"Frustum_Left\000"
.LASF141:
	.ascii	"GPU_ALWAYS\000"
.LASF53:
	.ascii	"Block_Sandstone\000"
.LASF209:
	.ascii	"block\000"
.LASF258:
	.ascii	"C3D_FVUnifDirty\000"
.LASF93:
	.ascii	"ChunkGen_Empty\000"
.LASF140:
	.ascii	"GPU_NEVER\000"
.LASF132:
	.ascii	"GPU_L8\000"
.LASF87:
	.ascii	"vertices\000"
.LASF5:
	.ascii	"__uint8_t\000"
.LASF137:
	.ascii	"GPU_ETC1\000"
.LASF44:
	.ascii	"Block_Wool\000"
.LASF196:
	.ascii	"name\000"
.LASF154:
	.ascii	"GPU_DEPTH_DENSITY\000"
.LASF345:
	.ascii	"clustersDrawn\000"
.LASF150:
	.ascii	"GPU_FOG\000"
.LASF40:
	.ascii	"Block_Glass\000"
.LASF81:
	.ascii	"metadataLight\000"
.LASF300:
	.ascii	"Camera\000"
.LASF232:
	.ascii	"simStepAccum\000"
.LASF231:
	.ascii	"velocity\000"
.LASF214:
	.ascii	"float3\000"
.LASF155:
	.ascii	"GPU_GASMODE\000"
.LASF29:
	.ascii	"DirectionOpposite\000"
.LASF11:
	.ascii	"long unsigned int\000"
.LASF92:
	.ascii	"Cluster\000"
.LASF84:
	.ascii	"empty\000"
.LASF185:
	.ascii	"WorkQueue\000"
.LASF138:
	.ascii	"GPU_ETC1A4\000"
.LASF0:
	.ascii	"float\000"
.LASF182:
	.ascii	"queue\000"
.LASF134:
	.ascii	"GPU_LA4\000"
.LASF94:
	.ascii	"ChunkGen_Terrain\000"
.LASF17:
	.ascii	"int32_t\000"
.LASF131:
	.ascii	"GPU_HILO8\000"
.LASF316:
	.ascii	"DebugUI_Text\000"
.LASF228:
	.ascii	"world\000"
.LASF152:
	.ascii	"GPU_FOGMODE\000"
.LASF322:
	.ascii	"BufInfo_Init\000"
.LASF78:
	.ascii	"memory\000"
.LASF36:
	.ascii	"Block_Sand\000"
.LASF27:
	.ascii	"Direction\000"
.LASF301:
	.ascii	"sky_time\000"
.LASF176:
	.ascii	"type\000"
.LASF45:
	.ascii	"Block_Bedrock\000"
.LASF3:
	.ascii	"unsigned char\000"
.LASF10:
	.ascii	"__uint32_t\000"
.LASF194:
	.ascii	"GeneratorSettings\000"
.LASF273:
	.ascii	"lodParam\000"
.LASF62:
	.ascii	"Block_Gold_Ore\000"
.LASF35:
	.ascii	"Block_Cobblestone\000"
.LASF89:
	.ascii	"vboRevision\000"
.LASF318:
	.ascii	"C3D_DrawArrays\000"
.LASF105:
	.ascii	"references\000"
.LASF317:
	.ascii	"C3D_AlphaTest\000"
.LASF52:
	.ascii	"Block_Netherrack\000"
.LASF172:
	.ascii	"WorkerItemType_Decorate\000"
.LASF329:
	.ascii	"Block_GetTextureMap\000"
.LASF156:
	.ascii	"GPU_TRIANGLES\000"
.LASF110:
	.ascii	"state\000"
.LASF83:
	.ascii	"seeThrough\000"
.LASF39:
	.ascii	"Block_Leaves\000"
.LASF102:
	.ascii	"heightmap\000"
.LASF330:
	.ascii	"Camera_Update\000"
.LASF264:
	.ascii	"buffers\000"
.LASF49:
	.ascii	"Block_Snow_Grass\000"
.LASF261:
	.ascii	"C3D_BufCfg\000"
.LASF38:
	.ascii	"Block_Gravel\000"
.LASF290:
	.ascii	"Frustum_NearTopRight\000"
.LASF100:
	.ascii	"genProgress\000"
.LASF2:
	.ascii	"signed char\000"
.LASF276:
	.ascii	"C3D_Tex\000"
.LASF315:
	.ascii	"LightLock_Lock\000"
.LASF312:
	.ascii	"fogLut\000"
.LASF7:
	.ascii	"short unsigned int\000"
.LASF144:
	.ascii	"GPU_LESS\000"
.LASF46:
	.ascii	"Block_Coarse\000"
.LASF229:
	.ascii	"view\000"
.LASF88:
	.ascii	"transparentVertices\000"
.LASF364:
	.ascii	"player_\000"
.LASF351:
	.ascii	"bufInfo\000"
.LASF108:
	.ascii	"double\000"
.LASF184:
	.ascii	"listInUse\000"
.LASF245:
	.ascii	"cheats\000"
.LASF308:
	.ascii	"TransparentRender\000"
.LASF224:
	.ascii	"jumped\000"
.LASF295:
	.ascii	"FrustumCorners_Count\000"
.LASF60:
	.ascii	"Block_Coal_Ore\000"
.LASF175:
	.ascii	"WorkerItemType\000"
.LASF41:
	.ascii	"Block_Stonebrick\000"
.LASF66:
	.ascii	"Block_Coal_Block\000"
.LASF201:
	.ascii	"chunkCache\000"
.LASF361:
	.ascii	"zOff\000"
.LASF106:
	.ascii	"Chunk\000"
.LASF293:
	.ascii	"Frustum_FarTopLeft\000"
.LASF367:
	.ascii	"projectionUniform_\000"
.LASF169:
	.ascii	"WorkerItemType_Load\000"
.LASF378:
	.ascii	"WorkQueue_AddItem\000"
.LASF352:
	.ascii	"newX\000"
.LASF188:
	.ascii	"WorldGen_FlatBedrock\000"
.LASF218:
	.ascii	"position\000"
.LASF139:
	.ascii	"GPU_TEXCOLOR\000"
.LASF254:
	.ascii	"Player\000"
.LASF377:
	.ascii	"FastFloor\000"
.LASF372:
	.ascii	"FVec4_New\000"
.LASF148:
	.ascii	"GPU_TESTFUNC\000"
.LASF165:
	.ascii	"NDSP_ENCODING_PCM16\000"
	.ident	"GCC: (devkitARM release 57) 11.2.0"
