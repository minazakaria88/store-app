import 'package:dartz/dartz.dart';
import 'package:platiz/core/errors/failure.dart';
import 'package:platiz/features/home/data/models/products_model.dart';

abstract class HomeRepo
{

  Future<Either<Failure,List<ProductsModel>>>  getData(String category);
}
