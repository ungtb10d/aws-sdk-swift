// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Contains the response to a successful <a>GetGroup</a> request. </p>
public struct GetGroupOutputResponse: Equatable {
    /// <p>A structure that contains details about the group.</p>
    public let group: Group?
    /// <p>A flag that indicates whether there are more items to return. If your
    ///     results were truncated, you can make a subsequent pagination request using the <code>Marker</code>
    ///     request parameter to retrieve more items. Note that IAM might return fewer than the
    ///     <code>MaxItems</code> number of results even when there are more results available. We recommend
    ///     that you check <code>IsTruncated</code> after every call to ensure that you receive all your
    ///     results.</p>
    public let isTruncated: Bool
    /// <p>When <code>IsTruncated</code> is <code>true</code>, this element
    ///     is present and contains the value to use for the <code>Marker</code> parameter in a subsequent
    ///     pagination request.</p>
    public let marker: String?
    /// <p>A list of users in the group.</p>
    public let users: [User]?

    public init (
        group: Group? = nil,
        isTruncated: Bool = false,
        marker: String? = nil,
        users: [User]? = nil
    )
    {
        self.group = group
        self.isTruncated = isTruncated
        self.marker = marker
        self.users = users
    }
}

extension GetGroupOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "GetGroupOutputResponse(group: \(String(describing: group)), isTruncated: \(String(describing: isTruncated)), marker: \(String(describing: marker)), users: \(String(describing: users)))"}
}