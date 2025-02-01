import io.cucumber.junit.platform.engine.Cucumber;

@RunWith(Cucumber.class)
@CucumberOptions(
    features = {"src/test/resources/features"}, 
    glue = {"stepdefinitions"}, 
    plugin = {"progress"}
)
public class TestRunner {

}
