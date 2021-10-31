#include<bits/stdc++.h>
using namespace std;

bool isParindrome(string s){
   int n = s.size();
   for(int i=0; i<n/2; i++) {
       if(s[i] != s[n-i-1]){
           return false;
       }
   }
   return true;
}
int main() {
    int N;
    cin >> N;
    int count = 0;
    for(int i=0; i<N; i++) {
        string s;
        cin >> s;
        if(isParindrome(s))count++;
    }
    cout  << count << endl;
}