package api.model.Workspace;
import com.fasterxml.jackson.annotation.JsonProperty;

import java.util.ArrayList;

public class WorkspacesRoot {
    @JsonProperty("id")
    private int id;
    @JsonProperty("name")
    private String name;

    public CostRate costRate;
    public ArrayList<Currency> currencies;
    public String featureSubscriptionType;
    public ArrayList<String> features;
    public HourlyRate hourlyRate;
    public int getId() {
        return id;
    }
    public String imageUrl;
    public ArrayList<Membership> memberships;

    public String getName() {
        return name;
    }
    public Subdomain subdomain;
    public WorkspaceSettings workspaceSettings;
}
