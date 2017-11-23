#include <sys/syscall.h>
#include <unistd.h>

int main(void)
{
	syscall(SYS_write, 1, "Hello world!\n", 13);

	return 0;
}
