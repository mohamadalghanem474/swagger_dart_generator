import 'package:dio/dio.dart';
import 'package:test/test.dart';
import 'package:test_output/test_output.dart';
import 'package:test_output/failure.dart';
import 'package:test_output/repositories/wishlist_repository.dart';
import 'package:test_output/models/wishlist/requests/wishlist_wishlist__get_req.dart';
import 'package:test_output/models/wishlist/requests/wishlist_add_items_to_cart_from_wishlist__put_req.dart';
import 'package:test_output/models/wishlist/requests/wishlist_email_wishlist_send__post_req.dart';

void main() {
  final dio = Dio(BaseOptions(baseUrl: 'https://api.test_output.com'));
  TestOutputDI.init(dio, const DefaultFailure());
  final api = TestOutput.init(dio);
  group('Wishlist Tests', () {
    test('wishlistGet should return Right', () async {
      final req = WishlistGetRequest();
      final result = await api.wishlist.wishlistGet(req);
      expect(result.isRight(), isTrue);
    });

    test('updateWishlistPost should return Right', () async {
      final result = await api.wishlist.updateWishlistPost();
      expect(result.isRight(), isTrue);
    });

    test('addItemsToCartFromWishlistPut should return Right', () async {
      final req = AddItemsToCartFromWishlistPutRequest();
      final result = await api.wishlist.addItemsToCartFromWishlistPut(req);
      expect(result.isRight(), isTrue);
    });

    test('emailWishlistGet should return Right', () async {
      final result = await api.wishlist.emailWishlistGet();
      expect(result.isRight(), isTrue);
    });

    test('emailWishlistSendPost should return Right', () async {
      final req = EmailWishlistSendPostRequest();
      final result = await api.wishlist.emailWishlistSendPost(req);
      expect(result.isRight(), isTrue);
    });
  });
}
