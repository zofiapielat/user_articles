class AuthorsRemoteDataSource {
  Future<List<Map<String, dynamic>>> getAuthorsData() async {
    return [
      {
        'id': 1,
        'picture': 'https://randomuser.me/api/portraits/men/57.jpg',
        'first_name': 'Piotr',
        'last_name': 'Obdarowicz',
      },
      {
        'id': 2,
        'picture': 'https://randomuser.me/api/portraits/men/58.jpg',
        'first_name': 'Radosław',
        'last_name': 'Gdański',
      },
    ];
  }
}

// class AuthorsMockedDataSource {
//   Future<List<Map<String, dynamic>>> getAuthorsData() async {
//     return [
//       {
//         'id': 1,
//         'picture': 'https://randomuser.me/api/portraits/men/57.jpg',
//         'first_name': 'Piotr',
//         'last_name': 'Obdarowicz',
//       },
//       {
//         'id': 2,
//         'picture': 'https://randomuser.me/api/portraits/men/58.jpg',
//         'first_name': 'Radosław',
//         'last_name': 'Gdański',
//       },
//     ];
//   }
// }
