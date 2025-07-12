#include <entity/Player.h>
#include <misc/Collision.h>
#include <entity/Damage.h>
#include <misc/Sound.h>
#include "misc/Crash.h"

void Player_Init(Player* player, World* world) {
	player->position = f3_new(0.f, 0.f, 0.f);

	player->bobbing = 0.f;
	player->pitch = 0.f;
	player->yaw = 0.f;

	player->grounded = false;
	player->sprinting = false;
	player->world = world;
	player->gamemode=1;
	player->difficulty=1;

	player->fovAdd = 0.f;
	player->crouchAdd = 0.f;
	player->hungertimer=0;

	player->view = f3_new(0, 0, -1);

	player->crouching = false;
	player->flying = false;

	player->blockInSight = false;
	player->blockInActionRange = false;

	player->velocity = f3_new(0, 0, 0);
	player->simStepAccum = 0.f;

	player->breakPlaceTimeout = 0.f;

	player->quickSelectBarSlots = INVENTORY_QUICKSELECT_MAXSLOTS;
	player->quickSelectBarSlot = 0;
	player->inventorySite = 1;
	{
		int l = 0;
		player->inventory[l++] = (ItemStack){Block_Stone, 0, 1};
		player->inventory[l++] = (ItemStack){Block_Dirt, 0, 1};
		player->inventory[l++] = (ItemStack){Block_Grass, 0, 1};
		player->inventory[l++] = (ItemStack){Block_Cobblestone, 0, 1};
		player->inventory[l++] = (ItemStack){Block_Sand, 0, 1};
		player->inventory[l++] = (ItemStack){Block_Log, 0, 1};
		player->inventory[l++] = (ItemStack){Block_Leaves, 0, 1};
		player->inventory[l++] = (ItemStack){Block_Glass, 0, 1};
		player->inventory[l++] = (ItemStack){Block_Stonebrick, 0, 1};
		player->inventory[l++] = (ItemStack){Block_Brick, 0, 1};
		player->inventory[l++] = (ItemStack){Block_Planks, 0, 1};
		for (int i = 0; i < 16; i++) player->inventory[l++] = (ItemStack){Block_Wool, i, 1};
		player->inventory[l++] = (ItemStack){Block_Bedrock, 0, 1};
		player->inventory[l++] = (ItemStack){Block_Gravel, 0, 1};
		player->inventory[l++] = (ItemStack){Block_Coarse, 0, 1};
		player->inventory[l++] = (ItemStack){Block_Door_Top, 0, 1};
		player->inventory[l++] = (ItemStack){Block_Door_Bottom, 0, 1};
		player->inventory[l++] = (ItemStack){Block_Snow_Grass, 0, 1};
		player->inventory[l++] = (ItemStack){Block_Snow, 0, 1};
		player->inventory[l++] = (ItemStack){Block_Obsidian, 0, 1};
		player->inventory[l++] = (ItemStack){Block_Netherrack, 0, 1};
		player->inventory[l++] = (ItemStack){Block_Sandstone, 0, 1};
		player->inventory[l++] = (ItemStack){Block_Smooth_Stone, 0, 1};
		player->inventory[l++] = (ItemStack){Block_Crafting_Table, 0, 1};
		player->inventory[l++] = (ItemStack){Block_Grass_Path, 0, 1};
		player->inventory[l++] = (ItemStack){Block_Lava, 0, 1};
		player->inventory[l++] = (ItemStack){Block_Water, 0, 1};
		player->inventory[l++] = (ItemStack){Block_Iron_Block, 0, 1};
		player->inventory[l++] = (ItemStack){Block_Iron_Ore, 0, 1};
		player->inventory[l++] = (ItemStack){Block_Coal_Block, 0, 1};
		player->inventory[l++] = (ItemStack){Block_Coal_Ore, 0, 1};
		player->inventory[l++] = (ItemStack){Block_Gold_Block, 0, 1};
		player->inventory[l++] = (ItemStack){Block_Gold_Ore, 0, 1};
		player->inventory[l++] = (ItemStack){Block_Diamond_Block, 0, 1};
		player->inventory[l++] = (ItemStack){Block_Diamond_Ore, 0, 1};
		player->inventory[l++] = (ItemStack){Block_Emerald_Block, 0, 1};
		player->inventory[l++] = (ItemStack){Block_Emerald_Ore, 0, 1};
		player->inventory[l++] = (ItemStack){Block_Furnace, 0, 1};
		player->inventory[l++] = (ItemStack){Block_Mycel, 0, 1};
		player->inventory[l++] = (ItemStack){Block_Pumpkin, 0, 1};
		player->inventory[l++] = (ItemStack){Block_PumpkinFace, 0, 1};
		player->inventory[l++] = (ItemStack){Block_PumpkinFaceLamp, 0, 1};
		player->inventory[l++] = (ItemStack){Block_BirchLog, 0, 1};
		player->inventory[l++] = (ItemStack){Block_BirchPlanks, 0, 1};
		player->inventory[l++] = (ItemStack){Block_BirchLeaves, 0, 1};
		player->inventory[l++] = (ItemStack){Block_BeeNest, 0, 1};
		player->inventory[l++] = (ItemStack){Block_BeeNestHoney, 0, 1};
		player->inventory[l++] = (ItemStack){Block_Melon, 0, 1};
		player->inventory[l++] = (ItemStack){Block_LogAcacia, 0, 1};
		player->inventory[l++] = (ItemStack){Block_PlanksAcacia, 0, 1};
		player->inventory[l++] = (ItemStack){Block_LeavesAcacia, 0, 1};
		player->inventory[l++] = (ItemStack){Block_GrassAcacia, 0, 1};

		for (int i = 0; i < INVENTORY_QUICKSELECT_MAXSLOTS; i++) player->quickSelectBar[i] = (ItemStack){Block_Air, 0, 0};
	}
	extern bool showDebugInfo;

	player->autoJumpEnabled = true;
}

