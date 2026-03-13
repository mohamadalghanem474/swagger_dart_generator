class EndPoints {
  const EndPoints();

  static const authenticate = _Authenticate();

  static const backinstocksubscription = _Backinstocksubscription();

  static const blog = _Blog();

  static const boards = _Boards();

  static const catalog = _Catalog();

  static const checkout = _Checkout();

  static const common = _Common();

  static const country = _Country();

  static const customer = _Customer();

  static const download = _Download();

  static const driver = _Driver();

  static const fuel = _Fuel();

  static const home = _Home();

  static const language = _Language();

  static const news = _News();

  static const newsletter = _Newsletter();

  static const notification = _Notification();

  static const order = _Order();

  static const otp = _Otp();

  static const poll = _Poll();

  static const privatemessages = _Privatemessages();

  static const product = _Product();

  static const profile = _Profile();

  static const returnrequest = _Returnrequest();

  static const scheduletask = _Scheduletask();

  static const shoppingcart = _Shoppingcart();

  static const smartwarecarrier = _Smartwarecarrier();

  static const smartwareerp = _Smartwareerp();

  static const smartwareshipment = _Smartwareshipment();

  static const smartwaretopupaccount = _Smartwaretopupaccount();

  static const smartwarevendorsubscription = _Smartwarevendorsubscription();

  static const stickerlabel = _Stickerlabel();

  static const topic = _Topic();

  static const urlrecord = _Urlrecord();

  static const vehicle = _Vehicle();

  static const vehicleservice = _Vehicleservice();

  static const vendor = _Vendor();

  static const warehouse = _Warehouse();

  static const webhook = _Webhook();

  static const webhooks = _Webhooks();

  static const wishlist = _Wishlist();
}

class _Authenticate {
  const _Authenticate();

  final getTokenPost = '/api-frontend/Authenticate/GetToken';

  final getTokenForCustomerApiPost =
      '/api-frontend/Authenticate/GetTokenForCustomerApi';

  final getTokenExternalPost = '/api-frontend/Authenticate/GetTokenExternal';

  final getTokenByDriverPhonePost =
      '/api-frontend/Authenticate/GetTokenByDriverPhone';
}

class _Backinstocksubscription {
  const _Backinstocksubscription();

  final subscribePopupGet =
      '/api-frontend/BackInStockSubscription/SubscribePopup/{productId}';

  final subscribePopupPOSTPost =
      '/api-frontend/BackInStockSubscription/SubscribePopupPOST/{productId}';

  final customerSubscriptionsGet =
      '/api-frontend/BackInStockSubscription/CustomerSubscriptions';

  final customerSubscriptionsPOSTPost =
      '/api-frontend/BackInStockSubscription/CustomerSubscriptionsPOST';
}

class _Blog {
  const _Blog();

  final listPost = '/api-frontend/Blog/List';

  final blogByTagPost = '/api-frontend/Blog/BlogByTag';

  final blogByMonthPost = '/api-frontend/Blog/BlogByMonth';

  final listRssGet = '/api-frontend/Blog/ListRss/{languageId}';

  final getBlogPostGet = '/api-frontend/Blog/GetBlogPost/{blogPostId}';

  final blogCommentAddPost = '/api-frontend/Blog/BlogCommentAdd/{blogPostId}';
}

class _Boards {
  const _Boards();

  final indexGet = '/api-frontend/Boards/Index';

  final activeDiscussionsGet = '/api-frontend/Boards/ActiveDiscussions';

  final activeDiscussionsRssGet = '/api-frontend/Boards/ActiveDiscussionsRss';

  final forumGroupGet = '/api-frontend/Boards/ForumGroup/{id}';

  final forumGet = '/api-frontend/Boards/Forum/{id}';

  final forumRssGet = '/api-frontend/Boards/ForumRss/{id}';

  final forumWatchGet = '/api-frontend/Boards/ForumWatch/{id}';

  final topicGet = '/api-frontend/Boards/Topic/{id}';

  final topicWatchGet = '/api-frontend/Boards/TopicWatch/{id}';

  final topicMoveGet = '/api-frontend/Boards/TopicMove/{id}';

  final topicDeleteDelete = '/api-frontend/Boards/TopicDelete/{id}';

  final topicCreateGet = '/api-frontend/Boards/TopicCreate/{id}';

  final topicCreatePost = '/api-frontend/Boards/TopicCreate';

  final topicEditGet = '/api-frontend/Boards/TopicEdit/{id}';

  final topicEditPost = '/api-frontend/Boards/TopicEdit';

  final postDeleteDelete = '/api-frontend/Boards/PostDelete/{id}';

  final postCreateGet = '/api-frontend/Boards/PostCreate/{id}/{quote}';

  final postCreatePost = '/api-frontend/Boards/PostCreate';

  final postEditGet = '/api-frontend/Boards/PostEdit/{id}';

  final postEditPost = '/api-frontend/Boards/PostEdit';

  final searchGet = '/api-frontend/Boards/Search/{forumId}';

  final customerForumSubscriptionsGet =
      '/api-frontend/Boards/CustomerForumSubscriptions';

  final customerForumSubscriptionsPOSTPost =
      '/api-frontend/Boards/CustomerForumSubscriptionsPOST';

