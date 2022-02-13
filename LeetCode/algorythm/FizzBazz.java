class Solution {
    public List<String> fizzBuzz(int n) {
        List<String> fizzbuzz = new ArrayList<>();
        for(int i = 1; i <= n; i++) {
            StringBuilder sb = new StringBuilder("");
            if(i % 3 == 0) sb.append("Fizz");
            if(i % 5 == 0) sb.append("Buzz");
            if(i % 3 != 0 && i % 5 != 0) sb.append(String.valueOf(i));
            fizzbuzz.add(sb.toString());
        }
        return fizzbuzz;
    }
}
