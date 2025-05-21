class SelectionSorting {
  void selectionSorting(List<int> arr) {
    for (int i = 0; i < arr.length; i++) {
      int minIndex = i;
      for (int j = i; j < arr.length; j++) {
        if (arr[j] < arr[i]) {
          minIndex = j;
        }
      }
      final minValue = arr.removeAt(minIndex);
      arr.insert(i, minValue);
    }
  }
}

void main() {
  List<int> arr = [4, 8, 1];
  final selectFun = SelectionSorting();

  selectFun.selectionSorting(arr);

  print(arr);

// select.selectionSorting(arr);
}
