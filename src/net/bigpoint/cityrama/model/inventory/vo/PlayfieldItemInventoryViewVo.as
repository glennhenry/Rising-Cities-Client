package net.bigpoint.cityrama.model.inventory.vo
{
   import flash.utils.Dictionary;
   import mx.collections.ArrayCollection;
   import mx.collections.IList;
   import net.bigpoint.cityrama.constants.ServerTagConstants;
   import net.bigpoint.cityrama.model.inventory.PlayfieldItemInventoryViewProxy;
   import net.bigpoint.util.LocaUtils;
   
   public class PlayfieldItemInventoryViewVo
   {
      
      public static const VALID_SORT_TYPES:Vector.<String> = new <String>[ServerTagConstants.RESIDENTIAL,ServerTagConstants.SHOP,ServerTagConstants.DECORATION,PlayfieldItemInventoryViewProxy.CATEGORY_EMERGENCY_INVENTORY];
      
      private var _bags:Vector.<PlayfieldItemInventoryBagVo>;
      
      private var _realCurrencyStock:Number = 0;
      
      private var _emergencyRunning:Boolean;
      
      private var _sortedDict:Dictionary;
      
      private var _minimized:Boolean;
      
      private var _preselectedIndex:int = -1;
      
      public function PlayfieldItemInventoryViewVo()
      {
         super();
      }
      
      public function set minimized(param1:Boolean) : void
      {
         this._minimized = param1;
      }
      
      public function set bags(param1:Vector.<PlayfieldItemInventoryBagVo>) : void
      {
         this._bags = param1;
         this._sortedDict = new Dictionary();
      }
      
      public function set realCurrencyStock(param1:Number) : void
      {
         this._realCurrencyStock = param1;
      }
      
      public function getSortedItemList(param1:String) : IList
      {
         if(VALID_SORT_TYPES.indexOf(param1) == -1)
         {
            throw new ArgumentError("PlayfieldItemInventoryViewVo::Sort type not valid");
         }
         if(!this._sortedDict[param1])
         {
            var _loc2_:PlayfieldItemInventoryBagVo = this.getRelevantBag(param1);
         }
         return this._sortedDict[param1];
      }
      
      public function getCategoryAmountLabel(param1:String) : String
      {
         if(VALID_SORT_TYPES.indexOf(param1) == -1)
         {
            throw new ArgumentError("PlayfieldItemInventoryViewVo::Sort type not valid");
         }
         var _loc2_:PlayfieldItemInventoryBagVo = this.getRelevantBag(param1);
         if(_loc2_)
         {
            return LocaUtils.getThousendSeperatedNumber(_loc2_.inventoryItems.length);
         }
         return "";
      }
      
      private function getRelevantBag(param1:String) : PlayfieldItemInventoryBagVo
      {
         var _loc2_:PlayfieldItemInventoryBagVo = null;
         for each(_loc2_ in this._bags)
         {
            if(_loc2_.category == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function get realCurrencyStock() : Number
      {
         return this._realCurrencyStock;
      }
      
      public function get allListItems() : Vector.<PlayfieldItemInventoryListItemVo>
      {
         return this.allListItemsAsVector;
      }
      
      public function get minimized() : Boolean
      {
         return this._minimized;
      }
      
      private function get allListItemsAsVector() : Vector.<PlayfieldItemInventoryListItemVo>
      {
         var _loc3_:ArrayCollection = null;
         var _loc4_:PlayfieldItemInventoryListItemVo = null;
         var _loc1_:Vector.<PlayfieldItemInventoryListItemVo> = new Vector.<PlayfieldItemInventoryListItemVo>();
         var _loc2_:Vector.<ArrayCollection> = new Vector.<ArrayCollection>();
         _loc2_.push(this.getSortedItemList(ServerTagConstants.RESIDENTIAL));
         _loc2_.push(this.getSortedItemList(ServerTagConstants.SHOP));
         _loc2_.push(this.getSortedItemList(ServerTagConstants.DECORATION));
         _loc2_.push(this.getSortedItemList(PlayfieldItemInventoryViewProxy.CATEGORY_EMERGENCY_INVENTORY));
         for each(_loc3_ in _loc2_)
         {
            for each(_loc4_ in _loc3_)
            {
               _loc1_.push(_loc4_);
            }
         }
         return _loc1_;
      }
      
      public function get preselectedIndex() : int
      {
         return this._preselectedIndex;
      }
      
      public function set preselectedIndex(param1:int) : void
      {
         this._preselectedIndex = param1;
      }
      
      public function getFirstUnoccupiedSlotIndexByCat(param1:String) : int
      {
         var _loc2_:PlayfieldItemInventoryBagVo = this.getRelevantBag(param1);
         if(_loc2_)
         {
            return _loc2_.inventoryItems.length;
         }
         return -1;
      }
      
      public function set emergencyRunning(param1:Boolean) : void
      {
         this._emergencyRunning = param1;
      }
   }
}

