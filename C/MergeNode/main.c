typedef struct aaa {
    struct aaa * next;
    int value;
} Node;
#include <stdio.h>

int main() {

    return 0;
}

Node * ListMergeByRecursion(Node * head1,Node * head2) {//递归
    if (head1 == NULL)
        return head2;
    if (head2 == NULL)
        return head1;
    Node * aNode;
    if (head1->value < head2->value) {
        aNode = head1;
        aNode->next = ListMergeByRecursion(head1->next, head2)
    } else {
        aNode = head2;
        aNode->next = ListMergeByRecursion(head1, head2->next)
    }
    return aNode;
}

Node * ListMerge(Node * head1, Node * head2) {// 迭代
    if (head1 == NULL)
        return head2;
    if (head2 == NULL)
        return head1;
    Node * sortedListHead;
    Node * pList1;
    Node * pList2;
    if (head1->value < head2->value) {
        sortedListHead = head1;
        pList1 = head1->next;
    } else {
        sortedListHead = head2;
        pList2 = head2->next;
    }
    Node * pLast = sortedListHead;
    while (pList1 && pList2) {
        if pList1->value < pList2->value {
            pLast->next = pList1;
            pList1 = pList1->next;
        } else {
            pLast->next = pList2;
            pList2 = pList2->next;
        }
    }
    if (pList1) {
        pLast->next = pList1;
    } else if (pList2) {
        pLast->next = pList2;
    }
    return sortedListHead;
}