class Solution {
    public int firstUniqChar(String s) {
        // アルファベットの配列を用意
        // 0で初期化されている
        int[] count = new int[26];
        int n = s.length();

        for(int i = 0; i < n; i++) {
            // a -> 0 として紐づくインデックスに格納
            int index = s.charAt(i) - 'a';
            count[index]++;
        }
        // 単語の最初から最後まで線形探索
        for(int i = 0; i < n; i++) {
            int index = s.charAt(i) - 'a';
            // 一番最初の一意な文字のインデックスを返す
            if(count[index] == 1) {
                return i;
            }
        }
        return -1;

    }
}
