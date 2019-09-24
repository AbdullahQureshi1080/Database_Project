import com.sun.org.apache.regexp.internal.RE;

import java.sql.*;

public class JavaClient {
    public JavaClient () throws SQLException {

    }

    public static void main (String[] args) throws Exception{
      DataHandlerClub datahandler = new DataHandlerClub();
       ResultSet rs= datahandler.getAllClubs();
        while(rs.next())
            System.out.println(rs.getString(1)+"  " +rs.getString(2)+"  " +rs.getString(3)+"  " +rs.getInt(4)
                    +"  " +rs.getString(5)+"  " +rs.getString(6)+"  " +rs.getString(7)+"  " +rs.getString(8)
                    +"  " +rs.getString(9));

        //DataHandler datahandler = new DataHandler();
       // ResultSet rs1= datahandler.getAllClubsByName("Barcelona");
        //System.out.println("\nResults from query: ");
        //while(rs1.next()){
          //  System.out.println(rs1.getString(1)+"  " +rs1.getString(2)+"  " +rs1.getString(3)+"  " +rs1.getInt(4)
            //        +"  " +rs1.getString(5)+"  " +rs1.getString(6)+"  " +rs1.getString(7)+"  " +rs1.getString(8)
              //      +"  " +rs1.getString(9));
       // }

   //DataHandlerClub datahandler = new DataHandlerClub();
  // String rs2= datahandler.addClub("BCSTEAM", "BCS4", "2000$",
      //    40,"Routine2","EPL","UCL","OLD TRAFFORD","EV");
    // System.out.println("\nResults from query: " + rs2);

    //String rs3= datahandler.updateClub("'MANCHESTER UNITED'","'MANU'","'2B $'",35 ,"'Routine2'","'EPL'", "'FA CUP'","'OLD TRAFFORD'"  ,"'EV'");
      //System.out.println("\nResults from query: " + rs3);

       // datahandler.INSERT("AJAX","LIV","800M $",35 ,"Routine2","EPL", "FA CUP","CAMP NOU" ,"EV");
        datahandler.update("AJAX","AJX","500M",25,"Routine3","Dutch League","UCL","CAMP NOU", "EV");

    //  String rs4= datahandler.deleteClubByName("'AC MILAN'");
    //
        //  System.out.println("\nResults from query: " + rs4);

      //  DataHandler datahandler1 = new DataHandler();
    // String rs5= datahandler1.addEmployee("Abdullah", "Qureshi"  , "adnx1080@gmail.com ","03434343232","AD_VP",  30000);
    //System.out.println("\nResults from query: " + rs5);
       //  String rs6= datahandler1.addEmployee("Abdullah", "Nadeem"  , "abdnadeem382@gmail.com ","03434343232","AD_VP",  30000);
       //  System.out.println("\nResults from query: " + rs6);
}
}