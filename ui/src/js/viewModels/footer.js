define([
    'ojs/ojcore',
    'knockout'
], function(oj, ko) {
    "use strict";
   
    function FooterViewModel() {
        var self = this;

        var aboutOracle = 'http://www.oracle.com/corporate/index.html';
        var contactUs = 'http://www.oracle.com/corporate/contact/index.html';
        var legalNotices = 'http://www.oracle.com/legal/index.html';
        var termsOfUse = 'http://www.oracle.com/us/legal/terms/index.html';
        var privacyRights = 'http://www.oracle.com/legal/privacy/index.html';

        self.footerLinks = ko.observableArray([
            new FooterNavModel('About Oracle', 'aboutOracle', aboutOracle),
            new FooterNavModel('Contact Us', 'contactUs', contactUs),
            new FooterNavModel('Legal Notices', 'legalNotices', legalNotices),
            new FooterNavModel('Terms Of Use', 'termsOfUse', termsOfUse),
            new FooterNavModel('Your Privacy Rights', 'yourPrivacyRights', privacyRights)
        ]);
    }

    function FooterNavModel(name, id, linkTarget) {
        this.name = name;
        this.linkId = id;
        this.linkTarget = linkTarget;
    }

    return FooterViewModel;
});
