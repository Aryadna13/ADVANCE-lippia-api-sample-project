package services;

import com.crowdar.api.rest.MethodsService;
import com.crowdar.core.PropertyManager;

import java.io.IOException;
import java.io.InputStream;
import java.util.HashMap;
import java.util.Map;
import java.util.Properties;

public class BaseService extends MethodsService {

    public static final ThreadLocal<String> API_KEY = new ThreadLocal<>();
    public static final ThreadLocal<String> WORKSPACE_ID = new ThreadLocal<>();

    public static String setToken(String token) throws IOException {

        Properties properties = new Properties();
        InputStream input = null;

            input = BaseService.class.getClassLoader().getResourceAsStream("config.properties");

            // Cargar el archivo de propiedades
            properties.load(input);

            token = properties.getProperty("clocky.token");
            return token;
    }

    public static Map<String, String> setParams(){
        Map<String,String> params = new HashMap<String, String>();
        params.put("api.key",API_KEY.get());
        params.put("base.url", PropertyManager.getProperty("base.api.url"));
        return params;
    }
}
