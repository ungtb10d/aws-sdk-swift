// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// An AWS Elemental MediaStore asset is an object, similar to an object in the Amazon S3 service. Objects are the fundamental entities that are stored in AWS Elemental MediaStore.
public protocol MediaStoreDataClientProtocol {
    /// Deletes an object at the specified path.
    func deleteObject(input: DeleteObjectInput, completion: @escaping (ClientRuntime.SdkResult<DeleteObjectOutputResponse, DeleteObjectOutputError>) -> Void)
    /// Gets the headers for an object at the specified path.
    func describeObject(input: DescribeObjectInput, completion: @escaping (ClientRuntime.SdkResult<DescribeObjectOutputResponse, DescribeObjectOutputError>) -> Void)
    /// Downloads the object at the specified path. If the object’s upload availability is set to streaming, AWS Elemental MediaStore downloads the object even if it’s still uploading the object.
    func getObject(input: GetObjectInput, completion: @escaping (ClientRuntime.SdkResult<GetObjectOutputResponse, GetObjectOutputError>) -> Void)
    /// Provides a list of metadata entries about folders and objects in the specified folder.
    func listItems(input: ListItemsInput, completion: @escaping (ClientRuntime.SdkResult<ListItemsOutputResponse, ListItemsOutputError>) -> Void)
    /// Uploads an object to the specified path. Object sizes are limited to 25 MB for standard upload availability and 10 MB for streaming upload availability.
    func putObject(input: PutObjectInput, completion: @escaping (ClientRuntime.SdkResult<PutObjectOutputResponse, PutObjectOutputError>) -> Void)
}

public enum MediaStoreDataClientTypes {}
