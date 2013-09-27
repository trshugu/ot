#include "ctmp.h"
int main(int argc, char *argv[])
{
/*
*/


/*
// 構造体を宣言
struct Employee e[] =
{
  {100, "Taro Yamada", 200000},
  {101, "Jiro Sato", 220000},
  {102, "Saburo Nakamura", 180000},
  {103, "Hanako Yoshida", 160000},
  {104, "Yoshiko Saito", 240000},
  {0, "", 0}
};

// 構造体のポインタを宣言
struct Employee *e_ptr;

// ポインタに構造体のアドレスをセット
e_ptr = e;

// 構造体の内容を出力
while (1)
{
  if (e_ptr->number == 0)
  {
    // エンドレコードなら処理終了
    break;
  }
  
  // 構造体の内容を表示
  printf("%d,%s,%d\n", e_ptr->number, e_ptr->name, e_ptr->salary);
  
  // ポインタをインクリメントし次の配列要素を指すようにする
  e_ptr++;
}
*/


/*
// これでもよい
struct
{
  int number;
  char name[51];
  int salary;
} e;
*/

/*
// 構造体
//struct Employee e;

// 構造体の各メンバに値を代入
e.number = 100;
strcpy(e.name, "Taro Yamada");
e.salary = 200000;

// 構造体の内容を出力
printf("Number:%d\nName:%s\nSalary:%d\n", e.number, e.name, e.salary);
*/


/*
// ポインタ
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
  printf("%d番目の引数 = %s\n", i, argv[i]);
}
*/


/*
// 垂直タブ 水平タブ
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
// 配列
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
// 文字入力
unsigned long c = 0UL;
while (getchar() != EOF)
{
  c++;
}
printf("%ld\n", c);
*/



/*
// プリプロセッサ
#if 0
// 三項演算子
char a = 'b';
a = (a == 'a') ? 't' : 'f' ;
printf("a = %c\n", a);
#endif
*/


/*
// 変数
int a, b=2;
a = 3;
char c = 'A';

printf("a = %d\n", a);
printf("b = %d\n", b);
printf("c = %c\n", c);
*/

/*
// コメント
printf("hell world\n");
*/


return 0;
}

