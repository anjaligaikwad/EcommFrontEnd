package com.niit.eccomercefrontend.config;

import java.util.Properties;

import javax.sql.DataSource;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
// changed by KZN from hibernate4 to hibernate5
import org.springframework.orm.hibernate5.HibernateTransactionManager;
import org.springframework.orm.hibernate5.LocalSessionFactoryBuilder;
//==========================
import org.springframework.transaction.annotation.EnableTransactionManagement;

@Configuration
@ComponentScan("com")
@EnableTransactionManagement


			public class ApplicationContextConfig {
			

				@Bean(name = "dataSource")
				public DataSource getH2DataSource() {

					DriverManagerDataSource dataSource = new DriverManagerDataSource();
						
					dataSource.setUrl("jdbc:h2:tcp://localhost/~/test");

					dataSource.setDriverClassName("org.h2.Driver");

					dataSource.setUsername("sa");
					dataSource.setPassword("");
					return dataSource;
				}

				
				private Properties getHibernateProperties() {
					Properties properties = new Properties();
					properties.put("hibernate.show_sql", true);
					properties.put("hibernate.dialect", "org.hibernate.dialect.H2Dialect");
					// added by KZN
					properties.put("hibernate.hbm2ddl.auto", "update");
					return properties;
				}

				@Autowired
				@Bean(name = "sessionFactory")
				public SessionFactory getSessionFactory(DataSource dataSource) {

					LocalSessionFactoryBuilder sessionBuilder = new LocalSessionFactoryBuilder(dataSource);
					sessionBuilder.addProperties(getHibernateProperties());
					// added by KZN
					sessionBuilder.scanPackages("com.niit.ecommercebackend.model");
					return sessionBuilder.buildSessionFactory();
				}

				@Autowired
				@Bean(name = "transactionManager")
				public HibernateTransactionManager getTransactionManager(SessionFactory sessionFactory) {
					HibernateTransactionManager transactionManager = new HibernateTransactionManager(sessionFactory);
					return transactionManager;
				}
			//  
//				@Autowired
//				@Bean(name="categoryDAO")
//				public CategoryDAO getCategoryDAO(SessionFactory sessionFactory){
//					return new CategoryDAOImpl(sessionFactory);
//				}
				
				

			}
