class Solution {
    public String addStrings(String num1, String num2) {
        int carry = 0;
        int m = num1.length() -1;
        int n = num2.length() -1;
        int sum = 0;

        StringBuilder ans = new StringBuilder();
        // 大きい桁数の分だけ実行する
        // 桁を越えても繰り上がりの加算をする場合がある
        for(int i = 0; i <= Math.max(m,n) || carry != 0; i++) {
            // 桁数を越えた分は0を代入
            int a = i <= m? num1.charAt(m-i) - '0' : 0;
            int b = i <= n? num2.charAt(n-i) - '0' : 0;
            // 繰り上がりも足す
            sum = a + b + carry;
            // 1のくらいを足す
            ans.append(sum%10);
            // 繰り上がったら次回に持ち越し
            carry = sum / 10;
        }
        return ans.reverse().toString();
    }
}
