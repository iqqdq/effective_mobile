extension UnicodeDecoder on String {
  String decodeUnicode() {
    return String.fromCharCodes([
      for (var match
          in RegExp(r'%u(?<codePoint>[0-9A-Fa-f]{4})').allMatches(this))
        int.parse(
          match.namedGroup('codePoint')!,
          radix: 16,
        ),
    ]);
  }
}
