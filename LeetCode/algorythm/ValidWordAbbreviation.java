class Solution {
    public boolean validWordAbbreviation(String word, String abbr) {
        // 数字がでるまで文字列比較
        // 数字がでたら合計を調べる
        // 合計の分だけ文字列をスキップ
        // 繰り返し
        int idxAbbr = 0;
        int idxWord = 0;


        while(idxAbbr < abbr.length() && idxWord < word.length()) {
            // abbrに数字を発見
            if(Character.isDigit(abbr.charAt(idxAbbr)))
            {
                // 最初が0なら無効なので終了
                if(abbr.charAt(idxAbbr) == '0') return false;

                int sum = 0;
                // 以降の数字はここで扱う
                while(
                    idxAbbr < abbr.length() &&
                    Character.isDigit(abbr.charAt(idxAbbr))
                ) {
                    // 繰り上げて足す
                    sum = sum * 10 + (abbr.charAt(idxAbbr) - '0');
                    idxAbbr++;
                }
                //数字の分だけワードをすすめる
                idxWord += sum;
            } else {

                if(word.charAt(idxWord) == abbr.charAt(idxAbbr)){
                    idxAbbr++;
                    idxWord++;
                } else {
                    return false;
                }
            }
        }
        // 余計な文字入ってないかしらべてOKならTrue
        return idxAbbr ==abbr.length() && idxWord == word.length();
    }
}

