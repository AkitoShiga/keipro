#include<iostream>
using std::cout;
using std::cin;
/**
 * 1. どの桁を2倍すればよいか？
 * 2. 2倍した数字はどのようにして個別に扱うか？
 * 3. 数値を最後まで読み終えた事を知るには？
 * 4. 各行を個別に読み込むには？
 */
//void q2();
void q4();

int main() {

    //q2();
    q4();
    return 0;
}
int doubleDigitValue(int digit) {
    int doubledDigit = digit * 2;
    int sum;
    if(doubledDigit >= 10) sum = 1 + doubledDigit % 10;
    else sum = doubledDigit;
    return sum;
}
/*
// 2倍した数字はどのようにして個別に扱うか？
void q2() {
    int digit;
    cout << "Enter a single digit number, 0-9: ";
    cin  >> digit;
    int doubledDigit = digit * 2;
    int sum;
    // 2桁以上なら2つの数字に分離して足したものとみなす
    if(doubledDigit >= 10) sum = 1 + doubledDigit % 10;
    else sum = doubledDigit;
    cout << "Sum of digits in doubled number: " << sum << "\n";
}
*/

 // 4. 各行を個別に読み込むには？
void q4() {

    char digit;
    cout << "Enter a one-digit number: ";
    digit = cin.get();
    int sum = digit;
    // 文字コードの数字が解釈される
    cout << "Is the sum of digits " << sum << "? \n";

    // 文字としての数字を整数の値に変換
    cout << "Is the sum of digits " << sum - 48 << "? \n";

    // ASCIIの0は48なため、 文字コードを文字コードで減産することもできる
    cout << "Is the sum of digits " << sum - '0' << "? \n";
}
