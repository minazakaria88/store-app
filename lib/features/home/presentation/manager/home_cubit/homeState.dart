abstract class HomeState {}

class HomeInitState extends HomeState{}


class HomeGetDataElectronicsSuccessState extends HomeState{}
class HomeGetDataElectronicsErrorState extends HomeState{
  late final String error;
  HomeGetDataElectronicsErrorState(this.error);
}
class HomeGetDataElectronicLoadingState extends HomeState{}


class HomeGetDataJewelerySuccessState extends HomeState{}
class HomeGetDataJeweleryErrorState extends HomeState{
  late final String error;
  HomeGetDataJeweleryErrorState(this.error);
}
class HomeGetDataJeweleryLoadingState extends HomeState{}



class HomeGetDataMenSuccessState extends HomeState{}
class HomeGetDataMenErrorState extends HomeState{
  late final String error;
  HomeGetDataMenErrorState(this.error);
}
class HomeGetDataMenLoadingState extends HomeState{}


class HomeGetDataWomenSuccessState extends HomeState{}
class HomeGetDataWomenErrorState extends HomeState{
  late final String error;
  HomeGetDataWomenErrorState(this.error);
}
class HomeGetDataWomenLoadingState extends HomeState{}


class HomeChangeIndexState extends HomeState{}

class HomeAddToCartState extends HomeState{}


class HomeAddNumberState extends HomeState{}

class HomeRemoveNumberState extends HomeState{}

class HomeCalStateState extends HomeState{}

class HomeRemoveStateState extends HomeState{}
