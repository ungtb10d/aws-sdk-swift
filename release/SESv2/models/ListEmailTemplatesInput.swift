// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Represents a request to list the email templates present in your Amazon SES account in the
///             current AWS Region. For more information, see the <a href="https://docs.aws.amazon.com/ses/latest/DeveloperGuide/send-personalized-email-api.html">Amazon SES Developer
///                 Guide</a>.</p>
public struct ListEmailTemplatesInput: Equatable {
    /// <p>A token returned from a previous call to <code>ListEmailTemplates</code> to indicate
    ///             the position in the list of email templates.</p>
    public let nextToken: String?
    /// <p>The number of results to show in a single call to <code>ListEmailTemplates</code>. If the number of
    ///             results is larger than the number you specified in this parameter, then the response
    ///             includes a <code>NextToken</code> element, which you can use to obtain additional results.</p>
    ///         <p>The value you specify has to be at least 1, and can be no more than 10.</p>
    public let pageSize: Int?

    public init (
        nextToken: String? = nil,
        pageSize: Int? = nil
    )
    {
        self.nextToken = nextToken
        self.pageSize = pageSize
    }
}

extension ListEmailTemplatesInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ListEmailTemplatesInput(nextToken: \(String(describing: nextToken)), pageSize: \(String(describing: pageSize)))"}
}