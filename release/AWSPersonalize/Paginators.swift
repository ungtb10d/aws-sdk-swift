// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime


/// Paginate over `[ListBatchInferenceJobsOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListBatchInferenceJobsInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListBatchInferenceJobsOutputResponse`
extension PersonalizeClient {
    public func listBatchInferenceJobsPaginated(input: ListBatchInferenceJobsInput) -> ClientRuntime.PaginatorSequence<ListBatchInferenceJobsInput, ListBatchInferenceJobsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListBatchInferenceJobsInput, ListBatchInferenceJobsOutputResponse>(input: input, inputKey: \ListBatchInferenceJobsInput.nextToken, outputKey: \ListBatchInferenceJobsOutputResponse.nextToken, paginationFunction: self.listBatchInferenceJobs(input:))
    }
}

extension ListBatchInferenceJobsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListBatchInferenceJobsInput {
        return ListBatchInferenceJobsInput(
            maxResults: self.maxResults,
            nextToken: token,
            solutionVersionArn: self.solutionVersionArn
        )}
}

/// This paginator transforms the `AsyncSequence` returned by `listBatchInferenceJobsPaginated`
/// to access the nested member `[PersonalizeClientTypes.BatchInferenceJobSummary]`
/// - Returns: `[PersonalizeClientTypes.BatchInferenceJobSummary]`
extension PaginatorSequence where Input == ListBatchInferenceJobsInput, Output == ListBatchInferenceJobsOutputResponse {
    func batchInferenceJobs() async throws -> [PersonalizeClientTypes.BatchInferenceJobSummary] {
        return try await self.asyncCompactMap { item in item.batchInferenceJobs }
    }
}

/// Paginate over `[ListBatchSegmentJobsOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListBatchSegmentJobsInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListBatchSegmentJobsOutputResponse`
extension PersonalizeClient {
    public func listBatchSegmentJobsPaginated(input: ListBatchSegmentJobsInput) -> ClientRuntime.PaginatorSequence<ListBatchSegmentJobsInput, ListBatchSegmentJobsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListBatchSegmentJobsInput, ListBatchSegmentJobsOutputResponse>(input: input, inputKey: \ListBatchSegmentJobsInput.nextToken, outputKey: \ListBatchSegmentJobsOutputResponse.nextToken, paginationFunction: self.listBatchSegmentJobs(input:))
    }
}

extension ListBatchSegmentJobsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListBatchSegmentJobsInput {
        return ListBatchSegmentJobsInput(
            maxResults: self.maxResults,
            nextToken: token,
            solutionVersionArn: self.solutionVersionArn
        )}
}

/// This paginator transforms the `AsyncSequence` returned by `listBatchSegmentJobsPaginated`
/// to access the nested member `[PersonalizeClientTypes.BatchSegmentJobSummary]`
/// - Returns: `[PersonalizeClientTypes.BatchSegmentJobSummary]`
extension PaginatorSequence where Input == ListBatchSegmentJobsInput, Output == ListBatchSegmentJobsOutputResponse {
    func batchSegmentJobs() async throws -> [PersonalizeClientTypes.BatchSegmentJobSummary] {
        return try await self.asyncCompactMap { item in item.batchSegmentJobs }
    }
}

/// Paginate over `[ListCampaignsOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListCampaignsInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListCampaignsOutputResponse`
extension PersonalizeClient {
    public func listCampaignsPaginated(input: ListCampaignsInput) -> ClientRuntime.PaginatorSequence<ListCampaignsInput, ListCampaignsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListCampaignsInput, ListCampaignsOutputResponse>(input: input, inputKey: \ListCampaignsInput.nextToken, outputKey: \ListCampaignsOutputResponse.nextToken, paginationFunction: self.listCampaigns(input:))
    }
}

extension ListCampaignsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListCampaignsInput {
        return ListCampaignsInput(
            maxResults: self.maxResults,
            nextToken: token,
            solutionArn: self.solutionArn
        )}
}

/// This paginator transforms the `AsyncSequence` returned by `listCampaignsPaginated`
/// to access the nested member `[PersonalizeClientTypes.CampaignSummary]`
/// - Returns: `[PersonalizeClientTypes.CampaignSummary]`
extension PaginatorSequence where Input == ListCampaignsInput, Output == ListCampaignsOutputResponse {
    func campaigns() async throws -> [PersonalizeClientTypes.CampaignSummary] {
        return try await self.asyncCompactMap { item in item.campaigns }
    }
}

/// Paginate over `[ListDatasetExportJobsOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListDatasetExportJobsInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListDatasetExportJobsOutputResponse`
extension PersonalizeClient {
    public func listDatasetExportJobsPaginated(input: ListDatasetExportJobsInput) -> ClientRuntime.PaginatorSequence<ListDatasetExportJobsInput, ListDatasetExportJobsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListDatasetExportJobsInput, ListDatasetExportJobsOutputResponse>(input: input, inputKey: \ListDatasetExportJobsInput.nextToken, outputKey: \ListDatasetExportJobsOutputResponse.nextToken, paginationFunction: self.listDatasetExportJobs(input:))
    }
}

