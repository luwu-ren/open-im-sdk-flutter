package io.openim.flutter_openim_sdk.listener;

import io.openim.flutter_openim_sdk.util.CommonUtil;

public class OnUserListener implements open_im_sdk_callback.OnUserListener {

    @Override
    public void onSelfInfoUpdated(String s) {
        CommonUtil.emitEvent("userListener", "onSelfInfoUpdated", s);
    }

    @Override
    public void onUserStatusChanged(String s) {
        CommonUtil.emitEvent("userListener", "onUserStatusChanged", s);
    }

    // 以下方法可能不在当前 SDK 版本的接口中，移除 @Override 以避免编译错误
    // 如果 SDK 版本支持这些方法，可以取消注释 @Override
    public void onUserCommandAdd(String s) {
        CommonUtil.emitEvent("userListener", "onUserCommandAdd", s);
    }

    public void onUserCommandDelete(String s) {
        CommonUtil.emitEvent("userListener", "onUserCommandDelete", s);
    }

    public void onUserCommandUpdate(String s) {
        CommonUtil.emitEvent("userListener", "onUserCommandUpdate", s);
    }
}
