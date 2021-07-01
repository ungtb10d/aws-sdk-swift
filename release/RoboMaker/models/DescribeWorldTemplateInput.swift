// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct DescribeWorldTemplateInput: Equatable {
    /// <p>The Amazon Resource Name (arn) of the world template you want to describe.</p>
    public let template: String?

    public init (
        template: String? = nil
    )
    {
        self.template = template
    }
}

extension DescribeWorldTemplateInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DescribeWorldTemplateInput(template: \(String(describing: template)))"}
}