extension ListDatasetExportJobsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListDatasetExportJobsInput {
        return ListDatasetExportJobsInput(
            datasetArn: self.datasetArn,
            maxResults: self.maxResults,
            nextToken: token
        )}
}

/// This paginator transforms the `AsyncSequence` returned by `listDatasetExportJobsPaginated`
/// to access the nested member `[PersonalizeClientTypes.DatasetExportJobSummary]`
/// - Returns: `[PersonalizeClientTypes.DatasetExportJobSummary]`
extension PaginatorSequence where Input == ListDatasetExportJobsInput, Output == ListDatasetExportJobsOutputResponse {
    func datasetExportJobs() async throws -> [PersonalizeClientTypes.DatasetExportJobSummary] {
        return try await self.asyncCompactMap { item in item.datasetExportJobs }
    }
}

/// Paginate over `[ListDatasetGroupsOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListDatasetGroupsInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListDatasetGroupsOutputResponse`
extension PersonalizeClient {
    public func listDatasetGroupsPaginated(input: ListDatasetGroupsInput) -> ClientRuntime.PaginatorSequence<ListDatasetGroupsInput, ListDatasetGroupsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListDatasetGroupsInput, ListDatasetGroupsOutputResponse>(input: input, inputKey: \ListDatasetGroupsInput.nextToken, outputKey: \ListDatasetGroupsOutputResponse.nextToken, paginationFunction: self.listDatasetGroups(input:))
    }
}

extension ListDatasetGroupsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListDatasetGroupsInput {
        return ListDatasetGroupsInput(
            maxResults: self.maxResults,
            nextToken: token
        )}
}

/// This paginator transforms the `AsyncSequence` returned by `listDatasetGroupsPaginated`
/// to access the nested member `[PersonalizeClientTypes.DatasetGroupSummary]`
/// - Returns: `[PersonalizeClientTypes.DatasetGroupSummary]`
extension PaginatorSequence where Input == ListDatasetGroupsInput, Output == ListDatasetGroupsOutputResponse {
    func datasetGroups() async throws -> [PersonalizeClientTypes.DatasetGroupSummary] {
        return try await self.asyncCompactMap { item in item.datasetGroups }
    }
}

/// Paginate over `[ListDatasetImportJobsOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListDatasetImportJobsInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListDatasetImportJobsOutputResponse`
extension PersonalizeClient {
    public func listDatasetImportJobsPaginated(input: ListDatasetImportJobsInput) -> ClientRuntime.PaginatorSequence<ListDatasetImportJobsInput, ListDatasetImportJobsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListDatasetImportJobsInput, ListDatasetImportJobsOutputResponse>(input: input, inputKey: \ListDatasetImportJobsInput.nextToken, outputKey: \ListDatasetImportJobsOutputResponse.nextToken, paginationFunction: self.listDatasetImportJobs(input:))
    }
}

extension ListDatasetImportJobsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListDatasetImportJobsInput {
        return ListDatasetImportJobsInput(
            datasetArn: self.datasetArn,
            maxResults: self.maxResults,
            nextToken: token
        )}
}

/// This paginator transforms the `AsyncSequence` returned by `listDatasetImportJobsPaginated`
/// to access the nested member `[PersonalizeClientTypes.DatasetImportJobSummary]`
/// - Returns: `[PersonalizeClientTypes.DatasetImportJobSummary]`
extension PaginatorSequence where Input == ListDatasetImportJobsInput, Output == ListDatasetImportJobsOutputResponse {
    func datasetImportJobs() async throws -> [PersonalizeClientTypes.DatasetImportJobSummary] {
        return try await self.asyncCompactMap { item in item.datasetImportJobs }
    }
}

/// Paginate over `[ListDatasetsOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListDatasetsInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListDatasetsOutputResponse`
extension PersonalizeClient {
    public func listDatasetsPaginated(input: ListDatasetsInput) -> ClientRuntime.PaginatorSequence<ListDatasetsInput, ListDatasetsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListDatasetsInput, ListDatasetsOutputResponse>(input: input, inputKey: \ListDatasetsInput.nextToken, outputKey: \ListDatasetsOutputResponse.nextToken, paginationFunction: self.listDatasets(input:))
    }
}

extension ListDatasetsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListDatasetsInput {
        return ListDatasetsInput(
            datasetGroupArn: self.datasetGroupArn,
            maxResults: self.maxResults,
            nextToken: token
        )}
}