void Player_Respawn(Player* player, Damage* dmg)
{
	Log("Starting Respawn\n");
     if (player->difficulty!=4) {
		 Log("Diff isn't 4\n");
				if(player->spawnset=0) {
					Log("Begin spset0\n");
					if (dmg->cause==NULL){
						Log("Cause is NULL\n");
						DebugUI_Log("Player died");
					} else {
						Log("Cause is: %s\n", dmg->cause);
						DebugUI_Log("Died by %s",dmg->cause);
					}
					DebugUI_Log("No spawn was set");

					player->position.x=0.0;
					World* world = player->world;
					Log("Set X pos and get world\n");
					int spawnY = 1;
					Log("Get Heighest block on Player spawn\n");
					while (World_GetBlock(world, player->spawnx, spawnY, player->spawnz) != Block_Air)
						spawnY++;
					
					Log("Offset Stuff\n");
					bool shouldOffset = world->genSettings.type != WorldGen_SuperFlat;
					player->position.y=shouldOffset ? spawnY + 1 : spawnY;
					player->position.z=0.0;
                                        player->gamemode=0;
				} 
				if (player->spawnset=1){
					Log("Spawnset is 1\n");
					//Error Happens here
					/*if (dmg->cause==NULL){
						Log("No Cause\n");
						DebugUI_Log("Player died");
					} else {
						Log("Cause is: %s\n", dmg->cause);
						DebugUI_Log("Died by %s",dmg->cause);
					}*/
					player->position.x=player->spawnx;
					World* world = player->world;
					Log("set Pos and Get world\n");
					int spawnY = 1;
					Log("Get heightest block\n");
					while (World_GetBlock(world, player->spawnx, spawnY, player->spawnz) != Block_Air)
						spawnY++;
					Log("Offset STuff\n");
					bool shouldOffset = world->genSettings.type != WorldGen_SuperFlat;
					player->position.y=shouldOffset ? spawnY + 1 : spawnY;
					player->position.z=player->spawnz;
                                        player->gamemode=0;
				}
				Log("Set HP\n");
				player->hp=20;
				player->hunger=20;
				Log("Set Cause to NULL\n");
				//Next Error
				//dmg->cause=NULL;
			} else {
				Log("lol ur world is gone iksdeh\n");
				DebugUI_Log("lol ur world is gone");
				/*char buffer[512];
				sprintf(buffer, "sdmc:/craftus_redesigned/saves/%s", worlds.data[selectedWorld].path);
				delete_folder(buffer);*/
			}
}

