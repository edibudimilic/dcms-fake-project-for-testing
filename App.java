import com.sun.net.httpserver.*;
import java.io.*; import java.net.*;
public class App {
  public static void main(String[] a) throws Exception {
    String p = System.getenv("PORT"); if (p == null) p = "3000";
    HttpServer s = HttpServer.create(new InetSocketAddress("0.0.0.0", Integer.parseInt(p)), 0);
    s.createContext("/", e -> {
      byte[] b = "<!doctype html><title>DCMS fixture</title><h1>dcms-stack-java OK</h1>".getBytes();
      e.getResponseHeaders().add("Content-Type","text/html");
      e.sendResponseHeaders(200, b.length);
      OutputStream o = e.getResponseBody(); o.write(b); o.close();
    });
    s.start();
  }
}