/// This paginator transforms the `AsyncSequence` returned by `listDatasetsPaginated`
/// to access the nested member `[PersonalizeClientTypes.DatasetSummary]`
/// - Returns: `[PersonalizeClientTypes.DatasetSummary]`
extension PaginatorSequence where Input == ListDatasetsInput, Output == ListDatasetsOutputResponse {
    func datasets() async throws -> [PersonalizeClientTypes.DatasetSummary] {
        return try await self.asyncCompactMap { item in item.datasets }
    }
}

/// Paginate over `[ListEventTrackersOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListEventTrackersInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListEventTrackersOutputResponse`
extension PersonalizeClient {
    public func listEventTrackersPaginated(input: ListEventTrackersInput) -> ClientRuntime.PaginatorSequence<ListEventTrackersInput, ListEventTrackersOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListEventTrackersInput, ListEventTrackersOutputResponse>(input: input, inputKey: \ListEventTrackersInput.nextToken, outputKey: \ListEventTrackersOutputResponse.nextToken, paginationFunction: self.listEventTrackers(input:))
    }
}

extension ListEventTrackersInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListEventTrackersInput {
        return ListEventTrackersInput(
            datasetGroupArn: self.datasetGroupArn,
            maxResults: self.maxResults,
            nextToken: token
        )}
}

/// This paginator transforms the `AsyncSequence` returned by `listEventTrackersPaginated`
/// to access the nested member `[PersonalizeClientTypes.EventTrackerSummary]`
/// - Returns: `[PersonalizeClientTypes.EventTrackerSummary]`
extension PaginatorSequence where Input == ListEventTrackersInput, Output == ListEventTrackersOutputResponse {
    func eventTrackers() async throws -> [PersonalizeClientTypes.EventTrackerSummary] {
        return try await self.asyncCompactMap { item in item.eventTrackers }
    }
}

/// Paginate over `[ListFiltersOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListFiltersInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListFiltersOutputResponse`
extension PersonalizeClient {
    public func listFiltersPaginated(input: ListFiltersInput) -> ClientRuntime.PaginatorSequence<ListFiltersInput, ListFiltersOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListFiltersInput, ListFiltersOutputResponse>(input: input, inputKey: \ListFiltersInput.nextToken, outputKey: \ListFiltersOutputResponse.nextToken, paginationFunction: self.listFilters(input:))
    }
}

extension ListFiltersInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListFiltersInput {
        return ListFiltersInput(
            datasetGroupArn: self.datasetGroupArn,
            maxResults: self.maxResults,
            nextToken: token
        )}
}

/// This paginator transforms the `AsyncSequence` returned by `listFiltersPaginated`
/// to access the nested member `[PersonalizeClientTypes.FilterSummary]`
/// - Returns: `[PersonalizeClientTypes.FilterSummary]`
extension PaginatorSequence where Input == ListFiltersInput, Output == ListFiltersOutputResponse {
    func filters() async throws -> [PersonalizeClientTypes.FilterSummary] {
        return try await self.asyncCompactMap { item in item.filters }
    }
}

/// Paginate over `[ListRecipesOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListRecipesInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListRecipesOutputResponse`
extension PersonalizeClient {
    public func listRecipesPaginated(input: ListRecipesInput) -> ClientRuntime.PaginatorSequence<ListRecipesInput, ListRecipesOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListRecipesInput, ListRecipesOutputResponse>(input: input, inputKey: \ListRecipesInput.nextToken, outputKey: \ListRecipesOutputResponse.nextToken, paginationFunction: self.listRecipes(input:))
    }
}

extension ListRecipesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListRecipesInput {
        return ListRecipesInput(
            domain: self.domain,
            maxResults: self.maxResults,
            nextToken: token,
            recipeProvider: self.recipeProvider
        )}
}

/// This paginator transforms the `AsyncSequence` returned by `listRecipesPaginated`
/// to access the nested member `[PersonalizeClientTypes.RecipeSummary]`
/// - Returns: `[PersonalizeClientTypes.RecipeSummary]`
extension PaginatorSequence where Input == ListRecipesInput, Output == ListRecipesOutputResponse {
    func recipes() async throws -> [PersonalizeClientTypes.RecipeSummary] {
        return try await self.asyncCompactMap { item in item.recipes }
    }
}

/// Paginate over `[ListRecommendersOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListRecommendersInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListRecommendersOutputResponse`
extension PersonalizeClient {
    public func listRecommendersPaginated(input: ListRecommendersInput) -> ClientRuntime.PaginatorSequence<ListRecommendersInput, ListRecommendersOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListRecommendersInput, ListRecommendersOutputResponse>(input: input, inputKey: \ListRecommendersInput.nextToken, outputKey: \ListRecommendersOutputResponse.nextToken, paginationFunction: self.listRecommenders(input:))
    }
}

