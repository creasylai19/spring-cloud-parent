参考文档：https://cloud.spring.io/spring-cloud-static/spring-cloud-netflix/2.2.2.RELEASE/reference/html/#circuit-breaker-spring-cloud-circuit-breaker-with-hystrix

通过添加一个切面类HystrixCommandAspect，在此切面类中，对有HystrixCommand注解的方法做增强，完成相关熔断、降级等功能