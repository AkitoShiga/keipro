class Solution {
    public boolean isPalindrome(String s) {
        // ポインタを2つ使用する
        // 単純なインクリデクリでは不正な文字列を回避できないため
        int i = 0;
        int j = s.length() -1;
        for(; i < j; i++,j--) {
            // 不正な文字列があったらインクリで回避
            while(i < j && !Character.isLetterOrDigit(s.charAt(i))) {
                i++;
            }
            // 不正な文字列があったらデクリで回避
            while(i < j && !Character.isLetterOrDigit(s.charAt(j))) {
                j--;
            }
            // 文字列比較の段階で小文字に変換する
            if(Character.toLowerCase(s.charAt(i)) != Character.toLowerCase(s.charAt(j))) {
                // 一致しないものがあったらFalse
                return false;
            }
        }
        // 全て一致していたらtrue
        return true;
    }
}
