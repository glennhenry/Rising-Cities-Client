package net.bigpoint.cityrama.model.server.vo.server
{
   public class ClientUIDataDTO
   {
      
      private var _lowTraffic:Boolean = false;
      
      private var _lowGraphicsQuality:Boolean = false;
      
      private var _increasingTips:Boolean = true;
      
      private var _increasingSimbols:Boolean = true;
      
      private var _fasterNotification:Boolean = false;
      
      private var _fullscreenActive:Boolean = false;
      
      private var _soundActive:Boolean = true;
      
      private var _rcVerification:Boolean = false;
      
      private var _viewedPlayfieldItemConfigIds:Vector.<Number>;
      
      private var _viewedQuests:Vector.<Number>;
      
      public function ClientUIDataDTO(param1:Object)
      {
         var _loc2_:uint = 0;
         var _loc3_:uint = 0;
         super();
         if(param1.lowTrf)
         {
            this._lowTraffic = param1.lowTrf;
         }
         if(param1.lowGq)
         {
            this._lowGraphicsQuality = param1.lowGq;
         }
         if(param1.hasOwnProperty("hTips"))
         {
            this._increasingTips = param1.hTips;
         }
         if(param1.hasOwnProperty("hFloater"))
         {
            this._increasingSimbols = param1.hFloater;
         }
         if(param1.fastIlayer)
         {
            this._fasterNotification = param1.fastIlayer;
         }
         if(param1.fsOn)
         {
            this._fullscreenActive = param1.fsOn;
         }
         if(param1.hasOwnProperty("soundOn"))
         {
            this._soundActive = param1.soundOn;
         }
         if(param1.rc)
         {
            this._rcVerification = param1.rc;
         }
         if(param1.vpi)
         {
            this._viewedPlayfieldItemConfigIds = new Vector.<Number>();
            _loc2_ = 0;
            while(_loc2_ < (param1.vpi as Array).length)
            {
               this._viewedPlayfieldItemConfigIds.push(param1.vpi[_loc2_]);
               _loc2_++;
            }
         }
         if(param1.vq)
         {
            this._viewedQuests = new Vector.<Number>();
            _loc3_ = 0;
            while(_loc3_ < (param1.vq as Array).length)
            {
               this._viewedQuests.push(param1.vq[_loc3_]);
               _loc3_++;
            }
         }
      }
      
      public function get lowTraffic() : Boolean
      {
         return this._lowTraffic;
      }
      
      public function set lowTraffic(param1:Boolean) : void
      {
         this._lowTraffic = param1;
      }
      
      public function get lowGraphicsQuality() : Boolean
      {
         return this._lowGraphicsQuality;
      }
      
      public function set lowGraphicsQuality(param1:Boolean) : void
      {
         this._lowGraphicsQuality = param1;
      }
      
      public function get increasingTips() : Boolean
      {
         return this._increasingTips;
      }
      
      public function set increasingTips(param1:Boolean) : void
      {
         this._increasingTips = param1;
      }
      
      public function get increasingSimbols() : Boolean
      {
         return this._increasingSimbols;
      }
      
      public function set increasingSimbols(param1:Boolean) : void
      {
         this._increasingSimbols = param1;
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
      
      public function get rcVerification() : Boolean
      {
         return this._rcVerification;
      }
      
      public function set rcVerification(param1:Boolean) : void
      {
         this._rcVerification = param1;
      }
      
      public function get viewedPlayfieldItemConfigIds() : Vector.<Number>
      {
         return this._viewedPlayfieldItemConfigIds;
      }
      
      public function set viewedPlayfieldItemConfigIds(param1:Vector.<Number>) : void
      {
         this._viewedPlayfieldItemConfigIds = param1;
      }
      
      public function get viewedQuest() : Vector.<Number>
      {
         return this._viewedQuests;
      }
      
      public function set viewedQuest(param1:Vector.<Number>) : void
      {
         this._viewedQuests = param1;
      }
   }
}

