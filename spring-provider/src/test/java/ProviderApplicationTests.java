import com.creasy.provider.ProviderApplication;
import com.creasy.provider.service.IArticleService;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest(classes = ProviderApplication.class)
class ProviderApplicationTests {

    @Autowired
    private IArticleService iArticleService;

    @Test
    void contextLoads() {
        System.out.println(iArticleService.getArticle(1));
    }

}
