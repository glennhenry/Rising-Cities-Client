package net.bigpoint.cityrama.model.storage.vo
{
   import net.bigpoint.cityrama.model.good.vo.GoodObjectVo;
   import net.bigpoint.cityrama.model.improvement.ImprovementLayerProxy;
   import net.bigpoint.cityrama.model.improvement.vo.InventoryImprovementVo;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPlayfieldItemDTO;
   import net.bigpoint.cityrama.view.common.components.vo.BriskDynaVo;
   import net.bigpoint.util.LocaUtils;
   
   public class StorageObjectVo
   {
      
      private var _goodObjectVo:GoodObjectVo;
      
      private var _inventoryImprovementVo:InventoryImprovementVo;
      
      private var _eventGfxId:Number;
      
      private var _eventLocaleId:String;
      
      public function StorageObjectVo()
      {
         super();
      }
      
      public function showEmptySlot() : Boolean
      {
         return !this._goodObjectVo && !this._inventoryImprovementVo;
      }
      
      public function showBadge() : Boolean
      {
         return this._inventoryImprovementVo != null;
      }
      
      public function showPlus() : Boolean
      {
         if(this._goodObjectVo)
         {
            return this._goodObjectVo.config.isSpecialGood && !this._goodObjectVo.config.isMedal && !this._goodObjectVo.config.isEventGood;
         }
         return false;
      }
      
      public function get currentStock() : int
      {
         if(this._goodObjectVo)
         {
            return this._goodObjectVo.playerStock;
         }
         if(this._inventoryImprovementVo)
         {
            return this._inventoryImprovementVo.stockAmount;
         }
         return 0;
      }
      
      public function get imageAlpha() : Number
      {
         if(this._goodObjectVo)
         {
            if(this._goodObjectVo.playerStock < 1)
            {
               if(this._goodObjectVo.config.isSpecialGood && !this._goodObjectVo.config.isEventGood)
               {
                  return 1;
               }
               return 0.3;
            }
         }
         else if(this._inventoryImprovementVo)
         {
            return 1;
         }
         return 1;
      }
      
      public function get imageData() : BriskDynaVo
      {
         var _loc1_:* = null;
         var _loc2_:* = null;
         var _loc3_:String = null;
         if(this._goodObjectVo)
         {
            if(this._goodObjectVo.config.isEventGood)
            {
               _loc3_ = this._eventGfxId.toString();
               _loc1_ = this._eventGfxId + "_gui_resources_icons";
            }
            else
            {
               _loc3_ = null;
               _loc1_ = "gui_resources_icons";
            }
            _loc2_ = "ressource_" + this._goodObjectVo.gfxId + "_medium";
            return new BriskDynaVo(_loc1_,_loc2_,_loc3_);
         }
         if(this._inventoryImprovementVo)
         {
            return ImprovementLayerProxy.improvementGfx(this._inventoryImprovementVo.improvementVo.config);
         }
         return null;
      }
      
      public function getBackgroundPrintByIndex(param1:int) : BriskDynaVo
      {
         var _loc2_:String = null;
         var _loc3_:String = null;
         if(this._goodObjectVo)
         {
            _loc2_ = "gui_popups_storagePopup";
            _loc3_ = "ressource_cardboard1_small";
            if(param1 > 1)
            {
               if(param1 % 3 == 0)
               {
                  _loc3_ = "ressource_cardboard3_small";
               }
               else if(param1 % 2 == 0)
               {
                  _loc3_ = "ressource_cardboard2_small";
               }
            }
            if(this._goodObjectVo.config.isSpecialGood)
            {
               _loc3_ = "specialgood_cardBoard_small";
            }
            if(this._goodObjectVo.config.isEventGood)
            {
               _loc3_ = "eventgood_cardBoard_small";
            }
            return new BriskDynaVo(_loc2_,_loc3_);
         }
         if(this._inventoryImprovementVo)
         {
            return ImprovementLayerProxy.improvementBackground(this._inventoryImprovementVo.improvementVo.config.quality);
         }
         return null;
      }
      
      public function get backgroundTooltip() : String
      {
         var _loc1_:String = null;
         var _loc2_:String = null;
         var _loc3_:String = null;
         var _loc4_:Vector.<String> = null;
         var _loc5_:String = null;
         var _loc6_:ConfigPlayfieldItemDTO = null;
         var _loc7_:String = null;
         var _loc8_:Vector.<String> = null;
         var _loc9_:String = null;
         var _loc10_:ConfigPlayfieldItemDTO = null;
         var _loc11_:String = null;
         if(this._goodObjectVo)
         {
            if(this._goodObjectVo.config.isKey)
            {
               return LocaUtils.getString("rcl.tooltips.storageBook","rcl.tooltips.storageBook.residentChangePermit");
            }
            if(this._goodObjectVo.config.isEventGood)
            {
               return LocaUtils.getString("rcl.citysquarequests." + this._eventLocaleId,"rcl.citysquarequests." + this._eventLocaleId + ".goods.tooltip." + this._goodObjectVo.localeId);
            }
            _loc1_ = LocaUtils.getString("rcl.goods.goodname","rcl.goods.goodname." + this._goodObjectVo.localeId);
            _loc2_ = "";
            _loc3_ = "";
            if(this._goodObjectVo.producer.length > 0)
            {
               _loc4_ = new Vector.<String>();
               for each(_loc6_ in this._goodObjectVo.producer)
               {
                  _loc5_ = LocaUtils.getString("rcl.playfielditems.name","rcl.playfielditems.name." + _loc6_.localeId);
                  if(_loc4_.indexOf(_loc5_) == -1)
                  {
                     _loc4_.push(_loc5_);
                  }
               }
               for each(_loc7_ in _loc4_)
               {
                  if(_loc2_ == "")
                  {
                     _loc2_ = _loc7_;
                  }
                  else
                  {
                     _loc2_ = _loc2_ + ", " + _loc7_;
                  }
               }
            }
            else
            {
               _loc2_ = " - ";
            }
            if(this._goodObjectVo.consumer.length > 0)
            {
               _loc8_ = new Vector.<String>();
               for each(_loc10_ in this._goodObjectVo.consumer)
               {
                  _loc9_ = LocaUtils.getString("rcl.playfielditems.name","rcl.playfielditems.name." + _loc10_.localeId);
                  if(_loc8_.indexOf(_loc9_) == -1)
                  {
                     _loc8_.push(_loc9_);
                  }
               }
               for each(_loc11_ in _loc8_)
               {
                  if(_loc3_ == "")
                  {
                     _loc3_ = _loc11_;
                  }
                  else
                  {
                     _loc3_ = _loc3_ + ", " + _loc11_;
                  }
               }
            }
            else
            {
               _loc3_ = " - ";
            }
            if(this.goodObjectVo.config.isConstructionGood)
            {
               return LocaUtils.getString("rcl.tooltips.storageBook","rcl.tooltips.storageBook.detailInfo.constructionGood",[_loc1_,_loc2_]);
            }
            if(_loc2_ == " - " && _loc3_ == " - ")
            {
               return LocaUtils.getString("rcl.tooltips.storageBook","rcl.tooltips.storageBook.detailInfo." + this._goodObjectVo.localeId);
            }
            return LocaUtils.getString("rcl.tooltips.storageBook","rcl.tooltips.storageBook.detailInfo",[_loc1_,_loc2_,_loc3_]);
         }
         return "";
      }
      
      public function badgeData() : BriskDynaVo
      {
         if(this._inventoryImprovementVo)
         {
            return ImprovementLayerProxy.improvementQualityBadge(this._inventoryImprovementVo.improvementVo.config.quality);
         }
         return null;
      }
      
      public function get configId() : Number
      {
         if(this._goodObjectVo)
         {
            return this._goodObjectVo.config.id;
         }
         if(this._inventoryImprovementVo)
         {
            return this._inventoryImprovementVo.improvementVo.config.id;
         }
         return 0;
      }
      
      public function get goodObjectVo() : GoodObjectVo
      {
         return this._goodObjectVo;
      }
      
      public function set goodObjectVo(param1:GoodObjectVo) : void
      {
         this._goodObjectVo = param1;
      }
      
      public function set inventoryImprovementVo(param1:InventoryImprovementVo) : void
      {
         this._inventoryImprovementVo = param1;
      }
      
      public function set eventGfxId(param1:Number) : void
      {
         this._eventGfxId = param1;
      }
      
      public function set eventLocaleId(param1:String) : void
      {
         this._eventLocaleId = param1;
      }
   }
}

