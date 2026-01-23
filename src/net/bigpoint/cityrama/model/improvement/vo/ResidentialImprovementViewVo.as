package net.bigpoint.cityrama.model.improvement.vo
{
   import mx.collections.ArrayCollection;
   import mx.resources.ResourceManager;
   import net.bigpoint.cityrama.model.architecturalBook.ArchitecturalBookProxy;
   import net.bigpoint.cityrama.model.detailViews.vo.DropDownAmountListItemVo;
   import net.bigpoint.cityrama.model.field.vo.ResidentialFieldObjectVo;
   import net.bigpoint.cityrama.model.residentialBook.vo.ImprovementSlotComponentVo;
   import net.bigpoint.cityrama.view.common.components.vo.BriskDynaVo;
   import net.bigpoint.cityrama.view.homeImprovement.hipinventory.ui.components.vo.ImprovementInventoryItemRendererVo;
   import net.bigpoint.cityrama.view.homeImprovement.hipinventory.ui.vo.ImprovementInventoryViewVo;
   import net.bigpoint.cityrama.view.residentialBook.ui.components.ResidentialImprovementContentComponent;
   
   public class ResidentialImprovementViewVo
   {
      
      private var _residentialVo:ResidentialFieldObjectVo;
      
      private var _inventoryData:ImprovementInventoryViewVo;
      
      private var _slotData:Vector.<ImprovementSlotComponentVo>;
      
      public function ResidentialImprovementViewVo()
      {
         super();
      }
      
      public function get residentialVo() : ResidentialFieldObjectVo
      {
         return this._residentialVo;
      }
      
      public function set residentialVo(param1:ResidentialFieldObjectVo) : void
      {
         this._residentialVo = param1;
      }
      
      public function getBuildingName(param1:Boolean = false) : String
      {
         if(param1)
         {
            return ResourceManager.getInstance().getString(String("rcl.playfielditems.name"),String("rcl.playfielditems.name." + this.residentialVo.configPlayfieldItemVo.localeId + ".capital"));
         }
         return ResourceManager.getInstance().getString(String("rcl.playfielditems.name"),String("rcl.playfielditems.name." + this.residentialVo.configPlayfieldItemVo.localeId));
      }
      
      public function get buildingGfx() : BriskDynaVo
      {
         var _loc1_:String = ArchitecturalBookProxy.getItemIconLibByConfigPlayfieldItemDTO(this.residentialVo.buildingDTO.config);
         var _loc2_:* = "FieldItem_" + this.residentialVo.configPlayfieldItemVo.gfxId + "_level" + this.residentialVo.currentLevel + "_big";
         return new BriskDynaVo(_loc1_,_loc2_);
      }
      
      public function get sortFilterData() : ArrayCollection
      {
         var _loc1_:ArrayCollection = new ArrayCollection();
         var _loc2_:DropDownAmountListItemVo = new DropDownAmountListItemVo();
         _loc2_.sortType = ImprovementInventoryViewVo.SORT_ALL;
         _loc2_.categoryLabel = ResourceManager.getInstance().getString(String("rcl.booklayer.residentialImprovement"),String("rcl.booklayer.residentialImprovement.filter.all"));
         _loc2_.categoryAmount = this.inventoryData.getAmountByType(ImprovementInventoryViewVo.SORT_ALL);
         _loc1_.addItem(_loc2_);
         _loc2_ = new DropDownAmountListItemVo();
         _loc2_.sortType = ImprovementInventoryViewVo.SORT_COMMON;
         _loc2_.categoryLabel = ResourceManager.getInstance().getString(String("rcl.booklayer.residentialImprovement"),String("rcl.booklayer.residentialImprovement.filter.common"));
         _loc2_.categoryAmount = this.inventoryData.getAmountByType(ImprovementInventoryViewVo.SORT_COMMON);
         _loc1_.addItem(_loc2_);
         _loc2_ = new DropDownAmountListItemVo();
         _loc2_.sortType = ImprovementInventoryViewVo.SORT_RARE;
         _loc2_.categoryLabel = ResourceManager.getInstance().getString(String("rcl.booklayer.residentialImprovement"),String("rcl.booklayer.residentialImprovement.filter.rare"));
         _loc2_.categoryAmount = this.inventoryData.getAmountByType(ImprovementInventoryViewVo.SORT_RARE);
         _loc1_.addItem(_loc2_);
         _loc2_ = new DropDownAmountListItemVo();
         _loc2_.sortType = ImprovementInventoryViewVo.SORT_EPIC;
         _loc2_.categoryLabel = ResourceManager.getInstance().getString(String("rcl.booklayer.residentialImprovement"),String("rcl.booklayer.residentialImprovement.filter.epic"));
         _loc2_.categoryAmount = this.inventoryData.getAmountByType(ImprovementInventoryViewVo.SORT_EPIC);
         _loc1_.addItem(_loc2_);
         _loc2_ = new DropDownAmountListItemVo();
         _loc2_.sortType = ImprovementInventoryViewVo.SORT_LEGENDARY;
         _loc2_.categoryLabel = ResourceManager.getInstance().getString(String("rcl.booklayer.residentialImprovement"),String("rcl.booklayer.residentialImprovement.filter.legendary"));
         _loc2_.categoryAmount = this.inventoryData.getAmountByType(ImprovementInventoryViewVo.SORT_LEGENDARY);
         _loc1_.addItem(_loc2_);
         return _loc1_;
      }
      
      public function get inventoryData() : ImprovementInventoryViewVo
      {
         return this._inventoryData;
      }
      
      public function set inventoryData(param1:ImprovementInventoryViewVo) : void
      {
         this._inventoryData = param1;
      }
      
      public function get slotData() : Vector.<ImprovementSlotComponentVo>
      {
         return this._slotData;
      }
      
      public function set slotData(param1:Vector.<ImprovementSlotComponentVo>) : void
      {
         this._slotData = param1;
         this.slotData.sort(this.sortSlot);
      }
      
      private function getImprovementInventoryItemRendererVo(param1:Number, param2:String = "SORT_ALL") : ImprovementInventoryItemRendererVo
      {
         var _loc3_:ImprovementInventoryItemRendererVo = null;
         for each(_loc3_ in this.inventoryData.getListAsArrayCollectionByType(param2))
         {
            if(_loc3_.improvementVo)
            {
               if(_loc3_.improvementVo.config.id == param1)
               {
                  return _loc3_;
               }
            }
         }
         return null;
      }
      
      public function getImprovementByConfigId(param1:Number) : ImprovementVo
      {
         var _loc2_:ImprovementInventoryItemRendererVo = this.getImprovementInventoryItemRendererVo(param1);
         return _loc2_.improvementVo;
      }
      
      public function getImprovementIndex(param1:Number, param2:String = "SORT_ALL") : int
      {
         if(param2 == ResidentialImprovementContentComponent.SORT_FILTER_NONE)
         {
            param2 = ImprovementInventoryViewVo.SORT_ALL;
         }
         var _loc3_:ImprovementInventoryItemRendererVo = this.getImprovementInventoryItemRendererVo(param1,param2);
         return this.inventoryData.getListAsArrayCollectionByType(param2).getItemIndex(_loc3_) + 1;
      }
      
      private function sortSlot(param1:ImprovementSlotComponentVo, param2:ImprovementSlotComponentVo) : int
      {
         if(param1.configSlot.orderId > param1.configSlot.orderId)
         {
            return 1;
         }
         if(param1.configSlot.orderId < param1.configSlot.orderId)
         {
            return -1;
         }
         return 0;
      }
   }
}

