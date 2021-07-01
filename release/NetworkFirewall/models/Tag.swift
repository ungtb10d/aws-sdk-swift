// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>A key:value pair associated with an AWS resource. The key:value pair can be anything you
///          define. Typically, the tag key represents a category (such as "environment") and the tag
///          value represents a specific value within that category (such as "test," "development," or
///          "production"). You can add up to 50 tags to each AWS resource. </p>
public struct Tag: Equatable {
    /// <p>The part of the key:value pair that defines a tag. You can use a tag key to describe a
    ///          category of information, such as "customer." Tag keys are case-sensitive.</p>
    public let key: String?
    /// <p>The part of the key:value pair that defines a tag. You can use a tag value to describe a
    ///          specific value within a category, such as "companyA" or "companyB." Tag values are
    ///          case-sensitive.</p>
    public let value: String?

    public init (
        key: String? = nil,
        value: String? = nil
    )
    {
        self.key = key
        self.value = value
    }
}

extension Tag: CustomDebugStringConvertible {
    public var debugDescription: String {
        "Tag(key: \(String(describing: key)), value: \(String(describing: value)))"}
}