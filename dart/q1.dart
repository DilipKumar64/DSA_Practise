void slidingWindowOptimized() {
  List<int> nums = [2, 1, 5, 1, 3, 2];
  int k = 3;

  int windowSum = 0;

  // first window
  for (int i = 0; i < k; i++) {
    windowSum += nums[i];
  }

  int maxSum = windowSum;
  int maxIndex = 0;

  for (int i = 1; i <= nums.length - k; i++) {
    windowSum = windowSum - nums[i - 1] + nums[i + k - 1];

    if (windowSum > maxSum) {
      maxSum = windowSum;
      maxIndex = i;
    }
  }

  print("$maxSum substring ${nums.sublist(maxIndex, maxIndex + k)}");
}

void main() {
  slidingWindowOptimized();
}
