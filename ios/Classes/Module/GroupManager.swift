import Foundation
import OpenIMCore

public class GroupManager: BaseServiceManager {
    
    public override func registerHandlers() {
        super.registerHandlers()
        self["acceptGroupApplication"] = acceptGroupApplication
        self["changeGroupMemberMute"] = changeGroupMemberMute
        self["changeGroupMute"] = changeGroupMute
        self["createGroup"] = createGroup
        self["dismissGroup"] = dismissGroup
        self["getGroupApplicationListAsApplicant"] = getGroupApplicationListAsApplicant
        self["getGroupApplicationListAsRecipient"] = getGroupApplicationListAsRecipient
        self["getGroupMemberList"] = getGroupMemberList
        self["getGroupMemberListByJoinTimeFilter"] = getGroupMemberListByJoinTimeFilter
        self["getGroupMemberOwnerAndAdmin"] = getGroupMemberOwnerAndAdmin
        self["getGroupMembersInfo"] = getGroupMembersInfo
        self["getGroupsInfo"] = getGroupsInfo
        self["getJoinedGroupList"] = getJoinedGroupList
        self["getJoinedGroupListPage"] = getJoinedGroupListPage
        self["getUsersInGroup"] = getUsersInGroup
        self["inviteUserToGroup"] = inviteUserToGroup
        self["isJoinGroup"] = isJoinGroup
        self["joinGroup"] = joinGroup
        self["kickGroupMember"] = kickGroupMember
        self["quitGroup"] = quitGroup
        self["refuseGroupApplication"] = refuseGroupApplication
        self["searchGroupMembers"] = searchGroupMembers
        self["searchGroups"] = searchGroups
        self["setGroupInfo"] = setGroupInfo
        self["setGroupListener"] = setGroupListener
        self["setGroupMemberInfo"] = setGroupMemberInfo
        self["transferGroupOwner"] = transferGroupOwner
        self["getGroupApplicationUnhandledCount"] = getGroupApplicationUnhandledCount
        self["setGroupLocation"] = setGroupLocation
        self["setGroupTags"] = setGroupTags
        self["setGroupPublic"] = setGroupPublic
        self["setGroupMaxMemberCount"] = setGroupMaxMemberCount
        self["setGroupAdministrativeRegion"] = setGroupAdministrativeRegion
        self["setGroupSettings"] = setGroupSettings
    }

    func acceptGroupApplication(methodCall: FlutterMethodCall, result: @escaping FlutterResult) {
        Open_im_sdkAcceptGroupApplication(BaseCallback(result: result), methodCall[string: "operationID"], methodCall[string: "groupID"], methodCall[string: "userID"], methodCall[string: "handleMsg"])
    }

    func changeGroupMemberMute(methodCall: FlutterMethodCall, result: @escaping FlutterResult) {
        Open_im_sdkChangeGroupMemberMute(BaseCallback(result: result), methodCall[string: "operationID"], methodCall[string: "groupID"], methodCall[string:"userID"], methodCall[int:"seconds"])
    }

    func changeGroupMute(methodCall: FlutterMethodCall, result: @escaping FlutterResult) {
        Open_im_sdkChangeGroupMute(BaseCallback(result: result), methodCall[string: "operationID"], methodCall[string: "groupID"], methodCall[bool: "mute"])
    }

    func createGroup(methodCall: FlutterMethodCall, result: @escaping FlutterResult) {
        Open_im_sdkCreateGroup(BaseCallback(result: result), methodCall[string: "operationID"], methodCall.toJsonString())
    }

    func dismissGroup(methodCall: FlutterMethodCall, result: @escaping FlutterResult) {
        Open_im_sdkDismissGroup(BaseCallback(result: result), methodCall[string: "operationID"], methodCall[string: "groupID"])
    }

    func getGroupApplicationListAsApplicant(methodCall: FlutterMethodCall, result: @escaping FlutterResult) {
        Open_im_sdkGetGroupApplicationListAsApplicant(BaseCallback(result: result), methodCall[string: "operationID"], methodCall[jsonString: "req"])
    }

    func getGroupApplicationListAsRecipient(methodCall: FlutterMethodCall, result: @escaping FlutterResult) {
        Open_im_sdkGetGroupApplicationListAsRecipient(BaseCallback(result: result), methodCall[string: "operationID"], methodCall[jsonString: "req"])
    }

