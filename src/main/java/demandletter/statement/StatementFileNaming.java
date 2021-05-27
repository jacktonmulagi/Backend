package demandletter.statement;

import net.sf.jasperreports.engine.JRException;

import java.io.File;
import java.io.FileNotFoundException;
import java.util.Random;
import java.util.concurrent.ThreadLocalRandom;

public class StatementFileNaming {
    public void statementFileNaming(String email, StatementLetter statementLetter, File filePath, String file_id) throws JRException, FileNotFoundException {
        var name = email.substring(0, email.lastIndexOf("@"));
//creating the expected pdf name
        Random rand = new Random(); //instance of random class
        int upperbound = 10000;
        //generate random values from 0-24
        int int_random = rand.nextInt(upperbound);
//        new name will int_random + name from the email address.
        String newName = name+"_"+statementLetter.getType()+"_"+int_random;
        StatementGeneratePdf statementGeneratePdf = new StatementGeneratePdf();
        statementGeneratePdf.generatePdf(newName,filePath,statementLetter,file_id);
    }
}
