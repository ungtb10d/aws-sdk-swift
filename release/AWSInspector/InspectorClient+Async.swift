// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

#if swift(>=5.5) && canImport(_Concurrency)
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, macCatalyst 15.0, *)
public extension InspectorClient {
    /// Assigns attributes (key and value pairs) to the findings that are specified by the ARNs of the findings.
    func addAttributesToFindings(input: AddAttributesToFindingsInput) async throws -> AddAttributesToFindingsOutputResponse
    {
        typealias addAttributesToFindingsContinuation = CheckedContinuation<AddAttributesToFindingsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: addAttributesToFindingsContinuation) in
            addAttributesToFindings(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Creates a new assessment target using the ARN of the resource group that is generated by [CreateResourceGroup]. If resourceGroupArn is not specified, all EC2 instances in the current AWS account and region are included in the assessment target. If the [service-linked role](https://docs.aws.amazon.com/inspector/latest/userguide/inspector_slr.html) isn’t already registered, this action also creates and registers a service-linked role to grant Amazon Inspector access to AWS Services needed to perform security assessments. You can create up to 50 assessment targets per AWS account. You can run up to 500 concurrent agents per AWS account. For more information, see [ Amazon Inspector Assessment Targets](https://docs.aws.amazon.com/inspector/latest/userguide/inspector_applications.html).
    func createAssessmentTarget(input: CreateAssessmentTargetInput) async throws -> CreateAssessmentTargetOutputResponse
    {
        typealias createAssessmentTargetContinuation = CheckedContinuation<CreateAssessmentTargetOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: createAssessmentTargetContinuation) in
            createAssessmentTarget(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Creates an assessment template for the assessment target that is specified by the ARN of the assessment target. If the [service-linked role](https://docs.aws.amazon.com/inspector/latest/userguide/inspector_slr.html) isn’t already registered, this action also creates and registers a service-linked role to grant Amazon Inspector access to AWS Services needed to perform security assessments.
    func createAssessmentTemplate(input: CreateAssessmentTemplateInput) async throws -> CreateAssessmentTemplateOutputResponse
    {
        typealias createAssessmentTemplateContinuation = CheckedContinuation<CreateAssessmentTemplateOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: createAssessmentTemplateContinuation) in
            createAssessmentTemplate(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Starts the generation of an exclusions preview for the specified assessment template. The exclusions preview lists the potential exclusions (ExclusionPreview) that Inspector can detect before it runs the assessment.
    func createExclusionsPreview(input: CreateExclusionsPreviewInput) async throws -> CreateExclusionsPreviewOutputResponse
    {
        typealias createExclusionsPreviewContinuation = CheckedContinuation<CreateExclusionsPreviewOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: createExclusionsPreviewContinuation) in
            createExclusionsPreview(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Creates a resource group using the specified set of tags (key and value pairs) that are used to select the EC2 instances to be included in an Amazon Inspector assessment target. The created resource group is then used to create an Amazon Inspector assessment target. For more information, see [CreateAssessmentTarget].
    func createResourceGroup(input: CreateResourceGroupInput) async throws -> CreateResourceGroupOutputResponse
    {
        typealias createResourceGroupContinuation = CheckedContinuation<CreateResourceGroupOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: createResourceGroupContinuation) in
            createResourceGroup(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Deletes the assessment run that is specified by the ARN of the assessment run.
    func deleteAssessmentRun(input: DeleteAssessmentRunInput) async throws -> DeleteAssessmentRunOutputResponse
    {
        typealias deleteAssessmentRunContinuation = CheckedContinuation<DeleteAssessmentRunOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: deleteAssessmentRunContinuation) in
            deleteAssessmentRun(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Deletes the assessment target that is specified by the ARN of the assessment target.
    func deleteAssessmentTarget(input: DeleteAssessmentTargetInput) async throws -> DeleteAssessmentTargetOutputResponse
    {
        typealias deleteAssessmentTargetContinuation = CheckedContinuation<DeleteAssessmentTargetOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: deleteAssessmentTargetContinuation) in
            deleteAssessmentTarget(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Deletes the assessment template that is specified by the ARN of the assessment template.
    func deleteAssessmentTemplate(input: DeleteAssessmentTemplateInput) async throws -> DeleteAssessmentTemplateOutputResponse
    {
        typealias deleteAssessmentTemplateContinuation = CheckedContinuation<DeleteAssessmentTemplateOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: deleteAssessmentTemplateContinuation) in
            deleteAssessmentTemplate(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Describes the assessment runs that are specified by the ARNs of the assessment runs.
    func describeAssessmentRuns(input: DescribeAssessmentRunsInput) async throws -> DescribeAssessmentRunsOutputResponse
    {
        typealias describeAssessmentRunsContinuation = CheckedContinuation<DescribeAssessmentRunsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: describeAssessmentRunsContinuation) in
            describeAssessmentRuns(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Describes the assessment targets that are specified by the ARNs of the assessment targets.
    func describeAssessmentTargets(input: DescribeAssessmentTargetsInput) async throws -> DescribeAssessmentTargetsOutputResponse
    {
        typealias describeAssessmentTargetsContinuation = CheckedContinuation<DescribeAssessmentTargetsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: describeAssessmentTargetsContinuation) in
            describeAssessmentTargets(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Describes the assessment templates that are specified by the ARNs of the assessment templates.
    func describeAssessmentTemplates(input: DescribeAssessmentTemplatesInput) async throws -> DescribeAssessmentTemplatesOutputResponse
    {
        typealias describeAssessmentTemplatesContinuation = CheckedContinuation<DescribeAssessmentTemplatesOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: describeAssessmentTemplatesContinuation) in
            describeAssessmentTemplates(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Describes the IAM role that enables Amazon Inspector to access your AWS account.
    func describeCrossAccountAccessRole(input: DescribeCrossAccountAccessRoleInput) async throws -> DescribeCrossAccountAccessRoleOutputResponse
    {
        typealias describeCrossAccountAccessRoleContinuation = CheckedContinuation<DescribeCrossAccountAccessRoleOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: describeCrossAccountAccessRoleContinuation) in
            describeCrossAccountAccessRole(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Describes the exclusions that are specified by the exclusions' ARNs.
    func describeExclusions(input: DescribeExclusionsInput) async throws -> DescribeExclusionsOutputResponse
    {
        typealias describeExclusionsContinuation = CheckedContinuation<DescribeExclusionsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: describeExclusionsContinuation) in
            describeExclusions(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Describes the findings that are specified by the ARNs of the findings.
    func describeFindings(input: DescribeFindingsInput) async throws -> DescribeFindingsOutputResponse
    {
        typealias describeFindingsContinuation = CheckedContinuation<DescribeFindingsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: describeFindingsContinuation) in
            describeFindings(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Describes the resource groups that are specified by the ARNs of the resource groups.
    func describeResourceGroups(input: DescribeResourceGroupsInput) async throws -> DescribeResourceGroupsOutputResponse
    {
        typealias describeResourceGroupsContinuation = CheckedContinuation<DescribeResourceGroupsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: describeResourceGroupsContinuation) in
            describeResourceGroups(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Describes the rules packages that are specified by the ARNs of the rules packages.
    func describeRulesPackages(input: DescribeRulesPackagesInput) async throws -> DescribeRulesPackagesOutputResponse
    {
        typealias describeRulesPackagesContinuation = CheckedContinuation<DescribeRulesPackagesOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: describeRulesPackagesContinuation) in
            describeRulesPackages(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Produces an assessment report that includes detailed and comprehensive results of a specified assessment run.
    func getAssessmentReport(input: GetAssessmentReportInput) async throws -> GetAssessmentReportOutputResponse
    {
        typealias getAssessmentReportContinuation = CheckedContinuation<GetAssessmentReportOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: getAssessmentReportContinuation) in
            getAssessmentReport(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Retrieves the exclusions preview (a list of ExclusionPreview objects) specified by the preview token. You can obtain the preview token by running the CreateExclusionsPreview API.
    func getExclusionsPreview(input: GetExclusionsPreviewInput) async throws -> GetExclusionsPreviewOutputResponse
    {
        typealias getExclusionsPreviewContinuation = CheckedContinuation<GetExclusionsPreviewOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: getExclusionsPreviewContinuation) in
            getExclusionsPreview(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Information about the data that is collected for the specified assessment run.
    func getTelemetryMetadata(input: GetTelemetryMetadataInput) async throws -> GetTelemetryMetadataOutputResponse
    {
        typealias getTelemetryMetadataContinuation = CheckedContinuation<GetTelemetryMetadataOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: getTelemetryMetadataContinuation) in
            getTelemetryMetadata(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Lists the agents of the assessment runs that are specified by the ARNs of the assessment runs.
    func listAssessmentRunAgents(input: ListAssessmentRunAgentsInput) async throws -> ListAssessmentRunAgentsOutputResponse
    {
        typealias listAssessmentRunAgentsContinuation = CheckedContinuation<ListAssessmentRunAgentsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listAssessmentRunAgentsContinuation) in
            listAssessmentRunAgents(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Lists the assessment runs that correspond to the assessment templates that are specified by the ARNs of the assessment templates.
    func listAssessmentRuns(input: ListAssessmentRunsInput) async throws -> ListAssessmentRunsOutputResponse
    {
        typealias listAssessmentRunsContinuation = CheckedContinuation<ListAssessmentRunsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listAssessmentRunsContinuation) in
            listAssessmentRuns(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Lists the ARNs of the assessment targets within this AWS account. For more information about assessment targets, see [Amazon Inspector Assessment Targets](https://docs.aws.amazon.com/inspector/latest/userguide/inspector_applications.html).
    func listAssessmentTargets(input: ListAssessmentTargetsInput) async throws -> ListAssessmentTargetsOutputResponse
    {
        typealias listAssessmentTargetsContinuation = CheckedContinuation<ListAssessmentTargetsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listAssessmentTargetsContinuation) in
            listAssessmentTargets(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Lists the assessment templates that correspond to the assessment targets that are specified by the ARNs of the assessment targets.
    func listAssessmentTemplates(input: ListAssessmentTemplatesInput) async throws -> ListAssessmentTemplatesOutputResponse
    {
        typealias listAssessmentTemplatesContinuation = CheckedContinuation<ListAssessmentTemplatesOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listAssessmentTemplatesContinuation) in
            listAssessmentTemplates(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Lists all the event subscriptions for the assessment template that is specified by the ARN of the assessment template. For more information, see [SubscribeToEvent] and [UnsubscribeFromEvent].
    func listEventSubscriptions(input: ListEventSubscriptionsInput) async throws -> ListEventSubscriptionsOutputResponse
    {
        typealias listEventSubscriptionsContinuation = CheckedContinuation<ListEventSubscriptionsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listEventSubscriptionsContinuation) in
            listEventSubscriptions(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// List exclusions that are generated by the assessment run.
    func listExclusions(input: ListExclusionsInput) async throws -> ListExclusionsOutputResponse
    {
        typealias listExclusionsContinuation = CheckedContinuation<ListExclusionsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listExclusionsContinuation) in
            listExclusions(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Lists findings that are generated by the assessment runs that are specified by the ARNs of the assessment runs.
    func listFindings(input: ListFindingsInput) async throws -> ListFindingsOutputResponse
    {
        typealias listFindingsContinuation = CheckedContinuation<ListFindingsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listFindingsContinuation) in
            listFindings(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Lists all available Amazon Inspector rules packages.
    func listRulesPackages(input: ListRulesPackagesInput) async throws -> ListRulesPackagesOutputResponse
    {
        typealias listRulesPackagesContinuation = CheckedContinuation<ListRulesPackagesOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listRulesPackagesContinuation) in
            listRulesPackages(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Lists all tags associated with an assessment template.
    func listTagsForResource(input: ListTagsForResourceInput) async throws -> ListTagsForResourceOutputResponse
    {
        typealias listTagsForResourceContinuation = CheckedContinuation<ListTagsForResourceOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listTagsForResourceContinuation) in
            listTagsForResource(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Previews the agents installed on the EC2 instances that are part of the specified assessment target.
    func previewAgents(input: PreviewAgentsInput) async throws -> PreviewAgentsOutputResponse
    {
        typealias previewAgentsContinuation = CheckedContinuation<PreviewAgentsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: previewAgentsContinuation) in
            previewAgents(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Registers the IAM role that grants Amazon Inspector access to AWS Services needed to perform security assessments.
    func registerCrossAccountAccessRole(input: RegisterCrossAccountAccessRoleInput) async throws -> RegisterCrossAccountAccessRoleOutputResponse
    {
        typealias registerCrossAccountAccessRoleContinuation = CheckedContinuation<RegisterCrossAccountAccessRoleOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: registerCrossAccountAccessRoleContinuation) in
            registerCrossAccountAccessRole(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Removes entire attributes (key and value pairs) from the findings that are specified by the ARNs of the findings where an attribute with the specified key exists.
    func removeAttributesFromFindings(input: RemoveAttributesFromFindingsInput) async throws -> RemoveAttributesFromFindingsOutputResponse
    {
        typealias removeAttributesFromFindingsContinuation = CheckedContinuation<RemoveAttributesFromFindingsOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: removeAttributesFromFindingsContinuation) in
            removeAttributesFromFindings(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Sets tags (key and value pairs) to the assessment template that is specified by the ARN of the assessment template.
    func setTagsForResource(input: SetTagsForResourceInput) async throws -> SetTagsForResourceOutputResponse
    {
        typealias setTagsForResourceContinuation = CheckedContinuation<SetTagsForResourceOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: setTagsForResourceContinuation) in
            setTagsForResource(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Starts the assessment run specified by the ARN of the assessment template. For this API to function properly, you must not exceed the limit of running up to 500 concurrent agents per AWS account.
    func startAssessmentRun(input: StartAssessmentRunInput) async throws -> StartAssessmentRunOutputResponse
    {
        typealias startAssessmentRunContinuation = CheckedContinuation<StartAssessmentRunOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: startAssessmentRunContinuation) in
            startAssessmentRun(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Stops the assessment run that is specified by the ARN of the assessment run.
    func stopAssessmentRun(input: StopAssessmentRunInput) async throws -> StopAssessmentRunOutputResponse
    {
        typealias stopAssessmentRunContinuation = CheckedContinuation<StopAssessmentRunOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: stopAssessmentRunContinuation) in
            stopAssessmentRun(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Enables the process of sending Amazon Simple Notification Service (SNS) notifications about a specified event to a specified SNS topic.
    func subscribeToEvent(input: SubscribeToEventInput) async throws -> SubscribeToEventOutputResponse
    {
        typealias subscribeToEventContinuation = CheckedContinuation<SubscribeToEventOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: subscribeToEventContinuation) in
            subscribeToEvent(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Disables the process of sending Amazon Simple Notification Service (SNS) notifications about a specified event to a specified SNS topic.
    func unsubscribeFromEvent(input: UnsubscribeFromEventInput) async throws -> UnsubscribeFromEventOutputResponse
    {
        typealias unsubscribeFromEventContinuation = CheckedContinuation<UnsubscribeFromEventOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: unsubscribeFromEventContinuation) in
            unsubscribeFromEvent(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Updates the assessment target that is specified by the ARN of the assessment target. If resourceGroupArn is not specified, all EC2 instances in the current AWS account and region are included in the assessment target.
    func updateAssessmentTarget(input: UpdateAssessmentTargetInput) async throws -> UpdateAssessmentTargetOutputResponse
    {
        typealias updateAssessmentTargetContinuation = CheckedContinuation<UpdateAssessmentTargetOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: updateAssessmentTargetContinuation) in
            updateAssessmentTarget(input: input) { result in
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
