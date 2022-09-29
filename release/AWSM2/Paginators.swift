// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime


/// Paginate over `[ListEngineVersionsOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListEngineVersionsInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListEngineVersionsOutputResponse`
extension M2Client {
    public func listEngineVersionsPaginated(input: ListEngineVersionsInput) -> ClientRuntime.PaginatorSequence<ListEngineVersionsInput, ListEngineVersionsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListEngineVersionsInput, ListEngineVersionsOutputResponse>(input: input, inputKey: \ListEngineVersionsInput.nextToken, outputKey: \ListEngineVersionsOutputResponse.nextToken, paginationFunction: self.listEngineVersions(input:))
    }
}

extension ListEngineVersionsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListEngineVersionsInput {
        return ListEngineVersionsInput(
            engineType: self.engineType,
            maxResults: self.maxResults,
            nextToken: token
        )}
}

/// This paginator transforms the `AsyncSequence` returned by `listEngineVersionsPaginated`
/// to access the nested member `[M2ClientTypes.EngineVersionsSummary]`
/// - Returns: `[M2ClientTypes.EngineVersionsSummary]`
extension PaginatorSequence where Input == ListEngineVersionsInput, Output == ListEngineVersionsOutputResponse {
    public func engineVersions() async throws -> [M2ClientTypes.EngineVersionsSummary] {
        return try await self.asyncCompactMap { item in item.engineVersions }
    }
}