// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>The output from a <code>Predict</code> operation: </p>
/// 		
/// 		       <ul>
///             <li>
/// 				           <p>
/// 				              <code>Details</code> - Contains the following attributes:
/// 				  <code>DetailsAttributes.PREDICTIVE_MODEL_TYPE - REGRESSION | BINARY | MULTICLASS</code>
/// 				              <code>DetailsAttributes.ALGORITHM - SGD</code>
/// 				           </p>
/// 			         </li>
///             <li>
/// 				           <p>
/// 				              <code>PredictedLabel</code> - Present for either a <code>BINARY</code> or <code>MULTICLASS</code>
///                   <code>MLModel</code> request.
/// 				</p>
/// 			         </li>
///             <li>
/// 				           <p>
/// 				              <code>PredictedScores</code> - Contains the raw classification score corresponding to each label.
/// 				</p>				
/// 			         </li>
///             <li>
/// 				           <p>
/// 				              <code>PredictedValue</code> - Present for a <code>REGRESSION</code>
///                   <code>MLModel</code> request.
/// 				</p>				
/// 			         </li>
///          </ul>
public struct Prediction: Equatable {
    /// <p>Provides any additional details regarding the prediction.</p>
    public let details: [String:String]?
    /// <p>The prediction label for either a <code>BINARY</code> or <code>MULTICLASS</code>
    ///             <code>MLModel</code>.</p>
    public let predictedLabel: String?
    /// <p>Provides the raw classification score corresponding to each label.</p>
    public let predictedScores: [String:Float]?
    /// <p>The prediction value for <code>REGRESSION</code>
    ///             <code>MLModel</code>.</p>
    public let predictedValue: Float?

    public init (
        details: [String:String]? = nil,
        predictedLabel: String? = nil,
        predictedScores: [String:Float]? = nil,
        predictedValue: Float? = nil
    )
    {
        self.details = details
        self.predictedLabel = predictedLabel
        self.predictedScores = predictedScores
        self.predictedValue = predictedValue
    }
}

extension Prediction: CustomDebugStringConvertible {
    public var debugDescription: String {
        "Prediction(details: \(String(describing: details)), predictedLabel: \(String(describing: predictedLabel)), predictedScores: \(String(describing: predictedScores)), predictedValue: \(String(describing: predictedValue)))"}
}