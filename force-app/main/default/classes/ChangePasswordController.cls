/**
 * An apex page controller that exposes the change password functionality
 */
public with sharing class ChangePasswordController {
    public String oldPassword {get; set;}
    public String newPassword {get; set;}
    public String verifyNewPassword {get; set;}        
    
    public PageReference changePassword() {
        return Site.changePassword(newPassword, verifyNewPassword, oldpassword);    
    }

    @AuraEnabled
    public String footerJson {
        get {
            FooterJson fj = new FooterJson();
            fj.name = 'Ashkan';
            fj.text = 'Some Text';
            return JSON.serialize(fj);
        }
        private set;
    }

    public class FooterJson {
        public String name;
        public String text;
    }
    
   	public ChangePasswordController() {}
}