typedef struct aaa{
    int value;
    struct aaa * lNode;
    struct aaa * rNode;
} Node;
#include <stdio.h>

int main() {
    printf("Hello, World!\n");
    return 0;
}

void preOrderByRecursion(Node * treeNode) {
    if (treeNode) {
        printf("%d", treeNode->value);
        preOrderByRecursion(treeNode->lNode);
        preOrderByRecursion(treeNode->rNode);
    }
}

void preOrder(Node * treeNode) {

}