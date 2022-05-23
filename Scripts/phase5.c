#include <stdio.h>
#include <string.h>

void phase5(char *str)
{
	int i;

	i = strlen(str);
	printf("HELLO WORLD %d\n", i);
	char *test = "isrveawhobpnutfg";
	if(i == 6)
	{
		i = 0;
		while(i < 6)
		{
			printf("%c\n %d\n", test[str[i] & 0xf], str[i] & 0xf);
			str[i] = test[str[i] & 0xf];
			i++;
		}
	}
	i = -1;
	while (++i < 6)
		printf("%c", str[i]);
}

char customizeRot(char a)
{
	char *tmp = "isrveawhobpnutfg";
	return (tmp[a & 0xf]);
}
int main()
{	
	int i = 'a';
	int j = 0;
	char *str = "giants";
	while(j < 6)
	{

		while (i >= 'a' && i <= 'z')
		{
			char tmp = customizeRot(i);
			if (tmp == str[j])
			{printf("%c", i);

				break ;
			}
			i++;
		}
		i = 'a';
		j++;
	}
	return (0);
}