extension ListRecommendersInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListRecommendersInput {
        return ListRecommendersInput(
            datasetGroupArn: self.datasetGroupArn,
            maxResults: self.maxResults,
            nextToken: token
        )}
}

/// This paginator transforms the `AsyncSequence` returned by `listRecommendersPaginated`
/// to access the nested member `[PersonalizeClientTypes.RecommenderSummary]`
/// - Returns: `[PersonalizeClientTypes.RecommenderSummary]`
extension PaginatorSequence where Input == ListRecommendersInput, Output == ListRecommendersOutputResponse {
    func recommenders() async throws -> [PersonalizeClientTypes.RecommenderSummary] {
        return try await self.asyncCompactMap { item in item.recommenders }
    }
}

/// Paginate over `[ListSchemasOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListSchemasInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListSchemasOutputResponse`
extension PersonalizeClient {
    public func listSchemasPaginated(input: ListSchemasInput) -> ClientRuntime.PaginatorSequence<ListSchemasInput, ListSchemasOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListSchemasInput, ListSchemasOutputResponse>(input: input, inputKey: \ListSchemasInput.nextToken, outputKey: \ListSchemasOutputResponse.nextToken, paginationFunction: self.listSchemas(input:))
    }
}

extension ListSchemasInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListSchemasInput {
        return ListSchemasInput(
            maxResults: self.maxResults,
            nextToken: token
        )}
}

/// This paginator transforms the `AsyncSequence` returned by `listSchemasPaginated`
/// to access the nested member `[PersonalizeClientTypes.DatasetSchemaSummary]`
/// - Returns: `[PersonalizeClientTypes.DatasetSchemaSummary]`
extension PaginatorSequence where Input == ListSchemasInput, Output == ListSchemasOutputResponse {
    func schemas() async throws -> [PersonalizeClientTypes.DatasetSchemaSummary] {
        return try await self.asyncCompactMap { item in item.schemas }
    }
}

/// Paginate over `[ListSolutionsOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListSolutionsInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListSolutionsOutputResponse`
extension PersonalizeClient {
    public func listSolutionsPaginated(input: ListSolutionsInput) -> ClientRuntime.PaginatorSequence<ListSolutionsInput, ListSolutionsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListSolutionsInput, ListSolutionsOutputResponse>(input: input, inputKey: \ListSolutionsInput.nextToken, outputKey: \ListSolutionsOutputResponse.nextToken, paginationFunction: self.listSolutions(input:))
    }
}

extension ListSolutionsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListSolutionsInput {
        return ListSolutionsInput(
            datasetGroupArn: self.datasetGroupArn,
            maxResults: self.maxResults,
            nextToken: token
        )}
}

/// This paginator transforms the `AsyncSequence` returned by `listSolutionsPaginated`
/// to access the nested member `[PersonalizeClientTypes.SolutionSummary]`
/// - Returns: `[PersonalizeClientTypes.SolutionSummary]`
extension PaginatorSequence where Input == ListSolutionsInput, Output == ListSolutionsOutputResponse {
    func solutions() async throws -> [PersonalizeClientTypes.SolutionSummary] {
        return try await self.asyncCompactMap { item in item.solutions }
    }
}

/// Paginate over `[ListSolutionVersionsOutputResponse]` results.
///
/// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
/// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
/// until then. If there are errors in your request, you will see the failures only after you start iterating.
/// - Parameters:
///     - input: A `[ListSolutionVersionsInput]` to start pagination
/// - Returns: An `AsyncSequence` that can iterate over `ListSolutionVersionsOutputResponse`
extension PersonalizeClient {
    public func listSolutionVersionsPaginated(input: ListSolutionVersionsInput) -> ClientRuntime.PaginatorSequence<ListSolutionVersionsInput, ListSolutionVersionsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListSolutionVersionsInput, ListSolutionVersionsOutputResponse>(input: input, inputKey: \ListSolutionVersionsInput.nextToken, outputKey: \ListSolutionVersionsOutputResponse.nextToken, paginationFunction: self.listSolutionVersions(input:))
    }
}

extension ListSolutionVersionsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListSolutionVersionsInput {
        return ListSolutionVersionsInput(
            maxResults: self.maxResults,
            nextToken: token,
            solutionArn: self.solutionArn
        )}
}

/// This paginator transforms the `AsyncSequence` returned by `listSolutionVersionsPaginated`
/// to access the nested member `[PersonalizeClientTypes.SolutionVersionSummary]`
/// - Returns: `[PersonalizeClientTypes.SolutionVersionSummary]`
extension PaginatorSequence where Input == ListSolutionVersionsInput, Output == ListSolutionVersionsOutputResponse {
    func solutionVersions() async throws -> [PersonalizeClientTypes.SolutionVersionSummary] {
        return try await self.asyncCompactMap { item in item.solutionVersions }
    }
}