void Player_Update(Player* player, Damage* dmg) {
	player->view = f3_new(-sinf(player->yaw) * cosf(player->pitch), sinf(player->pitch), -cosf(player->yaw) * cosf(player->pitch));
	player->blockInSight =Raycast_Cast(player->world, f3_new(player->position.x, player->position.y + PLAYER_EYEHEIGHT, player->position.z), player->view,&player->viewRayCast);
	player->blockInActionRange = player->blockInSight && player->viewRayCast.distSqr < 3.5f * 3.5f * 3.5f;
	if (player->gamemode!=1){
		//Fall damage
		if (player->velocity.y<=-12){
			player->rndy;
			player->rndy=round(player->velocity.y);
			if(World_GetBlock(player->world,player->position.x,player->position.y-1,player->position.z) != Block_Air){
				player->hp=player->hp+player->rndy;
				player->rndy=0;
			}
		}
		//Fire damage
		if (World_GetBlock(player->world,f3_unpack(player->position)) == Block_Lava/*||World_GetBlock(player->world,f3_unpack(player->position)) == Block_Fire*/){
			DebugUI_Log("ur burning lol");
			OvertimeDamage("Fire",10);
		}
		//Hunger
		//if (player->difficulty!=0){
						// 1000000000 having this here as reference on how long 1 second is
			svcSleepThread(10000000);
			player->hungertimer=player->hungertimer+1;
			if(player->hungertimer==400&&player->hunger!=0){
				player->hunger=player->hunger-1;
				player->hungertimer=0;
			}
			if (player->hunger==0){
				svcSleepThread(10000000);
				if(player->hungertimer==400){
					player->hp=player->hp-1;
					player->hungertimer=0;
				}
			}
		}
		//Respawning stuff
		if (player->hp<=0/*&&player->totem==false*/){
			Player_Respawn(player, dmg);
		}
               

                if (player->position.y < -30){
			Player_Respawn(player, dmg);
		}
	//}
        //DebugUI_Text("Gamemode: %i", player->gamemode);
        //DebugUI_Text("Position: %d, %d, %d", f3_unpack(player->position));
		//DebugUI_Text("Usage: CPU: %5.2f%% GPU: %5.2f%% Buf: %5.2f%% Lin: %d", C3D_GetProcessingTime() * 6.f,
		//C3D_GetDrawingTime() * 6.f, C3D_GetCmdBufUsage() * 100.f, linearSpaceFree());
}

bool Player_CanMove(Player* player, float3 new) {
	for (int x = -1; x < 2; x++) {
		for (int y = 0; y < 3; y++) {
			for (int z = -1; z < 2; z++) {
				int pX = FastFloor(new.x) + x;
				int pY = FastFloor(new.y) + y;
				int pZ = FastFloor(new.z) + z;
				if (World_GetBlock(player->world, pX, pY, pZ) != Block_Air&&World_GetBlock(player->world, pX, pY, pZ) != Block_Lava
				&&World_GetBlock(player->world, pX, pY, pZ) != Block_Water) {
					if (AABB_Overlap(new.x - PLAYER_COLLISIONBOX_SIZE / 2.f, new.y, new.z - PLAYER_COLLISIONBOX_SIZE / 2.f,
							 PLAYER_COLLISIONBOX_SIZE, PLAYER_HEIGHT, PLAYER_COLLISIONBOX_SIZE, pX, pY, pZ, 1.f,
							 1.f, 1.f)) {
						return false;
					}
				}
			}
		}
	}
	return true;
}

