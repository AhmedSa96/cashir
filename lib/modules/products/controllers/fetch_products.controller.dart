import 'package:cashir/modules/products/models/fetch_products.request.dart';
import 'package:cashir/modules/products/models/product.model.dart';
import 'package:cashir/shared/services/http.service.dart';
import 'package:get/get.dart';

class FetchProductsController extends GetxController {
  // inject http service
  final http = Get.find<HttpService>();

  // products list
  final Rx<List<Product>?> products = null.obs;
  final isLoading = false.obs;

  /// this method will fetch products from the server,
  /// and cache the response to [products] variable
  /// this method will be once [ProductsScreen] is loaded
  /// if the response is already fetched, it will return true
  /// otherwise it will return false and the user will be able to fetch again
  Future<bool> fetchProducts({required FetchProductsRequest filters}) async {
    // chech if the response is already fetched
    if (products.value != null) return true;

    // start loading state
    _load(true);

    // send http request to fetch products from the server
    final response = await http.get<List<Map<String, dynamic>>>(
      url: '/products',
      query: filters.toJson(),
    );

    // stop loading state
    _load(false);

    // handle the response
    return _handleResponse(response);
  }

  /// this method will handle the response from the server,
  /// and return true if the request is success,
  /// otherwise it will return false,
  /// this method will also cache the response mapped to [products]
  bool _handleResponse(AppResponse<List<Map<String, dynamic>>> response) {
    // check if the request is failed
    if (response.statusCode != 200) return false;

    // map and cache the response
    products.value = response.data.map((e) => Product.fromJson(e)).toList();

    // all process is done
    return true;
  }

  /// this method will start or stop the loading state
  void _load(bool value) {
    isLoading.value = value;
  }
}