  final postVoteGet = '/api-frontend/Boards/PostVote/{postId}';
}

class _Catalog {
  const _Catalog();

  final getCategoryPost = '/api-frontend/Catalog/GetCategory/{categoryId}';

  final getCatalogRootGet = '/api-frontend/Catalog/GetCatalogRoot';

  final getCatalogSubCategoriesGet =
      '/api-frontend/Catalog/GetCatalogSubCategories/{id}';

  final getManufacturerPost =
      '/api-frontend/Catalog/GetManufacturer/{manufacturerId}';

  final getManufacturerProductsPost =
      '/api-frontend/Catalog/GetManufacturerProducts/{manufacturerId}';

  final manufacturerAllGet = '/api-frontend/Catalog/ManufacturerAll';

  final getVendorPost = '/api-frontend/Catalog/GetVendor/{vendorId}';

  final getVendorProductsPost =
      '/api-frontend/Catalog/GetVendorProducts/{vendorId}';

  final vendorAllGet = '/api-frontend/Catalog/VendorAll';

  final getProductsByTagPost =
      '/api-frontend/Catalog/GetProductsByTag/{productTagId}';

  final getTagProductsPost =
      '/api-frontend/Catalog/GetTagProducts/{productTagId}';

  final productTagsAllGet = '/api-frontend/Catalog/ProductTagsAll';

  final searchPost = '/api-frontend/Catalog/Search';

  final searchTermAutoCompleteGet =
      '/api-frontend/Catalog/SearchTermAutoComplete';

  final searchProductsPost = '/api-frontend/Catalog/SearchProducts';

  final smartwareGetCategoryProductsPost =
      '/api-frontend/Catalog/SmartwareGetCategoryProducts/{categoryId}';

  final smartwareGetCatalogRootWithImagesGet =
      '/api-frontend/Catalog/SmartwareGetCatalogRootWithImages';

  final smartwareGetCatalogSubCategoriesWithImagesGet =
      '/api-frontend/Catalog/SmartwareGetCatalogSubCategoriesWithImages/{id}';

  final smartwareGetCatalogSubCategoriesAsTreeGet =
      '/api-frontend/Catalog/SmartwareGetCatalogSubCategoriesAsTree/{id}';
}

class _Checkout {
  const _Checkout();

  final indexGet = '/api-frontend/Checkout/Index';

  final completedGet = '/api-frontend/Checkout/Completed';

  final completeSubscriptionGet = '/api-frontend/Checkout/completeSubscription';

  final getAddressByIdGet = '/api-frontend/Checkout/GetAddressById/{addressId}';

  final saveEditAddressPost = '/api-frontend/Checkout/SaveEditAddress';

  final deleteEditAddressDelete =
      '/api-frontend/Checkout/DeleteEditAddress/{addressId}';

  final billingAddressPost = '/api-frontend/Checkout/BillingAddress';

  final selectBillingAddressGet =
      '/api-frontend/Checkout/SelectBillingAddress/{addressId}';

  final newBillingAddressPost = '/api-frontend/Checkout/NewBillingAddress';

  final shippingAddressGet = '/api-frontend/Checkout/ShippingAddress';

  final selectShippingAddressGet =
      '/api-frontend/Checkout/SelectShippingAddress/{addressId}';

  final newShippingAddressPost = '/api-frontend/Checkout/NewShippingAddress';

  final shippingMethodGet = '/api-frontend/Checkout/ShippingMethod';

  final selectShippingMethodPost =
      '/api-frontend/Checkout/SelectShippingMethod';

  final paymentMethodGet = '/api-frontend/Checkout/PaymentMethod';

  final selectPaymentMethodPost = '/api-frontend/Checkout/SelectPaymentMethod';

  final paymentInfoGet = '/api-frontend/Checkout/PaymentInfo';

  final enterPaymentInfoPost = '/api-frontend/Checkout/EnterPaymentInfo';

  final confirmPost = '/api-frontend/Checkout/Confirm';

  final confirmOrderGet = '/api-frontend/Checkout/ConfirmOrder';

  final onePageCheckoutGet = '/api-frontend/Checkout/OnePageCheckout';

  final smartwareOpcConfirmAndPayOrderPost =
      '/api-frontend/Checkout/SmartwareOpcConfirmAndPayOrder';

  final getPaymentGateWayDetailsGet =
      '/api-frontend/Checkout/GetPaymentGateWayDetails';

  final smartwareOpcSubscriptionConfirmAndPayOrderPost =
      '/api-frontend/Checkout/SmartwareOpcSubscriptionConfirmAndPayOrder';

  final montyPayReturnUrlPost = '/api-frontend/Checkout/montyPayReturnUrl';

  final montyPaySuccessReturnUrlPost =
      '/api-frontend/Checkout/montyPaySuccessReturnUrl';

  final montyPayCancelReturnUrlPost =
      '/api-frontend/Checkout/montyPayCancelReturnUrl';

  final paymentRedirectActionPost =
      '/api-frontend/Checkout/PaymentRedirectAction';

  final getOrderTotalGet = '/api-frontend/Checkout/getOrderTotal';

  final opcSaveBillingPost = '/api-frontend/Checkout/OpcSaveBilling';

  final opcSaveShippingPost = '/api-frontend/Checkout/OpcSaveShipping';

