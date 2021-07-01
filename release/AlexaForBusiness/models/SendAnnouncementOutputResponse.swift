// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct SendAnnouncementOutputResponse: Equatable {
    /// <p>The identifier of the announcement.</p>
    public let announcementArn: String?

    public init (
        announcementArn: String? = nil
    )
    {
        self.announcementArn = announcementArn
    }
}

extension SendAnnouncementOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "SendAnnouncementOutputResponse(announcementArn: \(String(describing: announcementArn)))"}
}