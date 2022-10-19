#include <iostream>
#include <string>
#include <chrono>

#ifdef __BASE_CTR__
#include <3ds.h>
#endif

namespace Base {

	class Timer
	{
	    public:
		Timer()
		{
			Reset();
		}

		void Reset()
		{
			#ifdef __BASE_CTR__
			m_Start = svcGetSystemTick();
			#else
			m_Start = std::chrono::high_resolution_clock::now();
			#endif
		}

		float Get()
		{
			#ifdef __BASE_CTR__
			return (svcGetSystemTick() - m_Start) * 1000;
			#else
			return std::chrono::duration_cast<std::chrono::nanoseconds>(std::chrono::high_resolution_clock::now() - m_Start).count() * 0.001f * 0.001f * 0.001f;
			#endif
		}

		float GetAsMs()
		{
			return Get() * 1000.0f;
		}

	    private:
		#ifdef __BASE_CTR__
		double m_Start;
		#else
		std::chrono::time_point<std::chrono::high_resolution_clock> m_Start;
		#endif
	};
}