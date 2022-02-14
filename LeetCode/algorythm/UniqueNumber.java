class Solution {
    public boolean uniqueOccurrences(int[] arr) {
        HashMap<Integer, Integer> hm = new HashMap<Integer, Integer>();
        for(int i = 0; i< arr.length; i++) {
            // 既存の数字か確認
            if(hm.containsKey(arr[i])) {
                // 既存ならインクリメント
                hm.put(arr[i], hm.get(arr[i])+1);
            } else {
                // 既存じゃないなら1
                hm.put(arr[i], 1);
            }
        } 
        HashSet<Integer> hs = new HashSet<Integer>();
        // 出現回数を格納する
        for(Integer value : hm.values()){
            hs.add(value);
        }
        // サイズが同じなら重複なし
        return hs.size() == hm.size();
    }
}
