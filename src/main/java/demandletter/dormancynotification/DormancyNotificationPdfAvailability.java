package demandletter.dormancynotification;

import demandletter.DbManager;
import demandletter.EnvSettings;
import demandletter.dormancynotification.DormancyNotification;

import java.io.File;

public class DormancyNotificationPdfAvailability {

    public void pdfFileAvailable(String generatedPdfName, DormancyNotification dormancyNotification, String file_id) {
        EnvSettings settings = EnvSettings.getInstance();
        File folder = new File(settings.getPdfPath()); /*path to your folder*/

        String[] filesPresent = folder.list();
        assert filesPresent != null;
        if(filesPresent.length==0){
            System.out.println("No pdf found or pdf was not created!");
        }else{

            for(String fileName : filesPresent){  // looping through files in the directory
                if(fileName.equals(generatedPdfName)){
                    DbManager savingData = new DbManager();
                    savingData.savingDormancyNotificationXml(new File(generatedPdfName),dormancyNotification,file_id);

                }
            }
        }
    }
}
