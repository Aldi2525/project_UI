import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:inventaris/services/supplier_service.dart';

import '../models/supplier_model.dart';

class SupplierController extends GetxController {
  var supplierList = RxList<Data>();
  var isLoading = true.obs;

  @override
  void onInit() {
    super.onInit();
    fetchSupplierData();
  }

  void fetchSupplierData() async {
    try {
      isLoading(true);
      var suppliers = await SupplierService.fetchSupplierData();
      supplierList.value = suppliers.data as List<Data>;
    } finally {
      isLoading(false);
    }
  }
}

class SuplierService {
  static fetchSupplierData() {}
}
