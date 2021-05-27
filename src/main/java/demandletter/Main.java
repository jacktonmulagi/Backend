package demandletter;

import net.sf.jasperreports.engine.JRException;

import javax.xml.bind.JAXBException;
import java.io.FileNotFoundException;

public class Main {
    public static void main(String[] args) throws JRException, JAXBException, FileNotFoundException, InterruptedException {

        FileType fileType = new FileType();
        fileType.readingXmlFile();


    }
}
