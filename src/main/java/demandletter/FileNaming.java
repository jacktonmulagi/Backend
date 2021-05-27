package demandletter;

import net.sf.jasperreports.engine.JRException;

import java.io.File;
import java.io.FileNotFoundException;
import java.sql.Timestamp;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.Date;
import java.util.Random;
import java.util.concurrent.ThreadLocalRandom;

public class FileNaming {
    public void fileNaming(String email, DemandLetter demandLetter, File filePath, String file_id) throws JRException, FileNotFoundException {
        var name = email.substring(0, email.lastIndexOf("@"));
//creating the expected pdf name
        Random rand = new Random(); //instance of random class
        int upperbound = 10000;
        //generate random values from 0-24
        int int_random = rand.nextInt(upperbound);
//        new name will int_random + name from the email address.
        String newName = name+"_"+demandLetter.getType()+"_"+int_random;
        GeneratePdf generatePdf = new GeneratePdf();
        generatePdf.generatePdf(newName,filePath,demandLetter,file_id);
    }
}
