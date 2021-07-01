// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Returns information about the settings for an action type.</p>
public struct ActionTypeSettings: Equatable {
    /// <p>The URL returned to the AWS CodePipeline console that provides a deep link to the
    ///             resources of the external system, such as the configuration page for an AWS CodeDeploy
    ///             deployment group. This link is provided as part of the action display in the
    ///             pipeline.</p>
    public let entityUrlTemplate: String?
    /// <p>The URL returned to the AWS CodePipeline console that contains a link to the
    ///             top-level landing page for the external system, such as the console page for AWS
    ///             CodeDeploy. This link is shown on the pipeline view page in the AWS CodePipeline console
    ///             and provides a link to the execution entity of the external action.</p>
    public let executionUrlTemplate: String?
    /// <p>The URL returned to the AWS CodePipeline console that contains a link to the page
    ///             where customers can update or change the configuration of the external action.</p>
    public let revisionUrlTemplate: String?
    /// <p>The URL of a sign-up page where users can sign up for an external service and
    ///             perform initial configuration of the action provided by that service.</p>
    public let thirdPartyConfigurationUrl: String?

    public init (
        entityUrlTemplate: String? = nil,
        executionUrlTemplate: String? = nil,
        revisionUrlTemplate: String? = nil,
        thirdPartyConfigurationUrl: String? = nil
    )
    {
        self.entityUrlTemplate = entityUrlTemplate
        self.executionUrlTemplate = executionUrlTemplate
        self.revisionUrlTemplate = revisionUrlTemplate
        self.thirdPartyConfigurationUrl = thirdPartyConfigurationUrl
    }
}

extension ActionTypeSettings: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ActionTypeSettings(entityUrlTemplate: \(String(describing: entityUrlTemplate)), executionUrlTemplate: \(String(describing: executionUrlTemplate)), revisionUrlTemplate: \(String(describing: revisionUrlTemplate)), thirdPartyConfigurationUrl: \(String(describing: thirdPartyConfigurationUrl)))"}
}