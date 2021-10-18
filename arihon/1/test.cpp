#include <iostream>
using std::cout;
using std::cin;

int main()
{
  for(int row = 1; row <= 7; row++) {
      for(int hash = 0; hash < (4 - abs(row -4)); hash++) {
        cout << "#";
      }
    cout << "\n";
  }
}
