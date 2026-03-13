import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:test_output/failure.dart';
import 'package:test_output/datasources/authenticate_datasource.dart';
import 'package:test_output/repositories/authenticate_repository.dart';
import 'package:test_output/datasources/backinstocksubscription_datasource.dart';
import 'package:test_output/repositories/backinstocksubscription_repository.dart';
import 'package:test_output/datasources/blog_datasource.dart';
import 'package:test_output/repositories/blog_repository.dart';
import 'package:test_output/datasources/boards_datasource.dart';
import 'package:test_output/repositories/boards_repository.dart';
import 'package:test_output/datasources/catalog_datasource.dart';
import 'package:test_output/repositories/catalog_repository.dart';
import 'package:test_output/datasources/checkout_datasource.dart';
import 'package:test_output/repositories/checkout_repository.dart';
import 'package:test_output/datasources/common_datasource.dart';
import 'package:test_output/repositories/common_repository.dart';
import 'package:test_output/datasources/country_datasource.dart';
import 'package:test_output/repositories/country_repository.dart';
import 'package:test_output/datasources/customer_datasource.dart';
import 'package:test_output/repositories/customer_repository.dart';
import 'package:test_output/datasources/download_datasource.dart';
import 'package:test_output/repositories/download_repository.dart';
import 'package:test_output/datasources/driver_datasource.dart';
import 'package:test_output/repositories/driver_repository.dart';
import 'package:test_output/datasources/fuel_datasource.dart';
import 'package:test_output/repositories/fuel_repository.dart';
import 'package:test_output/datasources/home_datasource.dart';
import 'package:test_output/repositories/home_repository.dart';
import 'package:test_output/datasources/language_datasource.dart';
import 'package:test_output/repositories/language_repository.dart';
import 'package:test_output/datasources/news_datasource.dart';
import 'package:test_output/repositories/news_repository.dart';
import 'package:test_output/datasources/newsletter_datasource.dart';
import 'package:test_output/repositories/newsletter_repository.dart';
import 'package:test_output/datasources/notification_datasource.dart';
import 'package:test_output/repositories/notification_repository.dart';
import 'package:test_output/datasources/order_datasource.dart';
import 'package:test_output/repositories/order_repository.dart';
import 'package:test_output/datasources/otp_datasource.dart';
import 'package:test_output/repositories/otp_repository.dart';
import 'package:test_output/datasources/poll_datasource.dart';
import 'package:test_output/repositories/poll_repository.dart';
import 'package:test_output/datasources/privatemessages_datasource.dart';
import 'package:test_output/repositories/privatemessages_repository.dart';
import 'package:test_output/datasources/product_datasource.dart';
import 'package:test_output/repositories/product_repository.dart';
import 'package:test_output/datasources/profile_datasource.dart';
import 'package:test_output/repositories/profile_repository.dart';
import 'package:test_output/datasources/returnrequest_datasource.dart';
import 'package:test_output/repositories/returnrequest_repository.dart';
import 'package:test_output/datasources/scheduletask_datasource.dart';
import 'package:test_output/repositories/scheduletask_repository.dart';
import 'package:test_output/datasources/shoppingcart_datasource.dart';
import 'package:test_output/repositories/shoppingcart_repository.dart';
import 'package:test_output/datasources/smartwarecarrier_datasource.dart';
import 'package:test_output/repositories/smartwarecarrier_repository.dart';
import 'package:test_output/datasources/smartwareerp_datasource.dart';
import 'package:test_output/repositories/smartwareerp_repository.dart';
import 'package:test_output/datasources/smartwareshipment_datasource.dart';
import 'package:test_output/repositories/smartwareshipment_repository.dart';
import 'package:test_output/datasources/smartwaretopupaccount_datasource.dart';
import 'package:test_output/repositories/smartwaretopupaccount_repository.dart';
import 'package:test_output/datasources/smartwarevendorsubscription_datasource.dart';
import 'package:test_output/repositories/smartwarevendorsubscription_repository.dart';
import 'package:test_output/datasources/stickerlabel_datasource.dart';
import 'package:test_output/repositories/stickerlabel_repository.dart';
import 'package:test_output/datasources/topic_datasource.dart';
import 'package:test_output/repositories/topic_repository.dart';
import 'package:test_output/datasources/urlrecord_datasource.dart';
import 'package:test_output/repositories/urlrecord_repository.dart';
import 'package:test_output/datasources/vehicle_datasource.dart';
import 'package:test_output/repositories/vehicle_repository.dart';
import 'package:test_output/datasources/vehicleservice_datasource.dart';
import 'package:test_output/repositories/vehicleservice_repository.dart';
import 'package:test_output/datasources/vendor_datasource.dart';
import 'package:test_output/repositories/vendor_repository.dart';
import 'package:test_output/datasources/warehouse_datasource.dart';
import 'package:test_output/repositories/warehouse_repository.dart';
import 'package:test_output/datasources/webhook_datasource.dart';
import 'package:test_output/repositories/webhook_repository.dart';
import 'package:test_output/datasources/webhooks_datasource.dart';
import 'package:test_output/repositories/webhooks_repository.dart';
import 'package:test_output/datasources/wishlist_datasource.dart';
import 'package:test_output/repositories/wishlist_repository.dart';

