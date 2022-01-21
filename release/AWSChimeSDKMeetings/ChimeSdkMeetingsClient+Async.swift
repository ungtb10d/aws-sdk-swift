// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

#if swift(>=5.5) && canImport(_Concurrency)
@available(macOS 12.0, iOS 15.0, tvOS 15.0, watchOS 8.0, macCatalyst 15.0, *)
public extension ChimeSdkMeetingsClient {
    /// Creates up to 100 attendees for an active Amazon Chime SDK meeting. For more information about the Amazon Chime SDK, see [Using the Amazon Chime SDK](https://docs.aws.amazon.com/chime/latest/dg/meetings-sdk.html) in the Amazon Chime Developer Guide.
    func batchCreateAttendee(input: BatchCreateAttendeeInput) async throws -> BatchCreateAttendeeOutputResponse
    {
        typealias batchCreateAttendeeContinuation = CheckedContinuation<BatchCreateAttendeeOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: batchCreateAttendeeContinuation) in
            batchCreateAttendee(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Creates a new attendee for an active Amazon Chime SDK meeting. For more information about the Amazon Chime SDK, see [Using the Amazon Chime SDK](https://docs.aws.amazon.com/chime/latest/dg/meetings-sdk.html) in the Amazon Chime Developer Guide.
    func createAttendee(input: CreateAttendeeInput) async throws -> CreateAttendeeOutputResponse
    {
        typealias createAttendeeContinuation = CheckedContinuation<CreateAttendeeOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: createAttendeeContinuation) in
            createAttendee(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Creates a new Amazon Chime SDK meeting in the specified media Region with no initial attendees. For more information about specifying media Regions, see [Amazon Chime SDK Media Regions](https://docs.aws.amazon.com/chime/latest/dg/chime-sdk-meetings-regions.html) in the Amazon Chime Developer Guide. For more information about the Amazon Chime SDK, see [Using the Amazon Chime SDK](https://docs.aws.amazon.com/chime/latest/dg/meetings-sdk.html) in the Amazon Chime Developer Guide.
    func createMeeting(input: CreateMeetingInput) async throws -> CreateMeetingOutputResponse
    {
        typealias createMeetingContinuation = CheckedContinuation<CreateMeetingOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: createMeetingContinuation) in
            createMeeting(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Creates a new Amazon Chime SDK meeting in the specified media Region, with attendees. For more information about specifying media Regions, see [Amazon Chime SDK Media Regions](https://docs.aws.amazon.com/chime/latest/dg/chime-sdk-meetings-regions.html) in the Amazon Chime Developer Guide. For more information about the Amazon Chime SDK, see [Using the Amazon Chime SDK](https://docs.aws.amazon.com/chime/latest/dg/meetings-sdk.html) in the Amazon Chime Developer Guide.
    func createMeetingWithAttendees(input: CreateMeetingWithAttendeesInput) async throws -> CreateMeetingWithAttendeesOutputResponse
    {
        typealias createMeetingWithAttendeesContinuation = CheckedContinuation<CreateMeetingWithAttendeesOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: createMeetingWithAttendeesContinuation) in
            createMeetingWithAttendees(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Deletes an attendee from the specified Amazon Chime SDK meeting and deletes their JoinToken. Attendees are automatically deleted when a Amazon Chime SDK meeting is deleted. For more information about the Amazon Chime SDK, see [Using the Amazon Chime SDK](https://docs.aws.amazon.com/chime/latest/dg/meetings-sdk.html) in the Amazon Chime Developer Guide.
    func deleteAttendee(input: DeleteAttendeeInput) async throws -> DeleteAttendeeOutputResponse
    {
        typealias deleteAttendeeContinuation = CheckedContinuation<DeleteAttendeeOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: deleteAttendeeContinuation) in
            deleteAttendee(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Deletes the specified Amazon Chime SDK meeting. The operation deletes all attendees, disconnects all clients, and prevents new clients from joining the meeting. For more information about the Amazon Chime SDK, see [Using the Amazon Chime SDK](https://docs.aws.amazon.com/chime/latest/dg/meetings-sdk.html) in the Amazon Chime Developer Guide.
    func deleteMeeting(input: DeleteMeetingInput) async throws -> DeleteMeetingOutputResponse
    {
        typealias deleteMeetingContinuation = CheckedContinuation<DeleteMeetingOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: deleteMeetingContinuation) in
            deleteMeeting(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Gets the Amazon Chime SDK attendee details for a specified meeting ID and attendee ID. For more information about the Amazon Chime SDK, see [Using the Amazon Chime SDK](https://docs.aws.amazon.com/chime/latest/dg/meetings-sdk.html) in the Amazon Chime Developer Guide.
    func getAttendee(input: GetAttendeeInput) async throws -> GetAttendeeOutputResponse
    {
        typealias getAttendeeContinuation = CheckedContinuation<GetAttendeeOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: getAttendeeContinuation) in
            getAttendee(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Gets the Amazon Chime SDK meeting details for the specified meeting ID. For more information about the Amazon Chime SDK, see [Using the Amazon Chime SDK](https://docs.aws.amazon.com/chime/latest/dg/meetings-sdk.html) in the Amazon Chime Developer Guide.
    func getMeeting(input: GetMeetingInput) async throws -> GetMeetingOutputResponse
    {
        typealias getMeetingContinuation = CheckedContinuation<GetMeetingOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: getMeetingContinuation) in
            getMeeting(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Lists the attendees for the specified Amazon Chime SDK meeting. For more information about the Amazon Chime SDK, see [Using the Amazon Chime SDK](https://docs.aws.amazon.com/chime/latest/dg/meetings-sdk.html) in the Amazon Chime Developer Guide.
    func listAttendees(input: ListAttendeesInput) async throws -> ListAttendeesOutputResponse
    {
        typealias listAttendeesContinuation = CheckedContinuation<ListAttendeesOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: listAttendeesContinuation) in
            listAttendees(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Starts transcription for the specified meetingId.
    func startMeetingTranscription(input: StartMeetingTranscriptionInput) async throws -> StartMeetingTranscriptionOutputResponse
    {
        typealias startMeetingTranscriptionContinuation = CheckedContinuation<StartMeetingTranscriptionOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: startMeetingTranscriptionContinuation) in
            startMeetingTranscription(input: input) { result in
                switch result {
                    case .success(let output):
                        continuation.resume(returning: output)
                    case .failure(let error):
                        continuation.resume(throwing: error)
                }
            }
        }
    }

    /// Stops transcription for the specified meetingId.
    func stopMeetingTranscription(input: StopMeetingTranscriptionInput) async throws -> StopMeetingTranscriptionOutputResponse
    {
        typealias stopMeetingTranscriptionContinuation = CheckedContinuation<StopMeetingTranscriptionOutputResponse, Swift.Error>
        return try await withCheckedThrowingContinuation { (continuation: stopMeetingTranscriptionContinuation) in
            stopMeetingTranscription(input: input) { result in
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