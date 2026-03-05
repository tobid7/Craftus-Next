#include <cn/misc/TaskMgr.hpp>

namespace CN {
TaskMgr::TaskMgrData TaskMgr::pData;
#ifdef __3DS__
Thread TaskMgr::pThread;
#endif
void TaskMgr::Init() {
#ifdef __3DS__
  s32 prio = 0;
  bool n3ds = false;
  svcGetThreadPriority(&prio, CUR_THREAD_HANDLE);
  APT_CheckNew3DS(&n3ds);
  pThread = threadCreate(MainLoop, 0, 16 * 1024, prio - 1, 1 + n3ds, false);
#else

#endif
}

void TaskMgr::Deinit() {
#ifdef __3DS__
  threadJoin(pThread, UINT64_MAX);
  threadFree(pThread);
#endif
  pData.pQueue.clear();
  for (auto& it : pData.pTasks) {
    delete it.second;
  }
}

void TaskMgr::MainLoop(void* data) {
  auto td = (TaskMgrData*)data;
  while (!td->Kill) {
    if (!td->pQueue.size()) {
#ifdef __3DS__
      svcSleepThread(0x10000);
#endif
      continue;
    }
    td->pQueue[0]->Active = true;
    td->pQueue[0]->Func(td->pQueue[0]->Data);
    td->pQueue[0]->Active = false;
    td->pQueue.erase(td->pQueue.begin());
  }
}

TaskMgr::Task* TaskMgr::CreateTask(PD::u32 id, std::function<void(void*)> f) {
  Task* ret = new Task;
  if (pData.pTasks.count(id)) {
    throw std::runtime_error("Task id is already used: " + std::to_string(id));
  }
  ret->ID = id;
  ret->Func = f;
  return ret;
}

void TaskMgr::PushTask(Task* t) {
  if (!t) {
    throw std::runtime_error("Task ptr is null");
  }
  if (pData.pTasks.count(t->ID)) {
    throw std::runtime_error("Task id is already used: " +
                             std::to_string(t->ID));
  }
  pData.pTasks[t->ID] = t;
}

void TaskMgr::Run(PD::u32 id, void* data) {
  auto t = pData.pTasks.find(id);
  if (t == pData.pTasks.end()) {
    throw std::runtime_error("Trying to execute non existing task with id: " +
                             std::to_string(id));
  }
  if (data) {
    t->second->Data = data;
  }
  pData.pQueue.push_back(t->second);
}
}  // namespace CN