final GetIt _getIt = GetIt.instance;

class TestOutput {
  TestOutput._internal(
    this._dio,
    this._failure,
  );

  final Dio _dio;

  final Failure _failure;

  static TestOutput init(
    Dio dio, {
    Failure failure = const DefaultFailure(),
  }) {
    return TestOutput._internal(dio, failure);
  }

  IAuthenticateRepository get authenticate => _getIt<IAuthenticateRepository>();

  IBackinstocksubscriptionRepository get backinstocksubscription =>
      _getIt<IBackinstocksubscriptionRepository>();

  IBlogRepository get blog => _getIt<IBlogRepository>();

  IBoardsRepository get boards => _getIt<IBoardsRepository>();

  ICatalogRepository get catalog => _getIt<ICatalogRepository>();

  ICheckoutRepository get checkout => _getIt<ICheckoutRepository>();

  ICommonRepository get common => _getIt<ICommonRepository>();

  ICountryRepository get country => _getIt<ICountryRepository>();

  ICustomerRepository get customer => _getIt<ICustomerRepository>();

  IDownloadRepository get download => _getIt<IDownloadRepository>();

  IDriverRepository get driver => _getIt<IDriverRepository>();

  IFuelRepository get fuel => _getIt<IFuelRepository>();

  IHomeRepository get home => _getIt<IHomeRepository>();

  ILanguageRepository get language => _getIt<ILanguageRepository>();

  INewsRepository get news => _getIt<INewsRepository>();

  INewsletterRepository get newsletter => _getIt<INewsletterRepository>();

  INotificationRepository get notification => _getIt<INotificationRepository>();

  IOrderRepository get order => _getIt<IOrderRepository>();

  IOtpRepository get otp => _getIt<IOtpRepository>();

  IPollRepository get poll => _getIt<IPollRepository>();

  IPrivatemessagesRepository get privatemessages =>
      _getIt<IPrivatemessagesRepository>();

  IProductRepository get product => _getIt<IProductRepository>();

  IProfileRepository get profile => _getIt<IProfileRepository>();

  IReturnrequestRepository get returnrequest =>
      _getIt<IReturnrequestRepository>();

  IScheduletaskRepository get scheduletask => _getIt<IScheduletaskRepository>();

  IShoppingcartRepository get shoppingcart => _getIt<IShoppingcartRepository>();

  ISmartwarecarrierRepository get smartwarecarrier =>
      _getIt<ISmartwarecarrierRepository>();

  ISmartwareerpRepository get smartwareerp => _getIt<ISmartwareerpRepository>();

  ISmartwareshipmentRepository get smartwareshipment =>
      _getIt<ISmartwareshipmentRepository>();

  ISmartwaretopupaccountRepository get smartwaretopupaccount =>
      _getIt<ISmartwaretopupaccountRepository>();

  ISmartwarevendorsubscriptionRepository get smartwarevendorsubscription =>
      _getIt<ISmartwarevendorsubscriptionRepository>();

  IStickerlabelRepository get stickerlabel => _getIt<IStickerlabelRepository>();

  ITopicRepository get topic => _getIt<ITopicRepository>();

  IUrlrecordRepository get urlrecord => _getIt<IUrlrecordRepository>();

  IVehicleRepository get vehicle => _getIt<IVehicleRepository>();

  IVehicleserviceRepository get vehicleservice =>
      _getIt<IVehicleserviceRepository>();

  IVendorRepository get vendor => _getIt<IVendorRepository>();

  IWarehouseRepository get warehouse => _getIt<IWarehouseRepository>();

  IWebhookRepository get webhook => _getIt<IWebhookRepository>();

  IWebhooksRepository get webhooks => _getIt<IWebhooksRepository>();

  IWishlistRepository get wishlist => _getIt<IWishlistRepository>();
}

