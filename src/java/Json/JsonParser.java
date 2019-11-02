/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Json;


import java.io.IOException;
import java.io.InputStream;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import javax.json.Json;
import javax.json.JsonArray;
import javax.json.JsonObject;
import javax.json.JsonReader;


/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 *
 * @author felip
 */


public class JsonParser {
    private ArrayList<GitHubProjectVO> arrayGitHubProjectVO;
    
    public JsonParser(String language) throws MalformedURLException, IOException {
        arrayGitHubProjectVO = new ArrayList<GitHubProjectVO>();
        GitHubProjectVO gitHubProjectVO;
        
        URL url = new URL("https://api.github.com/search/repositories?q=language:" + language);
        try (InputStream is = url.openStream();
        JsonReader rdr = Json.createReader(is)) {
 
            JsonObject obj = rdr.readObject();
            JsonArray results = obj.getJsonArray("items");
            for (JsonObject result : results.getValuesAs(JsonObject.class)) {
                
                gitHubProjectVO = new GitHubProjectVO();
                
                JsonArray results2 = obj.getJsonArray("owner");
                
                gitHubProjectVO.setName(result.getString("name"));
                gitHubProjectVO.setUrlProject(result.getString("html_url"));
                gitHubProjectVO.setUser(result.getJsonObject("owner").getString("login"));
                gitHubProjectVO.setUrlPhoto(result.getJsonObject("owner").getString("avatar_url"));
                gitHubProjectVO.setStars(result.getInt("stargazers_count"));
                gitHubProjectVO.setForks(result.getInt("forks"));
                
                
                
                arrayGitHubProjectVO.add(gitHubProjectVO);
            }
        }
        
    }  

    /**
     * @return the arrayGitHubProjectVO
     */
    public ArrayList<GitHubProjectVO> getArrayGitHubProjectVO() {
        return arrayGitHubProjectVO;
    }
}
