package io.openim.flutter_openim_sdk.manager;

import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import io.openim.flutter_openim_sdk.listener.OnBaseListener;
import io.openim.flutter_openim_sdk.listener.OnGroupListener;
import io.openim.flutter_openim_sdk.util.JsonUtil;
import open_im_sdk.Open_im_sdk;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class GroupManager extends BaseManager {

    public void setGroupListener(MethodCall methodCall, MethodChannel.Result result) {
        Open_im_sdk.setGroupListener(new OnGroupListener());

        result.success(null);
    }

    public void inviteUserToGroup(MethodCall methodCall, MethodChannel.Result result) {
        Open_im_sdk.inviteUserToGroup(
                new OnBaseListener(result, methodCall),
                value(methodCall, "operationID"),
                value(methodCall, "groupID"),
                value(methodCall, "reason"),
                jsonValue(methodCall, "userIDList")
        );
    }

    public void kickGroupMember(MethodCall methodCall, MethodChannel.Result result) {
        Open_im_sdk.kickGroupMember(
                new OnBaseListener(result, methodCall),
                value(methodCall, "operationID"),
                value(methodCall, "groupID"),
                value(methodCall, "reason"),
                jsonValue(methodCall, "userIDList")
        );
    }

    public void getGroupMembersInfo(MethodCall methodCall, MethodChannel.Result result) {
        Open_im_sdk.getSpecifiedGroupMembersInfo(
                new OnBaseListener(result, methodCall),
                value(methodCall, "operationID"),
                value(methodCall, "groupID"),
                jsonValue(methodCall, "userIDList")
        );
    }

    public void getGroupMemberList(MethodCall methodCall, MethodChannel.Result result) {
        Open_im_sdk.getGroupMemberList(
                new OnBaseListener(result, methodCall),
                value(methodCall, "operationID"),
                value(methodCall, "groupID"),
                value(methodCall, "filter"),
                value(methodCall, "offset"),
                value(methodCall, "count")
        );
    }


    public void getJoinedGroupList(MethodCall methodCall, MethodChannel.Result result) {
        Open_im_sdk.getJoinedGroupList(
                new OnBaseListener(result, methodCall),
                value(methodCall, "operationID")
        );
    }

    public void getJoinedGroupListPage(MethodCall methodCall, MethodChannel.Result result) {
        Open_im_sdk.getJoinedGroupListPage(
                new OnBaseListener(result, methodCall),
                value(methodCall, "operationID"),
                value(methodCall, "offset"),
                value(methodCall, "count")
        );
    }

    public void createGroup(MethodCall methodCall, MethodChannel.Result result) {
        Open_im_sdk.createGroup(
                new OnBaseListener(result, methodCall),
                value(methodCall, "operationID"),
                jsonValue(methodCall)
        );
    }

    public void setGroupInfo(MethodCall methodCall, MethodChannel.Result result) {
        Open_im_sdk.setGroupInfo(
                new OnBaseListener(result, methodCall),
                value(methodCall, "operationID"),
                jsonValue(methodCall, "groupInfo")
        );
    }

    public void getGroupsInfo(MethodCall methodCall, MethodChannel.Result result) {
        Open_im_sdk.getSpecifiedGroupsInfo(
                new OnBaseListener(result, methodCall),
                value(methodCall, "operationID"),
                jsonValue(methodCall, "groupIDList")
        );
    }

    public void joinGroup(MethodCall methodCall, MethodChannel.Result result) {
        Open_im_sdk.joinGroup(
                new OnBaseListener(result, methodCall),
                value(methodCall, "operationID"),
                value(methodCall, "groupID"),
                value(methodCall, "reason"),
                value(methodCall, "joinSource"),
                value(methodCall, "ex")
        );
    }

    public void quitGroup(MethodCall methodCall, MethodChannel.Result result) {
        Open_im_sdk.quitGroup(
                new OnBaseListener(result, methodCall),
                value(methodCall, "operationID"),
                value(methodCall, "groupID")
        );
    }

    public void transferGroupOwner(MethodCall methodCall, MethodChannel.Result result) {
        Open_im_sdk.transferGroupOwner(
                new OnBaseListener(result, methodCall),
                value(methodCall, "operationID"),
                value(methodCall, "groupID"),
                value(methodCall, "userID")
        );
    }

    public void getGroupApplicationListAsRecipient(MethodCall methodCall, MethodChannel.Result result) {
        Open_im_sdk.getGroupApplicationListAsRecipient(
                new OnBaseListener(result, methodCall),
                value(methodCall, "operationID"),
                jsonValue(methodCall, "req")
        );
    }

    public void getGroupApplicationListAsApplicant(MethodCall methodCall, MethodChannel.Result result) {
        Open_im_sdk.getGroupApplicationListAsApplicant(
                new OnBaseListener(result, methodCall),
                value(methodCall, "operationID"),
                jsonValue(methodCall, "req")
        );
    }

    public void acceptGroupApplication(MethodCall methodCall, MethodChannel.Result result) {
        Open_im_sdk.acceptGroupApplication(
                new OnBaseListener(result, methodCall),
                value(methodCall, "operationID"),
                value(methodCall, "groupID"),
                value(methodCall, "userID"),
                value(methodCall, "handleMsg")
        );

    }

    public void refuseGroupApplication(MethodCall methodCall, MethodChannel.Result result) {
        Open_im_sdk.refuseGroupApplication(
                new OnBaseListener(result, methodCall),
                value(methodCall, "operationID"),
                value(methodCall, "groupID"),
                value(methodCall, "userID"),
                value(methodCall, "handleMsg")
        );

    }

    public void dismissGroup(MethodCall methodCall, MethodChannel.Result result) {
        Open_im_sdk.dismissGroup(
                new OnBaseListener(result, methodCall),
                value(methodCall, "operationID"),
                value(methodCall, "groupID")
        );
    }

    public void changeGroupMute(MethodCall methodCall, MethodChannel.Result result) {
        Open_im_sdk.changeGroupMute(
                new OnBaseListener(result, methodCall),
                value(methodCall, "operationID"),
                value(methodCall, "groupID"),
                value(methodCall, "mute")
        );
    }

    public void changeGroupMemberMute(MethodCall methodCall, MethodChannel.Result result) {
        Open_im_sdk.changeGroupMemberMute(
                new OnBaseListener(result, methodCall),
                value(methodCall, "operationID"),
                value(methodCall, "groupID"),
                value(methodCall, "userID"),
                int2long(methodCall, "seconds")
        );
    }

    public void searchGroups(MethodCall methodCall, MethodChannel.Result result) {
        Open_im_sdk.searchGroups(new OnBaseListener(result, methodCall),
                value(methodCall, "operationID"),
                jsonValue(methodCall, "searchParam")
        );
    }

    public void getGroupMemberListByJoinTimeFilter(MethodCall methodCall, MethodChannel.Result result) {
        Open_im_sdk.getGroupMemberListByJoinTimeFilter(new OnBaseListener(result, methodCall),
                value(methodCall, "operationID"),
                value(methodCall, "groupID"),
                value(methodCall, "offset"),
                value(methodCall, "count"),
                int2long(methodCall, "joinTimeBegin"),
                int2long(methodCall, "joinTimeEnd"),
                jsonValue(methodCall, "excludeUserIDList")
        );
    }

    public void getGroupMemberOwnerAndAdmin(MethodCall methodCall, MethodChannel.Result result) {
        Open_im_sdk.getGroupMemberOwnerAndAdmin(new OnBaseListener(result, methodCall),
                value(methodCall, "operationID"),
                value(methodCall, "groupID")
        );
    }

    public void searchGroupMembers(MethodCall methodCall, MethodChannel.Result result) {
        Open_im_sdk.searchGroupMembers(new OnBaseListener(result, methodCall),
                value(methodCall, "operationID"),
                jsonValue(methodCall, "searchParam")
        );
    }

    public void setGroupMemberInfo(MethodCall methodCall, MethodChannel.Result result) {
        Open_im_sdk.setGroupMemberInfo(new OnBaseListener(result, methodCall),
                value(methodCall, "operationID"),
                jsonValue(methodCall, "info")
        );
    }

    public void isJoinGroup(MethodCall methodCall, MethodChannel.Result result) {
        Open_im_sdk.isJoinGroup(new OnBaseListener(result, methodCall),
                value(methodCall, "operationID"),
                value(methodCall, "groupID")
        );
    }

    public  void getUsersInGroup(MethodCall methodCall, MethodChannel.Result result) {
        Open_im_sdk.getUsersInGroup(new OnBaseListener(result, methodCall),
                value(methodCall, "operationID"),
                value(methodCall, "groupID"),
                jsonValue(methodCall, "userIDs")
        );
    }

    public void getGroupApplicationUnhandledCount(MethodCall methodCall, MethodChannel.Result result) {
        Open_im_sdk.getGroupApplicationUnhandledCount(new OnBaseListener(result, methodCall),
                value(methodCall, "operationID"),
                jsonValue(methodCall, "req")
        );
    }

    public void setGroupLocation(MethodCall methodCall, MethodChannel.Result result) {
        String groupID = value(methodCall, "groupID");
        Object latitude = methodCall.argument("latitude");
        Object longitude = methodCall.argument("longitude");
        String location = value(methodCall, "location");
        String locationAddress = value(methodCall, "locationAddress");
        String operationID = value(methodCall, "operationID");

        io.flutter.Log.i("GroupManager", "[setGroupLocation] Android原生层收到调用");
        io.flutter.Log.i("GroupManager", "[setGroupLocation] 参数: groupID=" + groupID + ", latitude=" + latitude + ", longitude=" + longitude + ", location=" + location + ", locationAddress=" + locationAddress + ", operationID=" + operationID);

        Map<String, Object> groupInfo = new HashMap<>();
        groupInfo.put("groupID", groupID);
        if (latitude != null) {
            groupInfo.put("latitude", latitude);
        }
        if (longitude != null) {
            groupInfo.put("longitude", longitude);
        }
        if (location != null && !location.isEmpty()) {
            groupInfo.put("location", location);
        }
        if (locationAddress != null && !locationAddress.isEmpty()) {
            groupInfo.put("locationAddress", locationAddress);
        }

        String groupInfoJson = JsonUtil.toString(groupInfo);
        io.flutter.Log.i("GroupManager", "[setGroupLocation] 构建的 groupInfo JSON: " + groupInfoJson);
        io.flutter.Log.i("GroupManager", "[setGroupLocation] ⚠️ 注意：SDK Core 没有专门的 setGroupLocation 方法");
        io.flutter.Log.i("GroupManager", "[setGroupLocation] 将使用通用 setGroupInfo 方法，实际调用 /group/set_group_info_ex 接口");
        io.flutter.Log.i("GroupManager", "[setGroupLocation] 如需调用专门的 /group/set_group_location 接口，需要 SDK Core 支持或直接发送 HTTP 请求");
        io.flutter.Log.i("GroupManager", "[setGroupLocation] 准备调用 Open_im_sdk.setGroupInfo");

        Open_im_sdk.setGroupInfo(new OnBaseListener(result, methodCall),
                operationID,
                groupInfoJson
        );

        io.flutter.Log.i("GroupManager", "[setGroupLocation] Open_im_sdk.setGroupInfo 调用完成（异步，结果将在回调中返回）");
    }

    public void setGroupTags(MethodCall methodCall, MethodChannel.Result result) {
        String groupID = value(methodCall, "groupID");
        List<String> tagIDs = methodCall.argument("tagIDs");
        String operationID = value(methodCall, "operationID");

        io.flutter.Log.i("GroupManager", "[setGroupTags] Android原生层收到调用");
        io.flutter.Log.i("GroupManager", "[setGroupTags] 参数: groupID=" + groupID + ", tagIDs=" + tagIDs + ", operationID=" + operationID);
        io.flutter.Log.i("GroupManager", "[setGroupTags] ⚠️ 注意：SDK Core 没有专门的 setGroupTags 方法");
        io.flutter.Log.i("GroupManager", "[setGroupTags] 将使用通用 setGroupInfo 方法，实际调用 /group/set_group_info_ex 接口");
        io.flutter.Log.i("GroupManager", "[setGroupTags] 如需调用专门的 /group/set_group_tags 接口，需要 SDK Core 支持或直接发送 HTTP 请求");

        Map<String, Object> groupInfo = new HashMap<>();
        groupInfo.put("groupID", groupID);
        if (tagIDs != null) {
            groupInfo.put("tagIDs", tagIDs);
        }

        String groupInfoJson = JsonUtil.toString(groupInfo);
        io.flutter.Log.i("GroupManager", "[setGroupTags] 构建的 groupInfo JSON: " + groupInfoJson);
        io.flutter.Log.i("GroupManager", "[setGroupTags] 准备调用 Open_im_sdk.setGroupInfo");

        Open_im_sdk.setGroupInfo(new OnBaseListener(result, methodCall),
                operationID,
                groupInfoJson
        );

        io.flutter.Log.i("GroupManager", "[setGroupTags] Open_im_sdk.setGroupInfo 调用完成（异步，结果将在回调中返回）");
    }

    public void setGroupPublic(MethodCall methodCall, MethodChannel.Result result) {
        String groupID = value(methodCall, "groupID");
        Integer isPublic = methodCall.argument("isPublic");
        String operationID = value(methodCall, "operationID");

        io.flutter.Log.i("GroupManager", "[setGroupPublic] Android原生层收到调用");
        io.flutter.Log.i("GroupManager", "[setGroupPublic] 参数: groupID=" + groupID + ", isPublic=" + isPublic + ", operationID=" + operationID);
        io.flutter.Log.i("GroupManager", "[setGroupPublic] ⚠️ 注意：SDK Core 没有专门的 setGroupPublic 方法");
        io.flutter.Log.i("GroupManager", "[setGroupPublic] 将使用通用 setGroupInfo 方法，实际调用 /group/set_group_info_ex 接口");
        io.flutter.Log.i("GroupManager", "[setGroupPublic] 如需调用专门的 /group/set_group_public 接口，需要 SDK Core 支持或直接发送 HTTP 请求");

        Map<String, Object> groupInfo = new HashMap<>();
        groupInfo.put("groupID", groupID);
        if (isPublic != null) {
            groupInfo.put("isPublic", isPublic);
        }

        String groupInfoJson = JsonUtil.toString(groupInfo);
        io.flutter.Log.i("GroupManager", "[setGroupPublic] 构建的 groupInfo JSON: " + groupInfoJson);
        io.flutter.Log.i("GroupManager", "[setGroupPublic] 准备调用 Open_im_sdk.setGroupInfo");

        Open_im_sdk.setGroupInfo(new OnBaseListener(result, methodCall),
                operationID,
                groupInfoJson
        );

        io.flutter.Log.i("GroupManager", "[setGroupPublic] Open_im_sdk.setGroupInfo 调用完成（异步，结果将在回调中返回）");
    }

    public void setGroupMaxMemberCount(MethodCall methodCall, MethodChannel.Result result) {
        String groupID = value(methodCall, "groupID");
        Integer maxMemberCount = methodCall.argument("maxMemberCount");
        String operationID = value(methodCall, "operationID");

        io.flutter.Log.i("GroupManager", "[setGroupMaxMemberCount] Android原生层收到调用");
        io.flutter.Log.i("GroupManager", "[setGroupMaxMemberCount] 参数: groupID=" + groupID + ", maxMemberCount=" + maxMemberCount + ", operationID=" + operationID);
        io.flutter.Log.i("GroupManager", "[setGroupMaxMemberCount] ⚠️ 注意：SDK Core 没有专门的 setGroupMaxMemberCount 方法");
        io.flutter.Log.i("GroupManager", "[setGroupMaxMemberCount] 将使用通用 setGroupInfo 方法，实际调用 /group/set_group_info_ex 接口");
        io.flutter.Log.i("GroupManager", "[setGroupMaxMemberCount] 如需调用专门的 /group/set_group_max_member_count 接口，需要 SDK Core 支持或直接发送 HTTP 请求");

        Map<String, Object> groupInfo = new HashMap<>();
        groupInfo.put("groupID", groupID);
        if (maxMemberCount != null) {
            groupInfo.put("maxMemberCount", maxMemberCount);
        }

        String groupInfoJson = JsonUtil.toString(groupInfo);
        io.flutter.Log.i("GroupManager", "[setGroupMaxMemberCount] 构建的 groupInfo JSON: " + groupInfoJson);
        io.flutter.Log.i("GroupManager", "[setGroupMaxMemberCount] 准备调用 Open_im_sdk.setGroupInfo");

        Open_im_sdk.setGroupInfo(new OnBaseListener(result, methodCall),
                operationID,
                groupInfoJson
        );

        io.flutter.Log.i("GroupManager", "[setGroupMaxMemberCount] Open_im_sdk.setGroupInfo 调用完成（异步，结果将在回调中返回）");
    }

    public void setGroupAdministrativeRegion(MethodCall methodCall, MethodChannel.Result result) {
        String groupID = value(methodCall, "groupID");
        String country = value(methodCall, "country");
        String city = value(methodCall, "city");
        String district = value(methodCall, "district");
        String administrativeRegion = value(methodCall, "administrativeRegion");
        String operationID = value(methodCall, "operationID");

        io.flutter.Log.i("GroupManager", "[setGroupAdministrativeRegion] Android原生层收到调用");
        io.flutter.Log.i("GroupManager", "[setGroupAdministrativeRegion] 参数: groupID=" + groupID + ", country=" + country + ", city=" + city + ", district=" + district + ", administrativeRegion=" + administrativeRegion + ", operationID=" + operationID);
        io.flutter.Log.i("GroupManager", "[setGroupAdministrativeRegion] ⚠️ 注意：SDK Core 没有专门的 setGroupAdministrativeRegion 方法");
        io.flutter.Log.i("GroupManager", "[setGroupAdministrativeRegion] 将使用通用 setGroupInfo 方法，实际调用 /group/set_group_info_ex 接口");
        io.flutter.Log.i("GroupManager", "[setGroupAdministrativeRegion] 如需调用专门的 /group/set_group_administrative_region 接口，需要 SDK Core 支持或直接发送 HTTP 请求");

        Map<String, Object> groupInfo = new HashMap<>();
        groupInfo.put("groupID", groupID);
        if (country != null && !country.isEmpty()) {
            groupInfo.put("country", country);
        }
        if (city != null && !city.isEmpty()) {
            groupInfo.put("city", city);
        }
        if (district != null && !district.isEmpty()) {
            groupInfo.put("district", district);
        }
        if (administrativeRegion != null && !administrativeRegion.isEmpty()) {
            groupInfo.put("administrativeRegion", administrativeRegion);
        }

        String groupInfoJson = JsonUtil.toString(groupInfo);
        io.flutter.Log.i("GroupManager", "[setGroupAdministrativeRegion] 构建的 groupInfo JSON: " + groupInfoJson);
        io.flutter.Log.i("GroupManager", "[setGroupAdministrativeRegion] 准备调用 Open_im_sdk.setGroupInfo");

        Open_im_sdk.setGroupInfo(new OnBaseListener(result, methodCall),
                operationID,
                groupInfoJson
        );

        io.flutter.Log.i("GroupManager", "[setGroupAdministrativeRegion] Open_im_sdk.setGroupInfo 调用完成（异步，结果将在回调中返回）");
    }

    public void setGroupSettings(MethodCall methodCall, MethodChannel.Result result) {
        String groupID = value(methodCall, "groupID");
        String settings = value(methodCall, "settings");
        String operationID = value(methodCall, "operationID");

        io.flutter.Log.i("GroupManager", "[setGroupSettings] Android原生层收到调用");
        io.flutter.Log.i("GroupManager", "[setGroupSettings] 参数: groupID=" + groupID + ", settings=" + settings + ", operationID=" + operationID);
        io.flutter.Log.i("GroupManager", "[setGroupSettings] ⚠️ 注意：SDK Core 没有专门的 setGroupSettings 方法");
        io.flutter.Log.i("GroupManager", "[setGroupSettings] 将使用通用 setGroupInfo 方法，实际调用 /group/set_group_info_ex 接口");
        io.flutter.Log.i("GroupManager", "[setGroupSettings] 如需调用专门的 /group/set_group_settings 接口，需要 SDK Core 支持或直接发送 HTTP 请求");

        Map<String, Object> groupInfo = new HashMap<>();
        groupInfo.put("groupID", groupID);
        if (settings != null && !settings.isEmpty()) {
            groupInfo.put("settings", settings);
        }

        String groupInfoJson = JsonUtil.toString(groupInfo);
        io.flutter.Log.i("GroupManager", "[setGroupSettings] 构建的 groupInfo JSON: " + groupInfoJson);
        io.flutter.Log.i("GroupManager", "[setGroupSettings] 准备调用 Open_im_sdk.setGroupInfo");

        Open_im_sdk.setGroupInfo(new OnBaseListener(result, methodCall),
                operationID,
                groupInfoJson
        );

        io.flutter.Log.i("GroupManager", "[setGroupSettings] Open_im_sdk.setGroupInfo 调用完成（异步，结果将在回调中返回）");
    }
}