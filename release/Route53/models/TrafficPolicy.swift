// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>A complex type that contains settings for a traffic policy.</p>
public struct TrafficPolicy: Equatable {
    /// <p>The comment that you specify in the <code>CreateTrafficPolicy</code> request, if any.</p>
    public let comment: String?
    /// <p>The definition of a traffic policy in JSON format. You specify the JSON document to use for a new
    /// 			traffic policy in the <code>CreateTrafficPolicy</code> request. For more information about the JSON format, see
    /// 			<a href="https://docs.aws.amazon.com/Route53/latest/APIReference/api-policies-traffic-policy-document-format.html">Traffic Policy Document Format</a>.</p>
    public let document: String?
    /// <p>The ID that Amazon Route 53 assigned to a traffic policy when you created it.</p>
    public let id: String?
    /// <p>The name that you specified when you created the traffic policy.</p>
    public let name: String?
    /// <p>The DNS type of the resource record sets that Amazon Route 53 creates when you use a traffic policy
    /// 			to create a traffic policy instance.</p>
    public let type: RRType?
    /// <p>The version number that Amazon Route 53 assigns to a traffic policy. For a new traffic policy,
    /// 			the value of <code>Version</code> is always 1.</p>
    public let version: Int?

    public init (
        comment: String? = nil,
        document: String? = nil,
        id: String? = nil,
        name: String? = nil,
        type: RRType? = nil,
        version: Int? = nil
    )
    {
        self.comment = comment
        self.document = document
        self.id = id
        self.name = name
        self.type = type
        self.version = version
    }
}

extension TrafficPolicy: CustomDebugStringConvertible {
    public var debugDescription: String {
        "TrafficPolicy(comment: \(String(describing: comment)), document: \(String(describing: document)), id: \(String(describing: id)), name: \(String(describing: name)), type: \(String(describing: type)), version: \(String(describing: version)))"}
}