import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseMethods {
  Future addQuizCategory(
      Map<String, dynamic> userQuizcategory, String category) async {
    return await FirebaseFirestore.instance
        .collection(category)
        .add(userQuizcategory);

        
  }
   Future <Stream<QuerySnapshot>> getCategoryQuiz(String category)async{
        return FirebaseFirestore.instance.collection(category).snapshots();
  }
}
