void maximumElementSubarrayBrute() {
  List<int> nums = [1, 3, -1, -3, 5, 3, 6, 7];
  int k = 3;

  List<int> greatestElements = [];

  for (int i = 0; i <= nums.length - k; i++) {
    int greatestElement = nums[i];
    for (int j = i + 1; j < i + k; j++) {
      if (nums[j] > greatestElement) {
        greatestElement = nums[j];
      }
    }
    greatestElements.add(greatestElement);
  }

  print(greatestElements);
}

void maximumElementSubarray() {
  List<int> nums = [1, 3, -1, -3, 5, 3, 6, 7];
  int k = 3;

  List<int> greatestElements = [];

  int greatest = 0;
  for (int i = 0; i < k; k++) {
    if (nums[i] > greatest) {
      greatest = nums[i];
    }
  }

  greatestElements.add(greatest);
  for (int i = 1; i <= nums.length - k; i++) {
    if (nums[i + k - 1] > nums[i - 1]) {
      if (nums[i + k - 1] > greatest) {
        greatest = nums[i + k - 1];
      }
    }
    greatestElements.add(greatest);
  }

  print(greatestElements);
}

void main() {
  maximumElementSubarray();
}
