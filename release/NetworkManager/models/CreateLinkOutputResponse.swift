// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct CreateLinkOutputResponse: Equatable {
    /// <p>Information about the link.</p>
    public let link: Link?

    public init (
        link: Link? = nil
    )
    {
        self.link = link
    }
}

extension CreateLinkOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "CreateLinkOutputResponse(link: \(String(describing: link)))"}
}