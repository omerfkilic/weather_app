// ignore_for_file: library_private_types_in_public_api

part 'asset_paths.dart';
part 'app_ids.dart';

///Constants
class CConsts {
  CConsts._();
  static final _AssetPaths _assetPaths = _AssetPaths._();

  static _AssetPaths get assetPaths => _assetPaths;
  
  static final _AppIds _appIds = _AppIds._();

  static _AppIds get appIds => _appIds;
}
