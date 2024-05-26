package ar.steps;

import com.crowdar.core.PageSteps;
import io.cucumber.java.en.*;
import org.testng.Assert;
import services.BaseService;
import services.WorkspaceService;

public class WorkspaceSteps extends PageSteps {
    @And("obtengo el workspaceId")
    public static void obtengoElWorkspaceId() {
        BaseService.WORKSPACE_ID.set(WorkspaceService.getWorkspaceId());
    }

    @And("obtengo un mensaje de error (.*)$")
    public void obtengoUnMensajeDeError(String error) {

    }

    @And("obtengo el (.*)$")
    public void obtengoEl(String arg0) {
    }
}
