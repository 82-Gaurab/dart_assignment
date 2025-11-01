import 'dart:math';

void main() {
  print("Number 3 is ${checkEvenOdd(num: 3)}");
  print("Number 2 is ${checkEvenOdd(num: 2)}");

  print(calculateEvenNoSum());

  int firstNumber = 123;
  int secondNumber = 1221;
  print("$firstNumber = palindrome: ${checkNoPalindrome(num: firstNumber)}");
  print('$secondNumber = palindrome: ${checkNoPalindrome(num: secondNumber)}');

  checkArmstrongNumber(input: 371);
  checkArmstrongNumber(input: 123);

  print(checkStringPalindrome(input: "abba"));
  print(checkStringPalindrome(input: "dart"));
}

// Check whether a number is even or odd
String checkEvenOdd({required int num}) {
  return (num % 2 == 0) ? "Even" : "Odd";
}

// Calculate the sum of all even number between 1 and 100
int calculateEvenNoSum() {
  int sum = 0;
  for (var i = 0; i <= 100; i++) {
    if (checkEvenOdd(num: i) == "Even") {
      sum += i;
    }
  }

  return sum;
}

// Check whether the number is palindrome or not
bool checkNoPalindrome({required int num}) {
  String numString = "$num";
  String reverseNum = "";

  for (var i = numString.length - 1; i >= 0; i--) {
    reverseNum += numString[i];
  }

  return numString == reverseNum;
}

// check whether a number is armstrong or not
void checkArmstrongNumber({required int input}) {
  // break input numbers characters
  // sum the third power of the character
  // check if the number and the sum is equal

  String inputString = "$input";
  num sum = 0;
  for (int i = inputString.length - 1; i >= 0; i--) {
    sum += pow(int.parse(inputString[i]), 3);
  }

  print((sum == input ? "$input is armstrong" : "$input is not armstrong"));
}

String checkStringPalindrome({required String input}) {
  String reverseString = '';

  for (int i = input.length - 1; i >= 0; i--) {
    reverseString += input[i];
  }

  return (input == reverseString)
      ? "$input is palindrome"
      : "$input is not a palindrome";
}