    func getGroupMemberList(methodCall: FlutterMethodCall, result: @escaping FlutterResult) {
        Open_im_sdkGetGroupMemberList(BaseCallback(result: result), methodCall[string: "operationID"], methodCall[string: "groupID"], methodCall[int32: "filter"],
                                      methodCall[int32: "offset"], methodCall[int32: "count"])
    }

    func getGroupMemberListByJoinTimeFilter(methodCall: FlutterMethodCall, result: @escaping FlutterResult) {
        Open_im_sdkGetGroupMemberListByJoinTimeFilter(BaseCallback(result: result), methodCall[string: "operationID"], methodCall[string: "groupID"], methodCall[int32: "offset"], methodCall[int32: "count"], methodCall[int64: "joinTimeBegin"], methodCall[int64: "joinTimeEnd"], methodCall[jsonString: "excludeUserIDList"])
    }

    func getGroupMemberOwnerAndAdmin(methodCall: FlutterMethodCall, result: @escaping FlutterResult) {
        Open_im_sdkGetGroupMemberOwnerAndAdmin(BaseCallback(result: result), methodCall[string: "operationID"], methodCall[string: "groupID"])
    }

    func getGroupMembersInfo(methodCall: FlutterMethodCall, result: @escaping FlutterResult) {
        Open_im_sdkGetSpecifiedGroupMembersInfo(BaseCallback(result: result), methodCall[string: "operationID"], methodCall[string: "groupID"], methodCall[jsonString: "userIDList"])
    }

    func getGroupsInfo(methodCall: FlutterMethodCall, result: @escaping FlutterResult) {
        Open_im_sdkGetSpecifiedGroupsInfo(BaseCallback(result: result), methodCall[string: "operationID"], methodCall[jsonString: "groupIDList"])
    }

    func getJoinedGroupList(methodCall: FlutterMethodCall, result: @escaping FlutterResult) {
        Open_im_sdkGetJoinedGroupList(BaseCallback(result: result), methodCall[string: "operationID"])
    }

    func getJoinedGroupListPage(methodCall: FlutterMethodCall, result: @escaping FlutterResult) {
        Open_im_sdkGetJoinedGroupListPage(BaseCallback(result: result), methodCall[string: "operationID"], methodCall[int32: "offset"], methodCall[int32: "count"])
    }

    func getUsersInGroup(methodCall: FlutterMethodCall, result: @escaping FlutterResult) {
         Open_im_sdkGetUsersInGroup(BaseCallback(result: result), methodCall[string: "operationID"], methodCall[string: "groupID"],
         methodCall[jsonString: "userIDs"])
    }

    func inviteUserToGroup(methodCall: FlutterMethodCall, result: @escaping FlutterResult) {
        Open_im_sdkInviteUserToGroup(BaseCallback(result: result), methodCall[string: "operationID"], methodCall[string: "groupID"], methodCall[string: "reason"],
                                     methodCall[jsonString: "userIDList"])
    }

    func isJoinGroup(methodCall: FlutterMethodCall, result: @escaping FlutterResult) {
        Open_im_sdkIsJoinGroup(BaseCallback(result: result), methodCall[string: "operationID"], methodCall[string: "groupID"])
    }

    func joinGroup(methodCall: FlutterMethodCall, result: @escaping FlutterResult) {
        Open_im_sdkJoinGroup(BaseCallback(result: result), methodCall[string: "operationID"], methodCall[string: "groupID"], methodCall[string:
        "reason"], methodCall[int32: "joinSource"], methodCall[jsonString: "ex"])
    }

    func kickGroupMember(methodCall: FlutterMethodCall, result: @escaping FlutterResult) {
        Open_im_sdkKickGroupMember(BaseCallback(result: result), methodCall[string: "operationID"], methodCall[string: "groupID"], methodCall[string: "reason"],
                                   methodCall[jsonString: "userIDList"])
    }

    func quitGroup(methodCall: FlutterMethodCall, result: @escaping FlutterResult) {
        Open_im_sdkQuitGroup(BaseCallback(result: result), methodCall[string: "operationID"], methodCall[string: "groupID"])
    }

