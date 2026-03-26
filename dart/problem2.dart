void main() {
  List<int> moveZeroes(List<int> nums) {
    int i = 0; //posotion for next 0

    for (int j = 0; j < nums.length; j++) {
      if (nums[j] != 0) {
        int temp = nums[i];
        nums[i] = nums[j];
        nums[j] = temp;
        i++;
      }
    }
    return nums;
  }

  List<int> input = [0, 1, 0, 3, 12];

  input = moveZeroes(input);

  print(input.toString());
}
