package net.bigpoint.cityrama.model.inventory
{
   import flash.utils.Dictionary;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.game.GameConfigProxy;
   import net.bigpoint.cityrama.model.inventory.vo.InventoryItemBagVo;
   import net.bigpoint.cityrama.model.inventory.vo.InventoryItemVo;
   import net.bigpoint.cityrama.model.player.PlayerProxy;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigInventoryBagDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigInventoryDTO;
   import net.bigpoint.cityrama.model.server.vo.server.InventoryDTO;
   import net.bigpoint.cityrama.model.server.vo.server.InventoryItemBagDTO;
   import net.bigpoint.cityrama.model.server.vo.server.InventoryItemDTO;
   import org.puremvc.as3.interfaces.IProxy;
   import org.puremvc.as3.patterns.proxy.Proxy;
   
   public class InventoryProxy extends Proxy implements IProxy
   {
      
      public static const NAME:String = "InventoryProxy";
      
      public static const INVENTORY_BAG_TYPE_GOOD:String = "GOOD";
      
      public static const INVENTORY_BAG_TYPE_PERMISSION:String = "PLAYFIELDITEM_PERMISSION";
      
      public static const INVENTORY_BAG_TYPE_IMPROVEMENT:String = "PLAYFIELDITEM_IMPROVEMENT";
      
      public static const INVENTORY_BAG_TYPE_PLAYFIELDITEM:String = "PLAYFIELDITEM";
      
      private var _inventoryBags:Vector.<InventoryItemBagVo>;
      
      private var _inventoryGoods:Dictionary;
      
      private var _inventoryPermissions:Dictionary;
      
      private var _inventoryImprovements:Dictionary;
      
      private var _inventoryPlayfieldItems:Dictionary;
      
      private var _inventoryDataBuilt:Boolean;
      
      private var _plaP:PlayerProxy;
      
      private var _coP:GameConfigProxy;
      
      public function InventoryProxy()
      {
         super(NAME);
      }
      
      private static function getItemBagTypeByDTO(param1:InventoryItemDTO) : String
      {
         if(Boolean(param1.buildingDTO) || Boolean(param1.decorationVo))
         {
            return INVENTORY_BAG_TYPE_PLAYFIELDITEM;
         }
         if(param1.goodDTO)
         {
            return INVENTORY_BAG_TYPE_GOOD;
         }
         if(param1.permissionDTO)
         {
            return INVENTORY_BAG_TYPE_PERMISSION;
         }
         if(param1.improvementDTO)
         {
            return INVENTORY_BAG_TYPE_IMPROVEMENT;
         }
         return "";
      }
      
      public function buildInventoryData() : void
      {
         this.buildInventoryBags();
         this.buildInventoryItems(INVENTORY_BAG_TYPE_GOOD);
         this.buildInventoryItems(INVENTORY_BAG_TYPE_PERMISSION);
         this.buildInventoryItems(INVENTORY_BAG_TYPE_IMPROVEMENT);
         this.buildInventoryItems(INVENTORY_BAG_TYPE_PLAYFIELDITEM);
         if(!this._inventoryDataBuilt)
         {
            sendNotification(ApplicationNotificationConstants.SEND_GOODTOOLTIPS_TO_PHP);
         }
         this._inventoryDataBuilt = true;
      }
      
      public function updateInventoryItem(param1:InventoryItemDTO) : void
      {
         var _loc2_:InventoryItemVo = new InventoryItemVo(param1,getItemBagTypeByDTO(param1));
         this.updateSpecificInventoryItem(_loc2_);
      }
      
      public function updateInventoryBagSlotCount(param1:Number, param2:Number) : void
      {
         var _loc3_:InventoryItemBagVo = this.getInventoryBagByConfigId(param1);
         if(_loc3_)
         {
            _loc3_.dto.slots = param2;
            sendNotification(ApplicationNotificationConstants.INVENTORY_BAGS_CHANGED);
         }
      }
      
      public function get inventoryGoods() : Dictionary
      {
         return this._inventoryGoods;
      }
      
      public function get inventoryPermissions() : Dictionary
      {
         return this._inventoryPermissions;
      }
      
      public function get inventoryImprovements() : Dictionary
      {
         return this._inventoryImprovements;
      }
      
      public function get inventoryPlayfieldItems() : Dictionary
      {
         return this._inventoryPlayfieldItems;
      }
      
      public function getInventoryBagsByType(param1:String) : Vector.<InventoryItemBagVo>
      {
         var _loc3_:InventoryItemBagVo = null;
         var _loc2_:Vector.<InventoryItemBagVo> = new Vector.<InventoryItemBagVo>();
         for each(_loc3_ in this.inventoryBags)
         {
            if(_loc3_.bagType == param1)
            {
               _loc2_.push(_loc3_);
            }
         }
         return _loc2_;
      }
      
      private function buildInventoryBags() : void
      {
         var _loc1_:ConfigInventoryBagDTO = null;
         var _loc2_:InventoryItemBagDTO = null;
         this._inventoryBags = new Vector.<InventoryItemBagVo>();
         for each(_loc2_ in this.inventory.bags)
         {
            _loc1_ = this.getBagConfig(_loc2_.configId);
            if(_loc1_.initialSlots > 0)
            {
               this._inventoryBags.push(new InventoryItemBagVo(_loc2_,_loc1_));
            }
         }
      }
      
      private function buildInventoryItems(param1:String) : void
      {
         var _loc2_:Dictionary = null;
         var _loc5_:InventoryItemVo = null;
         var _loc6_:InventoryItemBagVo = null;
         var _loc7_:InventoryItemVo = null;
         var _loc8_:InventoryItemDTO = null;
         var _loc3_:Vector.<InventoryItemVo> = new Vector.<InventoryItemVo>();
         switch(param1)
         {
            case INVENTORY_BAG_TYPE_GOOD:
               this._inventoryGoods = new Dictionary();
               _loc2_ = this._inventoryGoods;
               break;
            case INVENTORY_BAG_TYPE_IMPROVEMENT:
               this._inventoryImprovements = new Dictionary();
               _loc2_ = this._inventoryImprovements;
               break;
            case INVENTORY_BAG_TYPE_PERMISSION:
               this._inventoryPermissions = new Dictionary();
               _loc2_ = this._inventoryPermissions;
               break;
            case INVENTORY_BAG_TYPE_PLAYFIELDITEM:
               this._inventoryPlayfieldItems = new Dictionary();
               _loc2_ = this._inventoryPlayfieldItems;
         }
         var _loc4_:Vector.<InventoryItemBagVo> = this.getInventoryBagsByType(param1);
         for each(_loc6_ in _loc4_)
         {
            for each(_loc8_ in _loc6_.bagItems)
            {
               _loc5_ = new InventoryItemVo(_loc8_,_loc6_.bagType);
               if(!_loc8_.shouldBeRemoved)
               {
                  _loc2_[_loc5_.itemId] = _loc5_;
               }
               else
               {
                  _loc3_.push(_loc5_);
               }
            }
         }
         for each(_loc7_ in _loc3_)
         {
            this.deleteItemFromModel(_loc7_,param1);
         }
      }
      
      private function get inventoryBags() : Vector.<InventoryItemBagVo>
      {
         return this._inventoryBags;
      }
      
      private function getInventoryBagByConfigId(param1:Number) : InventoryItemBagVo
      {
         var _loc2_:InventoryItemBagVo = null;
         for each(_loc2_ in this.inventoryBags)
         {
            if(_loc2_.config.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      private function get inventory() : InventoryDTO
      {
         return this.playerProxy.player.inventory;
      }
      
      private function getBagConfig(param1:Number) : ConfigInventoryBagDTO
      {
         return this.inventoryConfig.configInventoryBags[param1];
      }
      
      private function get inventoryConfig() : ConfigInventoryDTO
      {
         return this.configProxy.config.inventories[this.inventory.configId];
      }
      
      private function updateSpecificInventoryItem(param1:InventoryItemVo) : void
      {
         var _loc2_:String = null;
         var _loc3_:Object = null;
         var _loc4_:Dictionary = null;
         switch(param1.bagType)
         {
            case INVENTORY_BAG_TYPE_GOOD:
               _loc2_ = ApplicationNotificationConstants.INVENTORY_GOODS_CHANGED;
               _loc4_ = this.inventoryGoods;
               break;
            case INVENTORY_BAG_TYPE_IMPROVEMENT:
               _loc2_ = ApplicationNotificationConstants.INVENTORY_IMPROVEMENTS_CHANGED;
               _loc4_ = this.inventoryImprovements;
               break;
            case INVENTORY_BAG_TYPE_PERMISSION:
               _loc2_ = ApplicationNotificationConstants.INVENTORY_PERMISSIONS_CHANGED;
               _loc3_ = param1.permissionDTO;
               _loc4_ = this.inventoryPermissions;
               break;
            case INVENTORY_BAG_TYPE_PLAYFIELDITEM:
               _loc2_ = ApplicationNotificationConstants.INVENTORY_PLAYFIELDITEMS_CHANGED;
               _loc4_ = this.inventoryPlayfieldItems;
         }
         if(_loc4_)
         {
            if(param1.deleteMe)
            {
               if(_loc4_[param1.itemId])
               {
                  delete _loc4_[param1.itemId];
               }
               this.deleteItemFromModel(param1,param1.bagType);
            }
            else
            {
               _loc4_[param1.itemId] = param1;
               this.updateItemInModel(param1,param1.bagType);
            }
         }
         if(_loc2_)
         {
            sendNotification(_loc2_,_loc3_);
         }
      }
      
      private function deleteItemFromModel(param1:InventoryItemVo, param2:String) : void
      {
         var _loc3_:InventoryItemBagVo = null;
         var _loc4_:InventoryItemDTO = null;
         var _loc5_:int = 0;
         for each(_loc3_ in this.getInventoryBagsByType(param2))
         {
            if(_loc3_.config.id == param1.dto.id)
            {
               for each(_loc4_ in _loc3_.bagItems)
               {
                  if(_loc4_.itemId == param1.itemId)
                  {
                     _loc5_ = int(_loc3_.bagItems.indexOf(_loc4_));
                     if(_loc5_ != -1)
                     {
                        _loc3_.bagItems.splice(_loc5_,1);
                        break;
                     }
                  }
               }
               break;
            }
         }
      }
      
      private function updateItemInModel(param1:InventoryItemVo, param2:String) : void
      {
         var _loc4_:InventoryItemBagVo = null;
         var _loc5_:InventoryItemDTO = null;
         var _loc6_:int = 0;
         var _loc3_:Boolean = false;
         for each(_loc4_ in this.getInventoryBagsByType(param2))
         {
            if(_loc4_.config.id == param1.dto.id)
            {
               for each(_loc5_ in _loc4_.bagItems)
               {
                  if(_loc5_.itemId == param1.itemId)
                  {
                     _loc6_ = int(_loc4_.bagItems.indexOf(_loc5_));
                     if(_loc6_ != -1)
                     {
                        _loc4_.bagItems[_loc6_] = param1.dto;
                        _loc3_ = true;
                        break;
                     }
                  }
               }
               if(!_loc3_)
               {
                  _loc4_.bagItems.push(param1.dto);
               }
               break;
            }
         }
      }
      
      private function get playerProxy() : PlayerProxy
      {
         if(!this._plaP)
         {
            this._plaP = facade.retrieveProxy(PlayerProxy.NAME) as PlayerProxy;
         }
         return this._plaP;
      }
      
      private function get configProxy() : GameConfigProxy
      {
         if(!this._coP)
         {
            this._coP = facade.retrieveProxy(GameConfigProxy.NAME) as GameConfigProxy;
         }
         return this._coP;
      }
   }
}

