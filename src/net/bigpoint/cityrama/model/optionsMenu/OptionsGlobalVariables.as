package net.bigpoint.cityrama.model.optionsMenu
{
   public class OptionsGlobalVariables
   {
      
      public static const NAME:String = "OptionsGlobalVariables";
      
      private static var instance:OptionsGlobalVariables;
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(!(_loc1_ && _loc1_))
      {
         NAME = "OptionsGlobalVariables";
      }
      
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
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc2_)
         {
            super();
         }
      }
      
      public static function getInstance() : OptionsGlobalVariables
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc1_)
         {
            §§push(instance);
            if(_loc1_)
            {
               if(§§pop() == null)
               {
                  if(!_loc2_)
                  {
                     addr0039:
                     instance = new OptionsGlobalVariables();
                  }
               }
               return instance;
            }
         }
         §§goto(addr0039);
      }
      
      public function get highQuality() : Boolean
      {
         return this._highQuality;
      }
      
      public function set highQuality(param1:Boolean) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this._highQuality = param1;
         }
      }
      
      public function get showDropIcons() : Boolean
      {
         return this._showDropIcons;
      }
      
      public function set showDropIcons(param1:Boolean) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && _loc2_))
         {
            this._showDropIcons = param1;
         }
      }
      
      public function get showFloater() : Boolean
      {
         return this._showFloater;
      }
      
      public function set showFloater(param1:Boolean) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(this)))
         {
            this._showFloater = param1;
         }
      }
      
      public function get normalCitizenAmount() : Boolean
      {
         return this._normalCitizenAmount;
      }
      
      public function set normalCitizenAmount(param1:Boolean) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc3_)
         {
            this._normalCitizenAmount = param1;
         }
      }
      
      public function get showRCVerification() : Boolean
      {
         return this._showRCVerification;
      }
      
      public function set showRCVerification(param1:Boolean) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this._showRCVerification = param1;
         }
      }
      
      public function get fasterNotification() : Boolean
      {
         return this._fasterNotification;
      }
      
      public function set fasterNotification(param1:Boolean) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this._fasterNotification = param1;
         }
      }
      
      public function get fullscreenActive() : Boolean
      {
         return this._fullscreenActive;
      }
      
      public function set fullscreenActive(param1:Boolean) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this._fullscreenActive = param1;
         }
      }
      
      public function get soundActive() : Boolean
      {
         return this._soundActive;
      }
      
      public function set soundActive(param1:Boolean) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc3_)
         {
            this._soundActive = param1;
         }
      }
      
      public function get viewedPlayfieldItemConfigIds() : Vector.<Number>
      {
         return this._viewedPlayfieldItemConfigIds;
      }
      
      public function set viewedPlayfieldItemConfigIds(param1:Vector.<Number>) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!_loc2_)
         {
            this._viewedPlayfieldItemConfigIds = param1;
         }
      }
      
      public function get viewedQuests() : Vector.<Number>
      {
         return this._viewedQuest;
      }
      
      public function set viewedQuests(param1:Vector.<Number>) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc2_)
         {
            this._viewedQuest = param1;
         }
      }
   }
}

