package DTO;

public class writingDTO {
    String title;
    String body;
    String writer;
    public writingDTO(String title, String body, String writer){
       setTitle(title);
       setBody(body);
       setWriter(writer);
    }
    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getBody() {
        return body;
    }

    public void setBody(String body) { this.body = body; }

    public String getWriter() {
        return writer;
    }

    public void setWriter(String writer) {
        this.writer = writer;
    }
}
