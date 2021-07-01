// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct CreateHITWithHITTypeInput: Equatable {
    /// <p>
    ///             The Assignment-level Review Policy applies to the assignments under the HIT.
    ///             You can specify for Mechanical Turk to take various actions based on the policy.
    ///         </p>
    public let assignmentReviewPolicy: ReviewPolicy?
    /// <p>
    ///             The HITLayoutId allows you to use a pre-existing HIT design with placeholder values
    ///             and create an additional HIT by providing those values as HITLayoutParameters.
    ///         </p>
    ///         <p>
    ///             Constraints: Either a Question parameter or a HITLayoutId parameter must be provided.
    ///         </p>
    public let hITLayoutId: String?
    /// <p>
    ///             If the HITLayoutId is provided, any placeholder values must be filled in with values
    ///             using the HITLayoutParameter structure. For more information, see HITLayout.
    ///         </p>
    public let hITLayoutParameters: [HITLayoutParameter]?
    /// <p>
    ///             The HIT-level Review Policy applies to the HIT.
    ///             You can specify for Mechanical Turk to take various actions based on the policy.
    ///         </p>
    public let hITReviewPolicy: ReviewPolicy?
    /// <p>The HIT type ID you want to create this HIT with.</p>
    public let hITTypeId: String?
    /// <p>
    ///             An amount of time, in seconds, after which the HIT is no longer available for users to accept.
    ///             After the lifetime of the HIT elapses, the HIT no longer appears in HIT searches,
    ///             even if not all of the assignments for the HIT have been accepted.
    ///         </p>
    public let lifetimeInSeconds: Int?
    /// <p>
    ///             The number of times the HIT can be accepted and completed before the HIT becomes unavailable.
    ///         </p>
    public let maxAssignments: Int?
    /// <p>
    ///             The data the person completing the HIT uses to produce the results.
    ///         </p>
    ///         <p>
    ///             Constraints: Must be a QuestionForm data structure, an ExternalQuestion data structure,
    ///             or an HTMLQuestion data structure. The XML question data must not be larger than
    ///             64 kilobytes (65,535 bytes) in size, including whitespace.
    ///         </p>
    ///         <p>Either a Question parameter or a HITLayoutId parameter must be provided.</p>
    public let question: String?
    /// <p>
    ///             An arbitrary data field.
    ///             The RequesterAnnotation parameter lets your application attach arbitrary data
    ///             to the HIT for tracking purposes.
    ///             For example, this parameter could be an identifier internal to the Requester's application
    ///             that corresponds with the HIT.
    ///         </p>
    ///         <p>
    ///             The RequesterAnnotation parameter for a HIT is only visible to the Requester who created the HIT.
    ///             It is not shown to the Worker, or any other Requester.
    ///         </p>
    ///         <p>
    ///             The RequesterAnnotation parameter may be different for each HIT you submit.
    ///             It does not affect how your HITs are grouped.
    ///         </p>
    public let requesterAnnotation: String?
    /// <p>
    ///             A unique identifier for this request which allows you to retry the call
    ///             on error without creating duplicate HITs.
    ///             This is useful in cases such as network timeouts where it is unclear whether or not
    ///             the call succeeded on the server.
    ///             If the HIT already exists in the system from a previous call using the same UniqueRequestToken,
    ///             subsequent calls will return a AWS.MechanicalTurk.HitAlreadyExists error
    ///             with a message containing the HITId.
    ///         </p>
    ///         <note>
    ///             <p>
    ///                 Note: It is your responsibility to ensure uniqueness of the token.
    ///                 The unique token expires after 24 hours. Subsequent calls using the same
    ///                 UniqueRequestToken made after the 24 hour limit could create duplicate HITs.
    ///             </p>
    ///         </note>
    public let uniqueRequestToken: String?

    public init (
        assignmentReviewPolicy: ReviewPolicy? = nil,
        hITLayoutId: String? = nil,
        hITLayoutParameters: [HITLayoutParameter]? = nil,
        hITReviewPolicy: ReviewPolicy? = nil,
        hITTypeId: String? = nil,
        lifetimeInSeconds: Int? = nil,
        maxAssignments: Int? = nil,
        question: String? = nil,
        requesterAnnotation: String? = nil,
        uniqueRequestToken: String? = nil
    )
    {
        self.assignmentReviewPolicy = assignmentReviewPolicy
        self.hITLayoutId = hITLayoutId
        self.hITLayoutParameters = hITLayoutParameters
        self.hITReviewPolicy = hITReviewPolicy
        self.hITTypeId = hITTypeId
        self.lifetimeInSeconds = lifetimeInSeconds
        self.maxAssignments = maxAssignments
        self.question = question
        self.requesterAnnotation = requesterAnnotation
        self.uniqueRequestToken = uniqueRequestToken
    }
}

extension CreateHITWithHITTypeInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "CreateHITWithHITTypeInput(assignmentReviewPolicy: \(String(describing: assignmentReviewPolicy)), hITLayoutId: \(String(describing: hITLayoutId)), hITLayoutParameters: \(String(describing: hITLayoutParameters)), hITReviewPolicy: \(String(describing: hITReviewPolicy)), hITTypeId: \(String(describing: hITTypeId)), lifetimeInSeconds: \(String(describing: lifetimeInSeconds)), maxAssignments: \(String(describing: maxAssignments)), question: \(String(describing: question)), requesterAnnotation: \(String(describing: requesterAnnotation)), uniqueRequestToken: \(String(describing: uniqueRequestToken)))"}
}