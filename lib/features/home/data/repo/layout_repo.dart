abstract class LayoutRepo {
  Future<void> putLayout({required bool isGrid, required String key});
  bool getLayout({required bool isGrid, required String key});
}
