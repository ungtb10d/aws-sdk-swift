// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Docker container image configuration object for the model bias job.</p>
public struct ModelBiasAppSpecification: Equatable {
    /// <p>JSON formatted S3 file that defines bias parameters. For more information on this JSON
    ///          configuration file, see <a href="https://docs.aws.amazon.com/sagemaker/latest/json-bias-parameter-config.html">Configure bias
    ///          parameters</a>.</p>
    public let configUri: String?
    /// <p>Sets the environment variables in the Docker container.</p>
    public let environment: [String:String]?
    /// <p>The container image to be run by the model bias job.</p>
    public let imageUri: String?

    public init (
        configUri: String? = nil,
        environment: [String:String]? = nil,
        imageUri: String? = nil
    )
    {
        self.configUri = configUri
        self.environment = environment
        self.imageUri = imageUri
    }
}

extension ModelBiasAppSpecification: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ModelBiasAppSpecification(configUri: \(String(describing: configUri)), environment: \(String(describing: environment)), imageUri: \(String(describing: imageUri)))"}
}