// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct PutAccountPreferencesOutputResponse: Equatable {
    public let resourceIdPreference: ResourceIdPreference?

    public init (
        resourceIdPreference: ResourceIdPreference? = nil
    )
    {
        self.resourceIdPreference = resourceIdPreference
    }
}

extension PutAccountPreferencesOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "PutAccountPreferencesOutputResponse(resourceIdPreference: \(String(describing: resourceIdPreference)))"}
}