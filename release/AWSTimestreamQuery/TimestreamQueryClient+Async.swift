// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

#if swift(>=5.5) && canImport(_Concurrency)
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, macCatalyst 15.0, *)
public extension TimestreamQueryClient {
    /// Cancels a query that has been issued. Cancellation is guaranteed only if the query has not completed execution before the cancellation request was issued. Because cancellation is an idempotent operation, subsequent cancellation requests will return a CancellationMessage, indicating that the query has already been canceled.
    func cancelQuery(input: CancelQueryInput) async throws -> CancelQueryOutputResponse
    {
        typealias cancelQueryContinuation = CheckedContinuation<CancelQueryOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: cancelQueryContinuation) in
            cancelQuery(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// DescribeEndpoints returns a list of available endpoints to make Timestream API calls against. This API is available through both Write and Query. Because Timestream’s SDKs are designed to transparently work with the service’s architecture, including the management and mapping of the service endpoints, it is not recommended that you use this API unless:
    ///
    /// * Your application uses a programming language that does not yet have SDK support
    ///
    /// * You require better control over the client-side implementation
    ///
    ///
    /// For detailed information on how to use DescribeEndpoints, see [The Endpoint Discovery Pattern and REST APIs](https://docs.aws.amazon.com/timestream/latest/developerguide/Using-API.endpoint-discovery.html).
    func describeEndpoints(input: DescribeEndpointsInput) async throws -> DescribeEndpointsOutputResponse
    {
        typealias describeEndpointsContinuation = CheckedContinuation<DescribeEndpointsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: describeEndpointsContinuation) in
            describeEndpoints(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Query is a synchronous operation that enables you to execute a query. Query will timeout after 60 seconds. You must update the default timeout in the SDK to support a timeout of 60 seconds. The result set will be truncated to 1MB. Service quotas apply. For more information, see Quotas in the Timestream Developer Guide.
    func query(input: QueryInput) async throws -> QueryOutputResponse
    {
        typealias queryContinuation = CheckedContinuation<QueryOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: queryContinuation) in
            query(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

}
#endif
