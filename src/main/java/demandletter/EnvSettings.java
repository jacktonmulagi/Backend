package demandletter;

import java.io.File;
import java.io.FileReader;
import java.util.Properties;

public class EnvSettings {

    private String emailUsername;
    private String mailHost;
    private String mailAuthentication;
    private String emailPassword;
    private String xmlPath;
    private String pdfPath;
    private String jrxmlPath;
    private String dbName;
    private String dbUsername;
    private String dbPassword;
    private int dbPort;
    private int waitingTime;

    private EnvSettings() {
        try {
            String path = System.getProperty("user.dir");
            File file = new File(path + System.getProperty("file.separator") + "config.conf");
            Properties props = new Properties();
            props.load(new FileReader(file));
            String _emailUsername = props.getProperty("email-Username");
            String _mailAuthentication = props.getProperty("mail-authentication");
            String _mailHost = props.getProperty("mail-host");
            String _emailPassword = props.getProperty("email-Password");
            String _xmlPath = props.getProperty("xml-Path");
            String _pdfPath = props.getProperty("pdf-Path");
            String _jrxmlPath = props.getProperty("jrxml-path");
            String _dbName = props.getProperty("db-name");
            String _dbUsername = props.getProperty("db-username");
            String _dbPassword = props.getProperty("db-password");
            String _dbPort = props.getProperty("db-port");
            String _waitingTime = props.getProperty("waiting-time");

            if (_emailUsername != null && !_emailUsername.isEmpty()) {
                setEmailUsername(_emailUsername);
            } else {
                throw new Exception("Email username is required");
            }if (_mailAuthentication != null && !_mailAuthentication.isEmpty()) {
                setMailAuthentication(_mailAuthentication);
            } else {
                throw new Exception("Email Authentication is missing or is set false");
            }
            if (_emailPassword != null && !_emailPassword.isEmpty()) {
                setEmailPassword(_emailPassword);
            } else {
                throw new Exception("Email password is required");
            }
            if (_mailHost != null && !_mailHost.isEmpty()) {
                setMailHost(_mailHost);
            } else {
                throw new Exception("Email hosting is required");
            }
            if (_xmlPath != null && !_xmlPath.isEmpty()) {
                setXmlPath(_xmlPath);
            } else {
                throw new Exception("Xml path is required");
            }
            if (_jrxmlPath != null && !_jrxmlPath.isEmpty()) {
                setJrxmlPath(_jrxmlPath);
            } else {
                throw new Exception("Jasper template path is required");
            }if (_pdfPath != null && !_pdfPath.isEmpty()) {
                setPdfPath(_pdfPath);
            } else {
                throw new Exception("Pdf path is required");
            }
            if (_waitingTime != null && !_waitingTime.isEmpty()) {
                setWaitingTime(Integer.parseInt(_waitingTime));
            } else {
                throw new Exception("waiting time is required");
            }
            if (_dbName != null && !_dbName.isEmpty()) {
                setDbName(_dbName);
            } else {
                throw new Exception("DB name is required");
            }
            if (_dbPassword != null && !_dbPassword.isEmpty()) {
                setDbPassword(_dbPassword);
            } else {
                throw new Exception("DB password is required");
            }
            if (_dbUsername != null && !_dbUsername.isEmpty()) {
                setDbUsername(_dbUsername);
            } else {
                throw new Exception("DB username is required");
            }
            if (_dbPort != null && !_dbPort.isEmpty()) {
                setDbPort(Integer.parseInt(_dbPort));
            } else {
                throw new Exception("DB port is required");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private static class LazyHolder {
        private static final EnvSettings instance = new EnvSettings();
    }

    public int getWaitingTime() {
        return waitingTime;
    }

    public void setWaitingTime(int waitingTime) {
        this.waitingTime = waitingTime;
    }

    public static EnvSettings getInstance() {
        return LazyHolder.instance;
    }

    public String getJrxmlPath() {
        return jrxmlPath;
    }

    public void setJrxmlPath(String jrxmlPath) {
        this.jrxmlPath = jrxmlPath;
    }

    public String getMailHost() {
        return mailHost;
    }

    public void setMailHost(String mailHost) {
        this.mailHost = mailHost;
    }

    public String getMailAuthentication() {
        return mailAuthentication;
    }

    public void setMailAuthentication(String mailAuthentication) {
        this.mailAuthentication = mailAuthentication;
    }

    public String getEmailUsername() {
        return emailUsername;
    }

    public void setEmailUsername(String emailUsername) {
        this.emailUsername = emailUsername;
    }

    public String getEmailPassword() {
        return emailPassword;
    }

    public void setEmailPassword(String emailPassword) {
        this.emailPassword = emailPassword;
    }

    public String getXmlPath() {
        return xmlPath;
    }

    public void setXmlPath(String xmlPath) {
        this.xmlPath = xmlPath;
    }

    public String getPdfPath() {
        return pdfPath;
    }

    public void setPdfPath(String pdfPath) { this.pdfPath = pdfPath;}
    public String getDbName() {
        return dbName;
    }

    public void setDbName(String dbName) {
        this.dbName = dbName;
    }

    public String getDbUsername() {
        return dbUsername;
    }

    public void setDbUsername(String dbUsername) {
        this.dbUsername = dbUsername;
    }

    public String getDbPassword() {
        return dbPassword;
    }

    public void setDbPassword(String dbPassword) {
        this.dbPassword = dbPassword;
    }

    public int getDbPort() {
        return dbPort;
    }

    public void setDbPort(int dbPort) {
        this.dbPort = dbPort;
    }
}