  final opcSaveShippingMethodPost =
      '/api-frontend/Checkout/OpcSaveShippingMethod';

  final opcSavePaymentMethodPost =
      '/api-frontend/Checkout/OpcSavePaymentMethod';

  final opcSaveSubscriptionPaymentMethodPost =
      '/api-frontend/Checkout/OpcSaveSubscriptionPaymentMethod';

  final opcSavePaymentInfoPost = '/api-frontend/Checkout/OpcSavePaymentInfo';

  final opcConfirmOrderGet = '/api-frontend/Checkout/OpcConfirmOrder';

  final opcCompleteRedirectionPaymentPost =
      '/api-frontend/Checkout/OpcCompleteRedirectionPayment';
}

class _Common {
  const _Common();

  final setLanguagePost = '/api-frontend/Common/SetLanguage/{langId}';

  final setCurrencyPost =
      '/api-frontend/Common/SetCurrency/{customerCurrencyId}';

  final setTaxTypePost = '/api-frontend/Common/SetTaxType';

  final contactUsGet = '/api-frontend/Common/ContactUs';

  final contactUsSendPost = '/api-frontend/Common/ContactUsSend';

  final contactVendorGet = '/api-frontend/Common/ContactVendor/{vendorId}';

  final contactVendorSendPost = '/api-frontend/Common/ContactVendorSend';

  final sitemapPost = '/api-frontend/Common/Sitemap';

  final sitemapXmlGet = '/api-frontend/Common/SitemapXml/{id}';

  final setStoreThemeGet = '/api-frontend/Common/SetStoreTheme';

  final euCookieLawAcceptGet = '/api-frontend/Common/EuCookieLawAccept';

  final robotsTextFileGet = '/api-frontend/Common/RobotsTextFile';

  final getResourceGet = '/api-frontend/Common/GetResource/{languageId}';

  final searchByNameGet = '/api-frontend/Common/SearchByName/{languageId}';
}

class _Country {
  const _Country();

  final getAllCountryGet = '/api-frontend/Country/GetAllCountry';

  final getStatesByCountryIdGet =
      '/api-frontend/Country/GetStatesByCountryId/{countryId}';

  final getByIdGet = '/api-frontend/Country/GetById/{id}';

  final getStateProvincesByIdGet =
      '/api-frontend/Country/GetStateProvincesById/{id}';
}

class _Customer {
  const _Customer();

  final logoutGet = '/api-frontend/Customer/Logout';

  final passwordRecoveryGet = '/api-frontend/Customer/PasswordRecovery';

  final passwordRecoverySendPost =
      '/api-frontend/Customer/PasswordRecoverySend';

  final passwordRecoveryConfirmPost =
      '/api-frontend/Customer/PasswordRecoveryConfirm';

  final passwordRecoveryConfirmPOSTPost =
      '/api-frontend/Customer/PasswordRecoveryConfirmPOST';

  final registerGet = '/api-frontend/Customer/Register';

  final registerPost = '/api-frontend/Customer/Register';

  final lookupItemsGet = '/api-frontend/Customer/LookupItems';

  final registerResultPost = '/api-frontend/Customer/RegisterResult/{resultId}';

  final checkUsernameAvailabilityGet =
      '/api-frontend/Customer/CheckUsernameAvailability';

  final accountActivationPost = '/api-frontend/Customer/AccountActivation';

  final createMarchantAccountForECommercePost =
      '/api-frontend/Customer/CreateMarchantAccountForECommerce';

  final infoGet = '/api-frontend/Customer/Info';

  final infoPost = '/api-frontend/Customer/Info';

  final updateDeviceIdPost = '/api-frontend/Customer/UpdateDeviceId';

  final isLastDeviceIdGet = '/api-frontend/Customer/IsLastDeviceId';

  final removeExternalAssociationDelete =
      '/api-frontend/Customer/RemoveExternalAssociation/{id}';

  final emailRevalidationPost = '/api-frontend/Customer/EmailRevalidation';

  final addressesGet = '/api-frontend/Customer/Addresses';

  final addressDeleteDelete =
      '/api-frontend/Customer/AddressDelete/{addressId}';

  final addressAddGet = '/api-frontend/Customer/AddressAdd';

  final addressAddPost = '/api-frontend/Customer/AddressAdd';

  final addressEditGet = '/api-frontend/Customer/AddressEdit/{addressId}';

  final addressEditPut = '/api-frontend/Customer/AddressEdit/{addressId}';

  final singleAddressEditPut =
      '/api-frontend/Customer/SingleAddressEdit/{addressId}';

  final downloadableProductsGet = '/api-frontend/Customer/DownloadableProducts';

  final userAgreementGet = '/api-frontend/Customer/UserAgreement';

  final changePasswordGet = '/api-frontend/Customer/ChangePassword';

  final changePasswordPost = '/api-frontend/Customer/ChangePassword';

  final avatarGet = '/api-frontend/Customer/Avatar';

  final uploadAvatarPost = '/api-frontend/Customer/UploadAvatar';

  final removeAvatarDelete = '/api-frontend/Customer/RemoveAvatar';

  final gdprToolsGet = '/api-frontend/Customer/GdprTools';

  final gdprToolsExportGet = '/api-frontend/Customer/GdprToolsExport';

