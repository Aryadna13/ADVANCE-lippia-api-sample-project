package services;

import api.model.Client.ClientRoot;
import api.model.Project.ProjectRoot;
import com.crowdar.api.rest.Response;

import static services.WorkspaceService.setParams;

public class ClientService {
    public static Response post(String jsonName) {
        return post(jsonName, ClientRoot.class);
    }
}
