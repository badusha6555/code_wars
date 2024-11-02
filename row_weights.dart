// Scenario
// Several people are standing in a row divided into two teams.
// The first person goes into team 1, the second goes into team 2, the third goes into team 1, and so on.

// Task
// Given an array of positive integers (the weights of the people), return a new array/tuple of two integers, where the first one is the total weight of team 1, and the second one is the total weight of team 2.

// Notes
// Array size is at least 1.
// All numbers will be positive.
// Input >> Output Examples
// rowWeights([13, 27, 49])  ==>  return (62, 27)
// Explanation:
// The first element 62 is the total weight of team 1, and the second element 27 is the total weight of team 2.

// rowWeights([List<int> arr])  ==>  return (120, 140)

List<int> sumofAlternates(List<int> arr) {
  int tm1 = 0;
  int tm2 = 0;
  for (int i = 0; i < arr.length; i++) {
    if (i % 2 == 0) {
      tm1 += arr[i];
    } else {
      tm2 += arr[i];
    }
  }
  return [tm1, tm2];
}

void main() {
  List<int> arr = [13, 27, 49];
  print(sumofAlternates(arr));
  arr = [50, 60, 70, 80];
  print(sumofAlternates(arr));
}
// List<int> rowWeights(List<int> arr) {
//   int team1Total = 0;
//   int team2Total = 0;

//   for (int i = 0; i < arr.length; i++) {
//     if (i % 2 == 0) {
//       team1Total += arr[i]; // Add to Team 1 for even indices
//     } else {
//       team2Total += arr[i]; // Add to Team 2 for odd indices
//     }
//   }

//   return [team1Total, team2Total];
// }

// void main() {
//   print(rowWeights([13, 27, 49])); // Output: [62, 27]
//   print(rowWeights([50, 60, 70, 80])); // Output: [120, 140]
// }