  final gdprToolsDeleteDelete = '/api-frontend/Customer/GdprToolsDelete';

  final checkGiftCardBalanceGet = '/api-frontend/Customer/CheckGiftCardBalance';

  final checkBalancePost = '/api-frontend/Customer/CheckBalance';

  final updateDeviceTokenPost = '/api-frontend/Customer/UpdateDeviceToken';

  final updateCustomerBlockedNotificationPost =
      '/api-frontend/Customer/UpdateCustomerBlockedNotification';

  final getCustomerBlockedNotificationsGet =
      '/api-frontend/Customer/GetCustomerBlockedNotifications';

  final recipientDetailsGet = '/api-frontend/Customer/RecipientDetails';

  final recipientDetailsBusinessGet =
      '/api-frontend/Customer/RecipientDetailsBusiness';

  final recipientNotificationByDeliveryIdGet =
      '/api-frontend/Customer/RecipientNotificationByDeliveryId';

  final recipientNotificationByDeliveryIdBusinessGet =
      '/api-frontend/Customer/RecipientNotificationByDeliveryIdBusiness';

  final getCurrentCustomerGuidGet =
      '/api-frontend/Customer/GetCurrentCustomerGuid';

  final setDefaultAddressGet = '/api-frontend/Customer/SetDefaultAddress';

  final icarryAddressAddPost = '/api-frontend/Customer/IcarryAddressAdd';

  final singleAddressAddPost = '/api-frontend/Customer/SingleAddressAdd';

  final inActiveCustomerAccountPost =
      '/api-frontend/Customer/InActiveCustomerAccount/{Email}';

  final inActiveCustomerAccountByPhonePost =
      '/api-frontend/Customer/InActiveCustomerAccountByPhone/{phone}';

  final checkEmailOrPhoneExistPost =
      '/api-frontend/Customer/CheckEmailOrPhoneExist';

  final receiventListGet = '/api-frontend/Customer/ReceiventList';

  final receiventVendorListGet = '/api-frontend/Customer/ReceiventVendorList';

  final manageTeamGet = '/api-frontend/Customer/ManageTeam';

  final createPost = '/api-frontend/Customer/Create';

  final deleteTeamMemberDelete = '/api-frontend/Customer/DeleteTeamMember/{id}';

  final addressReceiventListGet = '/api-frontend/Customer/AddressReceiventList';

  final addressVendorReceiventListGet =
      '/api-frontend/Customer/AddressVendorReceiventList';
}

class _Download {
  const _Download();

  final sampleGet = '/api-frontend/Download/Sample/{productId}';

  final getDownloadGet = '/api-frontend/Download/GetDownload';

  final getLicenseGet = '/api-frontend/Download/GetLicense';

  final getFileUploadGet = '/api-frontend/Download/GetFileUpload';

  final getOrderNoteFileGet =
      '/api-frontend/Download/GetOrderNoteFile/{orderNoteId}';
}

class _Driver {
  const _Driver();

  final checkDriverExistPost = '/api-frontend/Driver/CheckDriverExist';

  final getAllDriversGet = '/api-frontend/Driver/GetAllDrivers';

  final driverInfoGet = '/api-frontend/Driver/DriverInfo/{driverId}';

  final driverInfoPost = '/api-frontend/Driver/DriverInfo';

  final updateDriverLocationPost = '/api-frontend/Driver/UpdateDriverLocation';

  final getCheckedInVehiclePost = '/api-frontend/Driver/GetCheckedInVehicle';

  final checkOutDriverPost = '/api-frontend/Driver/CheckOutDriver';

  final updateDeviceTokenPost = '/api-frontend/Driver/UpdateDeviceToken';

  final shipmentIdPost =
      '/api-frontend/Driver/UploadProofDeliveryFiles/shipmentId';
}

class _Fuel {
  const _Fuel();

  final getAllVehiclesGet = '/api-frontend/Fuel/GetAllVehicles';

  final getAllVendorsGet = '/api-frontend/Fuel/GetAllVendors';

  final fuelListGet = '/api-frontend/Fuel/FuelList';

  final detailsGet = '/api-frontend/Fuel/Details/{FuelId}';

  final createFuelPost = '/api-frontend/Fuel/CreateFuel';

  final updateFuelPut = '/api-frontend/Fuel/UpdateFuel/{id}';

  final deleteFuelDelete = '/api-frontend/Fuel/DeleteFuel/{id}';

  final idPost = '/api-frontend/Fuel/UploadFuelsFiles/id';

  final removeFuelAttachmentDelete = '/api-frontend/Fuel/RemoveFuelAttachment';

  final costReportsListGet = '/api-frontend/Fuel/CostReportsList';

  final costReportDetailsGet =
      '/api-frontend/Fuel/CostReportDetails/{id} {CostType}';
}

class _Home {
  const _Home();

  final businessDashboardGet = '/api-frontend/Home/BusinessDashboard';

  final latLngByAddressGet = '/api-frontend/Home/LatLngByAddress';
}

class _Language {
  const _Language();

  final getAllLanguagesGet = '/api-frontend/Language/GetAllLanguages';

  final getAllStoresGet = '/api-frontend/Language/GetAllStores';

