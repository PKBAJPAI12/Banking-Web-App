package com.project.dao;

import com.project.entities.RDAccount;
import com.project.entities.Users;
import com.project.helper.FactoryProvider;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;

public class UserDao {
    private SessionFactory factory;
    //we need to give Session factory to dao
    public UserDao(SessionFactory factory){
        this.factory=factory;
    }

    public UserDao() {
    }

    public Users getUserByEmailandPassword(String email, String password){
        Users user = null;
        try {
            //validation if the user exists
            Session session = this.factory.openSession();
            String q = "from Users where userEmail=: e and userPassword=: p";
            Query query = (Query) session.createQuery(q);
            query.setParameter("e", email);
            query.setParameter("p", password);
            user = (Users) query.uniqueResult();
            session.close();
        }
        catch (Exception e){
          e.printStackTrace();
        }
        return user;
    }
    public Users getUserById(int id){
        Users user = null;
        try {
            //validation if the user exists
            Session session = this.factory.openSession();
            String q = "from Users where userId=:i";
            Query query = (Query) session.createQuery(q);
            query.setParameter("i", id);
            user = (Users) query.uniqueResult();
            session.close();
        }
        catch (Exception e){
            e.printStackTrace();
        }
        return user;
    }
    public RDAccount getRDAccountByUserId(int id){
        RDAccount rdAccount = null;
        try {
            //validation if the user exists
            Session session = this.factory.openSession();
            String q = "from RDAccount where user.userId=:i";
            Query query = (Query) session.createQuery(q);
            query.setParameter("i", id);
            rdAccount = (RDAccount) query.uniqueResult();
            session.close();
        }
        catch (Exception e){
            e.printStackTrace();
        }
        return rdAccount;
    }

    public boolean updateRDAccount(RDAccount rd) {
        boolean result = false;
        try {
            Session session = this.factory.openSession();
            session.beginTransaction();
            session.update(rd);
            session.getTransaction().commit();
            session.close();
            result = true;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }
}
