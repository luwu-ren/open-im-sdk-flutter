# 自定义 SDK 文件说明

本项目支持使用自定义的本地 `.aar` 和 `.xcframework` 文件，而不是从远程 Maven/CocoaPods 仓库下载。

## 文件位置

### Android
- **文件路径**: `android/libs/core-sdk.aar`
- **文件大小**: 约 30MB

### iOS  
- **文件路径**: `ios/Framework/OpenIMSDKCore.xcframework/`
- **文件大小**: 约 84MB

## 获取文件

由于文件较大，如果从 Git 仓库拉取代码后没有这些文件，请按以下方式处理：

### 方式一：完整拉取（推荐）

使用完整克隆，确保拉取所有文件：

```bash
# 完整克隆（不是 shallow clone）
git clone git@github.com:luwu-ren/open-im-sdk-flutter.git

# 或者如果已经克隆，确保拉取所有文件
git fetch --unshallow  # 如果是 shallow clone
git pull origin main
```

### 方式二：手动检查文件

检查文件是否存在：

```bash
# 检查 Android 文件
ls -lh android/libs/core-sdk.aar

# 检查 iOS 文件  
ls -lh ios/Framework/OpenIMSDKCore.xcframework/
```

如果文件不存在，检查 Git 追踪状态：

```bash
# 检查文件是否被 Git 追踪
git ls-files | grep -E "(libs/core-sdk.aar|Framework/OpenIMSDKCore)"

# 检查文件在历史中的状态
git log --oneline --all -- android/libs/ ios/Framework/
```

### 方式三：单独拉取文件

如果文件确实在仓库中但拉取时丢失，可以单独拉取：

```bash
# 拉取 Android 文件
git checkout HEAD -- android/libs/core-sdk.aar

# 拉取 iOS 文件
git checkout HEAD -- ios/Framework/
```

### 方式四：使用自定义文件

如果你想使用自己的自定义文件：

1. **Android**: 将你的 `.aar` 文件放到 `android/libs/core-sdk.aar`
2. **iOS**: 将你的 `.xcframework` 放到 `ios/Framework/OpenIMSDKCore.xcframework/`

## 配置文件

项目已配置为使用本地文件：

### Android (`android/build.gradle`)
- 已配置 `flatDir` 仓库指向 `libs` 目录
- 依赖配置：`implementation(name: 'core-sdk', ext: 'aar')`

### iOS (`ios/flutter_openim_sdk.podspec`)
- 已注释远程依赖：`# s.dependency 'OpenIMSDKCore','3.8.3-hotfix.10'`
- 已启用本地框架：`s.vendored_frameworks = 'Framework/OpenIMSDKCore.xcframework'`

## 验证配置

拉取代码后，执行以下命令验证配置：

```bash
# 验证 Android 配置
cd example/android
./gradlew dependencies | grep core-sdk

# 验证 iOS 配置
cd example/ios
pod install
```

## 注意事项

1. 这些文件较大，首次拉取可能需要一些时间
2. 如果使用 Git LFS，确保已安装并初始化 LFS
3. 如果文件丢失，可以联系维护者获取文件或使用上述方式重新拉取

