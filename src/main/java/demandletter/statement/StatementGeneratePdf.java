package demandletter.statement;

import demandletter.EnvSettings;
import net.sf.jasperreports.engine.*;
import net.sf.jasperreports.engine.data.JRXmlDataSource;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.util.HashMap;

public class StatementGeneratePdf {
    public void generatePdf(String newName, File filePath, StatementLetter statementLetter, String file_id) throws FileNotFoundException, JRException {
        try {
            EnvSettings settings = EnvSettings.getInstance();
            HashMap hm = new HashMap < > ();
            System.out.println(filePath);
            InputStream inputStream = new FileInputStream(new File(String.valueOf(filePath)));
            JRXmlDataSource ds = new JRXmlDataSource(inputStream, "/statementLetter");
            JasperReport jasperReport;
            JasperPrint jasperPrint;
            jasperReport = JasperCompileManager.compileReport(settings.getJrxmlPath() + "/Bankstatement.jrxml");
            System.out.println(settings.getPdfPath());
            jasperPrint = JasperFillManager.fillReport(jasperReport, hm, ds);
            JasperExportManager.exportReportToPdfFile(jasperPrint, settings.getPdfPath()+"/"+newName+".pdf");
            String generatedPdfName = newName+".pdf";
            System.out.println("pdf generated bingo");
            StatementPdfAvalilablity statementPdfAvalilablity = new  StatementPdfAvalilablity();
            statementPdfAvalilablity.pdfFileAvailable(generatedPdfName,statementLetter,file_id);
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (JRException e) {
            e.printStackTrace();
        }

    }
}
