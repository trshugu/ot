/*** Copyright: OGIHARA Takeshi, Nov. 2010 ***/

#include <stdio.h>
#include <stdlib.h>

struct goods {
    int price;
    int stock;
    char *item;
};

static void pr(const struct goods *list, int n)
{
    int i;
    printf("----\n");
    for (i = 0; i < n; i++)
        printf("%2d:%6d (%3d), %s\n", i,
                list[i].price, list[i].stock, list[i].item);
    printf("----\n");
}

#define PRODUCTS 8

static struct goods table[PRODUCTS] = {
    { 4800, 12, "Apple Mouse" },
    { 6800, 12, "Magic Mouse" },
    { 4800,  5, "JIS Keyboard" },
    { 6800,  5, "Wireless Keyboard" },
    { 4000,  1, "Optical Trackball" },
    { 4930,  8, "Bluetooth Mouse" },
    { 3980,  1, "Number Pad" },
    { 8980,  6, "Laser Mouse" },
};

int main(void)
{
    int sort_stock = 0;
    int descending = 1;
    pr(table, PRODUCTS);
    qsort_b(table, PRODUCTS, sizeof(struct goods),
        ^(const void *p1, const void *p2) {
            const struct goods *e1, *e2;
            int d;
            e1 = p1;
            e2 = p2;
            if (sort_stock)
                d = e1->stock - e2->stock;
            else
                d = e1->price - e2->price;
            if (descending) d = -d;
            return d;
        });
    pr(table, PRODUCTS);
    return 0;
}
