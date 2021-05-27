package demandletter;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class FetchingFiles {
    private static Connection getConnection() throws SQLException {
        EnvSettings settings = EnvSettings.getInstance();
        System.out.println("database connected");
        String jdbcUrl = "jdbc:mysql://localhost:"+settings.getDbPort()+"/"+settings.getDbName();
        return DriverManager.getConnection(jdbcUrl, settings.getDbUsername(), settings.getDbPassword());
    }
    public List<FileDetails> getNewfiles(){
        List<FileDetails> FileDetailsList = new ArrayList<>();
        try(Connection connection = getConnection()){
            String sql = "SELECT fileName,filePath,fileType FROM FileInputStorage WHERE status =? ORDER BY id DESC";
            PreparedStatement pstmt = connection.prepareStatement(sql);
            pstmt.setString(1, "Pending");
            ResultSet rs = pstmt.executeQuery();
            while (rs.next()) {

                FileDetailsList.add(new FileDetails(rs.getString("fileName"),rs.getString("filePath"),rs.getString("fileType")));
            }
        } catch (Exception se) {
            se.printStackTrace();
        }
        System.out.println(FileDetailsList);
        return FileDetailsList;
    }
}
