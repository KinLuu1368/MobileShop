package com.kien.controller.mailcontrol;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.web.multipart.MultipartFile;
import java.util.List;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class MailInfo {
    private String from;
    private String to;
    private String[] cc;
    private String[] bcc;
    private String subject;
    private String body;
    private String[] attachments;
    
    public void setCc(String cc) {
        this.cc = new String[]{cc};
    }

    public void setBcc(String bcc) {
        this.bcc = new String[]{bcc};
    }

    public MailInfo(String to, String subject, String body) {
        this.from = "TaoThomStore <kienluu323@gmail.com>";
        this.to = to;
        this.subject = subject;
        this.body = body;
    }

    public void setAttachments(List<MultipartFile> attachments) {
        this.attachments = attachments.stream()
                .map(MultipartFile::getOriginalFilename)
                .toArray(String[]::new);
    }
}
