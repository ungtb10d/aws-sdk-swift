// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct DescribeRecipeInput: Equatable {
    /// <p>The Amazon Resource Name (ARN) of the recipe to describe.</p>
    public let recipeArn: String?

    public init (
        recipeArn: String? = nil
    )
    {
        self.recipeArn = recipeArn
    }
}

extension DescribeRecipeInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DescribeRecipeInput(recipeArn: \(String(describing: recipeArn)))"}
}