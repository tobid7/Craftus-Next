#include <cn/misc/TaskMgr.hpp>

extern "C" {
#include <world/World.h>
#include <world/savegame/SaveManager.h>
}

struct Data_ {
  Chunk* chunk;
  SaveManager* mgr;
};

void Lgy_TaskLoadChunk(void* data) {
  auto dat = (Data_*)data;
  int x = ChunkToSuperChunkCoord(dat->chunk->x);
  int z = ChunkToSuperChunkCoord(dat->chunk->z);
  SuperChunk* sc = fetchSuperChunk(dat->mgr, x, z);
  SuperChunk_LoadChunk(sc, dat->chunk);
}

void Lgy_TaskSaveChunk(void* data) {
  auto dat = (Data_*)data;
  int x = ChunkToSuperChunkCoord(dat->chunk->x);
  int z = ChunkToSuperChunkCoord(dat->chunk->z);
  SuperChunk* sc = fetchSuperChunk(dat->mgr, x, z);
  SuperChunk_SaveChunk(sc, dat->chunk);
}

void Lgy_InitTasks() {
  CN::TaskMgr::PushTask(CN::TaskMgr::CreateTask(0, Lgy_TaskLoadChunk));
  CN::TaskMgr::PushTask(CN::TaskMgr::CreateTask(1, Lgy_TaskSaveChunk));
}