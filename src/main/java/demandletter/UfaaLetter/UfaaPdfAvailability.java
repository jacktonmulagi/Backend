package demandletter.UfaaLetter;

import demandletter.DbManager;
import demandletter.EnvSettings;

import java.io.File;

public class UfaaPdfAvailability {
    public void pdfFileAvailable(String generatedPdfName, UfaaLetter ufaaLetter, String file_id) {
        EnvSettings settings = EnvSettings.getInstance();
        File folder = new File(settings.getPdfPath()); /*path to your folder*/
        System.out.println(generatedPdfName);
        String[] filesPresent = folder.list();
        assert filesPresent != null;
        if(filesPresent.length==0){
            System.out.println("No pdf found or pdf was not created!");
        }else{

            for(String fileName : filesPresent){  // looping through files in the directory
                if(fileName.equals(generatedPdfName)){
                    System.out.println("echo");
                    DbManager savingData = new DbManager();
                    savingData.savingUfaaXml(new File(generatedPdfName),ufaaLetter,file_id);


                }
            }
        }
    }
}
