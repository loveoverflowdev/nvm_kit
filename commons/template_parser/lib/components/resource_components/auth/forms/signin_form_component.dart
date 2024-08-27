import '../../../resource_components.dart';

class SigninFormComponent extends ResourceComponent {
  @override
  late final String type;

  SigninFormComponent() {
    type = super.type;
  }
  
  @override
  Map<String, dynamic> toJson() {
    // TODO: implement toJson
    throw UnimplementedError();
  }

  @override
  factory SigninFormComponent.fromJson(Map<String, dynamic> json) {
    return SigninFormComponent();
  }
}


// Todo: add component for signin options, remember buttons, ...
