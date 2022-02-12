class Solution {
    public int romanToInt(String s) {

        int answer = 0;
        char[] romans  = s.toCharArray();
        int[] romanInt = new int[romans.length];

        for(int i = 0; i < romans.length; i++) {
            switch (romans[i]) {
                case 'I':
                    romanInt[i] = 1;
                    break;
                case 'V':
                    romanInt[i] = 5;
                    break;
                case 'X':
                    romanInt[i] = 10;
                    break;
                case 'L':
                    romanInt[i] = 50;
                    break;
                case 'C':
                    romanInt[i] = 100;
                    break;
                case 'D':
                    romanInt[i] = 500;
                    break;
                case 'M':
                    romanInt[i] = 1000;
                    break;
                default:
            }
        }

        for (int i = 0; i < romans.length-1; i++){
            int firstValue  = romanInt[i];
            int secondValue = romanInt[i+1];
            if(firstValue < secondValue) {
                answer -= firstValue;
            } else {
                answer += firstValue;
            }
        }
        answer += romanInt[romans.length-1];
        return answer;
    }
}