void Player_Jump(Player* player, float3 accl) {
	if (player->grounded && !player->flying) {
		player->velocity.x = accl.x * 1.1f;
		player->velocity.z = accl.z * 1.1f;
		player->velocity.y = 6.7f;
		player->jumped = true;
		player->crouching = false;
	}
}
#include <gui/DebugUI.h>
const float MaxWalkVelocity = 4.3f;
const float MaxFallVelocity = -50.f;
const float GravityPlusFriction = 10.f;
void Player_Move(Player* player, float dt, float3 accl) {
	player->breakPlaceTimeout -= dt;
	player->simStepAccum += dt;
	const float SimStep = 1.f / 60.f;
	while (player->simStepAccum >= SimStep) {
		player->velocity.y -= GravityPlusFriction * SimStep * 2.f;
		if (player->velocity.y < MaxFallVelocity) player->velocity.y = MaxFallVelocity;

		if (player->flying) player->velocity.y = 0.f;

		float speedFactor = 1.f;
		if (!player->grounded && !player->flying) {
			if (player->jumped)
				speedFactor = 0.2f;
			else
				speedFactor = 0.6f;
		} else if (player->flying)
			speedFactor = 2.f;
		else if (player->crouching)
			speedFactor = 0.5f;
		float3 newPos = f3_add(player->position, f3_add(f3_scl(player->velocity, SimStep), f3_scl(accl, SimStep * speedFactor)));
		float3 finalPos = player->position;

		bool wallCollision = false, wasGrounded = player->grounded;

		player->grounded = false;
		for (int j = 0; j < 3; j++) {
			int i = (int[]){0, 2, 1}[j];
			bool collision = false;
			float3 axisStep = /*f3_new(i == 0 ? newPos.x : player->position.x, i == 1 ? newPos.y : player->position.y,
						 i == 2 ? newPos.z : player->position.z)*/ finalPos;
			axisStep.v[i] = newPos.v[i];
			Box playerBox =
			    Box_Create(axisStep.x - PLAYER_COLLISIONBOX_SIZE / 2.f, axisStep.y, axisStep.z - PLAYER_COLLISIONBOX_SIZE / 2.f,
				       PLAYER_COLLISIONBOX_SIZE, PLAYER_HEIGHT, PLAYER_COLLISIONBOX_SIZE);

			for (int x = -1; x < 2; x++) {
				for (int y = 0; y < 3; y++) {
					for (int z = -1; z < 2; z++) {
						int pX = FastFloor(axisStep.x) + x;
						int pY = FastFloor(axisStep.y) + y;
						int pZ = FastFloor(axisStep.z) + z;
						if (World_GetBlock(player->world, pX, pY, pZ) != Block_Air&&World_GetBlock(player->world, pX, pY, pZ)!=Block_Lava
						&&World_GetBlock(player->world, pX, pY, pZ) != Block_Water) {
							Box blockBox = Box_Create(pX, pY, pZ, 1, 1, 1);

							float3 normal = f3_new(0.f, 0.f, 0.f);
							float depth = 0.f;
							int face = 0;

							bool intersects = Collision_BoxIntersect(blockBox, playerBox, 0, &normal, &depth, &face);
							collision |= intersects;
						}
					}
				}
			}
			if (!collision)
				finalPos.v[i] = newPos.v[i];
			else if (i == 1) {
				if (player->velocity.y < 0.f || accl.y < 0.f) player->grounded = true;
				player->jumped = false;
				player->velocity.x = 0.f;
				player->velocity.y = 0.f;
				player->velocity.z = 0.f;
			} else {
				wallCollision = true;
				if (i == 0)
					player->velocity.x = 0.f;
				else
					player->velocity.z = 0.f;
			}
		}

		float3 movDiff = f3_sub(finalPos, player->position);

		if (player->grounded && player->flying) player->flying = false;

		if (wallCollision && player->autoJumpEnabled) {
			float3 nrmDiff = f3_nrm(f3_sub(newPos, player->position));
			Block block = World_GetBlock(player->world, FastFloor(finalPos.x + nrmDiff.x),
						     FastFloor(finalPos.y + nrmDiff.y) + 2, FastFloor(finalPos.z + nrmDiff.z));
			Block landingBlock = World_GetBlock(player->world, FastFloor(finalPos.x + nrmDiff.x),
							    FastFloor(finalPos.y + nrmDiff.y) + 1, FastFloor(finalPos.z + nrmDiff.z));
			if (block == Block_Air||block==Block_Lava||block==Block_Water && landingBlock != Block_Air||landingBlock!=Block_Lava||landingBlock!=Block_Water) Player_Jump(player, accl);
		}

		if (player->crouching && player->crouchAdd > -0.3f) player->crouchAdd -= SimStep * 2.f;
		if (!player->crouching && player->crouchAdd < 0.0f) player->crouchAdd += SimStep * 2.f;

		if (player->crouching && !player->grounded && wasGrounded && finalPos.y < player->position.y && movDiff.x != 0.f &&
		    movDiff.z != 0.f) {
			finalPos = player->position;
			player->grounded = true;
			player->velocity.y = 0.f;
		}

		player->position = finalPos;
		player->velocity = f3_new(player->velocity.x * 0.95f, player->velocity.y, player->velocity.z * 0.95f);
		if (ABS(player->velocity.x) < 0.1f) player->velocity.x = 0.f;
		if (ABS(player->velocity.z) < 0.1f) player->velocity.z = 0.f;

		player->simStepAccum -= SimStep;
	}
}

void Player_PlaceBlock(Player* player) {
	if (player->world && player->blockInActionRange && player->breakPlaceTimeout < 0.f) {
		const int* offset = DirectionToOffset[player->viewRayCast.direction];
		if (AABB_Overlap(player->position.x - PLAYER_COLLISIONBOX_SIZE / 2.f, player->position.y,
				 player->position.z - PLAYER_COLLISIONBOX_SIZE / 2.f, PLAYER_COLLISIONBOX_SIZE, PLAYER_HEIGHT,
				 PLAYER_COLLISIONBOX_SIZE, player->viewRayCast.x + offset[0], player->viewRayCast.y + offset[1],
				 player->viewRayCast.z + offset[2], 1.f, 1.f, 1.f))
			return;
		World_SetBlockAndMeta(player->world, player->viewRayCast.x + offset[0], player->viewRayCast.y + offset[1],
				      player->viewRayCast.z + offset[2], player->quickSelectBar[player->quickSelectBarSlot].block,
				      player->quickSelectBar[player->quickSelectBarSlot].meta);
		
	}
	if (player->breakPlaceTimeout < 0.f) player->breakPlaceTimeout = PLAYER_PLACE_REPLACE_TIMEOUT;
}

void Player_BreakBlock(Player* player) {
	if (player->world && player->blockInActionRange && player->breakPlaceTimeout < 0.f) {
		World_SetBlock(player->world, player->viewRayCast.x, player->viewRayCast.y, player->viewRayCast.z, Block_Air);
	}
	if (player->breakPlaceTimeout < 0.f) player->breakPlaceTimeout = PLAYER_PLACE_REPLACE_TIMEOUT;
}