  final getMobileAppSettingGet = '/api-frontend/Language/GetMobileAppSetting';

  final getIcarryPluginApiSettingGet =
      '/api-frontend/Language/GetIcarryPluginApiSetting';
}

class _News {
  const _News();

  final listPost = '/api-frontend/News/List';

  final listRssGet = '/api-frontend/News/ListRss/{languageId}';

  final getNewsItemGet = '/api-frontend/News/GetNewsItem/{newsItemId}';

  final newsCommentAddPost = '/api-frontend/News/NewsCommentAdd/{newsItemId}';
}

class _Newsletter {
  const _Newsletter();

  final subscribeNewsletterGet = '/api-frontend/Newsletter/SubscribeNewsletter';

  final subscriptionActivationGet =
      '/api-frontend/Newsletter/SubscriptionActivation';
}

class _Notification {
  const _Notification();

  final notificationListGet = '/api-frontend/Notification/NotificationList';

  final recipientNotificationsGet =
      '/api-frontend/Notification/RecipientNotifications';

  final notificationVendorListGet =
      '/api-frontend/Notification/NotificationVendorList';

  final notificationCategoryListGet =
      '/api-frontend/Notification/NotificationCategoryList';

  final notificationStatusListGet =
      '/api-frontend/Notification/NotificationStatusList';

  final createNotificationPost =
      '/api-frontend/Notification/CreateNotification';

  final driverNotificationsGet =
      '/api-frontend/Notification/DriverNotifications';
}

class _Order {
  const _Order();

  final confirmThreeDPaymentGet =
      '/ConfirmThreeDPayment/{shipmentId}/{orderGuid}';

  final customerOrdersGet = '/api-frontend/Order/CustomerOrders';

  final cancelRecurringPaymentPost =
      '/api-frontend/Order/CancelRecurringPayment';

  final retryLastRecurringPaymentPost =
      '/api-frontend/Order/RetryLastRecurringPayment';

  final customerRewardPointsGet = '/api-frontend/Order/CustomerRewardPoints';

  final detailsGet = '/api-frontend/Order/Details/{orderId}';

  final getPdfInvoiceGet = '/api-frontend/Order/GetPdfInvoice/{orderId}';

  final reOrderGet = '/api-frontend/Order/ReOrder/{orderId}';

  final rePostPaymentGet = '/api-frontend/Order/RePostPayment/{orderId}';

  final shipmentDetailsGet = '/api-frontend/Order/ShipmentDetails';

  final updateShipmentEventsPost = '/api-frontend/Order/UpdateShipmentEvents';

  final webhookUpdatesPost = '/api-frontend/Order/webhookUpdates';

  final updateDHUBShipmentEventsPost =
      '/api-frontend/Order/UpdateDHUBShipmentEvents';

  final updateM5AZNShipmentEventsPost =
      '/api-frontend/Order/UpdateM5AZNShipmentEvents';

  final updateShipaShipmentEventsPost =
      '/api-frontend/Order/UpdateShipaShipmentEvents';

  final updateArmadaShipmentEventsPost =
      '/api-frontend/Order/UpdateArmadaShipmentEvents';

  final orderListGet = '/api-frontend/Order/OrderList';

  final orderVendorListGet = '/api-frontend/Order/OrderVendorList';

  final settlmentPost = '/api-frontend/Order/Settlment';

  final settlmentOrdersPost = '/api-frontend/Order/SettlmentOrders';

  final trackingDetailsGet = '/api-frontend/Order/TrackingDetails';

  final shipmentListGet = '/api-frontend/Order/ShipmentList';

  final shipmentVendorListGet = '/api-frontend/Order/ShipmentVendorList';

  final returnShipmentListGet = '/api-frontend/Order/ReturnShipmentList';

  final deliveriesListGet = '/api-frontend/Order/DeliveriesList';
}

class _Otp {
  const _Otp();

  final sendOtpPost = '/api-frontend/Otp/SendOtp';

  final isOtpExpiredPost = '/api-frontend/Otp/IsOtpExpired';
}

class _Poll {
  const _Poll();

  final voteGet = '/api-frontend/Poll/Vote/{pollAnswerId}';
}

class _Privatemessages {
  const _Privatemessages();

  final indexGet = '/api-frontend/PrivateMessages/Index';

  final deleteInboxPMPost = '/api-frontend/PrivateMessages/DeleteInboxPM';

  final markUnreadPost = '/api-frontend/PrivateMessages/MarkUnread';

  final deleteSentPMPost = '/api-frontend/PrivateMessages/DeleteSentPM';

  final sendPMGet = '/api-frontend/PrivateMessages/SendPM/{toCustomerId}';

  final sendPMPost = '/api-frontend/PrivateMessages/SendPM';

  final viewPMGet = '/api-frontend/PrivateMessages/ViewPM/{privateMessageId}';

  final deletePMDelete =
      '/api-frontend/PrivateMessages/DeletePM/{privateMessageId}';
}

class _Product {
  const _Product();

  final getProductDetailsGet =
      '/api-frontend/Product/GetProductDetails/{productId}';

  final estimateShippingPost = '/api-frontend/Product/EstimateShipping';

  final getProductCombinationsGet =
      '/api-frontend/Product/GetProductCombinations/{productId}';

