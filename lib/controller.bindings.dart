import 'package:get/instance_manager.dart';

import 'controllers/user_controller.dart';
import 'controllers/supplier_controller.dart';

class ControllerBindings extends Bindings {
  @override
  void dependencies() {
    Get.put<UserController>(UserController());
    Get.put<SupplierController>(SupplierController());
    
  }
}