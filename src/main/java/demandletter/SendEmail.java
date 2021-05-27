package demandletter;

import javax.activation.DataHandler;
import javax.activation.DataSource;
import javax.activation.FileDataSource;
import javax.mail.*;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;
import java.io.File;
import java.util.Properties;

public class SendEmail {
    public void sendEmail(String email, File file, String file_id) {

        EnvSettings settings = EnvSettings.getInstance();
        File folder = new File(settings.getPdfPath()); /*path to your folder*/
        String[] filesPresent = folder.list();
        if(filesPresent.length==0){
            System.out.println("Nothing to show ");
        }else{
            for(String fileName : filesPresent){  // looping through files in the directory
                if(fileName.equals(String.valueOf(file))){
                    Properties properties = System.getProperties();
                    System.out.println(settings.getMailHost());
                    properties.setProperty("mail.smtp.host",settings.getMailHost());
                    properties.put("mail.smtp.auth",settings.getMailAuthentication());
                    Session session = Session.getDefaultInstance(properties,
                            new javax.mail.Authenticator() {
                                protected PasswordAuthentication getPasswordAuthentication() {
                                    return new PasswordAuthentication(settings.getEmailUsername(),settings.getEmailPassword());
                                }
                            });
                    try{
                        MimeMessage message = new MimeMessage(session);
                        message.setFrom(new InternetAddress(settings.getEmailUsername()));
                        message.addRecipient(Message.RecipientType.TO,new InternetAddress(email));
                        message.setSubject(String.valueOf(file));

                        //3) create MimeBodyPart object and set your message text
                        BodyPart messageBodyPart1 = new MimeBodyPart();
                        messageBodyPart1.setText("check the pdf file");

                        //4) create new MimeBodyPart object and set DataHandler object to this object
                        MimeBodyPart messageBodyPart2 = new MimeBodyPart();


                        File fileWithAbsolutePath = new File(settings.getPdfPath() + "/"+file);
                        DataSource source = new FileDataSource(fileWithAbsolutePath);
                        System.out.println(file);
                        messageBodyPart2.setDataHandler(new DataHandler(source));
                        messageBodyPart2.setFileName(String.valueOf(file));


                        //5) create Multipart object and add MimeBodyPart objects to this object
                        Multipart multipart = new MimeMultipart();
                        multipart.addBodyPart(messageBodyPart1);
                        multipart.addBodyPart(messageBodyPart2);

                        //6) set the multiplart object to the message object
                        message.setContent(multipart );

                        //7) send message
                        Transport.send(message);

                        System.out.println(file+" message sent....");
                    }catch (MessagingException ex)

                    {ex.printStackTrace();
                        DbManager failedemailed = new DbManager();
                        failedemailed.email_not_sent(file_id);
                    }


                }
            }
        }




    }
}
