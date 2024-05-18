package services;

import api.model.Project.ProjectRoot;
import api.model.Workspace.WorkspacesRoot;
import com.crowdar.api.rest.Response;

import static services.WorkspaceService.setParams;

public class ProjectService extends BaseService{
    public static Response post(String jsonName) {return post(jsonName, ProjectRoot.class, setParams());
    }
}
