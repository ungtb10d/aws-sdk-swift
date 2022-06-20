// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime


/// Paginate over `[ListTunnelsOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListTunnelsInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListTunnelsOutputResponse`
extension IoTSecureTunnelingClient {
    public func listTunnelsPaginated(input: ListTunnelsInput) -> ClientRuntime.PaginatorSequence<ListTunnelsInput, ListTunnelsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListTunnelsInput, ListTunnelsOutputResponse>(input: input, inputKey: \ListTunnelsInput.nextToken, outputKey: \ListTunnelsOutputResponse.nextToken, paginationFunction: self.listTunnels(input:))
    }
}

extension ListTunnelsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListTunnelsInput {
        return ListTunnelsInput(
            maxResults: self.maxResults,
            nextToken: token,
            thingName: self.thingName
        )}
}
