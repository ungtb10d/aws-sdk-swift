// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>A key-value pair. A tag consists of a tag key and a tag value. Tag keys and tag values are
///       both required, but tag values can be empty (null) strings.</p>
///          <p>For information about the rules that apply to tag keys and tag values, see <a href="https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/allocation-tag-restrictions.html">User-Defined Tag Restrictions</a> in the <i>AWS Billing and Cost Management User
///         Guide</i>.</p>
public struct Tag: Equatable {
    /// <p>The key of the tag.</p>
    public let tagKey: String?
    /// <p>The value of the tag.</p>
    public let tagValue: String?

    public init (
        tagKey: String? = nil,
        tagValue: String? = nil
    )
    {
        self.tagKey = tagKey
        self.tagValue = tagValue
    }
}

extension Tag: CustomDebugStringConvertible {
    public var debugDescription: String {
        "Tag(tagKey: \(String(describing: tagKey)), tagValue: \(String(describing: tagValue)))"}
}