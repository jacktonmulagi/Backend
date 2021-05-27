package demandletter;

import demandletter.UfaaLetter.UfaaFileNaming;
import demandletter.UfaaLetter.UfaaLetter;
import demandletter.dormancynotification.DormancyNotification;
import demandletter.dormancynotification.DormancyNotificationFileNaming;
import demandletter.statement.StatementFileNaming;
import demandletter.statement.StatementLetter;
import net.sf.jasperreports.engine.JRException;

import javax.xml.bind.JAXBContext;
import javax.xml.bind.JAXBException;
import javax.xml.bind.Unmarshaller;
import java.io.File;
import java.io.FileNotFoundException;
import java.nio.file.Path;
import java.util.Calendar;
import java.util.List;

public class FileType {
    public  synchronized void readingXmlFile() throws JRException, JAXBException, FileNotFoundException {
        while (true) {
            List<FileDetails> FileDetailsList = new FetchingFiles().getNewfiles();
            System.out.println("helllo");
            EnvSettings settings = EnvSettings.getInstance();
            for (FileDetails filerecords: FileDetailsList) {

                File filePath = new File(settings.getXmlPath() + "/"+filerecords.getFilePath());
                System.out.println(filerecords.getFileType());
                if (filerecords.getFileType().equals("DemandFile")){
                    System.out.println("mi");
                    JAXBContext jaxbContext = JAXBContext.newInstance(DemandLetter.class);
                    Unmarshaller unmarshaller = jaxbContext.createUnmarshaller();
                    DemandLetter DemandLetter = (DemandLetter) unmarshaller.unmarshal(filePath);
                    String email = DemandLetter.getEmail();
                    FileNaming fileNaming = new FileNaming();
                    String file_id = filerecords.getFileName();
                    fileNaming.fileNaming(email,DemandLetter,filePath,file_id);
                }else if (filerecords.getFileType().equals("dormancyNotification")){
                    JAXBContext jaxbContext = JAXBContext.newInstance(DormancyNotification.class);
                    Unmarshaller unmarshaller = jaxbContext.createUnmarshaller();
                    DormancyNotification DormancyNotification = (DormancyNotification) unmarshaller.unmarshal(filePath);
                    String email = DormancyNotification.getEmail();
                    DormancyNotificationFileNaming dormancyNotificationFileNaming = new DormancyNotificationFileNaming();
                    String file_id = filerecords.getFileName();
                    dormancyNotificationFileNaming.dormancyNotificationFileNaming(email,DormancyNotification,filePath,file_id);
                }else if (filerecords.getFileType().equals("bank_statement")){
                    JAXBContext jaxbContext = JAXBContext.newInstance(StatementLetter.class);
                    Unmarshaller unmarshaller = jaxbContext.createUnmarshaller();
                    StatementLetter StatementLetter = (StatementLetter) unmarshaller.unmarshal(filePath);
                    String email = StatementLetter.getEmail();
                    StatementFileNaming statementFileNaming = new StatementFileNaming();
                    String file_id = filerecords.getFileName();
                    statementFileNaming.statementFileNaming(email,StatementLetter,filePath,file_id);
                }else if (filerecords.getFileType().equals("Ufaa")){
                    JAXBContext jaxbContext = JAXBContext.newInstance(UfaaLetter.class);
                    Unmarshaller unmarshaller = jaxbContext.createUnmarshaller();
                    UfaaLetter UfaaLetter = (UfaaLetter) unmarshaller.unmarshal(filePath);
                    String email = UfaaLetter.getEmail();
                    UfaaFileNaming ufaaFileNaming = new UfaaFileNaming();
                    String file_id = filerecords.getFileName();
                    ufaaFileNaming.ufaaFileNaming(email,UfaaLetter,filePath,file_id);
                }else {
                    System.out.println("The xml fileType is incorrect format use the LOAN_STATEMENT,UFAA,DormancyNotification,demandletter");
                }
                new DbManager();
            }
            try {
                this.wait(settings.getWaitingTime());
            } catch (InterruptedException e) {

                e.printStackTrace();
            }
        }





    }
}
