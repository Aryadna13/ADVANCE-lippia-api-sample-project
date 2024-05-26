package ar.steps;

import api.config.EntityConfiguration;
import api.model.Data;
import com.crowdar.api.rest.APIManager;
import com.crowdar.core.PageSteps;
import io.cucumber.java.en.*;
import com.google.api.client.repackaged.com.google.common.base.Splitter;

import org.apache.commons.lang.StringUtils;
import org.testng.Assert;
import services.BaseService;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Map;

import static services.BaseService.API_KEY;

public class CommonSteps extends PageSteps {

  /* @When("^I perform a '(.*)' to '(.*)' endpoint with the '(.*)'$")
    public void doRequest(String methodName, String entity, String jsonName) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException, NoSuchMethodException, SecurityException {
        Class entityService = EntityConfiguration.valueOf(entity).getEntityService();
        String jsonPath = "request/".concat(jsonName);
    }
*/

    @When("^I perform a '(.*)' to '(.*)' endpoint with the '(.*)' and '(.*)'$")
    public void doRequest(String methodName, String entity, String jsonName, String jsonReplacementValues) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException, NoSuchMethodException, SecurityException {
        Class entityService = EntityConfiguration.valueOf(entity).getEntityService();
        Map<String, String> parameters = getParameters(jsonReplacementValues);
        String jsonPath = "request/".concat(jsonName);
        if (parameters == null) {
            entityService.getMethod(methodName.toLowerCase()).invoke("", jsonPath);
        } else {
            entityService.getMethod(methodName.toLowerCase(), Map.class).invoke("", jsonPath, parameters);
        }
    }


    private Map<String, String> getParameters(String jsonReplacementValues) {
        Map<String, String> parameters = null;
        if (!StringUtils.isEmpty(jsonReplacementValues)) {
            parameters = Splitter.on(",").withKeyValueSeparator(":").split(jsonReplacementValues);
        }
        return parameters;
    }

    @Given("el usuario posee una (.*)$")
    public void elUsuarioPoseeUnaXApiKey(String token) throws IOException {
        BaseService.setToken(token);
        API_KEY.set(token);
    }
}
