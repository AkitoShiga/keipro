class Solution {
    public int maximumUnits(int[][] boxTypes, int truckSize) {
        // 箱を横幅で並べ替え
        Arrays.sort(boxTypes, (a, b) -> b[1] - a[1]);
        // 積載量
        int unitCount = 0;
        // 順番に処理する
        for(int[] boxType : boxTypes) {
            // ギリギリまで入れる試み
            int boxCount = Math.min(truckSize, boxType[0]);
            // 積む
            unitCount += boxCount * boxType[1];
            // 荷物は途中までいれてもいいんやな
            truckSize -= boxCount;
            if(truckSize == 0)
                break;
        }
        return unitCount;
    }
}
