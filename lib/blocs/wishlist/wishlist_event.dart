part of 'wishlist_bloc.dart';

abstract class WishlistEvent extends Equatable {
  const WishlistEvent();

  @override
  List<Object> get props => [];
}

class LoadWishlist extends WishlistEvent {}

class AddProductToWishlist extends WishlistEvent {
  final Product product;

  const AddProductToWishlist(this.product);

  @override
  List<Object> get props => [product];
}

class RemovProductFromWishlist extends WishlistEvent {
  final Product product;

  const RemovProductFromWishlist(this.product);

  @override
  List<Object> get props => [product];
}
