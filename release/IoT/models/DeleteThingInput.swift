// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>The input for the DeleteThing operation.</p>
public struct DeleteThingInput: Equatable {
    /// <p>The expected version of the thing record in the registry. If the version of the
    /// 			record in the registry does not match the expected version specified in the request, the
    /// 				<code>DeleteThing</code> request is rejected with a
    /// 				<code>VersionConflictException</code>.</p>
    public let expectedVersion: Int?
    /// <p>The name of the thing to delete.</p>
    public let thingName: String?

    public init (
        expectedVersion: Int? = nil,
        thingName: String? = nil
    )
    {
        self.expectedVersion = expectedVersion
        self.thingName = thingName
    }
}

extension DeleteThingInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DeleteThingInput(expectedVersion: \(String(describing: expectedVersion)), thingName: \(String(describing: thingName)))"}
}