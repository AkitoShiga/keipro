class Solution {
    public String reformatDate(String date) {
        HashMap<String,String> map= new HashMap<>();
         map.put("Jan","01");
         map.put("Feb","02");
         map.put("Mar","03");
         map.put("Apr","04");
         map.put("May","05");
         map.put("Jun","06");
         map.put("Jul","07");
         map.put("Aug","08");
         map.put("Sep","09");
         map.put("Oct","10");
         map.put("Nov","11");
         map.put("Dec","12");
        String[] dateArray = date.split(" ");
        char[] dates = dateArray[0].toCharArray();
        StringBuilder newDate = new StringBuilder("");
        newDate.append(dateArray[2]);
        newDate.append("-");
        newDate.append(map.get(dateArray[1]));

        String day = "";
        for(char dateChar : dates) {
            if(Character.isDigit(dateChar)){
                day += dateChar;
            }
        }
        newDate.append("-"); 
        if(Integer.parseInt(day) < 10) newDate.append("0");
        newDate.append(day);
        return newDate.toString();
    }
}

