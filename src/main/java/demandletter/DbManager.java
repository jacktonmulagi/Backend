package demandletter;

import demandletter.UfaaLetter.UfaaLetter;
import demandletter.dormancynotification.DormancyNotification;
import demandletter.statement.StatementLetter;

import java.io.File;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class DbManager {
    private static Connection getConnection() throws SQLException {
        EnvSettings settings = EnvSettings.getInstance();
        System.out.println("database connected");
        String jdbcUrl = "jdbc:mysql://localhost:"+settings.getDbPort()+"/"+settings.getDbName();
        return DriverManager.getConnection(jdbcUrl, settings.getDbUsername(), settings.getDbPassword());
    }
    EnvSettings settings = EnvSettings.getInstance();
//    saving  DormancyNotificationXml since the xml files have different file structure.
    public void savingXml(File file, DemandLetter demandLetter, String file_id){
        File fileWithAbsolutePath = new File(settings.getPdfPath() + "\\"+file);
        try(Connection connection = getConnection()){
            String sql = "INSERT INTO demandletter(\n" +
                    " type,email, title, address, segment,\n" +
                    " demandDate,drafter,branchCode,branchName,amount,interesetRate,filepath, margin)\n" +
                    "VALUES(?,?, ?, ?, ?,\n" +
                    "?, ?,?,?,?,?,?,?)";
            PreparedStatement pstmt = connection.prepareStatement(sql);
            pstmt.setString(1, String.valueOf(demandLetter.getType()));
            pstmt.setString(2, String.valueOf(demandLetter.getEmail()));
            pstmt.setString(3, String.valueOf(demandLetter.getTitle()));
            pstmt.setString(4, String.valueOf(demandLetter.getAddress()));
            pstmt.setString(5, String.valueOf(demandLetter.getSegment()));
            pstmt.setString(6, String.valueOf(demandLetter.getDemandDate()));
            pstmt.setString(7, String.valueOf(demandLetter.getDrafter()));
            pstmt.setString(8, String.valueOf(demandLetter.getBranchCode()));
            pstmt.setString(9, String.valueOf(demandLetter.getBranchName()));
            pstmt.setString(10, String.valueOf(demandLetter.getAmount()));
            pstmt.setString(11, String.valueOf(demandLetter.getInteresetRate()));
            pstmt.setString(12, String.valueOf(fileWithAbsolutePath));
            pstmt.setString(13, String.valueOf(demandLetter.getMargin()));

//            System.out.println(DemandLetter.getDemandDate());
            System.out.println(demandLetter.getAmount());

            pstmt.executeUpdate();
            System.out.println("Record saved ");
        } catch (Exception se) {
            se.printStackTrace();
        }
        try(Connection connection = getConnection()){
            String sql = "update FileInputStorage SET status ='Generated' WHERE fileName =?";
            PreparedStatement pstmt = connection.prepareStatement(sql);
            pstmt.setString(1, file_id);
            System.out.println("updating....");

            pstmt.executeUpdate();
            SendEmail sendEmail = new SendEmail();
            sendEmail.sendEmail(demandLetter.getEmail(),file,file_id);

        } catch (Exception se) {
            se.printStackTrace();
        }


    }
    //saving  UfaaXml since the xml files have different file structure.
    public void savingUfaaXml(File file, UfaaLetter ufaaLetter, String file_id) {
        File fileWithAbsolutePath = new File(settings.getPdfPath() + "\\"+file);

        try(Connection connection = getConnection()){
            String sql = "INSERT INTO ufaaletter(\n" +
                    " type,email, title, address, segment,\n" +
                    " date,drafter,submissionDate,branchCode,branchName,accountNumber,amount,filepath)\n" +
                    "VALUES(?,?, ?, ?, ?,\n" +
                    "?, ?,?,?,?,?,?,?)";
            PreparedStatement pstmt = connection.prepareStatement(sql);
            pstmt.setString(1, String.valueOf(ufaaLetter.getType()));
            pstmt.setString(2, String.valueOf(ufaaLetter.getEmail()));
            pstmt.setString(3, String.valueOf(ufaaLetter.getTitle()));
            pstmt.setString(4, String.valueOf(ufaaLetter.getAddress()));
            pstmt.setString(5, String.valueOf(ufaaLetter.getSegment()));
            pstmt.setString(6, String.valueOf(ufaaLetter.getDate()));
            pstmt.setString(7, String.valueOf(ufaaLetter.getDrafter()));
            pstmt.setString(8, String.valueOf(ufaaLetter.getSubmissionDate()));
            pstmt.setString(9, String.valueOf(ufaaLetter.getBranchCode()));
            pstmt.setString(10, String.valueOf(ufaaLetter.getBranchName()));
            pstmt.setString(11, String.valueOf(ufaaLetter.getAccountNumber()));
            pstmt.setString(12, String.valueOf(ufaaLetter.getAmount()));
            pstmt.setString(13, String.valueOf(fileWithAbsolutePath));
            System.out.println(ufaaLetter.getAmount());
            pstmt.executeUpdate();
            System.out.println("Record saved ");
        } catch (Exception se) {
            se.printStackTrace();
        }try(Connection connection = getConnection()){
            String sql = "update FileInputStorage SET status ='Generated' WHERE fileName =?";
            PreparedStatement pstmt = connection.prepareStatement(sql);
            pstmt.setString(1, file_id);
            System.out.println("updating....");
            pstmt.executeUpdate();
            SendEmail sendEmail = new SendEmail();
            sendEmail.sendEmail(ufaaLetter.getEmail(),file, file_id);
        } catch (Exception se) {
            se.printStackTrace();
        }

    }
//saving  DormancyNotificationXml since the xml files have different file structure.
    public void savingDormancyNotificationXml(File file, DormancyNotification dormancyNotification, String file_id) {
        File fileWithAbsolutePath = new File(settings.getPdfPath() + "\\"+file);

        try(Connection connection = getConnection()){
            String sql = "INSERT INTO dormancynotification(\n" +
                    " type,email,address,segment,\n" +
                    " date,drafter,branchCode,branchName,accountNumber,filepath)\n" +
                    "VALUES(?, ?, ?, ?,\n" +
                    "?, ?,?,?,?,?)";
            PreparedStatement pstmt = connection.prepareStatement(sql);
            pstmt.setString(1, String.valueOf(dormancyNotification.getType()));
            pstmt.setString(2, String.valueOf(dormancyNotification.getEmail()));
            pstmt.setString(3, String.valueOf(dormancyNotification.getAddress()));
            pstmt.setString(4, String.valueOf(dormancyNotification.getSegment()));
            pstmt.setString(5, String.valueOf(dormancyNotification.getDate()));
            pstmt.setString(6, String.valueOf(dormancyNotification.getDrafter()));
            pstmt.setString(7, String.valueOf(dormancyNotification.getBranchCode()));
            pstmt.setString(8, String.valueOf(dormancyNotification.getBranchName()));
            pstmt.setString(9, String.valueOf(dormancyNotification.getAccountNumber()));
            pstmt.setString(10, String.valueOf(fileWithAbsolutePath));
            pstmt.executeUpdate();
            System.out.println("dormancyNotification Record saved ");
        } catch (Exception se) {
            se.printStackTrace();
        }
        try(Connection connection = getConnection()){
            String sql = "update FileInputStorage SET status ='Generated' WHERE fileName =?";
            PreparedStatement pstmt = connection.prepareStatement(sql);
            pstmt.setString(1, file_id);
            System.out.println("updating....");
            pstmt.executeUpdate();
            SendEmail sendEmail = new SendEmail();
            sendEmail.sendEmail(dormancyNotification.getEmail(),file,file_id);
        } catch (Exception se) {
            se.printStackTrace();
        }
    }
//saving statement details in the db
    public void savingStatementXml(File file, StatementLetter statementLetter, String file_id) {
        File fileWithAbsolutePath = new File(settings.getPdfPath() + "\\"+file);

        try(Connection connection = getConnection()){
            String sql = "INSERT INTO statement(\n" +
                    " type,email,address,agreementId,\n" +
                    " amountFinanced,accruedPrincipalInterest,paymentStartDate,totalOutstandingBalance,registrationNo,makeNo,insuranceCompany,\n"+
                    "policyNumber,insuranceExpDate,customerNo,accountNo,accountName,statementPeriod,installmentAmount,statementDate,accruedPenalty,paymentEndDate,\n"+
                     " totalArrears,date,description,valueDate,interestDue,repaymentAmount,availableBalance,path)\n" +
                    "VALUES(?, ?, ?, ?,\n" +
                    "?, ?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
            PreparedStatement pstmt = connection.prepareStatement(sql);
            pstmt.setString(1, String.valueOf(statementLetter.getType()));
            pstmt.setString(2, String.valueOf(statementLetter.getEmail()));
            pstmt.setString(3, String.valueOf(statementLetter.getAddress()));
            pstmt.setString(4, String.valueOf(statementLetter.getAgreementId()));
            pstmt.setString(5, String.valueOf(statementLetter.getAmountFinanced()));
            pstmt.setString(6, String.valueOf(statementLetter.getAccruedPrincipalInterest()));
            pstmt.setString(7, String.valueOf(statementLetter.getPaymentStartDate()));
            pstmt.setString(8, String.valueOf(statementLetter.getTotalOutstandingBalance()));
            pstmt.setString(9, String.valueOf(statementLetter.getRegistrationNo()));
            pstmt.setString(10, String.valueOf(statementLetter.getMakeNo()));
            pstmt.setString(11, String.valueOf(statementLetter.getInsuranceCompany()));
            pstmt.setString(12, String.valueOf(statementLetter.getPolicyNumber()));
            pstmt.setString(13, String.valueOf(statementLetter.getInsuranceExpDate()));
            pstmt.setString(14, String.valueOf(statementLetter.getCustomerNo()));
            pstmt.setString(15, String.valueOf(statementLetter.getAccountNo()));
            pstmt.setString(16, String.valueOf(statementLetter.getAccountName()));
            pstmt.setString(17, String.valueOf(statementLetter.getStatementPeriod()));
            pstmt.setString(18, String.valueOf(statementLetter.getInstallmentAmount()));
            pstmt.setString(19, String.valueOf(statementLetter.getStatementDate()));
            pstmt.setString(20, String.valueOf(statementLetter.getAccruedPenalty()));
            pstmt.setString(21, String.valueOf(statementLetter.getPaymentEndDate()));
            pstmt.setString(22, String.valueOf(statementLetter.getTotalArrears()));
            pstmt.setString(23, String.valueOf(statementLetter.getDate()));
            pstmt.setString(24, String.valueOf(statementLetter.getDescription()));
            pstmt.setString(25, String.valueOf(statementLetter.getValueDate()));
            pstmt.setString(26, String.valueOf(statementLetter.getInterestDue()));
            pstmt.setString(27, String.valueOf(statementLetter.getRepaymentAmount()));
            pstmt.setString(28, String.valueOf(statementLetter.getAvailableBalance()));
            pstmt.setString(29, String.valueOf(fileWithAbsolutePath));

            pstmt.executeUpdate();
            System.out.println("statement details Record saved ");

        } catch (Exception se) {
            se.printStackTrace();
        }
        try(Connection connection = getConnection()){
            String sql = "update FileInputStorage SET status ='Generated' WHERE fileName =?";
            PreparedStatement pstmt = connection.prepareStatement(sql);
            pstmt.setString(1, file_id);
            System.out.println("updating....");
            pstmt.executeUpdate();
            SendEmail sendEmail = new SendEmail();
            sendEmail.sendEmail(statementLetter.getEmail(),file,file_id);
        } catch (Exception se) {
            se.printStackTrace();
        }

    }

    public void email_not_sent(String file_id) {
        try(Connection connection = getConnection()){
            String sql = "update FileInputStorage SET status ='Failed' WHERE fileName =?";
            PreparedStatement pstmt = connection.prepareStatement(sql);
            pstmt.setString(1, file_id);
            System.out.println("updating....");
            pstmt.executeUpdate();
        } catch (Exception se) {
            se.printStackTrace();
        }
    }
}