    func refuseGroupApplication(methodCall: FlutterMethodCall, result: @escaping FlutterResult) {
        Open_im_sdkRefuseGroupApplication(BaseCallback(result: result), methodCall[string: "operationID"], methodCall[string: "groupID"], methodCall[string: "userID"], methodCall[string: "handleMsg"])
    }

    func searchGroupMembers(methodCall: FlutterMethodCall, result: @escaping FlutterResult) {
        Open_im_sdkSearchGroupMembers(BaseCallback(result: result), methodCall[string: "operationID"], methodCall[jsonString: "searchParam"])
    }

    func searchGroups(methodCall: FlutterMethodCall, result: @escaping FlutterResult) {
        Open_im_sdkSearchGroups(BaseCallback(result: result), methodCall[string: "operationID"], methodCall[jsonString: "searchParam"])
    }

    func setGroupInfo(methodCall: FlutterMethodCall, result: @escaping FlutterResult) {
        Open_im_sdkSetGroupInfo(BaseCallback(result: result), methodCall[string: "operationID"], methodCall[jsonString: "groupInfo"])
    }

    func setGroupListener(methodCall: FlutterMethodCall, result: @escaping FlutterResult) {
        Open_im_sdkSetGroupListener(GroupListener(channel: channel))
        callBack(result)
    }

    func setGroupMemberInfo(methodCall: FlutterMethodCall, result: @escaping FlutterResult) {
        Open_im_sdkSetGroupMemberInfo(BaseCallback(result: result), methodCall[string: "operationID"], methodCall[jsonString: "info"])
    }

    func transferGroupOwner(methodCall: FlutterMethodCall, result: @escaping FlutterResult) {
        Open_im_sdkTransferGroupOwner(BaseCallback(result: result), methodCall[string: "operationID"], methodCall[string: "groupID"], methodCall[string: "userID"])
    }

    func getGroupApplicationUnhandledCount(methodCall: FlutterMethodCall, result: @escaping FlutterResult) {
        Open_im_sdkGetGroupApplicationUnhandledCount(BaseCallback(result: result), methodCall[string: "operationID"], methodCall[jsonString: "req"])
    }

    func setGroupLocation(methodCall: FlutterMethodCall, result: @escaping FlutterResult) {
        let groupID = methodCall[string: "groupID"]
        let latitude = methodCall["latitude"] as? Double
        let longitude = methodCall["longitude"] as? Double
        let location = methodCall[string: "location"]
        let locationAddress = methodCall[string: "locationAddress"]
        let operationID = methodCall[string: "operationID"]

        print("[setGroupLocation] iOS原生层收到调用")
        print("[setGroupLocation] 参数: groupID=\(groupID), latitude=\(String(describing: latitude)), longitude=\(String(describing: longitude)), location=\(location), locationAddress=\(locationAddress), operationID=\(operationID)")

        var groupInfo: [String: Any] = ["groupID": groupID]
        if let latitude = latitude {
            groupInfo["latitude"] = latitude
        }
        if let longitude = longitude {
            groupInfo["longitude"] = longitude
        }
        if !location.isEmpty {
            groupInfo["location"] = location
        }
        if !locationAddress.isEmpty {
            groupInfo["locationAddress"] = locationAddress
        }

        let groupInfoJson = JsonUtil.toString(object: groupInfo as AnyObject)
        print("[setGroupLocation] 构建的 groupInfo JSON: \(groupInfoJson)")
        print("[setGroupLocation] ⚠️ 注意：SDK Core 没有专门的 setGroupLocation 方法")
        print("[setGroupLocation] 将使用通用 setGroupInfo 方法，实际调用 /group/set_group_info_ex 接口")
        print("[setGroupLocation] 如需调用专门的 /group/set_group_location 接口，需要 SDK Core 支持或直接发送 HTTP 请求")
        print("[setGroupLocation] 准备调用 Open_im_sdkSetGroupInfo")

        let callback = GroupMethodCallback(result: result, methodName: "setGroupLocation")
        Open_im_sdkSetGroupInfo(callback, operationID, groupInfoJson)

        print("[setGroupLocation] Open_im_sdkSetGroupInfo 调用完成（异步，结果将在回调中返回）")
    }

