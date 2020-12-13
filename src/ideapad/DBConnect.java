
package ideapad;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import javax.swing.JOptionPane;
import javax.swing.JTable;


public class DBConnect {
    private Connection con;
    private Statement st;
    private ResultSet rs;
    public DBConnect()
    {
        try{
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ideapad","root","");
            st=con.createStatement();
            //System.out.println("DB Connected");
        }
        catch(Exception ex)
        {
            System.out.println("Error: "+ex);
            ex.printStackTrace();
        }
    }
       public ResultSet getResultSet() {
        try {
    String query = "select Idea_No,idea from idea;";
    
            rs = st.executeQuery(query);
            
        } catch (Exception e) {
            System.out.println("Error : "+ e);
            e.printStackTrace();
        }
        return rs;

   }
    public ResultSet getResultSetBySearch1(String searchIdeaNo)
   {
       try
       {
           String query="select *from idea where Idea_No='"+searchIdeaNo+"'";
           System.out.println(query);
           rs=st.executeQuery(query);
       }
       catch(Exception e)
       {
           System.out.println("Error : "+ e);
           e.printStackTrace(); 
       }
    return rs;   
   }
      public void getResultSetByDelete(String searchId)
   {
       try
       {
           String query1="delete from idea where Idea_No='"+searchId+"'";
           String query2="ALTER TABLE Idea Drop Idea_No";
           String query3="ALTER TABLE Idea ADD Idea_No INT NOT NULL AUTO_INCREMENT PRIMARY KEY FIRST";
           System.out.println(query1);
           st.executeUpdate(query1);
           st.execute(query2);
           st.execute(query3);
           
           JOptionPane.showMessageDialog(null,"Idea delete successfully!!");
           
       }
       catch(Exception e)
       {
           System.out.println("Error : "+ e);
            e.printStackTrace(); 
       }
     
   }
       public void getResultSetByDelete1(String searchId)
   {
       try
       {
           String query="delete from User where UserId='"+searchId+"'";
           System.out.println(query);
           st.executeUpdate(query);
           JOptionPane.showMessageDialog(null,"Banned User Successfull!!");
       }
       catch(Exception e)
       {
           System.out.println("Error : "+ e);
            e.printStackTrace(); 
       }
     
   }
   
     public void insertIntoDB(ArrayList row)
 {
     try
     {
           String query="insert into idea(idea,UserId) values ('"+row.get(0)+"','"+row.get(1)+"')";
           System.out.println(query);
           st.executeUpdate(query);
           JOptionPane.showMessageDialog(null,"Idea added successfully!!");
     }
     catch(SQLException e)
       {
           JOptionPane.showMessageDialog(null,"Couldn't insert into Idea!!!!!"+e);
           System.out.println(e);
            
       }
 }
   
}
