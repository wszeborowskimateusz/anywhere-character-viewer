class Endpoints {
  static String charactersSearch(String charactersQuery) => Uri(
        queryParameters: {
          'q': charactersQuery,
          'format': 'json',
        },
      ).toString();

  const Endpoints._();
}