    func setGroupTags(methodCall: FlutterMethodCall, result: @escaping FlutterResult) {
        let groupID = methodCall[string: "groupID"]
        let tagIDs = methodCall["tagIDs"] as? [String]
        let operationID = methodCall[string: "operationID"]

        print("[setGroupTags] iOS原生层收到调用")
        print("[setGroupTags] 参数: groupID=\(groupID), tagIDs=\(String(describing: tagIDs)), operationID=\(operationID)")
        print("[setGroupTags] ⚠️ 注意：SDK Core 没有专门的 setGroupTags 方法")
        print("[setGroupTags] 将使用通用 setGroupInfo 方法，实际调用 /group/set_group_info_ex 接口")
        print("[setGroupTags] 如需调用专门的 /group/set_group_tags 接口，需要 SDK Core 支持或直接发送 HTTP 请求")

        var groupInfo: [String: Any] = ["groupID": groupID]
        if let tagIDs = tagIDs {
            groupInfo["tagIDs"] = tagIDs
        }

        let groupInfoJson = JsonUtil.toString(object: groupInfo as AnyObject)
        print("[setGroupTags] 构建的 groupInfo JSON: \(groupInfoJson)")
        print("[setGroupTags] 准备调用 Open_im_sdkSetGroupInfo")

        Open_im_sdkSetGroupInfo(BaseCallback(result: result), operationID, groupInfoJson)

        print("[setGroupTags] Open_im_sdkSetGroupInfo 调用完成（异步，结果将在回调中返回）")
    }

    func setGroupPublic(methodCall: FlutterMethodCall, result: @escaping FlutterResult) {
        let groupID = methodCall[string: "groupID"]
        let isPublic = methodCall["isPublic"] as? Int
        let operationID = methodCall[string: "operationID"]

        print("[setGroupPublic] iOS原生层收到调用")
        print("[setGroupPublic] 参数: groupID=\(groupID), isPublic=\(String(describing: isPublic)), operationID=\(operationID)")
        print("[setGroupPublic] ⚠️ 注意：SDK Core 没有专门的 setGroupPublic 方法")
        print("[setGroupPublic] 将使用通用 setGroupInfo 方法，实际调用 /group/set_group_info_ex 接口")
        print("[setGroupPublic] 如需调用专门的 /group/set_group_public 接口，需要 SDK Core 支持或直接发送 HTTP 请求")

        var groupInfo: [String: Any] = ["groupID": groupID]
        if let isPublic = isPublic {
            groupInfo["isPublic"] = isPublic
        }

        let groupInfoJson = JsonUtil.toString(object: groupInfo as AnyObject)
        print("[setGroupPublic] 构建的 groupInfo JSON: \(groupInfoJson)")
        print("[setGroupPublic] 准备调用 Open_im_sdkSetGroupInfo")

        let callback = GroupMethodCallback(result: result, methodName: "setGroupPublic")
        Open_im_sdkSetGroupInfo(callback, operationID, groupInfoJson)

        print("[setGroupPublic] Open_im_sdkSetGroupInfo 调用完成（异步，结果将在回调中返回）")
    }

    func setGroupMaxMemberCount(methodCall: FlutterMethodCall, result: @escaping FlutterResult) {
        let groupID = methodCall[string: "groupID"]
        let maxMemberCount = methodCall["maxMemberCount"] as? Int
        let operationID = methodCall[string: "operationID"]

        print("[setGroupMaxMemberCount] iOS原生层收到调用")
        print("[setGroupMaxMemberCount] 参数: groupID=\(groupID), maxMemberCount=\(String(describing: maxMemberCount)), operationID=\(operationID)")
        print("[setGroupMaxMemberCount] ⚠️ 注意：SDK Core 没有专门的 setGroupMaxMemberCount 方法")
        print("[setGroupMaxMemberCount] 将使用通用 setGroupInfo 方法，实际调用 /group/set_group_info_ex 接口")
        print("[setGroupMaxMemberCount] 如需调用专门的 /group/set_group_max_member_count 接口，需要 SDK Core 支持或直接发送 HTTP 请求")

        var groupInfo: [String: Any] = ["groupID": groupID]
        if let maxMemberCount = maxMemberCount {
            groupInfo["maxMemberCount"] = maxMemberCount
        }

        let groupInfoJson = JsonUtil.toString(object: groupInfo as AnyObject)
        print("[setGroupMaxMemberCount] 构建的 groupInfo JSON: \(groupInfoJson)")
        print("[setGroupMaxMemberCount] 准备调用 Open_im_sdkSetGroupInfo")

        let callback = GroupMethodCallback(result: result, methodName: "setGroupMaxMemberCount")
        Open_im_sdkSetGroupInfo(callback, operationID, groupInfoJson)

        print("[setGroupMaxMemberCount] Open_im_sdkSetGroupInfo 调用完成（异步，结果将在回调中返回）")
    }

