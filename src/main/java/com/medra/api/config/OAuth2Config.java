package com.medra.api.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Primary;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.oauth2.config.annotation.configurers.ClientDetailsServiceConfigurer;
import org.springframework.security.oauth2.config.annotation.web.configuration.AuthorizationServerConfigurerAdapter;
import org.springframework.security.oauth2.config.annotation.web.configuration.EnableAuthorizationServer;
import org.springframework.security.oauth2.config.annotation.web.configurers.AuthorizationServerEndpointsConfigurer;
import org.springframework.security.oauth2.config.annotation.web.configurers.AuthorizationServerSecurityConfigurer;
import org.springframework.security.oauth2.provider.token.DefaultTokenServices;
import org.springframework.security.oauth2.provider.token.TokenStore;
import org.springframework.security.oauth2.provider.token.store.InMemoryTokenStore;

import javax.sql.DataSource;

@Configuration
@EnableAuthorizationServer
public class OAuth2Config extends AuthorizationServerConfigurerAdapter {

	@Autowired
	@Qualifier("customUserDetailsService")
	private UserDetailsService userDetailsService;

	@Autowired
	private AuthenticationManager authenticationManager;

	
	@Bean
    public TokenStore tokenStore() {
        TokenStore result;
        result = new InMemoryTokenStore();
        return result;
    }

	@Autowired
	private DataSource dataSource;

	// password encryptor
	@Bean
	public PasswordEncoder passwordEncoder() {
		return new BCryptPasswordEncoder();
	}

	@Override
	public void configure(AuthorizationServerEndpointsConfigurer configurer) throws Exception {
		configurer.authenticationManager(authenticationManager);
		configurer.userDetailsService(userDetailsService);
		configurer.tokenStore(tokenStore());
	}
	
	 @Bean
     @Primary
     public DefaultTokenServices tokenServices() {
         DefaultTokenServices tokenServices = new DefaultTokenServices();
         tokenServices.setSupportRefreshToken(true);
         tokenServices.setTokenStore(tokenStore());
         return tokenServices;
     }

	@Override
	public void configure(AuthorizationServerSecurityConfigurer oauthServer) throws Exception {
		oauthServer.tokenKeyAccess("permitAll()").checkTokenAccess("isAuthenticated()")
				.allowFormAuthenticationForClients();
	}

	/*
	 * @Override public void configure(ClientDetailsServiceConfigurer clients)
	 * throws Exception { clients.jdbc(dataSource); }
	 */
	@Override
	public void configure(ClientDetailsServiceConfigurer clients) throws Exception {
		clients.inMemory()
				.withClient("web")
				.secret("web")
				.authorizedGrantTypes("authorization_code", "password", "client_credentials", "implicit", "refresh_token")
				.scopes("read","write")
				//es por si quiero pedir la aprobacion explicita
				.autoApprove(true);
				//.redirectUris("http://localhost:8100/");
				//.accessTokenValiditySeconds(300)
				//.refreshTokenValiditySeconds(6000);

	}

}
