package ar.steps;

import com.crowdar.core.PageSteps;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;

import static services.BaseService.API_KEY;

public class WorkspaceSteps extends PageSteps {


    @And("obtengo el workspaceId")
    public void obtengoElWorkspaceId() {
    }

    @And("obtengo un mensaje de error (.*)$")
    public void obtengoUnMensajeDeError(String arg0) {
        System.out.println();
    }
}
