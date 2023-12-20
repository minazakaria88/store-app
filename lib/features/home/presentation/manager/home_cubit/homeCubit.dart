
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:platiz/features/home/data/repos/home_repo.dart';
import 'package:platiz/features/home/presentation/manager/home_cubit/homeState.dart';

import '../../../data/models/products_model.dart';




class HomeCubit extends Cubit<HomeState>
{
  HomeCubit(this.homeRepo):super(HomeInitState());

  static HomeCubit get(context)=>BlocProvider.of(context);

 final HomeRepo homeRepo;

 List<ProductsModel>  electronicsProducts=[];
 void getElectronicsData()async
 {
   emit(HomeGetDataElectronicLoadingState());
   var result=await homeRepo.getData('electronics');
   result.fold(
           (failure) {
             print(failure.error);
             emit(HomeGetDataElectronicsErrorState(failure.error));

           },
           (products) {
              electronicsProducts=products;
              print(products[0].title);
              emit(HomeGetDataElectronicsSuccessState());
           },
   );

 }

  List<ProductsModel> jeweleryProducts=[];
  void getJeweleryData()async
  {
    emit(HomeGetDataJeweleryLoadingState());
    var result=await homeRepo.getData('jewelery');
    result.fold(
          (failure) {
        emit(HomeGetDataJeweleryErrorState(failure.error));
      },
          (products) {
            jeweleryProducts=products;
            emit(HomeGetDataJewelerySuccessState());
      },
    );

  }

    List<ProductsModel>  menProducts=[];
  void getMenData()async
  {
    emit(HomeGetDataMenLoadingState());
    var result=await homeRepo.getData('women\'s clothing');
    result.fold(
          (failure) {
        emit(HomeGetDataMenErrorState(failure.error));
      },
          (products) {
            menProducts=products;
        emit(HomeGetDataMenSuccessState());
      },
    );

  }

 List<ProductsModel>  womenProducts=[];
  void getWomenData()async
  {
    emit(HomeGetDataWomenLoadingState());
    var result=await homeRepo.getData('men\'s clothing');
    result.fold(
          (failure) {
        emit(HomeGetDataWomenErrorState(failure.error));
      },
          (products) {
            womenProducts.addAll(products);
        emit(HomeGetDataWomenSuccessState());
      },
    );

  }


  List<bool> indexS=[true,false,false,false];
  void getColorIndex(index)
  {
    indexS[index]=true;
    for(int i=0;i<4;i++)
      {
        if(index!=i)
          {
            indexS[i]=false;
          }
      }
    emit(HomeChangeIndexState());
  }


  List<ProductsModel> cartProducts=[];
   void addToCart(ProductsModel model)
   {
     cartProducts.add(model);
     calTotal();
     emit(HomeAddToCartState());
   }


   void addNumberOfItem(int index)
   {
     cartProducts[index].count++;
     calTotal();
     emit(HomeAddNumberState());
   }


  void removeNumberOfItem(int index)
  {
    if(cartProducts[index].count>1)
      {
        cartProducts[index].count--;
        calTotal();
      }
    emit(HomeRemoveNumberState());
  }

   double total=0;
   void calTotal()
   {
     total=0;
      for(var item in cartProducts)
        {
          total+=item.count*item.price;
        }
      emit(HomeCalStateState());
   }

   void deleteCartItem(int index)
   {
     cartProducts.removeAt(index);
     calTotal();
     emit(HomeRemoveStateState());
   }



}