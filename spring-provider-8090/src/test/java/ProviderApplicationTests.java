import com.creasy.provider.ProviderApplication8090;
import com.creasy.provider.service.IArticleService;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest(classes = ProviderApplication8090.class)
class ProviderApplicationTests {

    @Autowired
    private IArticleService iArticleService;

    @Test
    void contextLoads() {
        System.out.println(iArticleService.getArticle(1));
    }

}
