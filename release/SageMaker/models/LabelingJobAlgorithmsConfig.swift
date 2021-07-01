// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Provides configuration information for auto-labeling of your data objects. A
///                 <code>LabelingJobAlgorithmsConfig</code> object must be supplied in order to use
///             auto-labeling.</p>
public struct LabelingJobAlgorithmsConfig: Equatable {
    /// <p>At the end of an auto-label job Ground Truth sends the Amazon Resource Name (ARN) of the final
    ///             model used for auto-labeling. You can use this model as the starting point for
    ///             subsequent similar jobs by providing the ARN of the model here. </p>
    public let initialActiveLearningModelArn: String?
    /// <p>Specifies the Amazon Resource Name (ARN) of the algorithm used for auto-labeling. You
    ///             must select one of the following ARNs:</p>
    ///         <ul>
    ///             <li>
    ///                 <p>
    ///                     <i>Image classification</i>
    ///                 </p>
    ///                 <p>
    ///                     <code>arn:aws:sagemaker:<i>region</i>:027400017018:labeling-job-algorithm-specification/image-classification</code>
    ///                 </p>
    ///             </li>
    ///             <li>
    ///                 <p>
    ///                     <i>Text classification</i>
    ///                 </p>
    ///                 <p>
    ///                     <code>arn:aws:sagemaker:<i>region</i>:027400017018:labeling-job-algorithm-specification/text-classification</code>
    ///                 </p>
    ///             </li>
    ///             <li>
    ///                 <p>
    ///                     <i>Object detection</i>
    ///                 </p>
    ///                 <p>
    ///                     <code>arn:aws:sagemaker:<i>region</i>:027400017018:labeling-job-algorithm-specification/object-detection</code>
    ///                 </p>
    ///             </li>
    ///             <li>
    ///                 <p>
    ///                     <i>Semantic Segmentation</i>
    ///                 </p>
    ///                 <p>
    ///                     <code>arn:aws:sagemaker:<i>region</i>:027400017018:labeling-job-algorithm-specification/semantic-segmentation</code>
    ///                 </p>
    ///             </li>
    ///          </ul>
    public let labelingJobAlgorithmSpecificationArn: String?
    /// <p>Provides configuration information for a labeling job.</p>
    public let labelingJobResourceConfig: LabelingJobResourceConfig?

    public init (
        initialActiveLearningModelArn: String? = nil,
        labelingJobAlgorithmSpecificationArn: String? = nil,
        labelingJobResourceConfig: LabelingJobResourceConfig? = nil
    )
    {
        self.initialActiveLearningModelArn = initialActiveLearningModelArn
        self.labelingJobAlgorithmSpecificationArn = labelingJobAlgorithmSpecificationArn
        self.labelingJobResourceConfig = labelingJobResourceConfig
    }
}

extension LabelingJobAlgorithmsConfig: CustomDebugStringConvertible {
    public var debugDescription: String {
        "LabelingJobAlgorithmsConfig(initialActiveLearningModelArn: \(String(describing: initialActiveLearningModelArn)), labelingJobAlgorithmSpecificationArn: \(String(describing: labelingJobAlgorithmSpecificationArn)), labelingJobResourceConfig: \(String(describing: labelingJobResourceConfig)))"}
}