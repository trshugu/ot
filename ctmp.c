#include "ctmp.h"
int main(int argc, char *argv[])
{
/*
*/


/*
// �\���̂�錾
struct Employee e[] =
{
  {100, "Taro Yamada", 200000},
  {101, "Jiro Sato", 220000},
  {102, "Saburo Nakamura", 180000},
  {103, "Hanako Yoshida", 160000},
  {104, "Yoshiko Saito", 240000},
  {0, "", 0}
};

// �\���̂̃|�C���^��錾
struct Employee *e_ptr;

// �|�C���^�ɍ\���̂̃A�h���X���Z�b�g
e_ptr = e;

// �\���̂̓��e���o��
while (1)
{
  if (e_ptr->number == 0)
  {
    // �G���h���R�[�h�Ȃ珈���I��
    break;
  }
  
  // �\���̂̓��e��\��
  printf("%d,%s,%d\n", e_ptr->number, e_ptr->name, e_ptr->salary);
  
  // �|�C���^���C���N�������g�����̔z��v�f���w���悤�ɂ���
  e_ptr++;
}
*/


/*
// ����ł��悢
struct
{
  int number;
  char name[51];
  int salary;
} e;
*/

/*
// �\����
//struct Employee e;

// �\���̂̊e�����o�ɒl����
e.number = 100;
strcpy(e.name, "Taro Yamada");
e.salary = 200000;

// �\���̂̓��e���o��
printf("Number:%d\nName:%s\nSalary:%d\n", e.number, e.name, e.salary);
*/


/*
// �|�C���^
char *p = argv[0];

printf("v = %c\n", *p);
p++;
printf("v = %c\n", *p);
printf("v = %c\n", p);
p++;
printf("v = %c\n", p);
*/


/*
// args
printf("c = %d\n", argc);

printf("v = %s\n", argv[0]);
printf("v = %s\n", argv[1]);

int i;
for (i = 0; i < argc; i++) {
  printf("%d�Ԗڂ̈��� = %s\n", i, argv[i]);
}
*/


/*
// �����^�u �����^�u
printf("HT[1]\tHT[2]\n" );
printf("\vVT[1]\vVT[2]\n" );
*/


/*
// switch
int num = 1;
switch(num)
{
  case 0:
    printf("r = %d\n", num);
    break;
  case 1:
    printf("r = %d\n", num);
    break;
}
*/

/*
// �z��
int arr[10] = {20, 20, 21, 21, 20, 20, 21, 21, 20, 20};
int arromit[] = {20, 20, 21, 21, 20, 20, 21, 21, 20, 20};

printf("r = %d\n", arromit[2]);


int equinox[][10] =
{
  {20, 20, 21, 21, 20, 20, 21, 21, 20, 20}
 ,{23, 23, 23, 23, 23, 23, 23, 23, 23, 23}
};
*/


/*
// func
int r = func();
printf("r = %d\n", r);
*/


/*
// scanf
int n;

printf("Please input number: ");
scanf("%d", &n);
printf("Your number is %d\n", n);
*/

/*
// ��������
unsigned long c = 0UL;
while (getchar() != EOF)
{
  c++;
}
printf("%ld\n", c);
*/



/*
// �v���v���Z�b�T
#if 0
// �O�����Z�q
char a = 'b';
a = (a == 'a') ? 't' : 'f' ;
printf("a = %c\n", a);
#endif
*/


/*
// �ϐ�
int a, b=2;
a = 3;
char c = 'A';

printf("a = %d\n", a);
printf("b = %d\n", b);
printf("c = %c\n", c);
*/

/*
// �R�����g
printf("hell world\n");
*/


return 0;
}

