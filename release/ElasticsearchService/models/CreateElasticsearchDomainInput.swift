// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct CreateElasticsearchDomainInput: Equatable {
    /// <p> IAM access policy as a JSON-formatted string.</p>
    public let accessPolicies: String?
    /// <p> Option to allow references to indices in an HTTP request body.  Must be <code>false</code> when configuring access to individual sub-resources.  By default, the value is <code>true</code>.
    ///           See <a href="http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-createupdatedomains.html#es-createdomain-configure-advanced-options" target="_blank">Configuration Advanced Options</a> for more information.</p>
    public let advancedOptions: [String:String]?
    /// <p>Specifies advanced security options.</p>
    public let advancedSecurityOptions: AdvancedSecurityOptionsInput?
    /// <p>Specifies Auto-Tune options.</p>
    public let autoTuneOptions: AutoTuneOptionsInput?
    /// <p>Options to specify the Cognito user and identity pools for Kibana authentication. For more information, see <a href="http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-cognito-auth.html" target="_blank">Amazon Cognito Authentication for Kibana</a>.</p>
    public let cognitoOptions: CognitoOptions?
    /// <p>Options to specify configuration that will be applied to the domain endpoint.</p>
    public let domainEndpointOptions: DomainEndpointOptions?
    /// <p>The name of the Elasticsearch domain that you are creating. Domain names are unique across the domains owned by an account within an AWS region. Domain names must start with a lowercase letter and can contain the following characters: a-z (lowercase), 0-9, and - (hyphen).</p>
    public let domainName: String?
    /// <p>Options to enable, disable and specify the type and size of EBS storage volumes. </p>
    public let eBSOptions: EBSOptions?
    /// <p>Configuration options for an Elasticsearch domain. Specifies the instance type and number of instances in the domain cluster. </p>
    public let elasticsearchClusterConfig: ElasticsearchClusterConfig?
    /// <p>String of format X.Y to specify version for the Elasticsearch domain eg. "1.5" or "2.3". For more information,
    ///           see <a href="http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-createupdatedomains.html#es-createdomains" target="_blank">Creating Elasticsearch Domains</a> in the <i>Amazon Elasticsearch Service Developer Guide</i>.</p>
    public let elasticsearchVersion: String?
    /// <p>Specifies the Encryption At Rest Options.</p>
    public let encryptionAtRestOptions: EncryptionAtRestOptions?
    /// <p>Map of <code>LogType</code> and <code>LogPublishingOption</code>, each containing options to publish a given type of Elasticsearch log.</p>
    public let logPublishingOptions: [String:LogPublishingOption]?
    /// <p>Specifies the NodeToNodeEncryptionOptions.</p>
    public let nodeToNodeEncryptionOptions: NodeToNodeEncryptionOptions?
    /// <p>Option to set time, in UTC format, of the daily automated snapshot. Default value is 0 hours. </p>
    public let snapshotOptions: SnapshotOptions?
    /// <p>A list of <code>Tag</code> added during domain creation.</p>
    public let tagList: [Tag]?
    /// <p>Options to specify the subnets and security groups for VPC endpoint. For more information, see <a href="http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-vpc.html#es-creating-vpc" target="_blank">Creating a VPC</a> in <i>VPC Endpoints for Amazon Elasticsearch Service Domains</i></p>
    public let vPCOptions: VPCOptions?

    public init (
        accessPolicies: String? = nil,
        advancedOptions: [String:String]? = nil,
        advancedSecurityOptions: AdvancedSecurityOptionsInput? = nil,
        autoTuneOptions: AutoTuneOptionsInput? = nil,
        cognitoOptions: CognitoOptions? = nil,
        domainEndpointOptions: DomainEndpointOptions? = nil,
        domainName: String? = nil,
        eBSOptions: EBSOptions? = nil,
        elasticsearchClusterConfig: ElasticsearchClusterConfig? = nil,
        elasticsearchVersion: String? = nil,
        encryptionAtRestOptions: EncryptionAtRestOptions? = nil,
        logPublishingOptions: [String:LogPublishingOption]? = nil,
        nodeToNodeEncryptionOptions: NodeToNodeEncryptionOptions? = nil,
        snapshotOptions: SnapshotOptions? = nil,
        tagList: [Tag]? = nil,
        vPCOptions: VPCOptions? = nil
    )
    {
        self.accessPolicies = accessPolicies
        self.advancedOptions = advancedOptions
        self.advancedSecurityOptions = advancedSecurityOptions
        self.autoTuneOptions = autoTuneOptions
        self.cognitoOptions = cognitoOptions
        self.domainEndpointOptions = domainEndpointOptions
        self.domainName = domainName
        self.eBSOptions = eBSOptions
        self.elasticsearchClusterConfig = elasticsearchClusterConfig
        self.elasticsearchVersion = elasticsearchVersion
        self.encryptionAtRestOptions = encryptionAtRestOptions
        self.logPublishingOptions = logPublishingOptions
        self.nodeToNodeEncryptionOptions = nodeToNodeEncryptionOptions
        self.snapshotOptions = snapshotOptions
        self.tagList = tagList
        self.vPCOptions = vPCOptions
    }
}

extension CreateElasticsearchDomainInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "CreateElasticsearchDomainInput(accessPolicies: \(String(describing: accessPolicies)), advancedOptions: \(String(describing: advancedOptions)), advancedSecurityOptions: \(String(describing: advancedSecurityOptions)), autoTuneOptions: \(String(describing: autoTuneOptions)), cognitoOptions: \(String(describing: cognitoOptions)), domainEndpointOptions: \(String(describing: domainEndpointOptions)), domainName: \(String(describing: domainName)), eBSOptions: \(String(describing: eBSOptions)), elasticsearchClusterConfig: \(String(describing: elasticsearchClusterConfig)), elasticsearchVersion: \(String(describing: elasticsearchVersion)), encryptionAtRestOptions: \(String(describing: encryptionAtRestOptions)), logPublishingOptions: \(String(describing: logPublishingOptions)), nodeToNodeEncryptionOptions: \(String(describing: nodeToNodeEncryptionOptions)), snapshotOptions: \(String(describing: snapshotOptions)), tagList: \(String(describing: tagList)), vPCOptions: \(String(describing: vPCOptions)))"}
}