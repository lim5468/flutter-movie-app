extension IntExt on int {
  String get formattedDuration {
    final hours = this ~/ 60;
    final minutes = this % 60;

    return '${hours}h ${minutes}m';
  }
}
