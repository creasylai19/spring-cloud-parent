https://cloud.spring.io/spring-cloud-static/spring-cloud-netflix/2.2.2.RELEASE/reference/html/#spring-cloud-ribbon
实现机制：
RestTemplate在添加@LoadBalance注解后，会添加一个Interceptor。
在底层调用http请求时，最终会会走到LoadBalancerInterceptor.intercept方法，在这里会进行负载均衡选择server，然后调用