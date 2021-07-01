// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <p>A versioned model that can be deployed for SageMaker inference.</p>
public struct ModelPackage: Equatable {
    /// <p>A description provided when the model approval is set.</p>
    public let approvalDescription: String?
    /// <p>Whether the model package is to be certified to be listed on AWS Marketplace. For
    ///             information about listing model packages on AWS Marketplace, see <a href="https://docs.aws.amazon.com/sagemaker/latest/dg/sagemaker-mkt-list.html">List Your
    ///                 Algorithm or Model Package on AWS Marketplace</a>.</p>
    public let certifyForMarketplace: Bool
    /// <p>Information about the user who created or modified an experiment, trial, or trial
    ///       component.</p>
    public let createdBy: UserContext?
    /// <p>The time that the model package was created.</p>
    public let creationTime: Date?
    /// <p>Defines how to perform inference generation after a training job is run.</p>
    public let inferenceSpecification: InferenceSpecification?
    /// <p>Information about the user who created or modified an experiment, trial, or trial
    ///       component.</p>
    public let lastModifiedBy: UserContext?
    /// <p>The last time the model package was modified.</p>
    public let lastModifiedTime: Date?
    /// <p>Metadata properties of the tracking entity, trial, or trial component.</p>
    public let metadataProperties: MetadataProperties?
    /// <p>The approval status of the model. This can be one of the following values.</p>
    ///         <ul>
    ///             <li>
    ///                 <p>
    ///                   <code>APPROVED</code> - The model is approved</p>
    ///             </li>
    ///             <li>
    ///                 <p>
    ///                   <code>REJECTED</code> - The model is rejected.</p>
    ///             </li>
    ///             <li>
    ///                 <p>
    ///                   <code>PENDING_MANUAL_APPROVAL</code> - The model is waiting for manual
    ///                     approval.</p>
    ///             </li>
    ///          </ul>
    public let modelApprovalStatus: ModelApprovalStatus?
    /// <p>Metrics for the model.</p>
    public let modelMetrics: ModelMetrics?
    /// <p>The Amazon Resource Name (ARN) of the model package.</p>
    public let modelPackageArn: String?
    /// <p>The description of the model package.</p>
    public let modelPackageDescription: String?
    /// <p>The model group to which the model belongs.</p>
    public let modelPackageGroupName: String?
    /// <p>The name of the model.</p>
    public let modelPackageName: String?
    /// <p>The status of the model package. This can be one of the following values.</p>
    ///         <ul>
    ///             <li>
    ///                 <p>
    ///                   <code>PENDING</code> - The model package is pending being created.</p>
    ///             </li>
    ///             <li>
    ///                 <p>
    ///                   <code>IN_PROGRESS</code> - The model package is in the process of being
    ///                     created.</p>
    ///             </li>
    ///             <li>
    ///                 <p>
    ///                   <code>COMPLETED</code> - The model package was successfully created.</p>
    ///             </li>
    ///             <li>
    ///                 <p>
    ///                   <code>FAILED</code> - The model package failed.</p>
    ///             </li>
    ///             <li>
    ///                 <p>
    ///                   <code>DELETING</code> - The model package is in the process of being deleted.</p>
    ///             </li>
    ///          </ul>
    public let modelPackageStatus: ModelPackageStatus?
    /// <p>Specifies the validation and image scan statuses of the model package.</p>
    public let modelPackageStatusDetails: ModelPackageStatusDetails?
    /// <p>The version number of a versioned model.</p>
    public let modelPackageVersion: Int?
    /// <p>A list of algorithms that were used to create a model package.</p>
    public let sourceAlgorithmSpecification: SourceAlgorithmSpecification?
    /// <p>A list of the tags associated with the model package. For more information, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html">Tagging AWS
    ///             resources</a> in the <i>AWS General Reference Guide</i>.</p>
    public let tags: [Tag]?
    /// <p>Specifies batch transform jobs that Amazon SageMaker runs to validate your model package.</p>
    public let validationSpecification: ModelPackageValidationSpecification?

    public init (
        approvalDescription: String? = nil,
        certifyForMarketplace: Bool = false,
        createdBy: UserContext? = nil,
        creationTime: Date? = nil,
        inferenceSpecification: InferenceSpecification? = nil,
        lastModifiedBy: UserContext? = nil,
        lastModifiedTime: Date? = nil,
        metadataProperties: MetadataProperties? = nil,
        modelApprovalStatus: ModelApprovalStatus? = nil,
        modelMetrics: ModelMetrics? = nil,
        modelPackageArn: String? = nil,
        modelPackageDescription: String? = nil,
        modelPackageGroupName: String? = nil,
        modelPackageName: String? = nil,
        modelPackageStatus: ModelPackageStatus? = nil,
        modelPackageStatusDetails: ModelPackageStatusDetails? = nil,
        modelPackageVersion: Int? = nil,
        sourceAlgorithmSpecification: SourceAlgorithmSpecification? = nil,
        tags: [Tag]? = nil,
        validationSpecification: ModelPackageValidationSpecification? = nil
    )
    {
        self.approvalDescription = approvalDescription
        self.certifyForMarketplace = certifyForMarketplace
        self.createdBy = createdBy
        self.creationTime = creationTime
        self.inferenceSpecification = inferenceSpecification
        self.lastModifiedBy = lastModifiedBy
        self.lastModifiedTime = lastModifiedTime
        self.metadataProperties = metadataProperties
        self.modelApprovalStatus = modelApprovalStatus
        self.modelMetrics = modelMetrics
        self.modelPackageArn = modelPackageArn
        self.modelPackageDescription = modelPackageDescription
        self.modelPackageGroupName = modelPackageGroupName
        self.modelPackageName = modelPackageName
        self.modelPackageStatus = modelPackageStatus
        self.modelPackageStatusDetails = modelPackageStatusDetails
        self.modelPackageVersion = modelPackageVersion
        self.sourceAlgorithmSpecification = sourceAlgorithmSpecification
        self.tags = tags
        self.validationSpecification = validationSpecification
    }
}

extension ModelPackage: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ModelPackage(approvalDescription: \(String(describing: approvalDescription)), certifyForMarketplace: \(String(describing: certifyForMarketplace)), createdBy: \(String(describing: createdBy)), creationTime: \(String(describing: creationTime)), inferenceSpecification: \(String(describing: inferenceSpecification)), lastModifiedBy: \(String(describing: lastModifiedBy)), lastModifiedTime: \(String(describing: lastModifiedTime)), metadataProperties: \(String(describing: metadataProperties)), modelApprovalStatus: \(String(describing: modelApprovalStatus)), modelMetrics: \(String(describing: modelMetrics)), modelPackageArn: \(String(describing: modelPackageArn)), modelPackageDescription: \(String(describing: modelPackageDescription)), modelPackageGroupName: \(String(describing: modelPackageGroupName)), modelPackageName: \(String(describing: modelPackageName)), modelPackageStatus: \(String(describing: modelPackageStatus)), modelPackageStatusDetails: \(String(describing: modelPackageStatusDetails)), modelPackageVersion: \(String(describing: modelPackageVersion)), sourceAlgorithmSpecification: \(String(describing: sourceAlgorithmSpecification)), tags: \(String(describing: tags)), validationSpecification: \(String(describing: validationSpecification)))"}
}