class TestOutputDI {
  static void init(
    Dio dio,
    Failure failure,
  ) {
    _getIt.registerLazySingleton<Dio>(() => dio);
    _getIt.registerLazySingleton<Failure>(() => failure);
    _getIt.registerLazySingleton<IAuthenticateDataSource>(
        () => AuthenticateDataSourceImpl(_getIt<Dio>()));
    _getIt.registerLazySingleton<IAuthenticateRepository>(() =>
        AuthenticateRepositoryImpl(
            _getIt<IAuthenticateDataSource>(), _getIt<Failure>()));
    _getIt.registerLazySingleton<IBackinstocksubscriptionDataSource>(
        () => BackinstocksubscriptionDataSourceImpl(_getIt<Dio>()));
    _getIt.registerLazySingleton<IBackinstocksubscriptionRepository>(() =>
        BackinstocksubscriptionRepositoryImpl(
            _getIt<IBackinstocksubscriptionDataSource>(), _getIt<Failure>()));
    _getIt.registerLazySingleton<IBlogDataSource>(
        () => BlogDataSourceImpl(_getIt<Dio>()));
    _getIt.registerLazySingleton<IBlogRepository>(
        () => BlogRepositoryImpl(_getIt<IBlogDataSource>(), _getIt<Failure>()));
    _getIt.registerLazySingleton<IBoardsDataSource>(
        () => BoardsDataSourceImpl(_getIt<Dio>()));
    _getIt.registerLazySingleton<IBoardsRepository>(() =>
        BoardsRepositoryImpl(_getIt<IBoardsDataSource>(), _getIt<Failure>()));
    _getIt.registerLazySingleton<ICatalogDataSource>(
        () => CatalogDataSourceImpl(_getIt<Dio>()));
    _getIt.registerLazySingleton<ICatalogRepository>(() =>
        CatalogRepositoryImpl(_getIt<ICatalogDataSource>(), _getIt<Failure>()));
    _getIt.registerLazySingleton<ICheckoutDataSource>(
        () => CheckoutDataSourceImpl(_getIt<Dio>()));
    _getIt.registerLazySingleton<ICheckoutRepository>(() =>
        CheckoutRepositoryImpl(
            _getIt<ICheckoutDataSource>(), _getIt<Failure>()));
    _getIt.registerLazySingleton<ICommonDataSource>(
        () => CommonDataSourceImpl(_getIt<Dio>()));
    _getIt.registerLazySingleton<ICommonRepository>(() =>
        CommonRepositoryImpl(_getIt<ICommonDataSource>(), _getIt<Failure>()));
    _getIt.registerLazySingleton<ICountryDataSource>(
        () => CountryDataSourceImpl(_getIt<Dio>()));
    _getIt.registerLazySingleton<ICountryRepository>(() =>
        CountryRepositoryImpl(_getIt<ICountryDataSource>(), _getIt<Failure>()));
    _getIt.registerLazySingleton<ICustomerDataSource>(
        () => CustomerDataSourceImpl(_getIt<Dio>()));
    _getIt.registerLazySingleton<ICustomerRepository>(() =>
        CustomerRepositoryImpl(
            _getIt<ICustomerDataSource>(), _getIt<Failure>()));
    _getIt.registerLazySingleton<IDownloadDataSource>(
        () => DownloadDataSourceImpl(_getIt<Dio>()));
    _getIt.registerLazySingleton<IDownloadRepository>(() =>
        DownloadRepositoryImpl(
            _getIt<IDownloadDataSource>(), _getIt<Failure>()));
    _getIt.registerLazySingleton<IDriverDataSource>(
        () => DriverDataSourceImpl(_getIt<Dio>()));
    _getIt.registerLazySingleton<IDriverRepository>(() =>
        DriverRepositoryImpl(_getIt<IDriverDataSource>(), _getIt<Failure>()));
    _getIt.registerLazySingleton<IFuelDataSource>(
        () => FuelDataSourceImpl(_getIt<Dio>()));
    _getIt.registerLazySingleton<IFuelRepository>(
        () => FuelRepositoryImpl(_getIt<IFuelDataSource>(), _getIt<Failure>()));
    _getIt.registerLazySingleton<IHomeDataSource>(
        () => HomeDataSourceImpl(_getIt<Dio>()));
    _getIt.registerLazySingleton<IHomeRepository>(
        () => HomeRepositoryImpl(_getIt<IHomeDataSource>(), _getIt<Failure>()));
    _getIt.registerLazySingleton<ILanguageDataSource>(
        () => LanguageDataSourceImpl(_getIt<Dio>()));
    _getIt.registerLazySingleton<ILanguageRepository>(() =>
        LanguageRepositoryImpl(
            _getIt<ILanguageDataSource>(), _getIt<Failure>()));
    _getIt.registerLazySingleton<INewsDataSource>(
        () => NewsDataSourceImpl(_getIt<Dio>()));
    _getIt.registerLazySingleton<INewsRepository>(
        () => NewsRepositoryImpl(_getIt<INewsDataSource>(), _getIt<Failure>()));
    _getIt.registerLazySingleton<INewsletterDataSource>(
        () => NewsletterDataSourceImpl(_getIt<Dio>()));
    _getIt.registerLazySingleton<INewsletterRepository>(() =>
        NewsletterRepositoryImpl(
            _getIt<INewsletterDataSource>(), _getIt<Failure>()));
    _getIt.registerLazySingleton<INotificationDataSource>(
        () => NotificationDataSourceImpl(_getIt<Dio>()));
    _getIt.registerLazySingleton<INotificationRepository>(() =>
        NotificationRepositoryImpl(
            _getIt<INotificationDataSource>(), _getIt<Failure>()));
    _getIt.registerLazySingleton<IOrderDataSource>(
        () => OrderDataSourceImpl(_getIt<Dio>()));
    _getIt.registerLazySingleton<IOrderRepository>(() =>
        OrderRepositoryImpl(_getIt<IOrderDataSource>(), _getIt<Failure>()));
    _getIt.registerLazySingleton<IOtpDataSource>(
        () => OtpDataSourceImpl(_getIt<Dio>()));
    _getIt.registerLazySingleton<IOtpRepository>(
        () => OtpRepositoryImpl(_getIt<IOtpDataSource>(), _getIt<Failure>()));
    _getIt.registerLazySingleton<IPollDataSource>(
        () => PollDataSourceImpl(_getIt<Dio>()));
    _getIt.registerLazySingleton<IPollRepository>(
        () => PollRepositoryImpl(_getIt<IPollDataSource>(), _getIt<Failure>()));
    _getIt.registerLazySingleton<IPrivatemessagesDataSource>(
        () => PrivatemessagesDataSourceImpl(_getIt<Dio>()));
    _getIt.registerLazySingleton<IPrivatemessagesRepository>(() =>
        PrivatemessagesRepositoryImpl(
            _getIt<IPrivatemessagesDataSource>(), _getIt<Failure>()));
    _getIt.registerLazySingleton<IProductDataSource>(
        () => ProductDataSourceImpl(_getIt<Dio>()));
    _getIt.registerLazySingleton<IProductRepository>(() =>
        ProductRepositoryImpl(_getIt<IProductDataSource>(), _getIt<Failure>()));
    _getIt.registerLazySingleton<IProfileDataSource>(
        () => ProfileDataSourceImpl(_getIt<Dio>()));
    _getIt.registerLazySingleton<IProfileRepository>(() =>
        ProfileRepositoryImpl(_getIt<IProfileDataSource>(), _getIt<Failure>()));
    _getIt.registerLazySingleton<IReturnrequestDataSource>(
        () => ReturnrequestDataSourceImpl(_getIt<Dio>()));
    _getIt.registerLazySingleton<IReturnrequestRepository>(() =>
        ReturnrequestRepositoryImpl(
            _getIt<IReturnrequestDataSource>(), _getIt<Failure>()));
    _getIt.registerLazySingleton<IScheduletaskDataSource>(
        () => ScheduletaskDataSourceImpl(_getIt<Dio>()));
    _getIt.registerLazySingleton<IScheduletaskRepository>(() =>
        ScheduletaskRepositoryImpl(
            _getIt<IScheduletaskDataSource>(), _getIt<Failure>()));
    _getIt.registerLazySingleton<IShoppingcartDataSource>(
        () => ShoppingcartDataSourceImpl(_getIt<Dio>()));
    _getIt.registerLazySingleton<IShoppingcartRepository>(() =>
        ShoppingcartRepositoryImpl(
            _getIt<IShoppingcartDataSource>(), _getIt<Failure>()));
    _getIt.registerLazySingleton<ISmartwarecarrierDataSource>(
        () => SmartwarecarrierDataSourceImpl(_getIt<Dio>()));
    _getIt.registerLazySingleton<ISmartwarecarrierRepository>(() =>
        SmartwarecarrierRepositoryImpl(
            _getIt<ISmartwarecarrierDataSource>(), _getIt<Failure>()));
    _getIt.registerLazySingleton<ISmartwareerpDataSource>(
        () => SmartwareerpDataSourceImpl(_getIt<Dio>()));
    _getIt.registerLazySingleton<ISmartwareerpRepository>(() =>
        SmartwareerpRepositoryImpl(
            _getIt<ISmartwareerpDataSource>(), _getIt<Failure>()));
    _getIt.registerLazySingleton<ISmartwareshipmentDataSource>(
        () => SmartwareshipmentDataSourceImpl(_getIt<Dio>()));
    _getIt.registerLazySingleton<ISmartwareshipmentRepository>(() =>
        SmartwareshipmentRepositoryImpl(
            _getIt<ISmartwareshipmentDataSource>(), _getIt<Failure>()));
    _getIt.registerLazySingleton<ISmartwaretopupaccountDataSource>(
        () => SmartwaretopupaccountDataSourceImpl(_getIt<Dio>()));
    _getIt.registerLazySingleton<ISmartwaretopupaccountRepository>(() =>
        SmartwaretopupaccountRepositoryImpl(
            _getIt<ISmartwaretopupaccountDataSource>(), _getIt<Failure>()));
    _getIt.registerLazySingleton<ISmartwarevendorsubscriptionDataSource>(
        () => SmartwarevendorsubscriptionDataSourceImpl(_getIt<Dio>()));
    _getIt.registerLazySingleton<ISmartwarevendorsubscriptionRepository>(() =>
        SmartwarevendorsubscriptionRepositoryImpl(
            _getIt<ISmartwarevendorsubscriptionDataSource>(),
            _getIt<Failure>()));
    _getIt.registerLazySingleton<IStickerlabelDataSource>(
        () => StickerlabelDataSourceImpl(_getIt<Dio>()));
    _getIt.registerLazySingleton<IStickerlabelRepository>(() =>
        StickerlabelRepositoryImpl(
            _getIt<IStickerlabelDataSource>(), _getIt<Failure>()));
    _getIt.registerLazySingleton<ITopicDataSource>(
        () => TopicDataSourceImpl(_getIt<Dio>()));
    _getIt.registerLazySingleton<ITopicRepository>(() =>
        TopicRepositoryImpl(_getIt<ITopicDataSource>(), _getIt<Failure>()));
    _getIt.registerLazySingleton<IUrlrecordDataSource>(
        () => UrlrecordDataSourceImpl(_getIt<Dio>()));
    _getIt.registerLazySingleton<IUrlrecordRepository>(() =>
        UrlrecordRepositoryImpl(
            _getIt<IUrlrecordDataSource>(), _getIt<Failure>()));
    _getIt.registerLazySingleton<IVehicleDataSource>(
        () => VehicleDataSourceImpl(_getIt<Dio>()));
    _getIt.registerLazySingleton<IVehicleRepository>(() =>
        VehicleRepositoryImpl(_getIt<IVehicleDataSource>(), _getIt<Failure>()));
    _getIt.registerLazySingleton<IVehicleserviceDataSource>(
        () => VehicleserviceDataSourceImpl(_getIt<Dio>()));
    _getIt.registerLazySingleton<IVehicleserviceRepository>(() =>
        VehicleserviceRepositoryImpl(
            _getIt<IVehicleserviceDataSource>(), _getIt<Failure>()));
    _getIt.registerLazySingleton<IVendorDataSource>(
        () => VendorDataSourceImpl(_getIt<Dio>()));
    _getIt.registerLazySingleton<IVendorRepository>(() =>
        VendorRepositoryImpl(_getIt<IVendorDataSource>(), _getIt<Failure>()));
    _getIt.registerLazySingleton<IWarehouseDataSource>(
        () => WarehouseDataSourceImpl(_getIt<Dio>()));
    _getIt.registerLazySingleton<IWarehouseRepository>(() =>
        WarehouseRepositoryImpl(
            _getIt<IWarehouseDataSource>(), _getIt<Failure>()));
    _getIt.registerLazySingleton<IWebhookDataSource>(
        () => WebhookDataSourceImpl(_getIt<Dio>()));
    _getIt.registerLazySingleton<IWebhookRepository>(() =>
        WebhookRepositoryImpl(_getIt<IWebhookDataSource>(), _getIt<Failure>()));
    _getIt.registerLazySingleton<IWebhooksDataSource>(
        () => WebhooksDataSourceImpl(_getIt<Dio>()));
    _getIt.registerLazySingleton<IWebhooksRepository>(() =>
        WebhooksRepositoryImpl(
            _getIt<IWebhooksDataSource>(), _getIt<Failure>()));
    _getIt.registerLazySingleton<IWishlistDataSource>(
        () => WishlistDataSourceImpl(_getIt<Dio>()));
    _getIt.registerLazySingleton<IWishlistRepository>(() =>
        WishlistRepositoryImpl(
            _getIt<IWishlistDataSource>(), _getIt<Failure>()));
  }
}
