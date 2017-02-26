typedef struct aaa {
    struct aaa * next;
    int value;
} Node;
#include <stdio.h>

int main() {

    return 0;
}

Node *ListMerge1(Node *head1,Node *head2)//采用递归的方法实现
{
    if (head1 == NULL) //若链表1为空 直接返回链表2
        return head2;
    if (head2 == NULL)
        return head1;
    Node * aNode;
    if (head1->value < head2->value) {
        aNode = head1;
        aNode->next = ListMerge1(head1->next, head2)
    } else {
        aNode = head2;
        aNode->next = ListMerge1(head1, head2->next)
    }
    return aNode;
}