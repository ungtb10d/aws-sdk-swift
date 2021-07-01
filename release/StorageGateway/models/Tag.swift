// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>A key-value pair that helps you manage, filter, and search for your resource. Allowed
///          characters: letters, white space, and numbers, representable in UTF-8, and the following
///          characters: + - = . _ : /.</p>
public struct Tag: Equatable {
    /// <p>Tag key. The key can't start with aws:.</p>
    public let key: String?
    /// <p>Value of the tag key.</p>
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