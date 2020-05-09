参考文档：https://cloud.spring.io/spring-cloud-static/spring-cloud-netflix/2.2.2.RELEASE/reference/html/#service-discovery-eureka-clients

服务端(集群模式)：
1. 获取节点注册信息，注册自己
2. 提供接口(jersey)
3. 心跳

客户端：
1. 获取服务信息，注册自己
2. 定时任务，刷新缓存，心跳