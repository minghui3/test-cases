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
                File rawJSON = new File("target/cucumber-reports/" + browser + "/" + browser + "-report.json");
                
                // Check if file exists and is not empty
                if (!rawJSON.exists() || rawJSON.length() == 0) {
                    System.out.println(rawJSON.getAbsolutePath());
                    continue;
                }
                
                JsonNode jsonNode = objectMapper.readTree(rawJSON);
                
                ObjectNode root;
                
                // add test report to root
                if (jsonNode.isObject()) {
                    root = (ObjectNode) jsonNode;
                } else if (jsonNode.isArray()) {
                    root = objectMapper.createObjectNode();
                    root.set("result", jsonNode);
                } else {
                    throw new IllegalArgumentException("Root JSON object in " + "target/cucumber-reports/" + browser + "-report.json" + "is not array or object");
                }

                // add additional info
                root.put("dbName", "PointPulseHR");
                root.put("browser", browser);

                String jsonString = objectMapper.writeValueAsString(root);

                // build and send http request
                HttpClient client = HttpClient.newHttpClient();
                HttpRequest request = HttpRequest.newBuilder()
                        .uri(URI.create("https://97b4-2406-3003-2006-4502-d1f9-14be-90f9-21a8.ngrok-free.app/api/add-test-results"))
                        .header("Content-Type", "application/json")
                        .POST(HttpRequest.BodyPublishers.ofString(jsonString))
                        .build();

                // handle response
                HttpResponse<String> response = client.send(request, HttpResponse.BodyHandlers.ofString());
                System.out.println(response.body());
            }
        } catch (Exception ex) {
            System.out.println("MUSTARDDDDDDDDDDDDDDDDDDDDDDDDDD");
            ex.printStackTrace();
        }
    }
}