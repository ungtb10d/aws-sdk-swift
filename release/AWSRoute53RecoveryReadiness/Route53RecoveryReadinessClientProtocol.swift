// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// AWS Route53 Recovery Readiness
public protocol Route53RecoveryReadinessClientProtocol {
    /// Creates a new Cell.
    func createCell(input: CreateCellInput) async throws -> CreateCellOutputResponse
    /// Create a new cross account readiness authorization.
    func createCrossAccountAuthorization(input: CreateCrossAccountAuthorizationInput) async throws -> CreateCrossAccountAuthorizationOutputResponse
    /// Creates a new Readiness Check.
    func createReadinessCheck(input: CreateReadinessCheckInput) async throws -> CreateReadinessCheckOutputResponse
    /// Creates a new Recovery Group.
    func createRecoveryGroup(input: CreateRecoveryGroupInput) async throws -> CreateRecoveryGroupOutputResponse
    /// Creates a new Resource Set.
    func createResourceSet(input: CreateResourceSetInput) async throws -> CreateResourceSetOutputResponse
    /// Deletes an existing Cell.
    func deleteCell(input: DeleteCellInput) async throws -> DeleteCellOutputResponse
    /// Delete cross account readiness authorization
    func deleteCrossAccountAuthorization(input: DeleteCrossAccountAuthorizationInput) async throws -> DeleteCrossAccountAuthorizationOutputResponse
    /// Deletes an existing Readiness Check.
    func deleteReadinessCheck(input: DeleteReadinessCheckInput) async throws -> DeleteReadinessCheckOutputResponse
    /// Deletes an existing Recovery Group.
    func deleteRecoveryGroup(input: DeleteRecoveryGroupInput) async throws -> DeleteRecoveryGroupOutputResponse
    /// Deletes an existing Resource Set.
    func deleteResourceSet(input: DeleteResourceSetInput) async throws -> DeleteResourceSetOutputResponse
    /// Returns a collection of recommendations to improve resilliance and readiness check quality for a Recovery Group.
    func getArchitectureRecommendations(input: GetArchitectureRecommendationsInput) async throws -> GetArchitectureRecommendationsOutputResponse
    /// Returns information about a Cell.
    func getCell(input: GetCellInput) async throws -> GetCellOutputResponse
    /// Returns information about readiness of a Cell.
    func getCellReadinessSummary(input: GetCellReadinessSummaryInput) async throws -> GetCellReadinessSummaryOutputResponse
    /// Returns information about a ReadinessCheck.
    func getReadinessCheck(input: GetReadinessCheckInput) async throws -> GetReadinessCheckOutputResponse
    /// Returns detailed information about the status of an individual resource within a Readiness Check's Resource Set.
    func getReadinessCheckResourceStatus(input: GetReadinessCheckResourceStatusInput) async throws -> GetReadinessCheckResourceStatusOutputResponse
    /// Returns information about the status of a Readiness Check.
    func getReadinessCheckStatus(input: GetReadinessCheckStatusInput) async throws -> GetReadinessCheckStatusOutputResponse
    /// Returns information about a Recovery Group.
    func getRecoveryGroup(input: GetRecoveryGroupInput) async throws -> GetRecoveryGroupOutputResponse
    /// Returns information about a Recovery Group.
    func getRecoveryGroupReadinessSummary(input: GetRecoveryGroupReadinessSummaryInput) async throws -> GetRecoveryGroupReadinessSummaryOutputResponse
    /// Returns information about a Resource Set.
    func getResourceSet(input: GetResourceSetInput) async throws -> GetResourceSetOutputResponse
    /// Returns a collection of Cells.
    func listCells(input: ListCellsInput) async throws -> ListCellsOutputResponse
    /// Returns a collection of cross account readiness authorizations.
    func listCrossAccountAuthorizations(input: ListCrossAccountAuthorizationsInput) async throws -> ListCrossAccountAuthorizationsOutputResponse
    /// Returns a collection of Readiness Checks.
    func listReadinessChecks(input: ListReadinessChecksInput) async throws -> ListReadinessChecksOutputResponse
    /// Returns a collection of Recovery Groups.
    func listRecoveryGroups(input: ListRecoveryGroupsInput) async throws -> ListRecoveryGroupsOutputResponse
    /// Returns a collection of Resource Sets.
    func listResourceSets(input: ListResourceSetsInput) async throws -> ListResourceSetsOutputResponse
    /// Returns a collection of rules that are applied as part of Readiness Checks.
    func listRules(input: ListRulesInput) async throws -> ListRulesOutputResponse
    /// Returns a list of the tags assigned to the specified resource.
    func listTagsForResources(input: ListTagsForResourcesInput) async throws -> ListTagsForResourcesOutputResponse
    /// Adds tags to the specified resource. You can specify one or more tags to add.
    func tagResource(input: TagResourceInput) async throws -> TagResourceOutputResponse
    /// Removes tags from the specified resource. You can specify one or more tags to remove.
    func untagResource(input: UntagResourceInput) async throws -> UntagResourceOutputResponse
    /// Updates an existing Cell.
    func updateCell(input: UpdateCellInput) async throws -> UpdateCellOutputResponse
    /// Updates an exisiting Readiness Check.
    func updateReadinessCheck(input: UpdateReadinessCheckInput) async throws -> UpdateReadinessCheckOutputResponse
    /// Updates an existing Recovery Group.
    func updateRecoveryGroup(input: UpdateRecoveryGroupInput) async throws -> UpdateRecoveryGroupOutputResponse
    /// Updates an existing Resource Set.
    func updateResourceSet(input: UpdateResourceSetInput) async throws -> UpdateResourceSetOutputResponse
}

public enum Route53RecoveryReadinessClientTypes {}
