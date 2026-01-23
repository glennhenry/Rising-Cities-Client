package net.bigpoint.cityrama.model.optionsMenu
{
   public class OptionsGlobalVariables
   {
      
      private static var instance:OptionsGlobalVariables;
      
      public static const NAME:String = "OptionsGlobalVariables";
      
      private var _highQuality:Boolean = true;
      
      private var _showFloater:Boolean = true;
      
      private var _showDropIcons:Boolean = true;
      
      private var _normalCitizenAmount:Boolean = true;
      
      private var _showRCVerification:Boolean = false;
      
      private var _fasterNotification:Boolean = false;
      
      private var _fullscreenActive:Boolean = false;
      
      private var _soundActive:Boolean = false;
      
      private var _viewedPlayfieldItemConfigIds:Vector.<Number>;
      
      private var _viewedQuest:Vector.<Number>;
      
      public function OptionsGlobalVariables()
      {
         super();
      }
      
      public static function getInstance() : OptionsGlobalVariables
      {
         if(instance == null)
         {
            instance = new OptionsGlobalVariables();
         }
         return instance;
      }
      
      public function get highQuality() : Boolean
      {
         return this._highQuality;
      }
      
      public function set highQuality(param1:Boolean) : void
      {
         this._highQuality = param1;
      }
      
      public function get showDropIcons() : Boolean
      {
         return this._showDropIcons;
      }
      
      public function set showDropIcons(param1:Boolean) : void
      {
         this._showDropIcons = param1;
      }
      
      public function get showFloater() : Boolean
      {
         return this._showFloater;
      }
      
      public function set showFloater(param1:Boolean) : void
      {
         this._showFloater = param1;
      }
      
      public function get normalCitizenAmount() : Boolean
      {
         return this._normalCitizenAmount;
      }
      
      public function set normalCitizenAmount(param1:Boolean) : void
      {
         this._normalCitizenAmount = param1;
      }
      
      public function get showRCVerification() : Boolean
      {
         return this._showRCVerification;
      }
      
      public function set showRCVerification(param1:Boolean) : void
      {
         this._showRCVerification = param1;
      }
      
      public function get fasterNotification() : Boolean
      {
         return this._fasterNotification;
      }
      
      public function set fasterNotification(param1:Boolean) : void
      {
         this._fasterNotification = param1;
      }
      
      public function get fullscreenActive() : Boolean
      {
         return this._fullscreenActive;
      }
      
      public function set fullscreenActive(param1:Boolean) : void
      {
         this._fullscreenActive = param1;
      }
      
      public function get soundActive() : Boolean
      {
         return this._soundActive;
      }
      
      public function set soundActive(param1:Boolean) : void
      {
         this._soundActive = param1;
      }
      
      public function get viewedPlayfieldItemConfigIds() : Vector.<Number>
      {
         return this._viewedPlayfieldItemConfigIds;
      }
      
      public function set viewedPlayfieldItemConfigIds(param1:Vector.<Number>) : void
      {
         this._viewedPlayfieldItemConfigIds = param1;
      }
      
      public function get viewedQuests() : Vector.<Number>
      {
         return this._viewedQuest;
      }
      
      public function set viewedQuests(param1:Vector.<Number>) : void
      {
         this._viewedQuest = param1;
      }
   }
}

