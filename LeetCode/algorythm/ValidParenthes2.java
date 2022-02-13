class Solution {
    public boolean validPalindrome(String s) {
        int i = 0;
        int j = s.length() -1;

        while(i < j) {
            if(s.charAt(i) == s.charAt(j)) {
                i++;
                j--;
            } else {
                return onechance(s, ++i, j) || onechance(s, i, --j);
            }
        }
        return true;
    }
    public boolean onechance(String s, int i, int j) {
        while(i < j){
            if(s.charAt(i) == s.charAt(j)) {
                i++;
                j--;
            } else {
                return false;
            }
        }
        return true;
    }
}
