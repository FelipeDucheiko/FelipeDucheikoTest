/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Json;

/**
 *
 * @author felip
 */
public class GitHubProjectVO {
    private String name;
    private String user;
    private String urlPhoto;
    private String urlProject;
    private int stars;
    private int forks;
    
 

    /**
     * @return the name
     */
    public String getName() {
        return name;
    }

    /**
     * @param name the name to set
     */
    public void setName(String name) {
        this.name = name;
    }

    /**
     * @return the urlPhoto
     */
    public String getUrlPhoto() {
        return urlPhoto;
    }

    /**
     * @param urlPhoto the urlPhoto to set
     */
    public void setUrlPhoto(String urlPhoto) {
        this.urlPhoto = urlPhoto;
    }

    /**
     * @return the stars
     */
    public int getStars() {
        return stars;
    }

    /**
     * @param stars the stars to set
     */
    public void setStars(int stars) {
        this.stars = stars;
    }

    /**
     * @return the forks
     */
    public int getForks() {
        return forks;
    }

    /**
     * @param forks the forks to set
     */
    public void setForks(int forks) {
        this.forks = forks;
    }

    /**
     * @return the urlProject
     */
    public String getUrlProject() {
        return urlProject;
    }

    /**
     * @param urlProject the urlProject to set
     */
    public void setUrlProject(String urlProject) {
        this.urlProject = urlProject;
    }

    /**
     * @return the user
     */
    public String getUser() {
        return user;
    }

    /**
     * @param user the user to set
     */
    public void setUser(String user) {
        this.user = user;
    }
    
}