    func setGroupAdministrativeRegion(methodCall: FlutterMethodCall, result: @escaping FlutterResult) {
        let groupID = methodCall[string: "groupID"]
        let country = methodCall[string: "country"]
        let city = methodCall[string: "city"]
        let district = methodCall[string: "district"]
        let administrativeRegion = methodCall[string: "administrativeRegion"]
        let operationID = methodCall[string: "operationID"]

        print("[setGroupAdministrativeRegion] iOS原生层收到调用")
        print("[setGroupAdministrativeRegion] 参数: groupID=\(groupID), country=\(country), city=\(city), district=\(district), administrativeRegion=\(administrativeRegion), operationID=\(operationID)")
        print("[setGroupAdministrativeRegion] ⚠️ 注意：SDK Core 没有专门的 setGroupAdministrativeRegion 方法")
        print("[setGroupAdministrativeRegion] 将使用通用 setGroupInfo 方法，实际调用 /group/set_group_info_ex 接口")
        print("[setGroupAdministrativeRegion] 如需调用专门的 /group/set_group_administrative_region 接口，需要 SDK Core 支持或直接发送 HTTP 请求")

        var groupInfo: [String: Any] = ["groupID": groupID]
        if !country.isEmpty {
            groupInfo["country"] = country
        }
        if !city.isEmpty {
            groupInfo["city"] = city
        }
        if !district.isEmpty {
            groupInfo["district"] = district
        }
        if !administrativeRegion.isEmpty {
            groupInfo["administrativeRegion"] = administrativeRegion
        }

        let groupInfoJson = JsonUtil.toString(object: groupInfo as AnyObject)
        print("[setGroupAdministrativeRegion] 构建的 groupInfo JSON: \(groupInfoJson)")
        print("[setGroupAdministrativeRegion] 准备调用 Open_im_sdkSetGroupInfo")

        let callback = GroupMethodCallback(result: result, methodName: "setGroupAdministrativeRegion")
        Open_im_sdkSetGroupInfo(callback, operationID, groupInfoJson)

        print("[setGroupAdministrativeRegion] Open_im_sdkSetGroupInfo 调用完成（异步，结果将在回调中返回）")
    }

    func setGroupSettings(methodCall: FlutterMethodCall, result: @escaping FlutterResult) {
        let groupID = methodCall[string: "groupID"]
        let settings = methodCall[string: "settings"]
        let operationID = methodCall[string: "operationID"]

        print("[setGroupSettings] iOS原生层收到调用")
        print("[setGroupSettings] 参数: groupID=\(groupID), settings=\(settings), operationID=\(operationID)")
        print("[setGroupSettings] ⚠️ 注意：SDK Core 没有专门的 setGroupSettings 方法")
        print("[setGroupSettings] 将使用通用 setGroupInfo 方法，实际调用 /group/set_group_info_ex 接口")
        print("[setGroupSettings] 如需调用专门的 /group/set_group_settings 接口，需要 SDK Core 支持或直接发送 HTTP 请求")

        var groupInfo: [String: Any] = ["groupID": groupID]
        if !settings.isEmpty {
            groupInfo["settings"] = settings
        }

        let groupInfoJson = JsonUtil.toString(object: groupInfo as AnyObject)
        print("[setGroupSettings] 构建的 groupInfo JSON: \(groupInfoJson)")
        print("[setGroupSettings] 准备调用 Open_im_sdkSetGroupInfo")

        let callback = GroupMethodCallback(result: result, methodName: "setGroupSettings")
        Open_im_sdkSetGroupInfo(callback, operationID, groupInfoJson)

        print("[setGroupSettings] Open_im_sdkSetGroupInfo 调用完成（异步，结果将在回调中返回）")
    }
}

