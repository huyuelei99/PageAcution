import com.baizhi.pai.dao.UserDao;
import com.baizhi.pai.entity.User;
import com.baizhi.pai.service.UserService;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class Test {
    public static void main(String[] args) {
        ApplicationContext context=new ClassPathXmlApplicationContext("applicationContext.xml");
        UserDao bk= (UserDao) context.getBean("userDao");
        User as=bk.selectOne("胡月雷","123456");
        System.out.println(as);
    }
}
