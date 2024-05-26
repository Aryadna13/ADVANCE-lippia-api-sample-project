package services;

import api.model.Workspace.WorkspacesRoot;
import com.crowdar.api.rest.APIManager;
import com.crowdar.api.rest.Response;

public class WorkspaceService extends BaseService {

    public static Response get(String jsonName) {
        return get(jsonName, WorkspacesRoot[].class, setParams());
    }


    public static String getWorkspaceId() {
        WorkspacesRoot[] lastResponse = (WorkspacesRoot[]) APIManager.getLastResponse().getResponse();
        System.out.println("id Workspace === " + lastResponse[0].getId());
        return String.valueOf(lastResponse[0].getId());
    }
}



