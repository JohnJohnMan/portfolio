package daelim.spring_ch10.config;

import daelim.spring_ch10.controller.HelloController;
import daelim.spring_ch10.controller.LoginController;
import daelim.spring_ch10.controller.MemberController;
import daelim.spring_ch10.controller.RegisterController;
import daelim.spring_ch10.service.AuthService;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class ControllerConfig {

    private AuthService authService;

    @Bean
    public RegisterController registerController() {
        return new RegisterController();
    }

    @Bean
    public HelloController helloController() {
        return new HelloController();
    }

    @Bean
    public LoginController loginController() {
        LoginController loginController = new LoginController();
        loginController.setAuthService(authService);
        return loginController;
    }

    @Bean
    public MemberController memberController() {
        return new MemberController();
    }
}