  final recentlyViewedProductsGet =
      '/api-frontend/Product/RecentlyViewedProducts';

  final newProductsGet = '/api-frontend/Product/NewProducts';

  final newProductsRssGet = '/api-frontend/Product/NewProductsRss';

  final productReviewsGet = '/api-frontend/Product/ProductReviews/{productId}';

  final productReviewsAddPost =
      '/api-frontend/Product/ProductReviewsAdd/{productId}';

  final setProductReviewHelpfulnessPost =
      '/api-frontend/Product/SetProductReviewHelpfulness/{productReviewId}';

  final customerProductReviewsGet =
      '/api-frontend/Product/CustomerProductReviews';

  final productEmailAFriendGet =
      '/api-frontend/Product/ProductEmailAFriend/{productId}';

  final productEmailAFriendSendPost =
      '/api-frontend/Product/ProductEmailAFriendSend';

  final addProductToCompareListGet =
      '/api-frontend/Product/AddProductToCompareList/{productId}';

  final removeProductFromCompareListGet =
      '/api-frontend/Product/RemoveProductFromCompareList/{productId}';

  final compareProductsGet = '/api-frontend/Product/CompareProducts';

  final clearCompareListGet = '/api-frontend/Product/ClearCompareList';

  final getAllVendorProductsGet = '/api-frontend/Product/GetAllVendorProducts';
}

class _Profile {
  const _Profile();

  final indexGet = '/api-frontend/Profile/Index';
}

class _Returnrequest {
  const _Returnrequest();

  final customerReturnRequestsGet =
      '/api-frontend/ReturnRequest/CustomerReturnRequests';

  final returnRequestGet =
      '/api-frontend/ReturnRequest/ReturnRequest/{orderId}';

  final returnRequestSubmitPost =
      '/api-frontend/ReturnRequest/ReturnRequestSubmit/{orderId}';

  final uploadFileReturnRequestPost =
      '/api-frontend/ReturnRequest/UploadFileReturnRequest';
}

class _Scheduletask {
  const _Scheduletask();

  final runTaskGet = '/api-frontend/ScheduleTask/RunTask';
}

class _Shoppingcart {
  const _Shoppingcart();

  final selectShippingOptionPost =
      '/api-frontend/ShoppingCart/SelectShippingOption';

  final addProductToCartFromCatalogPost =
      '/api-frontend/ShoppingCart/AddProductToCartFromCatalog/{productId}';

  final addProductToCartFromDetailsPost =
      '/api-frontend/ShoppingCart/AddProductToCartFromDetails/{productId}';

  final addSubscriptionPlanToCartDetailsPost =
      '/api-frontend/ShoppingCart/AddSubscriptionPlanToCart_Details/{productId}';

  final productDetailsAttributeChangePut =
      '/api-frontend/ShoppingCart/ProductDetailsAttributeChange/{productId}';

  final checkoutAttributeChangePost =
      '/api-frontend/ShoppingCart/CheckoutAttributeChange';

  final uploadFileProductAttributePost =
      '/api-frontend/ShoppingCart/UploadFileProductAttribute/{attributeId}';

  final uploadFileCheckoutAttributePost =
      '/api-frontend/ShoppingCart/UploadFileCheckoutAttribute/{attributeId}';

  final cartGet = '/api-frontend/ShoppingCart/Cart';

  final miniCartGet = '/api-frontend/ShoppingCart/MiniCart';

  final updateCartPost = '/api-frontend/ShoppingCart/UpdateCart';

  final applyDiscountCouponPost =
      '/api-frontend/ShoppingCart/ApplyDiscountCoupon';

  final applySubscriptionDiscountCouponPost =
      '/api-frontend/ShoppingCart/ApplySubscriptionDiscountCoupon';

  final removeSubscriptionDiscountCouponPost =
      '/api-frontend/ShoppingCart/RemoveSubscriptionDiscountCoupon';

  final getCartOrderDetailsGet =
      '/api-frontend/ShoppingCart/GetCartOrderDetails';

  final applyGiftCardPost = '/api-frontend/ShoppingCart/ApplyGiftCard';

  final removeDiscountCouponPost =
      '/api-frontend/ShoppingCart/RemoveDiscountCoupon';

  final removeGiftCardCodePost =
      '/api-frontend/ShoppingCart/RemoveGiftCardCode';
}

class _Smartwarecarrier {
  const _Smartwarecarrier();

  final carrierCustomerListGet =
      '/api-frontend/SmartwareCarrier/CarrierCustomerList';

  final carrierVendorListGet =
      '/api-frontend/SmartwareCarrier/CarrierVendorList';

  final addCustomerDisabledPost =
      '/api-frontend/SmartwareCarrier/AddCustomerDisabled';

  final addVendorDisabledPost =
      '/api-frontend/SmartwareCarrier/AddVendorDisabled';

  final getCarrierSubStatusListPost =
      '/api-frontend/SmartwareCarrier/GetCarrierSubStatusList';

  final addCarrierSubStatusToShipmentsPost =
      '/api-frontend/SmartwareCarrier/AddCarrierSubStatusToShipments';

  final rescheduleShipmentBySubStatusIdPost =
      '/api-frontend/SmartwareCarrier/RescheduleShipmentBySubStatusId';

