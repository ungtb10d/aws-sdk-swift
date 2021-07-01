// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct DescribeAppInstanceUserOutputResponse: Equatable {
    /// <p>The name of the <code>AppInstanceUser</code>.</p>
    public let appInstanceUser: AppInstanceUser?

    public init (
        appInstanceUser: AppInstanceUser? = nil
    )
    {
        self.appInstanceUser = appInstanceUser
    }
}

extension DescribeAppInstanceUserOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DescribeAppInstanceUserOutputResponse(appInstanceUser: \(String(describing: appInstanceUser)))"}
}