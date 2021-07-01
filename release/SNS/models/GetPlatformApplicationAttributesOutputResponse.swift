// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Response for GetPlatformApplicationAttributes action.</p>
public struct GetPlatformApplicationAttributesOutputResponse: Equatable {
    /// <p>Attributes include the following:</p>
    ///         <ul>
    ///             <li>
    ///                 <p>
    ///                     <code>EventEndpointCreated</code> – Topic ARN to which EndpointCreated
    ///                     event notifications should be sent.</p>
    ///             </li>
    ///             <li>
    ///                 <p>
    ///                     <code>EventEndpointDeleted</code> – Topic ARN to which EndpointDeleted
    ///                     event notifications should be sent.</p>
    ///             </li>
    ///             <li>
    ///                 <p>
    ///                     <code>EventEndpointUpdated</code> – Topic ARN to which EndpointUpdate
    ///                     event notifications should be sent.</p>
    ///             </li>
    ///             <li>
    ///                 <p>
    ///                     <code>EventDeliveryFailure</code> – Topic ARN to which DeliveryFailure
    ///                     event notifications should be sent upon Direct Publish delivery failure
    ///                     (permanent) to one of the application's endpoints.</p>
    ///             </li>
    ///          </ul>
    public let attributes: [String:String]?

    public init (
        attributes: [String:String]? = nil
    )
    {
        self.attributes = attributes
    }
}

extension GetPlatformApplicationAttributesOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "GetPlatformApplicationAttributesOutputResponse(attributes: \(String(describing: attributes)))"}
}