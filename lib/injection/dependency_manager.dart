// import 'injector.dart';
//
// class DependencyManager {
//   static void inject(AppFlavorConfig appFlavorConfig) {
//     getIt
//       ..registerLazySingleton<AppFlavorConfig>(() => appFlavorConfig)
//       ..registerLazySingleton<AuthAppRestApiDataSource>(
//         () => AuthAppRestApiDataSource(
//           DioHttpClientBuilder.createDio(
//             interceptors: (dio) => [
//               CacheRequestInterceptor(),
//               ErrorInterceptor(),
//               AccessTokenInterceptor(),
//               RefreshTokenInterceptor(dio),
//               RetryOnErrorInterceptor(dio),
//             ],
//           ),
//           baseUrl: getIt<AppFlavorConfig>().apiConfig.apiUrl,
//         ),
//       )
//       ..registerLazySingleton<NonAuthAppRestApiDataSource>(
//         () => NonAuthAppRestApiDataSource(
//           DioHttpClientBuilder.createDio(
//             interceptors: (dio) => [
//               CacheRequestInterceptor(),
//               ErrorInterceptor(),
//               RetryOnErrorInterceptor(dio),
//             ],
//           ),
//           baseUrl: getIt<AppFlavorConfig>().apiConfig.apiUrl,
//         ),
//       );
//
//     configureDependencies();
//   }
// }
