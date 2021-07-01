// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct GetAppValidationOutputOutputResponse: Equatable {
    /// <p>The validation output.</p>
    public let validationOutputList: [ValidationOutput]?

    public init (
        validationOutputList: [ValidationOutput]? = nil
    )
    {
        self.validationOutputList = validationOutputList
    }
}

extension GetAppValidationOutputOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "GetAppValidationOutputOutputResponse(validationOutputList: \(String(describing: validationOutputList)))"}
}