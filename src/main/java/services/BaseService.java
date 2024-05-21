package services;

import com.crowdar.api.rest.MethodsService;

import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

public class BaseService extends MethodsService {

    public static final ThreadLocal<String> API_KEY = new ThreadLocal<>();

    public static String setToken(String token) throws IOException {

        Properties properties = new Properties();
        InputStream input = null;

            input = BaseService.class.getClassLoader().getResourceAsStream("config.properties");

            // Cargar el archivo de propiedades
            properties.load(input);

            token = properties.getProperty("clocky.token");
            return token;
    }
}
