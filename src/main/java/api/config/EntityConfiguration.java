package api.config;

import services.*;

public enum EntityConfiguration {

    USER {
        @Override
        public Class<?> getEntityService() {
            return UserService.class;
        }
    },

    WORKSPACE {
        @Override
        public Class<?> getEntityService() {
            return WorkspaceService.class;
        }
    };


    PROJECT {
        @Override
        public Class<?> getEntityService () {
            return ProjectService.class;
        }
    }

    ;

    CLIENT {
        @Override
        public Class<?> getEntityService () {
            return ClientService.class;
        }
    }

    ;

    TASK {
        @Override
        public Class<?> getEntityService () {
            return TaskService.class;
        }
    }

    ;

    public abstract Class<?> getEntityService();
}



