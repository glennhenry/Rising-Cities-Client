package net.bigpoint.cityrama.model.LocalStorage.vo
{
   public class LocalUserDataVo
   {
      
      private var _viewedQuests:Vector.<Number>;
      
      private var _viewedPlayfieldItemConfigIds:Vector.<Number>;
      
      private var _viewedFriendListUserIDs:Vector.<Number>;
      
      private var _viewedNewsscreens:Vector.<LocalStorageNewsscreenVO>;
      
      private var _seenFeaturedEvents:Vector.<String>;
      
      private var _showEmergencyZoneLayer:Boolean = true;
      
      private var _lastViewedHeatMap:String = "";
      
      private var _tvCollapsed:Boolean;
      
      private var _inventoryMinimised:Boolean;
      
      private var _lastTimeUpsellWasShown:Number = 0;
      
      private var _lastTimeBonusDayWasShown:Number = 0;
      
      public function LocalUserDataVo(param1:Object = null)
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Object = null;
         var _loc6_:String = null;
         super();
         this._viewedQuests = new Vector.<Number>();
         this._viewedPlayfieldItemConfigIds = new Vector.<Number>();
         if(this._viewedFriendListUserIDs == null)
         {
            this._viewedFriendListUserIDs = new Vector.<Number>();
         }
         if(this._viewedNewsscreens == null)
         {
            this._viewedNewsscreens = new Vector.<LocalStorageNewsscreenVO>();
         }
         if(!this._seenFeaturedEvents)
         {
            this._seenFeaturedEvents = new Vector.<String>();
         }
         if(param1 != null)
         {
            if(param1.viewedQuests != null)
            {
               for each(_loc2_ in param1.viewedQuests)
               {
                  this._viewedQuests.push(_loc2_);
               }
            }
            if(param1.viewedPlayfieldItemConfigIds != null)
            {
               for each(_loc3_ in param1.viewedPlayfieldItemConfigIds)
               {
                  this._viewedPlayfieldItemConfigIds.push(_loc3_);
               }
            }
            if(param1.viewedFriendListUserIDs != null)
            {
               for each(_loc4_ in param1.viewedFriendListUserIDs)
               {
                  this._viewedFriendListUserIDs.push(_loc4_);
               }
            }
            if(param1.viewedNewsscreens != null)
            {
               for each(_loc5_ in param1.viewedNewsscreens)
               {
                  this._viewedNewsscreens.push(new LocalStorageNewsscreenVO(_loc5_));
               }
            }
            if(param1.seenFeaturedEvents != null)
            {
               for each(_loc6_ in param1.seenFeaturedEvents)
               {
                  this._seenFeaturedEvents.push(_loc6_);
               }
            }
            if(param1.showEmergencyZoneLayer != null)
            {
               this._showEmergencyZoneLayer = param1.showEmergencyZoneLayer;
            }
            if(param1.lastViewedHeatMap != null)
            {
               this._lastViewedHeatMap = param1.lastViewedHeatMap;
            }
            if(param1.tvCollapsed != null)
            {
               this._tvCollapsed = param1.tvCollapsed;
            }
            if(param1.inventoryMinimised != null)
            {
               this._inventoryMinimised = param1.inventoryMinimised;
            }
            if(param1.lastTimeUpsellWasShown != null)
            {
               this._lastTimeUpsellWasShown = param1.lastTimeUpsellWasShown;
               if(isNaN(this._lastTimeUpsellWasShown))
               {
                  this._lastTimeUpsellWasShown = 0;
               }
            }
            if(param1.lastTimeBonusDayWasShown != null)
            {
               this._lastTimeBonusDayWasShown = param1.lastTimeBonusDayWasShown;
               if(isNaN(this._lastTimeBonusDayWasShown))
               {
                  this._lastTimeBonusDayWasShown = 0;
               }
            }
         }
      }
      
      public function get viewedQuests() : Vector.<Number>
      {
         return this._viewedQuests;
      }
      
      public function set viewedQuests(param1:Vector.<Number>) : void
      {
         this._viewedQuests = param1;
      }
      
      public function get viewedPlayfieldItemConfigIds() : Vector.<Number>
      {
         return this._viewedPlayfieldItemConfigIds;
      }
      
      public function set viewedPlayfieldItemConfigIds(param1:Vector.<Number>) : void
      {
         this._viewedPlayfieldItemConfigIds = param1;
      }
      
      public function get viewedFriendListUserIDs() : Vector.<Number>
      {
         return this._viewedFriendListUserIDs;
      }
      
      public function set viewedFriendListUserIDs(param1:Vector.<Number>) : void
      {
         this._viewedFriendListUserIDs = param1;
      }
      
      public function get viewedNewsscreens() : Vector.<LocalStorageNewsscreenVO>
      {
         return this._viewedNewsscreens;
      }
      
      public function set viewedNewsscreens(param1:Vector.<LocalStorageNewsscreenVO>) : void
      {
         this._viewedNewsscreens = param1;
      }
      
      public function get showEmergencyZoneLayer() : Boolean
      {
         return this._showEmergencyZoneLayer;
      }
      
      public function set showEmergencyZoneLayer(param1:Boolean) : void
      {
         this._showEmergencyZoneLayer = param1;
      }
      
      public function get lastViewedHeatMap() : String
      {
         return this._lastViewedHeatMap;
      }
      
      public function set lastViewedHeatMap(param1:String) : void
      {
         this._lastViewedHeatMap = param1;
      }
      
      public function get tvCollapsed() : Boolean
      {
         return this._tvCollapsed;
      }
      
      public function set tvCollapsed(param1:Boolean) : void
      {
         this._tvCollapsed = param1;
      }
      
      public function get inventoryMinimised() : Boolean
      {
         return this._inventoryMinimised;
      }
      
      public function set inventoryMinimised(param1:Boolean) : void
      {
         this._inventoryMinimised = param1;
      }
      
      public function get seenFeaturedEvents() : Vector.<String>
      {
         return this._seenFeaturedEvents;
      }
      
      public function set seenFeaturedEvents(param1:Vector.<String>) : void
      {
         this._seenFeaturedEvents = param1;
      }
      
      public function get lastTimeUpsellWasShown() : Number
      {
         return this._lastTimeUpsellWasShown;
      }
      
      public function set lastTimeUpsellWasShown(param1:Number) : void
      {
         this._lastTimeUpsellWasShown = param1;
      }
      
      public function get lastTimeBonusDayWasShown() : Number
      {
         return this._lastTimeBonusDayWasShown;
      }
      
      public function set lastTimeBonusDayWasShown(param1:Number) : void
      {
         this._lastTimeBonusDayWasShown = param1;
      }
   }
}

