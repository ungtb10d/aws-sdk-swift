// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>A job flow step consisting of a JAR file whose main function will be executed. The main
///          function submits a job for Hadoop to execute and waits for the job to finish or
///          fail.</p>
public struct HadoopJarStepConfig: Equatable {
    /// <p>A list of command line arguments passed to the JAR file's main function when
    ///          executed.</p>
    public let args: [String]?
    /// <p>A path to a JAR file run during the step.</p>
    public let jar: String?
    /// <p>The name of the main class in the specified Java file. If not specified, the JAR file
    ///          should specify a Main-Class in its manifest file.</p>
    public let mainClass: String?
    /// <p>A list of Java properties that are set when the step runs. You can use these properties
    ///          to pass key-value pairs to your main function.</p>
    public let properties: [KeyValue]?

    public init (
        args: [String]? = nil,
        jar: String? = nil,
        mainClass: String? = nil,
        properties: [KeyValue]? = nil
    )
    {
        self.args = args
        self.jar = jar
        self.mainClass = mainClass
        self.properties = properties
    }
}

extension HadoopJarStepConfig: CustomDebugStringConvertible {
    public var debugDescription: String {
        "HadoopJarStepConfig(args: \(String(describing: args)), jar: \(String(describing: jar)), mainClass: \(String(describing: mainClass)), properties: \(String(describing: properties)))"}
}