// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct CreateDataCatalogInput: Equatable {
    /// <p>A description of the data catalog to be created.</p>
    public let description: String?
    /// <p>The name of the data catalog to create. The catalog name must be unique for the AWS
    ///             account and can use a maximum of 128 alphanumeric, underscore, at sign, or hyphen
    ///             characters.</p>
    public let name: String?
    /// <p>Specifies the Lambda function or functions to use for creating the data catalog. This
    ///             is a mapping whose values depend on the catalog type. </p>
    ///         <ul>
    ///             <li>
    ///                 <p>For the <code>HIVE</code> data catalog type, use the following syntax. The
    ///                         <code>metadata-function</code> parameter is required. <code>The
    ///                         sdk-version</code> parameter is optional and defaults to the currently
    ///                     supported version.</p>
    ///                 <p>
    ///                   <code>metadata-function=<i>lambda_arn</i>,
    ///                             sdk-version=<i>version_number</i>
    ///                   </code>
    ///                </p>
    ///             </li>
    ///             <li>
    ///                 <p>For the <code>LAMBDA</code> data catalog type, use one of the following sets
    ///                     of required parameters, but not both.</p>
    ///                 <ul>
    ///                   <li>
    ///                         <p>If you have one Lambda function that processes metadata and another
    ///                             for reading the actual data, use the following syntax. Both parameters
    ///                             are required.</p>
    ///                         <p>
    ///                         <code>metadata-function=<i>lambda_arn</i>,
    ///                                     record-function=<i>lambda_arn</i>
    ///                         </code>
    ///                      </p>
    ///                     </li>
    ///                   <li>
    ///                         <p> If you have a composite Lambda function that processes both metadata
    ///                             and data, use the following syntax to specify your Lambda
    ///                             function.</p>
    ///                         <p>
    ///                         <code>function=<i>lambda_arn</i>
    ///                         </code>
    ///                      </p>
    ///                     </li>
    ///                </ul>
    ///             </li>
    ///          </ul>
    public let parameters: [String:String]?
    /// <p>A list of comma separated tags to add to the data catalog that is created.</p>
    public let tags: [Tag]?
    /// <p>The type of data catalog to create: <code>LAMBDA</code> for a federated catalog or
    ///                 <code>HIVE</code> for an external hive metastore.</p>
    ///         <note>
    ///             <p>Do not use the <code>GLUE</code> type. This refers to the
    ///                     <code>AwsDataCatalog</code> that already exists in your account, of which you
    ///                 can have only one. Specifying the <code>GLUE</code> type will result in an
    ///                     <code>INVALID_INPUT</code> error.</p>
    ///         </note>
    public let type: DataCatalogType?

    public init (
        description: String? = nil,
        name: String? = nil,
        parameters: [String:String]? = nil,
        tags: [Tag]? = nil,
        type: DataCatalogType? = nil
    )
    {
        self.description = description
        self.name = name
        self.parameters = parameters
        self.tags = tags
        self.type = type
    }
}

extension CreateDataCatalogInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "CreateDataCatalogInput(description: \(String(describing: description)), name: \(String(describing: name)), parameters: \(String(describing: parameters)), tags: \(String(describing: tags)), type: \(String(describing: type)))"}
}