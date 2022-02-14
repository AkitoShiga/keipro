class Solution {
    public ListNode reverseList(ListNode head){
    ListNode prev = null;
    ListNode curr = head;
    while(curr != null) {
        // 次のノードを撮っておく
        ListNode nextTemp = curr.next;
        // 現在のノードの次を1つまえに 
        curr.next = prev;
        // 次の人用に現在値をセット
        prev = curr;
        // 次の人をセット
        curr = nextTemp;
    }
    return prev;
    }
}
