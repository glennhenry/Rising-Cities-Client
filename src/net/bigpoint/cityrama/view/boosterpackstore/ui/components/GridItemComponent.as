package net.bigpoint.cityrama.view.boosterpackstore.ui.components
{
   import net.bigpoint.cityrama.model.boosterpack.BoosterpackBookProxy;
   import net.bigpoint.cityrama.model.boosterpack.vo.BoosterpackVo;
   import net.bigpoint.cityrama.view.boosterpackstore.ui.skins.GridItemNormalSkin;
   import net.bigpoint.cityrama.view.boosterpackstore.ui.skins.GridItemSkin;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.util.LocaUtils;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   import spark.components.RichText;
   import spark.components.supportClasses.ButtonBase;
   
   public class GridItemComponent extends ButtonBase
   {
      
      private static var _skinParts:Object = {
         "image":true,
         "infoIcon":false,
         "costGroup":false,
         "priceIcon":false,
         "iconDisplay":false,
         "itemLabel":false,
         "labelDisplay":false,
         "backgroundPrint":false,
         "newIcon":false
      };
      
      private var _itemIndex:int;
      
      private var _data:BoosterpackVo;
      
      private var _showPrice:Boolean = true;
      
      private var _showInfoIcon:Boolean = true;
      
      private var _isDirty:Boolean;
      
      public var image:BriskImageDynaLib;
      
      public var backgroundPrint:BriskImageDynaLib;
      
      public var itemLabel:RichText;
      
      public var costGroup:Group;
      
      public var infoIcon:BriskImageDynaLib;
      
      public var priceIcon:BriskImageDynaLib;
      
      public var newIcon:BriskImageDynaLib;
      
      public function GridItemComponent()
      {
         super();
         setStyle("skinClass",GridItemSkin);
      }
      
      public function get itemIndex() : int
      {
         return this._itemIndex;
      }
      
      public function set data(param1:*) : void
      {
         if(!RandomUtilities.isEqual(param1,this._data))
         {
            this._isDirty = true;
            this._data = param1 as BoosterpackVo;
            if(this._data.type == BoosterpackBookProxy.SUBLEVEL_BOOSTER)
            {
               setStyle("skinClass",GridItemNormalSkin);
            }
            invalidateProperties();
         }
      }
      
      override protected function commitProperties() : void
      {
         super.commitProperties();
         if(this._isDirty)
         {
            this._isDirty = false;
            this.image.dynaLibName = "gui_resources_icons";
            this.image.dynaBmpSourceName = "ressource_" + this._data.gfxId + "_medium";
            this.backgroundPrint.dynaBmpSourceName = this._data.type == BoosterpackBookProxy.SUBLEVEL_BOOSTER ? "sublevel_pack_small" : "specialgood_cardBoard_small";
            if(this.newIcon)
            {
               var _temp_1:* = this.newIcon;
               this.newIcon.includeInLayout = false;
               _temp_1.visible = false;
            }
            this.itemLabel.text = LocaUtils.getThousendSeperatedNumber(Math.abs(this._data.defaultCostAmount));
            if(this._data.defaultCostConfig.goodConfig)
            {
               this.priceIcon.dynaLibName = "gui_popups_boosterpackBook";
               this.priceIcon.dynaBmpSourceName = "icon_" + this._data.defaultCostConfig.goodConfig.gfxId + "_small";
            }
         }
      }
      
      override protected function partAdded(param1:String, param2:Object) : void
      {
         super.partAdded(param1,param2);
         if(param2 == this.costGroup)
         {
            this.costGroup.includeInLayout = this._showPrice;
            this.costGroup.visible = this._showPrice;
         }
         if(param2 == this.infoIcon)
         {
            this.infoIcon.includeInLayout = this._showInfoIcon;
            this.infoIcon.visible = this._showInfoIcon;
         }
         if(param2 == this.newIcon)
         {
            var _temp_1:* = this.newIcon;
            this.newIcon.includeInLayout = false;
            _temp_1.visible = false;
         }
      }
      
      public function set itemIndex(param1:int) : void
      {
         if(this._itemIndex != param1)
         {
            this._itemIndex = param1;
            invalidateProperties();
         }
      }
      
      public function get showPrice() : Boolean
      {
         return this._showPrice;
      }
      
      public function set showPrice(param1:Boolean) : void
      {
         this._showPrice = param1;
         invalidateProperties();
      }
      
      public function get showInfoIcon() : Boolean
      {
         return this._showInfoIcon;
      }
      
      public function set showInfoIcon(param1:Boolean) : void
      {
         this._showInfoIcon = param1;
         invalidateProperties();
      }
      
      public function get imageBackground() : String
      {
         return "specialgood_cardBoard_small";
      }
   }
}

