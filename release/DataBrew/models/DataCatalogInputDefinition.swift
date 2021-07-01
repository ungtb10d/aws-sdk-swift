// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Represents how metadata stored in the AWS Glue Data Catalog is defined in a DataBrew
///             dataset. </p>
public struct DataCatalogInputDefinition: Equatable {
    /// <p>The unique identifier of the AWS account that holds the Data Catalog that stores the
    ///             data.</p>
    public let catalogId: String?
    /// <p>The name of a database in the Data Catalog.</p>
    public let databaseName: String?
    /// <p>The name of a database table in the Data Catalog. This table corresponds to a DataBrew
    ///             dataset.</p>
    public let tableName: String?
    /// <p>An Amazon location that AWS Glue Data Catalog can use as a temporary directory.</p>
    public let tempDirectory: S3Location?

    public init (
        catalogId: String? = nil,
        databaseName: String? = nil,
        tableName: String? = nil,
        tempDirectory: S3Location? = nil
    )
    {
        self.catalogId = catalogId
        self.databaseName = databaseName
        self.tableName = tableName
        self.tempDirectory = tempDirectory
    }
}

extension DataCatalogInputDefinition: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DataCatalogInputDefinition(catalogId: \(String(describing: catalogId)), databaseName: \(String(describing: databaseName)), tableName: \(String(describing: tableName)), tempDirectory: \(String(describing: tempDirectory)))"}
}