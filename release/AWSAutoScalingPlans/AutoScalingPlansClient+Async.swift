// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

#if swift(>=5.5) && canImport(_Concurrency)
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, macCatalyst 15.0, *)
public extension AutoScalingPlansClient {
    /// Creates a scaling plan.
    func createScalingPlan(input: CreateScalingPlanInput) async throws -> CreateScalingPlanOutputResponse
    {
        typealias createScalingPlanContinuation = CheckedContinuation<CreateScalingPlanOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: createScalingPlanContinuation) in
            createScalingPlan(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Deletes the specified scaling plan. Deleting a scaling plan deletes the underlying [ScalingInstruction] for all of the scalable resources that are covered by the plan. If the plan has launched resources or has scaling activities in progress, you must delete those resources separately.
    func deleteScalingPlan(input: DeleteScalingPlanInput) async throws -> DeleteScalingPlanOutputResponse
    {
        typealias deleteScalingPlanContinuation = CheckedContinuation<DeleteScalingPlanOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: deleteScalingPlanContinuation) in
            deleteScalingPlan(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Describes the scalable resources in the specified scaling plan.
    func describeScalingPlanResources(input: DescribeScalingPlanResourcesInput) async throws -> DescribeScalingPlanResourcesOutputResponse
    {
        typealias describeScalingPlanResourcesContinuation = CheckedContinuation<DescribeScalingPlanResourcesOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: describeScalingPlanResourcesContinuation) in
            describeScalingPlanResources(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Describes one or more of your scaling plans.
    func describeScalingPlans(input: DescribeScalingPlansInput) async throws -> DescribeScalingPlansOutputResponse
    {
        typealias describeScalingPlansContinuation = CheckedContinuation<DescribeScalingPlansOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: describeScalingPlansContinuation) in
            describeScalingPlans(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Retrieves the forecast data for a scalable resource. Capacity forecasts are represented as predicted values, or data points, that are calculated using historical data points from a specified CloudWatch load metric. Data points are available for up to 56 days.
    func getScalingPlanResourceForecastData(input: GetScalingPlanResourceForecastDataInput) async throws -> GetScalingPlanResourceForecastDataOutputResponse
    {
        typealias getScalingPlanResourceForecastDataContinuation = CheckedContinuation<GetScalingPlanResourceForecastDataOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: getScalingPlanResourceForecastDataContinuation) in
            getScalingPlanResourceForecastData(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Updates the specified scaling plan. You cannot update a scaling plan if it is in the process of being created, updated, or deleted.
    func updateScalingPlan(input: UpdateScalingPlanInput) async throws -> UpdateScalingPlanOutputResponse
    {
        typealias updateScalingPlanContinuation = CheckedContinuation<UpdateScalingPlanOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: updateScalingPlanContinuation) in
            updateScalingPlan(input: input) { result in
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
