package io.openim.flutter_openim_sdk.listener;


import io.flutter.Log;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import io.openim.flutter_openim_sdk.util.CommonUtil;
import open_im_sdk_callback.Base;

public class OnBaseListener implements Base {

    MethodChannel.Result result;
    MethodCall call;

    public OnBaseListener(MethodChannel.Result result, MethodCall call) {
        this.result = result;
        this.call = call;
    }

    @Override
    public void onError(int l, String s) {
        String threadName = Thread.currentThread().getName();
        Log.i("F-OpenIMSDK(native call flutter)", "thread: " + threadName + " method: 【 " + call.method + " 】, onError: { code:" + l + ", message:" + s + "}");
        // 为专用方法添加额外日志
        if ("setGroupLocation".equals(call.method) || "setGroupTags".equals(call.method) || 
            "setGroupPublic".equals(call.method) || "setGroupMaxMemberCount".equals(call.method) ||
            "setGroupAdministrativeRegion".equals(call.method) || "setGroupSettings".equals(call.method)) {
            Log.i("GroupManager", "[" + call.method + "] SDK Core 回调失败，错误码: " + l + ", 错误消息: " + s);
        }
        CommonUtil.runMainThreadReturnError(result, l, s, null);
    }

    @Override
    public void onSuccess(String s) {
        String threadName = Thread.currentThread().getName();
        Log.i("F-OpenIMSDK(native call flutter)", "thread: " + threadName + " method: 【 " + call.method + " 】, onSuccess: " + s);
        // 为专用方法添加额外日志
        if ("setGroupLocation".equals(call.method) || "setGroupTags".equals(call.method) || 
            "setGroupPublic".equals(call.method) || "setGroupMaxMemberCount".equals(call.method) ||
            "setGroupAdministrativeRegion".equals(call.method) || "setGroupSettings".equals(call.method)) {
            Log.i("GroupManager", "[" + call.method + "] SDK Core 回调成功，响应数据: " + s);
            Log.i("GroupManager", "[" + call.method + "] 注意：当前调用的是通用 setGroupInfo 接口，实际请求路径是 /group/set_group_info_ex");
            Log.i("GroupManager", "[" + call.method + "] 如需调用专门的接口，需要 SDK Core 支持或直接发送 HTTP 请求");
        }
        CommonUtil.runMainThreadReturn(result, s);
    }
}
