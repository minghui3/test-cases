package utils;

import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.node.ObjectNode;

import java.io.File;
import java.net.URI;
import java.net.http.HttpClient;
import java.net.http.HttpRequest;
import java.net.http.HttpResponse;

public class PushTestResult {

    public static void main(String[] args) {
        try {
            ObjectMapper objectMapper = new ObjectMapper();
            String[] browsers = { "chrome", "edge", "firefox" };
            for (String browser : browsers) {
                File rawJSON = new File("/target/cucumber-reports/" + browser + "-report.json");
                JsonNode jsonNode = objectMapper.readTree(rawJSON);
                ObjectNode objectNode = (ObjectNode) jsonNode;
                objectNode.put("dbName", "PulsePointHR");
                objectNode.put("browser", browser);
                String jsonString = objectMapper.writeValueAsString(objectNode);
                HttpClient client = HttpClient.newHttpClient();
                HttpRequest request = HttpRequest.newBuilder()
                        .uri(URI.create("http://localhost:5000"))
                        .header("Content-Type", "application/json")
                        .POST(HttpRequest.BodyPublishers.ofString(jsonString))
                        .build();
                HttpResponse<String> response = client.send(request, HttpResponse.BodyHandlers.ofString());
                System.out.println(response.body());
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }
}