// GroupMethodCallback: 带方法名日志的BaseCallback wrapper
class GroupMethodCallback: NSObject, Open_im_sdk_callbackBaseProtocol {
    private let result: FlutterResult
    private let methodName: String
    
    init(result: @escaping FlutterResult, methodName: String) {
        self.result = result
        self.methodName = methodName
    }
    
    public func onError(_ errCode: Int32, errMsg: String?) {
        print("[\(methodName)] SDK Core 回调失败，错误码: \(errCode), 错误消息: \(errMsg ?? "")")
        print("[\(methodName)] 注意：当前调用的是通用 setGroupInfo 接口，实际请求路径是 /group/set_group_info_ex")
        print("[\(methodName)] 如需调用专门的接口，需要 SDK Core 支持或直接发送 HTTP 请求")
        safeMainAsync { self.result(FlutterError(code: "\(errCode)", message: errMsg, details: nil)) }
    }
    
    public func onSuccess(_ data: String?) {
        print("[\(methodName)] SDK Core 回调成功，响应数据: \(data ?? "")")
        print("[\(methodName)] 注意：当前调用的是通用 setGroupInfo 接口，实际请求路径是 /group/set_group_info_ex")
        print("[\(methodName)] 如需调用专门的接口，需要 SDK Core 支持或直接发送 HTTP 请求")
        safeMainAsync { self.result(data) }
    }
}

public class GroupListener: NSObject, Open_im_sdk_callbackOnGroupListenerProtocol {
  
    private let channel: FlutterMethodChannel
    
    init(channel: FlutterMethodChannel) {
        self.channel = channel
    }
  
    public func onGroupApplicationAccepted(_ s: String?) {
        CommonUtil.emitEvent(channel: channel, method: "groupListener", type: "onGroupApplicationAccepted", errCode: nil, errMsg: nil, data: s)
    }

    public func onGroupApplicationAdded(_ s: String?) {
        CommonUtil.emitEvent(channel: channel, method: "groupListener", type: "onGroupApplicationAdded", errCode: nil, errMsg: nil, data: s)
    }

    public func onGroupApplicationDeleted(_ s: String?) {
        CommonUtil.emitEvent(channel: channel, method: "groupListener", type: "onGroupApplicationDeleted", errCode: nil, errMsg: nil, data: s)
    }

    public func onGroupApplicationRejected(_ s: String?) {
        CommonUtil.emitEvent(channel: channel, method: "groupListener", type: "onGroupApplicationRejected", errCode: nil, errMsg: nil, data: s)
    }

    public func onGroupDismissed(_ s: String?) {
        CommonUtil.emitEvent(channel: channel, method: "groupListener", type: "onGroupDismissed", errCode: nil, errMsg: nil, data: s)
    }

    public func onGroupInfoChanged(_ s: String?) {
        CommonUtil.emitEvent(channel: channel, method: "groupListener", type: "onGroupInfoChanged", errCode: nil, errMsg: nil, data: s)
    }

    public func onGroupMemberAdded(_ s: String?) {
        CommonUtil.emitEvent(channel: channel, method: "groupListener", type: "onGroupMemberAdded", errCode: nil, errMsg: nil, data: s)
    }

    public func onGroupMemberDeleted(_ s: String?) {
        CommonUtil.emitEvent(channel: channel, method: "groupListener", type: "onGroupMemberDeleted", errCode: nil, errMsg: nil, data: s)
    }

    public func onGroupMemberInfoChanged(_ s: String?) {
        CommonUtil.emitEvent(channel: channel, method: "groupListener", type: "onGroupMemberInfoChanged", errCode: nil, errMsg: nil, data: s)
    }

    public func onJoinedGroupAdded(_ s: String?) {
        CommonUtil.emitEvent(channel: channel, method: "groupListener", type: "onJoinedGroupAdded", errCode: nil, errMsg: nil, data: s)
    }

    public func onJoinedGroupDeleted(_ s: String?) {
        CommonUtil.emitEvent(channel: channel, method: "groupListener", type: "onJoinedGroupDeleted", errCode: nil, errMsg: nil, data: s)
    }
}
