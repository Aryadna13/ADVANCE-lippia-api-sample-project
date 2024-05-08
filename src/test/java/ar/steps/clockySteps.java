package ar.steps;

import api.config.EntityConfiguration;
import com.crowdar.core.PageSteps;
import cucumber.api.java.en.When;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import services.WorkspaceService;

import java.lang.reflect.InvocationTargetException;
import java.util.Map;

import static services.BaseService.API_KEY;

public class clockySteps extends PageSteps {


    @And("obtengo el workspaceId")
    public void obtengoElWorkspaceId() {

    }

    @Given("el usuario posee una (.*)$")
    public void elUsuarioPoseeUnaXApiKey(String token) {
        API_KEY.set(token);
    }


}
