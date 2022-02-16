// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// Amazon EventBridge Schema Registry
public protocol SchemasClientProtocol {
    /// Creates a discoverer.
    func createDiscoverer(input: CreateDiscovererInput) async throws -> CreateDiscovererOutputResponse
    /// Creates a registry.
    func createRegistry(input: CreateRegistryInput) async throws -> CreateRegistryOutputResponse
    /// Creates a schema definition. Inactive schemas will be deleted after two years.
    func createSchema(input: CreateSchemaInput) async throws -> CreateSchemaOutputResponse
    /// Deletes a discoverer.
    func deleteDiscoverer(input: DeleteDiscovererInput) async throws -> DeleteDiscovererOutputResponse
    /// Deletes a Registry.
    func deleteRegistry(input: DeleteRegistryInput) async throws -> DeleteRegistryOutputResponse
    /// Delete the resource-based policy attached to the specified registry.
    func deleteResourcePolicy(input: DeleteResourcePolicyInput) async throws -> DeleteResourcePolicyOutputResponse
    /// Delete a schema definition.
    func deleteSchema(input: DeleteSchemaInput) async throws -> DeleteSchemaOutputResponse
    /// Delete the schema version definition
    func deleteSchemaVersion(input: DeleteSchemaVersionInput) async throws -> DeleteSchemaVersionOutputResponse
    /// Describe the code binding URI.
    func describeCodeBinding(input: DescribeCodeBindingInput) async throws -> DescribeCodeBindingOutputResponse
    /// Describes the discoverer.
    func describeDiscoverer(input: DescribeDiscovererInput) async throws -> DescribeDiscovererOutputResponse
    /// Describes the registry.
    func describeRegistry(input: DescribeRegistryInput) async throws -> DescribeRegistryOutputResponse
    /// Retrieve the schema definition.
    func describeSchema(input: DescribeSchemaInput) async throws -> DescribeSchemaOutputResponse
    func exportSchema(input: ExportSchemaInput) async throws -> ExportSchemaOutputResponse
    /// Get the code binding source URI.
    func getCodeBindingSource(input: GetCodeBindingSourceInput) async throws -> GetCodeBindingSourceOutputResponse
    /// Get the discovered schema that was generated based on sampled events.
    func getDiscoveredSchema(input: GetDiscoveredSchemaInput) async throws -> GetDiscoveredSchemaOutputResponse
    /// Retrieves the resource-based policy attached to a given registry.
    func getResourcePolicy(input: GetResourcePolicyInput) async throws -> GetResourcePolicyOutputResponse
    /// List the discoverers.
    func listDiscoverers(input: ListDiscoverersInput) async throws -> ListDiscoverersOutputResponse
    /// List the registries.
    func listRegistries(input: ListRegistriesInput) async throws -> ListRegistriesOutputResponse
    /// List the schemas.
    func listSchemas(input: ListSchemasInput) async throws -> ListSchemasOutputResponse
    /// Provides a list of the schema versions and related information.
    func listSchemaVersions(input: ListSchemaVersionsInput) async throws -> ListSchemaVersionsOutputResponse
    /// Get tags for resource.
    func listTagsForResource(input: ListTagsForResourceInput) async throws -> ListTagsForResourceOutputResponse
    /// Put code binding URI
    func putCodeBinding(input: PutCodeBindingInput) async throws -> PutCodeBindingOutputResponse
    /// The name of the policy.
    func putResourcePolicy(input: PutResourcePolicyInput) async throws -> PutResourcePolicyOutputResponse
    /// Search the schemas
    func searchSchemas(input: SearchSchemasInput) async throws -> SearchSchemasOutputResponse
    /// Starts the discoverer
    func startDiscoverer(input: StartDiscovererInput) async throws -> StartDiscovererOutputResponse
    /// Stops the discoverer
    func stopDiscoverer(input: StopDiscovererInput) async throws -> StopDiscovererOutputResponse
    /// Add tags to a resource.
    func tagResource(input: TagResourceInput) async throws -> TagResourceOutputResponse
    /// Removes tags from a resource.
    func untagResource(input: UntagResourceInput) async throws -> UntagResourceOutputResponse
    /// Updates the discoverer
    func updateDiscoverer(input: UpdateDiscovererInput) async throws -> UpdateDiscovererOutputResponse
    /// Updates a registry.
    func updateRegistry(input: UpdateRegistryInput) async throws -> UpdateRegistryOutputResponse
    /// Updates the schema definition Inactive schemas will be deleted after two years.
    func updateSchema(input: UpdateSchemaInput) async throws -> UpdateSchemaOutputResponse
}

public enum SchemasClientTypes {}