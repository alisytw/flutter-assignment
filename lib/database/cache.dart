// import '/models/post.dart';

// class PostRepository {
//   PostRepository(this.api);

//   final Api api;
//   final Map<int, Post?> _postCache = {};

//   Future<Post?> loadPost(int id) async {
//     if (!_postCache.containsKey(id)) {
//       final response = await api.get(id);
//       if (response.statusCode == 200) {
//         _postCache[id] = Post.fromJson(response.body);
//       } else {
//         _postCache[id] = null;
//       }
//     }
//     return _postCache[id];
//   }

//   Future<List<Post?>> getPostList() async {
//     var response = await http.get(
//       Uri.parse('https://127.0.0.1:8000/posts/'),
//     );
//     return response.body;
//   }
// }
