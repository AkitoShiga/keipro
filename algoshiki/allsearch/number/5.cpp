#include<bits/stdc++.h>
using namespace std;

string fizzbuzz(int i){
    bool fizz = i%3==0;
    bool buzz = i%5==0;
    if(fizz && buzz) return "FizzBuzz";
    if(fizz) return "Fizz";
    if(buzz) return "Buzz";
    else return  to_string(i);
}
int main() {
    int N;
    cin >> N;
    for(int i=1; i<=N; i++ ){
        cout << fizzbuzz(i) << endl;
    }
    return 0;
}