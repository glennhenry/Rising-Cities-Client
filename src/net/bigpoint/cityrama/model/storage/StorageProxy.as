package net.bigpoint.cityrama.model.storage
{
   import mx.collections.ArrayCollection;
   import net.bigpoint.cityrama.constants.ServerImprovementConstants;
   import net.bigpoint.cityrama.constants.ServerTagConstants;
   import net.bigpoint.cityrama.model.FeatureProxy;
   import net.bigpoint.cityrama.model.events.EventProxy;
   import net.bigpoint.cityrama.model.good.vo.GoodObjectVo;
   import net.bigpoint.cityrama.model.improvement.vo.InventoryImprovementVo;
   import net.bigpoint.cityrama.model.player.PlayerGoodsStockProxy;
   import net.bigpoint.cityrama.model.player.PlayerResourceProxy;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigTagDTO;
   import net.bigpoint.cityrama.model.storage.vo.StorageObjectVo;
   import org.puremvc.as3.patterns.proxy.Proxy;
   
   public class StorageProxy extends Proxy
   {
      
      public static const NAME:String = "StorageProxy";
      
      private var _stockProxy:PlayerGoodsStockProxy;
      
      private var _eventProxy:EventProxy;
      
      private var _featureProxy:FeatureProxy;
      
      private var _resourceProxy:PlayerResourceProxy;
      
      public function StorageProxy(param1:String, param2:Object = null)
      {
         super(param1,param2);
      }
      
      override public function onRegister() : void
      {
         super.onRegister();
         this._resourceProxy = facade.retrieveProxy(PlayerResourceProxy.NAME) as PlayerResourceProxy;
         this._stockProxy = facade.retrieveProxy(PlayerGoodsStockProxy.NAME) as PlayerGoodsStockProxy;
         this._eventProxy = super.facade.retrieveProxy(EventProxy.NAME) as EventProxy;
         this._featureProxy = facade.retrieveProxy(FeatureProxy.NAME) as FeatureProxy;
      }
      
      public function getStorageData(param1:String) : ArrayCollection
      {
         var _loc4_:GoodObjectVo = null;
         var _loc5_:Array = null;
         var _loc6_:int = 0;
         var _loc7_:GoodObjectVo = null;
         var _loc8_:StorageObjectVo = null;
         var _loc11_:Object = null;
         var _loc12_:Number = NaN;
         var _loc13_:InventoryImprovementVo = null;
         var _loc2_:ArrayCollection = new ArrayCollection();
         var _loc3_:Vector.<GoodObjectVo> = new Vector.<GoodObjectVo>();
         for each(_loc4_ in this._stockProxy.getAllGoodsByTag(param1))
         {
            if(this.addGoodToCollection(_loc4_))
            {
               _loc3_.push(_loc4_);
            }
         }
         _loc5_ = [];
         for each(_loc7_ in _loc3_)
         {
            _loc6_ = _loc7_.config.userLevelRequired;
            if(_loc7_.config.isEventGood)
            {
               for each(_loc12_ in this._eventProxy.currentListOfAvailableEventQuestGoodIds)
               {
                  if(_loc12_ == _loc7_.config.id)
                  {
                     _loc6_ = -99;
                     _loc5_.push({
                        "obj":_loc7_,
                        "level":_loc6_,
                        "isMedal":_loc7_.config.isMedal,
                        "medalSortOrder":_loc7_.gfxId
                     });
                  }
               }
            }
            else
            {
               _loc5_.push({
                  "obj":_loc7_,
                  "level":_loc6_,
                  "isMedal":_loc7_.config.isMedal,
                  "medalSortOrder":_loc7_.gfxId
               });
            }
         }
         _loc5_.sort(this.sortByLevelAndMedal);
         if(param1 == ServerImprovementConstants.IMPROVEMENT)
         {
            for each(_loc13_ in this._stockProxy.currentImprovementStock())
            {
               _loc5_.push(_loc13_);
            }
            _loc5_.sort(this.sortImprovements);
         }
         var _loc9_:Number = this._eventProxy.currentRunningEventQuestGfxId;
         var _loc10_:String = this._eventProxy.currentRunningEventQuestLocaleId.toString();
         for each(_loc11_ in _loc5_)
         {
            _loc8_ = new StorageObjectVo();
            if(_loc11_ is InventoryImprovementVo)
            {
               _loc8_.inventoryImprovementVo = _loc11_ as InventoryImprovementVo;
            }
            else if(_loc11_.obj)
            {
               _loc8_.goodObjectVo = _loc11_.obj as GoodObjectVo;
               _loc8_.eventGfxId = _loc9_;
               _loc8_.eventLocaleId = _loc10_;
            }
            _loc8_.eventGfxId = _loc9_;
            _loc8_.eventLocaleId = _loc10_;
            _loc2_.addItem(_loc8_);
         }
         while(_loc2_.length % 10 != 0 || _loc2_.length == 0)
         {
            _loc8_ = new StorageObjectVo();
            _loc2_.addItem(_loc8_);
         }
         return _loc2_;
      }
      
      private function addGoodToCollection(param1:GoodObjectVo) : Boolean
      {
         if(!param1.config.isKey)
         {
            return this.showGoodIfNotOwned(param1);
         }
         if(this._resourceProxy.moreThanOnePopulationTypeEnabled)
         {
            return this.showGoodIfNotOwned(param1);
         }
         return false;
      }
      
      private function showGoodIfNotOwned(param1:GoodObjectVo) : Boolean
      {
         var _loc2_:ConfigTagDTO = null;
         if(param1.playerStock <= 0)
         {
            for each(_loc2_ in param1.config.tagConfigs)
            {
               if(_loc2_.tagName == ServerTagConstants.CLIENT_HIDE_GOOD)
               {
                  return false;
               }
            }
         }
         return true;
      }
      
      private function sortByLevelAndMedal(param1:Object, param2:Object) : int
      {
         if(param1.level > param2.level)
         {
            return 1;
         }
         if(param1.level < param2.level)
         {
            return -1;
         }
         if(Boolean(param1.isMedal) && !param2.isMedal)
         {
            return 1;
         }
         if(Boolean(param2.isMedal) && !param1.isMedal)
         {
            return -1;
         }
         if(Boolean(param2.isMedal) && Boolean(param1.isMedal))
         {
            if(param2.medalSortOrder < param2.medalSortOrder)
            {
               return 1;
            }
            if(param2.medalSortOrder > param2.medalSortOrder)
            {
               return -1;
            }
         }
         return 0;
      }
      
      private function sortImprovements(param1:Object, param2:Object) : int
      {
         if(param1.improvementVo.qualityAsInt > param2.improvementVo.qualityAsInt)
         {
            return -1;
         }
         if(param1.improvementVo.qualityAsInt < param2.improvementVo.qualityAsInt)
         {
            return 1;
         }
         return 0;
      }
   }
}

