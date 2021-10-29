# Types

  - [Wafv2Client](/aws-sdk-swift/reference/0.x/AWSWAFV2/Wafv2Client)
  - [Wafv2Client.Wafv2ClientConfiguration](/aws-sdk-swift/reference/0.x/AWSWAFV2/Wafv2Client_Wafv2ClientConfiguration)
  - [Wafv2ClientTypes](/aws-sdk-swift/reference/0.x/AWSWAFV2/Wafv2ClientTypes)
  - [Wafv2ClientLogHandlerFactory](/aws-sdk-swift/reference/0.x/AWSWAFV2/Wafv2ClientLogHandlerFactory)

# Protocols

  - [Wafv2ClientProtocol](/aws-sdk-swift/reference/0.x/AWSWAFV2/Wafv2ClientProtocol):
    WAF This is the latest version of the WAF API, released in November, 2019. The names of the entities that you use to access this API, like endpoints and namespaces, all have the versioning information added, like "V2" or "v2", to distinguish from the prior version. We recommend migrating your resources to this version, because it has a number of significant improvements. If you used WAF prior to this release, you can't use this WAFV2 API to access any WAF resources that you created before. You can access your old rules, web ACLs, and other WAF resources only through the WAF Classic APIs. The WAF Classic APIs have retained the prior names, endpoints, and namespaces. For information, including how to migrate your WAF resources to this version, see the [WAF Developer Guide](https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html). WAF is a web application firewall that lets you monitor the HTTP and HTTPS requests that are forwarded to Amazon CloudFront, an Amazon API Gateway REST API, an Application Load Balancer, or an AppSync GraphQL API. WAF also lets you control access to your content. Based on conditions that you specify, such as the IP addresses that requests originate from or the values of query strings, the Amazon API Gateway REST API, CloudFront distribution, the Application Load Balancer, or the AppSync GraphQL API responds to requests either with the requested content or with an HTTP 403 status code (Forbidden). You also can configure CloudFront to return a custom error page when a request is blocked. This API guide is for developers who need detailed information about WAF API actions, data types, and errors. For detailed information about WAF features and an overview of how to use WAF, see the [WAF Developer Guide](https://docs.aws.amazon.com/waf/latest/developerguide/what-is-aws-waf.html). You can make calls using the endpoints listed in [WAF endpoints and quotas](https://docs.aws.amazon.com/general/latest/gr/waf.html).