  final subStatusesCollectionGet =
      '/api-frontend/SmartwareCarrier/SubStatusesCollection';

  final assignShipmentsToDriverPost =
      '/api-frontend/SmartwareCarrier/AssignShipmentsToDriver';

  final assignShipmentsToStationPost =
      '/api-frontend/SmartwareCarrier/AssignShipmentsToStation';

  final getShipmentsByStationIdGet =
      '/api-frontend/SmartwareCarrier/GetShipmentsByStationId';

  final getShipmentsForCurrentStationManagerPost =
      '/api-frontend/SmartwareCarrier/GetShipmentsForCurrentStationManager';

  final getStationForCurrentManagerPost =
      '/api-frontend/SmartwareCarrier/GetStationForCurrentManager';

  final installGet = '/api-frontend/SmartwareCarrier/Install';

  final armadaCallbackPost = '/api-frontend/SmartwareCarrier/ArmadaCallback';
}

class _Smartwareerp {
  const _Smartwareerp();

  final getErpDataByOrderAndOperationIdGet =
      '/api-frontend/SmartwareErp/GetErpDataByOrderAndOperationId';

  final resetErpEntityStatusPost =
      '/api-frontend/SmartwareErp/ResetErpEntityStatus';
}

class _Smartwareshipment {
  const _Smartwareshipment();

  final getDriverShipmentHistoryListGet =
      '/api-frontend/SmartwareShipment/GetDriverShipmentHistoryList';

  final getDriverActiveShipmentListGet =
      '/api-frontend/SmartwareShipment/GetDriverActiveShipmentList';

  final createDriverShipmentCollectionPost =
      '/api-frontend/SmartwareShipment/CreateDriverShipmentCollection';

  final createIndividualShipmentPost =
      '/api-frontend/SmartwareShipment/CreateIndividualShipment';

  final deleteShipmentPost =
      '/api-frontend/SmartwareShipment/DeleteShipment/{shipmentId}';

  final createShipmentOrderPost =
      '/api-frontend/SmartwareShipment/CreateShipmentOrder/{shipmentId}';

  final createOndemandShipmentOrderPost =
      '/api-frontend/SmartwareShipment/CreateOndemandShipmentOrder/{shipmentId}';

  final paymentRedirectActionPost =
      '/api-frontend/SmartwareShipment/PaymentRedirectAction';

  final montyPaySuccessReturnUrlPost =
      '/api-frontend/SmartwareShipment/montyPaySuccessReturnUrl';

  final montyPayCancelReturnUrlPost =
      '/api-frontend/SmartwareShipment/montyPayCancelReturnUrl';

  final confirmPaymentPost =
      '/api-frontend/SmartwareShipment/ConfirmPayment/{shipmentId}';

  final createOnDemandShipmentPost =
      '/api-frontend/SmartwareShipment/CreateOnDemandShipment';

  final createBusinessPost = '/api-frontend/SmartwareShipment/CreateBusiness';

  final createBusinessShipmentDetailsPost =
      '/api-frontend/SmartwareShipment/CreateBusinessShipmentDetails';

  final getShippingOptionsPost =
      '/api-frontend/SmartwareShipment/GetShippingOptions';

  final createBusinessShipmentCarrierPost =
      '/api-frontend/SmartwareShipment/CreateBusinessShipmentCarrier';

  final createBusinessShipmentOrderPost =
      '/api-frontend/SmartwareShipment/CreateBusinessShipmentOrder/{ShipmentId}';

  final returnBusinessShipmentDetailsPost =
      '/api-frontend/SmartwareShipment/ReturnBusinessShipmentDetails';

  final returnBusinessShipmentPost =
      '/api-frontend/SmartwareShipment/ReturnBusinessShipment';

  final cancelShipmentPost =
      '/api-frontend/SmartwareShipment/CancelShipment/{shipmentId}';

  final cancelShipmentOnDemandPost =
      '/api-frontend/SmartwareShipment/CancelShipmentOnDemand/{shipmentId}';

  final cancelShipmentByExternalIdPost =
      '/api-frontend/SmartwareShipment/CancelShipmentByExternalId/{externalId}';

  final getShipmentByExternalIdPost =
      '/api-frontend/SmartwareShipment/GetShipmentByExternalId/{externalId}';

  final estimateRatesPost = '/api-frontend/SmartwareShipment/EstimateRates';

  final estimateRatesByCODPost =
      '/api-frontend/SmartwareShipment/EstimateRatesByCOD';

  final estimateRatesForMarketplacePost =
      '/api-frontend/SmartwareShipment/EstimateRatesForMarketplace';

  final createOrderPost = '/api-frontend/SmartwareShipment/CreateOrder';

  final returnOrderPost = '/api-frontend/SmartwareShipment/returnOrder';

  final createOrderForMarketPlacePost =
      '/api-frontend/SmartwareShipment/CreateOrderForMarketPlace';

  final returnOrderForMarketPlacePost =
      '/api-frontend/SmartwareShipment/returnOrderForMarketPlace';

  final cancelOrderGet = '/api-frontend/SmartwareShipment/CancelOrder';

  final orderTrackingGet = '/api-frontend/SmartwareShipment/orderTracking';

  final failedConnectorsRequestsGet =
      '/api-frontend/SmartwareShipment/FailedConnectorsRequests';

