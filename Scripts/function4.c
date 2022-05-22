#include <stdio.h>

int func4(int agr1)
{
	int tmp;
	if (agr1 <= 1)
		tmp = 1;
	else
		tmp = func4(agr1 - 2) + func4(agr1 - 1);
	return tmp;
}

int main()
{
	int i = 0;

	while(func4(i) != 55)
		i++;
	printf("i = %d\n", i);
	return 0;
}
