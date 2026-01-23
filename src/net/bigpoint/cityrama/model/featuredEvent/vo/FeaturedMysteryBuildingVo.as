package net.bigpoint.cityrama.model.featuredEvent.vo
{
   import mx.collections.ArrayCollection;
   import net.bigpoint.cityrama.constants.ServerTagConstants;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPlayfieldItemDTO;
   import net.bigpoint.cityrama.view.common.components.vo.BriskDynaVo;
   import net.bigpoint.cityrama.view.common.components.vo.TimerBarComponentVo;
   
   public class FeaturedMysteryBuildingVo
   {
      
      private var _mysteryConfigPlayfieldItem:ConfigPlayfieldItemDTO;
      
      private var _permissionAmount:uint = 0;
      
      private var _rcStock:Number = 0;
      
      private var _availabilityTimer:TimerBarComponentVo;
      
      private var _possibleOutcome:Vector.<ConfigPlayfieldItemDTO>;
      
      public function FeaturedMysteryBuildingVo()
      {
         super();
      }
      
      private static function sortBuildings(param1:ConfigPlayfieldItemDTO, param2:ConfigPlayfieldItemDTO) : int
      {
         if(isBuilding(param1) && !isBuilding(param2))
         {
            return -1;
         }
         if(!isBuilding(param1) && isBuilding(param2))
         {
            return 1;
         }
         return 0;
      }
      
      private static function isBuilding(param1:ConfigPlayfieldItemDTO) : Boolean
      {
         return param1.tags.indexOf(ServerTagConstants.BUILDING) != -1;
      }
      
      public function get mysteryConfigPlayfieldItem() : ConfigPlayfieldItemDTO
      {
         return this._mysteryConfigPlayfieldItem;
      }
      
      public function set mysteryConfigPlayfieldItem(param1:ConfigPlayfieldItemDTO) : void
      {
         this._mysteryConfigPlayfieldItem = param1;
      }
      
      public function get permissionAmount() : uint
      {
         return this._permissionAmount;
      }
      
      public function set permissionAmount(param1:uint) : void
      {
         this._permissionAmount = param1;
      }
      
      public function get rcStock() : Number
      {
         return this._rcStock;
      }
      
      public function set rcStock(param1:Number) : void
      {
         this._rcStock = param1;
      }
      
      public function get availabilityTimer() : TimerBarComponentVo
      {
         return this._availabilityTimer;
      }
      
      public function set availabilityTimer(param1:TimerBarComponentVo) : void
      {
         this._availabilityTimer = param1;
      }
      
      public function get seasonGfx() : BriskDynaVo
      {
         if(this.mysteryConfigPlayfieldItem)
         {
            return new BriskDynaVo("gui_popups_architect_featured","mystery_season_" + this.mysteryConfigPlayfieldItem.gfxId);
         }
         return null;
      }
      
      public function set possibleOutcome(param1:Vector.<ConfigPlayfieldItemDTO>) : void
      {
         this._possibleOutcome = param1;
         this._possibleOutcome.sort(sortBuildings);
      }
      
      public function get permissionPrice() : Number
      {
         if(this.mysteryConfigPlayfieldItem)
         {
            return Math.abs(this.mysteryConfigPlayfieldItem.baseValueForRCConstructionCost);
         }
         return 0;
      }
      
      public function get possibleResult() : ArrayCollection
      {
         var _loc2_:ConfigPlayfieldItemDTO = null;
         var _loc1_:ArrayCollection = new ArrayCollection();
         if(this._possibleOutcome)
         {
            for each(_loc2_ in this._possibleOutcome)
            {
               _loc1_.addItem(_loc2_);
            }
         }
         return _loc1_;
      }
   }
}

