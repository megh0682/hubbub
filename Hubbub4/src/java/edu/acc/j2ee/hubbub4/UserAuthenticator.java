package edu.acc.j2ee.hubbub4;

import javax.servlet.ServletConfig;

public class UserAuthenticator{ 
	
  HubbubDAO daoConn = new HubbubDAO();
  private User uname;
	
   public UserAuthenticator(HubbubDAO daoConn)     
          {
          	  this.daoConn = daoConn;
          }
        
   public boolean isAuthentic(LoginBean user){
       
    uname = daoConn.find(user.getUsername());
    
    if(uname != null){
          if(uname.getPassWord().equals(user.getPassword())){
              return true;
          }
          else 
              return false;
        }
      return false;
    }
}