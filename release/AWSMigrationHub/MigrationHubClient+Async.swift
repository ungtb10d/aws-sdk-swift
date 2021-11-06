// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

#if swift(>=5.5) && canImport(_Concurrency)
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, macCatalyst 15.0, *)
public extension MigrationHubClient {
    /// Associates a created artifact of an AWS cloud resource, the target receiving the migration, with the migration task performed by a migration tool. This API has the following traits:
    ///
    /// * Migration tools can call the AssociateCreatedArtifact operation to indicate which AWS artifact is associated with a migration task.
    ///
    /// * The created artifact name must be provided in ARN (Amazon Resource Name) format which will contain information about type and region; for example: arn:aws:ec2:us-east-1:488216288981:image/ami-6d0ba87b.
    ///
    /// * Examples of the AWS resource behind the created artifact are, AMI's, EC2 instance, or DMS endpoint, etc.
    func associateCreatedArtifact(input: AssociateCreatedArtifactInput) async throws -> AssociateCreatedArtifactOutputResponse
    {
        typealias associateCreatedArtifactContinuation = CheckedContinuation<AssociateCreatedArtifactOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: associateCreatedArtifactContinuation) in
            associateCreatedArtifact(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Associates a discovered resource ID from Application Discovery Service with a migration task.
    func associateDiscoveredResource(input: AssociateDiscoveredResourceInput) async throws -> AssociateDiscoveredResourceOutputResponse
    {
        typealias associateDiscoveredResourceContinuation = CheckedContinuation<AssociateDiscoveredResourceOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: associateDiscoveredResourceContinuation) in
            associateDiscoveredResource(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Creates a progress update stream which is an AWS resource used for access control as well as a namespace for migration task names that is implicitly linked to your AWS account. It must uniquely identify the migration tool as it is used for all updates made by the tool; however, it does not need to be unique for each AWS account because it is scoped to the AWS account.
    func createProgressUpdateStream(input: CreateProgressUpdateStreamInput) async throws -> CreateProgressUpdateStreamOutputResponse
    {
        typealias createProgressUpdateStreamContinuation = CheckedContinuation<CreateProgressUpdateStreamOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: createProgressUpdateStreamContinuation) in
            createProgressUpdateStream(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Deletes a progress update stream, including all of its tasks, which was previously created as an AWS resource used for access control. This API has the following traits:
    ///
    /// * The only parameter needed for DeleteProgressUpdateStream is the stream name (same as a CreateProgressUpdateStream call).
    ///
    /// * The call will return, and a background process will asynchronously delete the stream and all of its resources (tasks, associated resources, resource attributes, created artifacts).
    ///
    /// * If the stream takes time to be deleted, it might still show up on a ListProgressUpdateStreams call.
    ///
    /// * CreateProgressUpdateStream, ImportMigrationTask, NotifyMigrationTaskState, and all Associate[*] APIs related to the tasks belonging to the stream will throw "InvalidInputException" if the stream of the same name is in the process of being deleted.
    ///
    /// * Once the stream and all of its resources are deleted, CreateProgressUpdateStream for a stream of the same name will succeed, and that stream will be an entirely new logical resource (without any resources associated with the old stream).
    func deleteProgressUpdateStream(input: DeleteProgressUpdateStreamInput) async throws -> DeleteProgressUpdateStreamOutputResponse
    {
        typealias deleteProgressUpdateStreamContinuation = CheckedContinuation<DeleteProgressUpdateStreamOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: deleteProgressUpdateStreamContinuation) in
            deleteProgressUpdateStream(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Gets the migration status of an application.
    func describeApplicationState(input: DescribeApplicationStateInput) async throws -> DescribeApplicationStateOutputResponse
    {
        typealias describeApplicationStateContinuation = CheckedContinuation<DescribeApplicationStateOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: describeApplicationStateContinuation) in
            describeApplicationState(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Retrieves a list of all attributes associated with a specific migration task.
    func describeMigrationTask(input: DescribeMigrationTaskInput) async throws -> DescribeMigrationTaskOutputResponse
    {
        typealias describeMigrationTaskContinuation = CheckedContinuation<DescribeMigrationTaskOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: describeMigrationTaskContinuation) in
            describeMigrationTask(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Disassociates a created artifact of an AWS resource with a migration task performed by a migration tool that was previously associated. This API has the following traits:
    ///
    /// * A migration user can call the DisassociateCreatedArtifacts operation to disassociate a created AWS Artifact from a migration task.
    ///
    /// * The created artifact name must be provided in ARN (Amazon Resource Name) format which will contain information about type and region; for example: arn:aws:ec2:us-east-1:488216288981:image/ami-6d0ba87b.
    ///
    /// * Examples of the AWS resource behind the created artifact are, AMI's, EC2 instance, or RDS instance, etc.
    func disassociateCreatedArtifact(input: DisassociateCreatedArtifactInput) async throws -> DisassociateCreatedArtifactOutputResponse
    {
        typealias disassociateCreatedArtifactContinuation = CheckedContinuation<DisassociateCreatedArtifactOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: disassociateCreatedArtifactContinuation) in
            disassociateCreatedArtifact(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Disassociate an Application Discovery Service discovered resource from a migration task.
    func disassociateDiscoveredResource(input: DisassociateDiscoveredResourceInput) async throws -> DisassociateDiscoveredResourceOutputResponse
    {
        typealias disassociateDiscoveredResourceContinuation = CheckedContinuation<DisassociateDiscoveredResourceOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: disassociateDiscoveredResourceContinuation) in
            disassociateDiscoveredResource(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Registers a new migration task which represents a server, database, etc., being migrated to AWS by a migration tool. This API is a prerequisite to calling the NotifyMigrationTaskState API as the migration tool must first register the migration task with Migration Hub.
    func importMigrationTask(input: ImportMigrationTaskInput) async throws -> ImportMigrationTaskOutputResponse
    {
        typealias importMigrationTaskContinuation = CheckedContinuation<ImportMigrationTaskOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: importMigrationTaskContinuation) in
            importMigrationTask(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Lists all the migration statuses for your applications. If you use the optional ApplicationIds parameter, only the migration statuses for those applications will be returned.
    func listApplicationStates(input: ListApplicationStatesInput) async throws -> ListApplicationStatesOutputResponse
    {
        typealias listApplicationStatesContinuation = CheckedContinuation<ListApplicationStatesOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listApplicationStatesContinuation) in
            listApplicationStates(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Lists the created artifacts attached to a given migration task in an update stream. This API has the following traits:
    ///
    /// * Gets the list of the created artifacts while migration is taking place.
    ///
    /// * Shows the artifacts created by the migration tool that was associated by the AssociateCreatedArtifact API.
    ///
    /// * Lists created artifacts in a paginated interface.
    func listCreatedArtifacts(input: ListCreatedArtifactsInput) async throws -> ListCreatedArtifactsOutputResponse
    {
        typealias listCreatedArtifactsContinuation = CheckedContinuation<ListCreatedArtifactsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listCreatedArtifactsContinuation) in
            listCreatedArtifacts(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Lists discovered resources associated with the given MigrationTask.
    func listDiscoveredResources(input: ListDiscoveredResourcesInput) async throws -> ListDiscoveredResourcesOutputResponse
    {
        typealias listDiscoveredResourcesContinuation = CheckedContinuation<ListDiscoveredResourcesOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listDiscoveredResourcesContinuation) in
            listDiscoveredResources(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Lists all, or filtered by resource name, migration tasks associated with the user account making this call. This API has the following traits:
    ///
    /// * Can show a summary list of the most recent migration tasks.
    ///
    /// * Can show a summary list of migration tasks associated with a given discovered resource.
    ///
    /// * Lists migration tasks in a paginated interface.
    func listMigrationTasks(input: ListMigrationTasksInput) async throws -> ListMigrationTasksOutputResponse
    {
        typealias listMigrationTasksContinuation = CheckedContinuation<ListMigrationTasksOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listMigrationTasksContinuation) in
            listMigrationTasks(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Lists progress update streams associated with the user account making this call.
    func listProgressUpdateStreams(input: ListProgressUpdateStreamsInput) async throws -> ListProgressUpdateStreamsOutputResponse
    {
        typealias listProgressUpdateStreamsContinuation = CheckedContinuation<ListProgressUpdateStreamsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listProgressUpdateStreamsContinuation) in
            listProgressUpdateStreams(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Sets the migration state of an application. For a given application identified by the value passed to ApplicationId, its status is set or updated by passing one of three values to Status: NOT_STARTED | IN_PROGRESS | COMPLETED.
    func notifyApplicationState(input: NotifyApplicationStateInput) async throws -> NotifyApplicationStateOutputResponse
    {
        typealias notifyApplicationStateContinuation = CheckedContinuation<NotifyApplicationStateOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: notifyApplicationStateContinuation) in
            notifyApplicationState(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Notifies Migration Hub of the current status, progress, or other detail regarding a migration task. This API has the following traits:
    ///
    /// * Migration tools will call the NotifyMigrationTaskState API to share the latest progress and status.
    ///
    /// * MigrationTaskName is used for addressing updates to the correct target.
    ///
    /// * ProgressUpdateStream is used for access control and to provide a namespace for each migration tool.
    func notifyMigrationTaskState(input: NotifyMigrationTaskStateInput) async throws -> NotifyMigrationTaskStateOutputResponse
    {
        typealias notifyMigrationTaskStateContinuation = CheckedContinuation<NotifyMigrationTaskStateOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: notifyMigrationTaskStateContinuation) in
            notifyMigrationTaskState(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Provides identifying details of the resource being migrated so that it can be associated in the Application Discovery Service repository. This association occurs asynchronously after PutResourceAttributes returns.
    ///
    /// * Keep in mind that subsequent calls to PutResourceAttributes will override previously stored attributes. For example, if it is first called with a MAC address, but later, it is desired to add an IP address, it will then be required to call it with both the IP and MAC addresses to prevent overriding the MAC address.
    ///
    /// * Note the instructions regarding the special use case of the [ResourceAttributeList](https://docs.aws.amazon.com/migrationhub/latest/ug/API_PutResourceAttributes.html#migrationhub-PutResourceAttributes-request-ResourceAttributeList) parameter when specifying any "VM" related value.
    ///
    ///
    /// Because this is an asynchronous call, it will always return 200, whether an association occurs or not. To confirm if an association was found based on the provided details, call ListDiscoveredResources.
    func putResourceAttributes(input: PutResourceAttributesInput) async throws -> PutResourceAttributesOutputResponse
    {
        typealias putResourceAttributesContinuation = CheckedContinuation<PutResourceAttributesOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: putResourceAttributesContinuation) in
            putResourceAttributes(input: input) { result in
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
