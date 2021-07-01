// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p> This object continuously inspects your account's cost data for anomalies, based on
///                 <code>MonitorType</code> and <code>MonitorSpecification</code>. The content consists
///             of detailed metadata and the current status of the monitor object. </p>
public struct AnomalyMonitor: Equatable {
    /// <p>
    ///         The date when the monitor was created.
    ///     </p>
    public let creationDate: String?
    /// <p>
    ///         The value for evaluated dimensions.
    ///     </p>
    public let dimensionalValueCount: Int
    /// <p>
    ///         The date when the monitor last evaluated for anomalies.
    ///     </p>
    public let lastEvaluatedDate: String?
    /// <p>
    ///         The date when the monitor was last updated.
    ///     </p>
    public let lastUpdatedDate: String?
    /// <p> The Amazon Resource Name (ARN) value. </p>
    public let monitorArn: String?
    /// <p>
    ///         The dimensions to evaluate.
    ///     </p>
    public let monitorDimension: MonitorDimension?
    /// <p>
    ///         The name of the monitor.
    ///     </p>
    public let monitorName: String?
    /// <p>Use <code>Expression</code> to filter by cost or by usage. There are two patterns: </p>
    ///         <ul>
    ///             <li>
    ///                 <p>Simple dimension values - You can set the dimension name and values for the
    ///                     filters that you plan to use. For example, you can filter for
    ///                     <code>REGION==us-east-1 OR REGION==us-west-1</code>. For <code>GetRightsizingRecommendation</code>, the Region is a full name (for example, <code>REGION==US East (N. Virginia)</code>. The
    ///                         <code>Expression</code> example looks like:</p>
    ///                 <p>
    ///                   <code>{ "Dimensions": { "Key": "REGION", "Values": [ "us-east-1",
    ///                         “us-west-1” ] } }</code>
    ///                 </p>
    ///                 <p>The list of dimension values are OR'd together to retrieve cost or usage
    ///                     data. You can create <code>Expression</code> and <code>DimensionValues</code>
    ///                     objects using either <code>with*</code> methods or <code>set*</code> methods in
    ///                     multiple lines. </p>
    ///             </li>
    ///             <li>
    ///                 <p>Compound dimension values with logical operations - You can use multiple
    ///                         <code>Expression</code> types and the logical operators
    ///                         <code>AND/OR/NOT</code> to create a list of one or more
    ///                         <code>Expression</code> objects. This allows you to filter on more advanced
    ///                     options. For example, you can filter on <code>((REGION == us-east-1 OR
    ///                         REGION == us-west-1) OR (TAG.Type == Type1)) AND (USAGE_TYPE !=
    ///                         DataTransfer)</code>. The <code>Expression</code> for that looks like
    ///                     this:</p>
    ///                 <p>
    ///                   <code>{ "And": [ {"Or": [ {"Dimensions": { "Key": "REGION",
    ///                         "Values": [ "us-east-1", "us-west-1" ] }}, {"Tags": { "Key": "TagName",
    ///                         "Values": ["Value1"] } } ]}, {"Not": {"Dimensions": { "Key": "USAGE_TYPE",
    ///                         "Values": ["DataTransfer"] }}} ] } </code>
    ///                </p>
    ///                 <note>
    ///                     <p>Because each <code>Expression</code> can have only one operator, the
    ///                         service returns an error if more than one is specified. The following
    ///                         example shows an <code>Expression</code> object that creates an
    ///                         error.</p>
    ///                 </note>
    ///                 <p>
    ///                     <code> { "And": [ ... ], "DimensionValues": { "Dimension": "USAGE_TYPE",
    ///                         "Values": [ "DataTransfer" ] } } </code>
    ///                </p>
    ///             </li>
    ///          </ul>
    ///         <note>
    ///             <p>For the <code>GetRightsizingRecommendation</code> action, a combination of OR and NOT is not
    ///                 supported. OR is not supported between different dimensions, or dimensions and tags.
    ///                 NOT operators aren't supported.
    ///                 Dimensions
    ///                 are also limited to <code>LINKED_ACCOUNT</code>, <code>REGION</code>, or
    ///                     <code>RIGHTSIZING_TYPE</code>.</p>
    /// 					
    /// 					       <p>For the <code>GetReservationPurchaseRecommendation</code> action, only NOT is supported. AND and OR are not supported. Dimensions are limited to <code>LINKED_ACCOUNT</code>.</p>
    /// 					
    /// 					
    /// 					
    ///          </note>
    public let monitorSpecification: Expression?
    /// <p>
    ///         The possible type values.
    ///     </p>
    public let monitorType: MonitorType?

    public init (
        creationDate: String? = nil,
        dimensionalValueCount: Int = 0,
        lastEvaluatedDate: String? = nil,
        lastUpdatedDate: String? = nil,
        monitorArn: String? = nil,
        monitorDimension: MonitorDimension? = nil,
        monitorName: String? = nil,
        monitorSpecification: Expression? = nil,
        monitorType: MonitorType? = nil
    )
    {
        self.creationDate = creationDate
        self.dimensionalValueCount = dimensionalValueCount
        self.lastEvaluatedDate = lastEvaluatedDate
        self.lastUpdatedDate = lastUpdatedDate
        self.monitorArn = monitorArn
        self.monitorDimension = monitorDimension
        self.monitorName = monitorName
        self.monitorSpecification = monitorSpecification
        self.monitorType = monitorType
    }
}

extension AnomalyMonitor: CustomDebugStringConvertible {
    public var debugDescription: String {
        "AnomalyMonitor(creationDate: \(String(describing: creationDate)), dimensionalValueCount: \(String(describing: dimensionalValueCount)), lastEvaluatedDate: \(String(describing: lastEvaluatedDate)), lastUpdatedDate: \(String(describing: lastUpdatedDate)), monitorArn: \(String(describing: monitorArn)), monitorDimension: \(String(describing: monitorDimension)), monitorName: \(String(describing: monitorName)), monitorSpecification: \(String(describing: monitorSpecification)), monitorType: \(String(describing: monitorType)))"}
}