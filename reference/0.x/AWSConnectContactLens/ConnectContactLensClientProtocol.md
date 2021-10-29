# ConnectContactLensClientProtocol

Contact Lens for Amazon Connect enables you to analyze conversations between customer and agents, by using speech transcription, natural language processing, and intelligent search capabilities. It performs sentiment analysis, detects issues, and enables you to automatically categorize contacts. Contact Lens for Amazon Connect provides both real-time and post-call analytics of customer-agent conversations. For more information, see [Analyze conversations using Contact Lens](https://docs.aws.amazon.com/connect/latest/adminguide/analyze-conversations.html) in the Amazon Connect Administrator Guide.

``` swift
public protocol ConnectContactLensClientProtocol 
```

## Requirements

### listRealtimeContactAnalysisSegments(input:completion:)

Provides a list of analysis segments for a real-time analysis session.

``` swift
func listRealtimeContactAnalysisSegments(input: ListRealtimeContactAnalysisSegmentsInput, completion: @escaping (ClientRuntime.SdkResult<ListRealtimeContactAnalysisSegmentsOutputResponse, ListRealtimeContactAnalysisSegmentsOutputError>) -> Void)
```