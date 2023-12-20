import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:platiz/core/errors/failure.dart';
import 'package:platiz/core/utils/dioHelper.dart';
import 'package:platiz/features/home/data/models/products_model.dart';
import 'package:platiz/features/home/data/repos/home_repo.dart';

class HomeRepoImp implements HomeRepo {

  @override
  Future<Either<Failure, List<ProductsModel>>> getData(String category)async {
    List<ProductsModel> products = [];
    try {
      var response = await DioHelper.getData(
        url: category,
      );
      for(var item in response.data)
      {
        products.add(ProductsModel.fromJson(item));
      }
    } catch (e) {
      if(e is DioException)
      {
        return left(ServerFailure.dioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
    return right(products);
  }
}