  final getFailedConnectorRequestGet =
      '/api-frontend/SmartwareShipment/GetFailedConnectorRequest';

  final addShipmentFromFailedConnectorRequestPost =
      '/api-frontend/SmartwareShipment/AddShipmentFromFailedConnectorRequest';

  final getCarrierByShipmentPost =
      '/api-frontend/SmartwareShipment/GetCarrierByShipment/{shipmentId}';

  final pdfPackagingSlipGet =
      '/api-frontend/SmartwareShipment/PdfPackagingSlip/{shipmentId}';

  final createShipmentCodCollectionPost =
      '/api-frontend/SmartwareShipment/createShipmentCodCollection/{shipmentId}';

  final updateShipmentFulfillStatusPost =
      '/api-frontend/SmartwareShipment/UpdateShipmentFulfillStatus/{shipmentId}';
}

class _Smartwaretopupaccount {
  const _Smartwaretopupaccount();

  final customerAccountListGet =
      '/api-frontend/SmartwareTopUpAccount/CustomerAccountList';

  final vendorAccountListGet =
      '/api-frontend/SmartwareTopUpAccount/VendorAccountList';

  final getVendorAvailableWalletsGet =
      '/api-frontend/SmartwareTopUpAccount/getVendorAvailableWallets';

  final createPost = '/api-frontend/SmartwareTopUpAccount/Create';

  final businessCreatePost =
      '/api-frontend/SmartwareTopUpAccount/BusinessCreate';
}

class _Smartwarevendorsubscription {
  const _Smartwarevendorsubscription();

  final companyProfileGet =
      '/api-frontend/SmartwareVendorSubscription/CompanyProfile';

  final listGet = '/api-frontend/SmartwareVendorSubscription/List';

  final vendorSubscriptionCustomAttrGet =
      '/api-frontend/SmartwareVendorSubscription/VendorSubscriptionCustomAttr';

  final vendorSubscriptionCustomAttrBySystemNameGet =
      '/api-frontend/SmartwareVendorSubscription/VendorSubscriptionCustomAttrBySystemName';
}

class _Stickerlabel {
  const _Stickerlabel();

  final listGet = '/api-frontend/StickerLabel/List';
}

class _Topic {
  const _Topic();

  final getTopicDetailsGet = '/api-frontend/Topic/GetTopicDetails/{id}';
}

class _Urlrecord {
  const _Urlrecord();

  final getBySlugGet = '/api-frontend/UrlRecord/GetBySlug';
}

class _Vehicle {
  const _Vehicle();

  final getAllDriverVehiclesGet = '/api-frontend/Vehicle/GetAllDriverVehicles';
}

class _Vehicleservice {
  const _Vehicleservice();

  final serviceLogsListGet = '/api-frontend/VehicleService/ServiceLogsList';

  final detailsGet = '/api-frontend/VehicleService/Details/{servicesLogsId}';

  final createServiceLogsPost =
      '/api-frontend/VehicleService/CreateServiceLogs';

  final updateServiceLogPut =
      '/api-frontend/VehicleService/UpdateServiceLog/{id}';

  final deleteServiceLogDelete =
      '/api-frontend/VehicleService/DeleteServiceLog/{id}';

  final idPost = '/api-frontend/VehicleService/UploadServiceLogsFiles/id';

  final removeServiceLogsAttachmentDelete =
      '/api-frontend/VehicleService/RemoveServiceLogsAttachment';
}

class _Vendor {
  const _Vendor();

  final applyVendorGet = '/api-frontend/Vendor/ApplyVendor';

  final applyVendorSubmitPost = '/api-frontend/Vendor/ApplyVendorSubmit';

  final infoGet = '/api-frontend/Vendor/Info';

  final infoPost = '/api-frontend/Vendor/Info';

  final removePictureDelete = '/api-frontend/Vendor/RemovePicture';

  final removeLegalDocumentDelete = '/api-frontend/Vendor/RemoveLegalDocument';
}

class _Warehouse {
  const _Warehouse();

  final getAllGet = '/api-frontend/Warehouse/GetAll';

  final getByIdGet = '/api-frontend/Warehouse/GetById/{id}';

  final createPost = '/api-frontend/Warehouse/Create';

  final updatePut = '/api-frontend/Warehouse/Update';

  final deleteDelete = '/api-frontend/Warehouse/Delete/{id}';

  final createWarehouseForMarketPlacePost =
      '/api-frontend/Warehouse/createWarehouseForMarketPlace';
}

class _Webhook {
  const _Webhook();

  final createWebhookPost = '/api-frontend/Webhook/CreateWebhook';
}

class _Webhooks {
  const _Webhooks();

  final webhooksPost = '/webhook/webhooks';
}

class _Wishlist {
  const _Wishlist();

  final wishlistGet = '/api-frontend/Wishlist/Wishlist';

  final updateWishlistPost = '/api-frontend/Wishlist/UpdateWishlist';

  final addItemsToCartFromWishlistPut =
      '/api-frontend/Wishlist/AddItemsToCartFromWishlist';

  final emailWishlistGet = '/api-frontend/Wishlist/EmailWishlist';

  final emailWishlistSendPost = '/api-frontend/Wishlist/EmailWishlistSend';
}
