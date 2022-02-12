class Solution {
    public boolean isPalindrome(int x) {

        if(x < 0) {
            return false;
        }

        char[] palindrome = String.valueOf(x).toCharArray();

        boolean isPalindrome = true;
        for(int i = 0; i < palindrome.length / 2; i++) {
            isPalindrome = isPalindrome
                        && palindrome[i] == palindrome[palindrome.length-1-i];
        }
        return isPalindrome;
    }
}
