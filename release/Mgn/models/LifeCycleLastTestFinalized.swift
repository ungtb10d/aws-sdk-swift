// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Lifecycle last Test finlized.</p>
public struct LifeCycleLastTestFinalized: Equatable {
    /// <p>Lifecycle Test failed API call date and time.</p>
    public let apiCallDateTime: String?

    public init (
        apiCallDateTime: String? = nil
    )
    {
        self.apiCallDateTime = apiCallDateTime
    }
}

extension LifeCycleLastTestFinalized: CustomDebugStringConvertible {
    public var debugDescription: String {
        "LifeCycleLastTestFinalized(apiCallDateTime: \(String(describing: apiCallDateTime)))"}
}