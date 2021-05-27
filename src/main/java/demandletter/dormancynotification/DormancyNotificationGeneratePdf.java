package demandletter.dormancynotification;

import demandletter.EnvSettings;
import net.sf.jasperreports.engine.*;
import net.sf.jasperreports.engine.data.JRXmlDataSource;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.util.HashMap;

public class DormancyNotificationGeneratePdf {
    public void generatePdf(String newName, File filePath, DormancyNotification dormancyNotification, String file_id) throws FileNotFoundException, JRException {
        EnvSettings settings = EnvSettings.getInstance();
        HashMap hm = new HashMap < > ();
        System.out.println(filePath);
        InputStream inputStream = new FileInputStream(new File(String.valueOf(filePath)));
        JRXmlDataSource ds = new JRXmlDataSource(inputStream, "/dormancyNotification");
        JasperReport jasperReport;
        JasperPrint jasperPrint;
        jasperReport = JasperCompileManager.compileReport(settings.getJrxmlPath() + "/dormancyreport.jrxml");
        System.out.println(settings.getPdfPath());
        jasperPrint = JasperFillManager.fillReport(jasperReport, hm, ds);
        JasperExportManager.exportReportToPdfFile(jasperPrint, settings.getPdfPath()+"/"+newName+".pdf");
        String generatedPdfName = newName+".pdf";
        System.out.println("pdf generated bingo");
        DormancyNotificationPdfAvailability dormancyNotificationPdfAvailability = new DormancyNotificationPdfAvailability();
        dormancyNotificationPdfAvailability.pdfFileAvailable(generatedPdfName,dormancyNotification,file_id);
    }
}
