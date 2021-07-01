// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Represents the returned data in response to a request operation. </p>
public struct DescribeFleetLocationAttributesOutputResponse: Equatable {
    /// <p>The Amazon Resource Name (<a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html">ARN</a>) that is assigned to a GameLift fleet resource and uniquely identifies it. ARNs are unique across all Regions. Format is <code>arn:aws:gamelift:<region>::fleet/fleet-a1234567-b8c9-0d1e-2fa3-b45c6d7e8912</code>. </p>
    public let fleetArn: String?
    /// <p>A unique identifier for the fleet that location attributes were requested for.</p>
    public let fleetId: String?
    /// <p> Location-specific information on the requested fleet's remote locations. </p>
    public let locationAttributes: [LocationAttributes]?
    /// <p>A token that indicates where to resume retrieving results on the next call to this operation. If no token is returned, these results represent the end of the list.</p>
    public let nextToken: String?

    public init (
        fleetArn: String? = nil,
        fleetId: String? = nil,
        locationAttributes: [LocationAttributes]? = nil,
        nextToken: String? = nil
    )
    {
        self.fleetArn = fleetArn
        self.fleetId = fleetId
        self.locationAttributes = locationAttributes
        self.nextToken = nextToken
    }
}

extension DescribeFleetLocationAttributesOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DescribeFleetLocationAttributesOutputResponse(fleetArn: \(String(describing: fleetArn)), fleetId: \(String(describing: fleetId)), locationAttributes: \(String(describing: locationAttributes)), nextToken: \(String(describing: nextToken)))"}
}