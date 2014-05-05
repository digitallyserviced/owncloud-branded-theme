<?php

/**
 * See lib/private/defaults.php for a list of possible defaults
 */

class OC_Theme {

   private $ThemeName;

   function __construct() {
      $this->ThemeName = "onecolo";
   }

   public function getEntity() {
        return 'SyncAccount Your Brand';
   }

   public function getName() {
        return 'SyncAccount Your Brand';
   }

   public function getTitle() {
        return 'SyncAccount Your Brand Service';
   }

   public function getBaseUrl() {
        return 'http://www.syncaccount.com/cloud/';
   }

   public function getSyncClientUrl() {
        return 'http://www.syncaccount.com/cloud/sync-clients/';
   }

   public function getLogoClaim() {
        return 'http://www.syncaccount.com';
   }

   public function getShortFooter() {
        $footer = "<a href=\"". $this->getBaseUrl() . "\" target=\"_blank\">" .$this->getEntity() . "</a>".
        ' – ' . $this->getSlogan();
   }

   public function getSlogan() {
        return 'SyncAccount Your Brand Sync and Sharing Cloud';
   }

   public function getLongFooter() {
        return 'SyncAccount Your Brand - Online File Synchronization and Sharing';
   }

   public function buildDocLinkToKey($key) {
        return 'http://www.syncaccount.com/cloud/' . $key;
   }

   public function getBackgroundColor() {
        return '#ffffff';
   }

}

?>