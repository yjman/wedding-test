// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.wedding.domain;

import com.wedding.domain.Rsvp;
import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

privileged aspect Rsvp_Roo_Finder {
    
    public static Long Rsvp.countFindRsvpsByCodeEquals(String code) {
        if (code == null || code.length() == 0) throw new IllegalArgumentException("The code argument is required");
        EntityManager em = Rsvp.entityManager();
        TypedQuery q = em.createQuery("SELECT COUNT(o) FROM Rsvp AS o WHERE o.code = :code", Long.class);
        q.setParameter("code", code);
        return ((Long) q.getSingleResult());
    }
    
    public static TypedQuery<Rsvp> Rsvp.findRsvpsByCodeEquals(String code) {
        if (code == null || code.length() == 0) throw new IllegalArgumentException("The code argument is required");
        EntityManager em = Rsvp.entityManager();
        TypedQuery<Rsvp> q = em.createQuery("SELECT o FROM Rsvp AS o WHERE o.code = :code", Rsvp.class);
        q.setParameter("code", code);
        return q;
    }
    
    public static TypedQuery<Rsvp> Rsvp.findRsvpsByCodeEquals(String code, String sortFieldName, String sortOrder) {
        if (code == null || code.length() == 0) throw new IllegalArgumentException("The code argument is required");
        EntityManager em = Rsvp.entityManager();
        String jpaQuery = "SELECT o FROM Rsvp AS o WHERE o.code = :code";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        TypedQuery<Rsvp> q = em.createQuery(jpaQuery, Rsvp.class);
        q.setParameter("code", code);
        return q;
    }
    
}
