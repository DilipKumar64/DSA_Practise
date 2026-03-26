void averageSubArray() {
  List<int> nums = [1, 3, 2, 6, -1, 4, 1, 8, 2];

  int k = 5;

  List<double> averages = [];

  int sum = 0;
  for (int i = 0; i < k; i++) {
    sum += nums[i];
  }
  averages.add(sum / k);

  for (int i = 1; i <= nums.length - k; i++) {
    sum = sum - nums[i - 1] + nums[i + k - 1];

    averages.add(double.parse((sum / k).toStringAsFixed(2)));
  }

  print(averages);
}

void main() {
  averageSubArray();
}

//cleaned

// Add Guard
// if (k > nums.length) return;

// void averageSubArray() {
//   List<int> nums = [1, 3, 2, 6, -1, 4, 1, 8, 2];
//   int k = 5;

//   if (k > nums.length) return;

//   List<double> averages = [];

//   int sum = 0;

//   // first window
//   for (int i = 0; i < k; i++) {
//     sum += nums[i];
//   }

//   averages.add(sum / k);

//   // sliding window
//   for (int i = 1; i <= nums.length - k; i++) {
//     sum = sum - nums[i - 1] + nums[i + k - 1];
//     averages.add(sum / k);
//   }

//   print(averages);
// }
