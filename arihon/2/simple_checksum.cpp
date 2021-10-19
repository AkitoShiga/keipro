#include<iostream>
using std::cout;
using std::cin;

int doubleDigitValue(int digit);

int main() {

    char digit;
    int checksum = 0;
    int position = 1; //奇数かどうかの判別を行う

    cout << "Enter a number with an even number of digits ";
    digit  = cin.get();

    while(digit != 10) {

        if(position % 2 == 0) checksum += digit - '0';
        else checksum += doubleDigitValue(digit - '0');

        digit  = cin.get();
        position++;
    }

    cout << "checksum is " << checksum << ". \n";

    if(checksum % 10 == 0) {
        cout << "Checksum is divisible by 10. Valid \n";
    } else {
        cout << "Checksum is not divisible by 10. Invalid \n";
    }

    return 0;

}
int doubleDigitValue(int digit) {
    int doubledDigit = digit * 2;
    int sum;
    if(doubledDigit >= 10) sum = 1 + doubledDigit % 10;
    else sum = doubledDigit;
    return sum;
}
