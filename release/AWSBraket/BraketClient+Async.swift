// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

#if swift(>=5.5) && canImport(_Concurrency)
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, macCatalyst 15.0, *)
public extension BraketClient {
    /// Cancels the specified task.
    func cancelQuantumTask(input: CancelQuantumTaskInput) async throws -> CancelQuantumTaskOutputResponse
    {
        typealias cancelQuantumTaskContinuation = CheckedContinuation<CancelQuantumTaskOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: cancelQuantumTaskContinuation) in
            cancelQuantumTask(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Creates a quantum task.
    func createQuantumTask(input: CreateQuantumTaskInput) async throws -> CreateQuantumTaskOutputResponse
    {
        typealias createQuantumTaskContinuation = CheckedContinuation<CreateQuantumTaskOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: createQuantumTaskContinuation) in
            createQuantumTask(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Retrieves the devices available in Amazon Braket.
    func getDevice(input: GetDeviceInput) async throws -> GetDeviceOutputResponse
    {
        typealias getDeviceContinuation = CheckedContinuation<GetDeviceOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: getDeviceContinuation) in
            getDevice(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Retrieves the specified quantum task.
    func getQuantumTask(input: GetQuantumTaskInput) async throws -> GetQuantumTaskOutputResponse
    {
        typealias getQuantumTaskContinuation = CheckedContinuation<GetQuantumTaskOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: getQuantumTaskContinuation) in
            getQuantumTask(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Shows the tags associated with this resource.
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

    /// Searches for devices using the specified filters.
    func searchDevices(input: SearchDevicesInput) async throws -> SearchDevicesOutputResponse
    {
        typealias searchDevicesContinuation = CheckedContinuation<SearchDevicesOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: searchDevicesContinuation) in
            searchDevices(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Searches for tasks that match the specified filter values.
    func searchQuantumTasks(input: SearchQuantumTasksInput) async throws -> SearchQuantumTasksOutputResponse
    {
        typealias searchQuantumTasksContinuation = CheckedContinuation<SearchQuantumTasksOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: searchQuantumTasksContinuation) in
            searchQuantumTasks(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Add a tag to the specified resource.
    func tagResource(input: TagResourceInput) async throws -> TagResourceOutputResponse
    {
        typealias tagResourceContinuation = CheckedContinuation<TagResourceOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: tagResourceContinuation) in
            tagResource(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Remove tags from a resource.
    func untagResource(input: UntagResourceInput) async throws -> UntagResourceOutputResponse
    {
        typealias untagResourceContinuation = CheckedContinuation<UntagResourceOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: untagResourceContinuation) in
            untagResource(input: input) { result in
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
