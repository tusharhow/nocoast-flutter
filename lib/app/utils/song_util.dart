String durationFormat(Duration duration) {
  String twoDigits(int n) => n.toString().padLeft(2, '0');
  String twoDigitMinutes = twoDigits(duration.inMinutes.remainder(60));
  String twoDigitSeconds = twoDigits(duration.inSeconds.remainder(60));
  return '$twoDigitMinutes:$twoDigitSeconds';
  // for example => 02:07
}

// // fetch song cover image colors
// Future<PaletteGenerator> getPosterColors(AssetsAudioPlayer player) async {
//   var paletteGenerator = await PaletteGenerator.fromImageProvider(
//     AssetImage(player.getCurrentAudioImage?.path ?? ''),
//   );
//   return paletteGenerator;
// }