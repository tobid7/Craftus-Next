#include <3ds.h>
#include <memory.h>

inline u32 check_free_ram(void)
{
	u8* malloc_check[2000];
	u32 count;

	for (int i = 0; i < 2000; i++)
		malloc_check[i] = NULL;

	for (count = 0; count < 2000; count++)
	{
		malloc_check[count] = (u8*)malloc(0x186A0);// 100KB
		if (malloc_check[count] == NULL)
			break;
	}

	for (u32 i = 0; i <= count; i++)
		free(malloc_check[i]);

	return count * 100 * 1024;//return free B
}