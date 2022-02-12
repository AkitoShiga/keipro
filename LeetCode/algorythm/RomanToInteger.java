class Solution {
    public int romanToInt(String s) {

        int answer = 0;
        char[] romans  = s.toCharArray();
        Map<Character, Integer> romap = Map.of(
                                                'I',1,
                                                'V',5,
                                                'X',10,
                                                'L',50,
                                                'C',100,
                                                'D',500,
                                                'M',1000
                                            );
        for (int i = 0; i < romans.length-1; i++){
            int firstValue  = romap.get(romans[i]);
            int secondValue = romap.get(romans[i+1]);
            if(firstValue < secondValue) {
                answer -= firstValue;
            } else {
                answer += firstValue;
            }
        }
        answer += romap.get(romans[romans.length-1]);
        return answer;
    }
}
