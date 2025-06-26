package reboxed.config;

import java.util.Properties;

import javax.persistence.EntityManagerFactory;
import javax.sql.DataSource;
import javax.validation.Validator;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.orm.jpa.JpaTransactionManager;
import org.springframework.orm.jpa.LocalContainerEntityManagerFactoryBean;
import org.springframework.orm.jpa.vendor.HibernateJpaVendorAdapter;
import org.springframework.transaction.PlatformTransactionManager;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.validation.beanvalidation.LocalValidatorFactoryBean;

@Configuration
@ComponentScan(basePackages = {"reboxed.repository", "reboxed.service"})
@EnableTransactionManagement
@EnableJpaRepositories(basePackages = {"reboxed.repository", "reboxed.service"})
public class JpaConfig {

	@Bean
	public DataSource dataSource() {
		DriverManagerDataSource ds = new DriverManagerDataSource();
		ds.setDriverClassName("org.postgresql.Driver");
		ds.setUrl("jdbc:postgresql://localhost:5432/reboxed");
		ds.setUsername("postgres");
		ds.setPassword("root");
		return ds;
	}
	
	
	@Bean
	public LocalContainerEntityManagerFactoryBean entityManagerFactory() {
		LocalContainerEntityManagerFactoryBean emf = new LocalContainerEntityManagerFactoryBean();
		Properties pro = new Properties();
		pro.setProperty("hibernate.dialect", "org.hibernate.dialect.PostgreSQLDialect");
		pro.setProperty("hibernate.hbm2ddl.auto", "update");
		pro.setProperty("hibernate.show_sql", "true");
		
		emf.setJpaVendorAdapter(new HibernateJpaVendorAdapter());
		emf.setJpaProperties(pro);
		emf.setPackagesToScan("reboxed.model");
		emf.setDataSource(dataSource());
		
		return emf;
	}
	
	
	@Bean
	public PlatformTransactionManager transactionManager(EntityManagerFactory ef) {
		JpaTransactionManager tm = new JpaTransactionManager(ef);
		return tm;
	}
	
	@Bean
	public Validator getValidator() {
		return new LocalValidatorFactoryBean();
	}
}
