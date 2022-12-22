public with sharing class ShowLwcOnVfController {

    public ShowLwcOnVfController() {

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
}
