package demandletter;

public class FileDetails {
    private String fileName;
    private String filePath;
    private String fileType;



    public FileDetails(String fileName, String filePath, String fileType) {
        this.fileName =fileName;
        this.filePath =filePath;
        this.fileType =fileType;
    }

    public String getFileName() {
        return fileName;
    }

    public void setFileName(String fileName) {
        this.fileName = fileName;
    }

    public String getFilePath() {
        return filePath;
    }

    public void setFilePath(String filePath) {
        this.filePath = filePath;
    }

    public String getFileType() {
        return fileType;
    }

    public void setFileType(String fileType) {
        this.fileType = fileType;
    }
}
