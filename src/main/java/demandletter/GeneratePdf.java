package demandletter;

import net.sf.jasperreports.engine.*;
import net.sf.jasperreports.engine.data.JRXmlDataSource;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.HashMap;

public class GeneratePdf {
    public void generatePdf(String finalName, File filePath, DemandLetter demandLetter, String file_id) throws JRException, FileNotFoundException {
        EnvSettings settings = EnvSettings.getInstance();
        HashMap hm = new HashMap < > ();
        InputStream inputStream = new FileInputStream(new File(String.valueOf(filePath)));
        JRXmlDataSource ds = new JRXmlDataSource(inputStream, "/demandLetter");
        JasperReport jasperReport;
        JasperPrint jasperPrint;
        jasperReport = JasperCompileManager.compileReport(settings.getJrxmlPath() + "/demand2.jrxml");
        System.out.println(settings.getPdfPath());
        jasperPrint = JasperFillManager.fillReport(jasperReport, hm, ds);
        JasperExportManager.exportReportToPdfFile(jasperPrint, settings.getPdfPath()+"/"+finalName+".pdf");
        String generatedPdfName = finalName+".pdf";
        System.out.println("pdf generated bingo");
        PdfAvailability pdfAvailability = new PdfAvailability();
        pdfAvailability.pdfFileAvailable(generatedPdfName,demandLetter,file_id);
//        checking whether the new pdf  file is created .




    }
}
