class Solution {
    public String longestCommonPrefix(String[] strs) {

        if(strs == null || strs.length == 0) return "";

        for(int i = 0; i < strs[0].length(); i++) {

            char c = strs[0].charAt(i); // 比較対象

            for(int j = 1; j <strs.length; j++){
                // 単語の上限に達するか文字列が異なるまでiをインクリメントする
                if(i == strs[j].length() || strs[j].charAt(i) != c) {
                        return strs[0].substring(0,i);
                }
            }
        }
        return strs[0];
    }
}
