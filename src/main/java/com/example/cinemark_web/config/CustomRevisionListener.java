package com.example.cinemark_web.config;

import com.example.cinemark_web.entities.audit.Revision;
import org.hibernate.envers.RevisionListener;



public class CustomRevisionListener implements RevisionListener {
    public void newRevision (Object revisionEntity) { final Revision revision = (Revision) revisionEntity;}
}
