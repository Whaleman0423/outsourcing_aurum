/// 一個簡單的「佔位符」，可用於搜索程式碼中所有「硬編碼」的字符串
/// （對於識別需要本地化的字符串很有用）。
extension StringHardcoded on String {
  String get hardcoded => this;
}
