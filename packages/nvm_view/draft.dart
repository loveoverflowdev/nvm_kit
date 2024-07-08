// abstract class UIProviderInterface {
//   void getData(void Function(String) callback);
// }

// class UIView {
//   final UIProviderInterface provider;

//   UIView(this.provider);

//   void getData() {
//     provider.getData();
//   }
// }

// //
// abstract class DataRepository {
//   void getData();
// }

// class DataService {
//   final DataRepository repository;

//   DataService(this.repository);

//   void getData() {
//     repository.getData();
//   }
// }

({int a, int b}) record1 = (a: 1, b: 2);
({int c, int d}) record2 = (c: 1, d: 2);
