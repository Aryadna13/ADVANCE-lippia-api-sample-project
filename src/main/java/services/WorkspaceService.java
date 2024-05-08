package services;

import api.model.Workspace.WorkspacesRoot;
import com.crowdar.api.rest.APIManager;
import com.crowdar.api.rest.Response;

import java.util.HashMap;
import java.util.Map;

public class WorkspaceService extends BaseService{

    public static Response get(String jsonName) {
        return get(jsonName, WorkspacesRoot[].class, setParams());
    }

    public static Map<String, String> setParams(){
        Map<String,String> params = new HashMap<String, String>();
        params.put("api.key",API_KEY.get());
        return params;
    }

    public static  String getWorkspaceId() {
        WorkspacesRoot[] lastResponse = (WorkspacesRoot[]) APIManager.getLastResponse().getResponse();
        System.out.println("id Workspace === " + lastResponse[1].id);
        return lastResponse[1].id;
    }
    }



