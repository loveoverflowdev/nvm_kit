import '../../base.dart';

class RegisterFormComponent extends ResourceComponent {
  @override
  late final String type;

  RegisterFormComponent() {
    type = super.type;
  }

  @override
  Map<String, dynamic> toJson() {
    // TODO: implement toJson
    throw UnimplementedError();
  }
  
  @override
  factory RegisterFormComponent.fromJson(Map<String, dynamic> json) {
    return RegisterFormComponent();
  }
}
