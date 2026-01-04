#!/bin/bash

# 检查并恢复自定义 SDK 文件脚本
# 如果从 Git 拉取代码后没有找到这些文件，运行此脚本

echo "检查自定义 SDK 文件..."

# 检查 Android 文件
ANDROID_FILE="android/libs/core-sdk.aar"
if [ ! -f "$ANDROID_FILE" ]; then
    echo "❌ 未找到 Android 文件: $ANDROID_FILE"
    echo "尝试从 Git 仓库恢复..."
    
    # 确保目录存在
    mkdir -p android/libs
    
    # 从 Git 恢复文件
    git checkout HEAD -- "$ANDROID_FILE" 2>/dev/null
    if [ $? -eq 0 ] && [ -f "$ANDROID_FILE" ]; then
        echo "✅ Android 文件已恢复"
    else
        echo "⚠️  无法从 Git 恢复，请手动检查或联系维护者"
        echo "   文件大小应为约 30MB"
    fi
else
    FILE_SIZE=$(du -h "$ANDROID_FILE" | cut -f1)
    echo "✅ Android 文件存在: $ANDROID_FILE ($FILE_SIZE)"
fi

# 检查 iOS 文件
IOS_DIR="ios/Framework/OpenIMSDKCore.xcframework"
if [ ! -d "$IOS_DIR" ]; then
    echo "❌ 未找到 iOS 目录: $IOS_DIR"
    echo "尝试从 Git 仓库恢复..."
    
    # 确保目录存在
    mkdir -p ios/Framework
    
    # 从 Git 恢复整个目录
    git checkout HEAD -- "$IOS_DIR" 2>/dev/null
    if [ $? -eq 0 ] && [ -d "$IOS_DIR" ]; then
        echo "✅ iOS 目录已恢复"
    else
        echo "⚠️  无法从 Git 恢复，请手动检查或联系维护者"
        echo "   目录大小应为约 84MB"
    fi
else
    DIR_SIZE=$(du -sh "$IOS_DIR" 2>/dev/null | cut -f1)
    echo "✅ iOS 目录存在: $IOS_DIR ($DIR_SIZE)"
fi

echo ""
echo "检查完成！"
echo ""
echo "如果文件仍然缺失，请尝试："
echo "1. 完整克隆仓库（不是 shallow clone）"
echo "2. 执行: git fetch --unshallow"
echo "3. 执行: git pull origin main"
echo "4. 检查网络连接和 Git 配置"

