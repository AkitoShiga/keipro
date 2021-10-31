#include<bits/stdc++.h>
using namespace std;

bool checkPalindrome(int i) {

    if(i < 10)return true;

    string str = to_string(i);
    for(int i = 0; i<str.length()/2; i++){
        if(str[i] != str[str.length() - i - 1])return false;
    }
    return true;
}
int main() {
    int L, R;
    cin >> L >> R;
    int count = 0;
    for(int i=L; i<=R; i++){
        if(checkPalindrome(i))count++;
    }
    cout << count << endl;
    return 0;
}