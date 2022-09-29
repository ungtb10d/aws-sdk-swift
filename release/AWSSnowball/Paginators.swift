// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime


/// Paginate over `[DescribeAddressesOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[DescribeAddressesInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `DescribeAddressesOutputResponse`
extension SnowballClient {
    public func describeAddressesPaginated(input: DescribeAddressesInput) -> ClientRuntime.PaginatorSequence<DescribeAddressesInput, DescribeAddressesOutputResponse> {
        return ClientRuntime.PaginatorSequence<DescribeAddressesInput, DescribeAddressesOutputResponse>(input: input, inputKey: \DescribeAddressesInput.nextToken, outputKey: \DescribeAddressesOutputResponse.nextToken, paginationFunction: self.describeAddresses(input:))
    }
}

extension DescribeAddressesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> DescribeAddressesInput {
        return DescribeAddressesInput(
            maxResults: self.maxResults,
            nextToken: token
        )}
}

/// This paginator transforms the `AsyncSequence` returned by `describeAddressesPaginated`
/// to access the nested member `[SnowballClientTypes.Address]`
/// - Returns: `[SnowballClientTypes.Address]`
extension PaginatorSequence where Input == DescribeAddressesInput, Output == DescribeAddressesOutputResponse {
    public func addresses() async throws -> [SnowballClientTypes.Address] {
        return try await self.asyncCompactMap { item in item.addresses }
    }
}

/// Paginate over `[ListJobsOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListJobsInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListJobsOutputResponse`
extension SnowballClient {
    public func listJobsPaginated(input: ListJobsInput) -> ClientRuntime.PaginatorSequence<ListJobsInput, ListJobsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListJobsInput, ListJobsOutputResponse>(input: input, inputKey: \ListJobsInput.nextToken, outputKey: \ListJobsOutputResponse.nextToken, paginationFunction: self.listJobs(input:))
    }
}

extension ListJobsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListJobsInput {
        return ListJobsInput(
            maxResults: self.maxResults,
            nextToken: token
        )}
}

/// This paginator transforms the `AsyncSequence` returned by `listJobsPaginated`
/// to access the nested member `[SnowballClientTypes.JobListEntry]`
/// - Returns: `[SnowballClientTypes.JobListEntry]`
extension PaginatorSequence where Input == ListJobsInput, Output == ListJobsOutputResponse {
    public func jobListEntries() async throws -> [SnowballClientTypes.JobListEntry] {
        return try await self.asyncCompactMap { item in item.jobListEntries }
    }
}