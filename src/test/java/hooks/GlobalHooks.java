package hooks;

import utils.PushTestResult;
import io.cucumber.java.AfterAll;


public class GlobalHooks {
    @AfterAll
    public static void sendResults() {
        PushTestResult.main(null);
    }
}
