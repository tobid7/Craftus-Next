#pragma once

#ifdef __3DS__
#include <3ds.h>
#endif
#include <functional>
#include <palladium>

namespace CN {
class TaskMgr {
 public:
  struct Task {
    PD::u32 ID;
    std::function<void(void*)> Func;
    int Prio = 0;
    void* Data = nullptr;
    bool Active;
  };
  struct TaskMgrData {
    std::unordered_map<PD::u32, Task*> pTasks;
    std::vector<Task*> pQueue;
    bool Kill = false;
  };
  TaskMgr() = default;
  ~TaskMgr() = default;

  static void Init();
  static void Deinit();
  static void PushTask(Task* t);
  static void Run(PD::u32 id, void* data = nullptr);
  static Task* CreateTask(PD::u32 id, std::function<void(void*)> f = nullptr);

  static void MainLoop(void* data);
#ifdef __3DS__
  static Thread pThread;
#endif
  static TaskMgrData pData;
};
}  // namespace CN