package net.bigpoint.cityrama.view.architectBook.ui.components
{
   import mx.core.UIComponent;
   import net.bigpoint.cityrama.model.architecturalBook.ArchitecturalBookProxy;
   import net.bigpoint.cityrama.model.architecturalBook.vo.BlueprintVo;
   import net.bigpoint.cityrama.model.level.vo.MixedItemTypesVo;
   import net.bigpoint.cityrama.view.architectBook.ui.skins.GridItemEmptySkin;
   import net.bigpoint.cityrama.view.architectBook.ui.skins.GridItemGoodSkin;
   import net.bigpoint.cityrama.view.architectBook.ui.skins.GridItemLockedSkin;
   import net.bigpoint.cityrama.view.architectBook.ui.skins.GridItemNormalSkin;
   import net.bigpoint.cityrama.view.architectBook.ui.skins.GridItemPremiumSkin;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.util.LocaUtils;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   import spark.components.RichText;
   import spark.components.supportClasses.ButtonBase;
   
   public class GridItemComponent extends ButtonBase
   {
      
      private static var _skinParts:Object = {
         "stickyTape":false,
         "image":false,
         "infoIcon":false,
         "costGroup":false,
         "iconDisplay":false,
         "currencyIcon":false,
         "itemLabel":false,
         "labelDisplay":false,
         "backgroundPrint":false,
         "newIcon":false
      };
      
      private var _itemIndex:int;
      
      private var _data:*;
      
      private var _showPrice:Boolean = true;
      
      private var _showInfoIcon:Boolean = true;
      
      private var _showStickyTape:Boolean = true;
      
      private var _isDirty:Boolean;
      
      private var _showNewIcon:Boolean = false;
      
      public var image:BriskImageDynaLib;
      
      public var backgroundPrint:BriskImageDynaLib;
      
      public var itemLabel:RichText;
      
      public var costGroup:Group;
      
      public var infoIcon:BriskImageDynaLib;
      
      public var newIcon:BriskImageDynaLib;
      
      public var currencyIcon:BriskImageDynaLib;
      
      public var stickyTape:UIComponent;
      
      public function GridItemComponent()
      {
         super();
      }
      
      public function get itemIndex() : int
      {
         return this._itemIndex;
      }
      
      public function set data(param1:*) : void
      {
         if(param1 == null)
         {
            setStyle("skinClass",GridItemEmptySkin);
            this._isDirty = true;
            this._data = param1;
            invalidateProperties();
         }
         if(!RandomUtilities.isEqual(param1,this._data))
         {
            this._isDirty = true;
            this._data = param1;
            if(this._data is BlueprintVo)
            {
               if((this._data as BlueprintVo).locked)
               {
                  setStyle("skinClass",GridItemLockedSkin);
               }
               else if((this._data as BlueprintVo).specialHighlighting)
               {
                  setStyle("skinClass",GridItemPremiumSkin);
               }
               else
               {
                  setStyle("skinClass",GridItemNormalSkin);
               }
            }
            else if(this._data is MixedItemTypesVo)
            {
               if((this._data as MixedItemTypesVo).type == MixedItemTypesVo.PLAYFIELDITEM)
               {
                  if((this._data as MixedItemTypesVo).specialHighlighting)
                  {
                     setStyle("skinClass",GridItemPremiumSkin);
                  }
                  else
                  {
                     setStyle("skinClass",GridItemNormalSkin);
                  }
               }
               else if((this._data as MixedItemTypesVo).type == MixedItemTypesVo.GOOD)
               {
                  setStyle("skinClass",GridItemGoodSkin);
               }
            }
            invalidateProperties();
         }
      }
      
      override protected function commitProperties() : void
      {
         var _loc1_:BlueprintVo = null;
         super.commitProperties();
         if(this._isDirty)
         {
            this._isDirty = false;
            if(this._data is BlueprintVo)
            {
               _loc1_ = this._data as BlueprintVo;
               if(this.image)
               {
                  this.image.dynaLibName = ArchitecturalBookProxy.getItemIconLibByConfigPlayfieldItemDTO(_loc1_.configObj);
                  this.image.dynaBmpSourceName = "FieldItem_" + _loc1_.configObj.gfxId + "_small";
               }
               if(!_loc1_.locked)
               {
                  if(this.itemLabel)
                  {
                     switch(_loc1_.state)
                     {
                        case BlueprintVo.STATE_PERMISSION_AVAILABLE:
                        case BlueprintVo.STATE_DOESNT_NEED_PERMISSION:
                           this.itemLabel.text = LocaUtils.getThousendSeperatedNumber(Math.abs(this._data.price));
                           break;
                        case BlueprintVo.STATE_BUY_MORE_WITH_RC:
                           this.itemLabel.text = LocaUtils.getThousendSeperatedNumber(Math.abs(this._data.price));
                           break;
                        case BlueprintVo.STATE_FULLY_CONSTRUCTED_AVAILABLE:
                           this.itemLabel.text = LocaUtils.getString("rcl.booklayer.architect.cards","rcl.booklayer.architect.cards.place");
                           break;
                        case BlueprintVo.STATE_NOT_AVAILABLE:
                        default:
                           this.itemLabel.text = "";
                     }
                  }
               }
               else if(this.itemLabel)
               {
                  this.itemLabel.text = Math.abs(this._data.unlockLvl).toString();
               }
               if(this.newIcon)
               {
                  this._showNewIcon = _loc1_.isItemNew;
                  if(_loc1_.isItemNew == true)
                  {
                     this.newIcon.visible = this.newIcon.includeInLayout = true;
                  }
                  else
                  {
                     this.newIcon.visible = this.newIcon.includeInLayout = false;
                  }
               }
               if(this.currencyIcon)
               {
                  this.currencyIcon.visible = this.currencyIcon.includeInLayout = true;
                  switch(_loc1_.state)
                  {
                     case BlueprintVo.STATE_DOESNT_NEED_PERMISSION:
                     case BlueprintVo.STATE_PERMISSION_AVAILABLE:
                        this.currencyIcon.dynaBmpSourceName = "cc_icon_small";
                        this.currencyIcon.dynaLibName = "gui_popups_paperPopup";
                        break;
                     case BlueprintVo.STATE_FULLY_CONSTRUCTED_AVAILABLE:
                        this.currencyIcon.dynaBmpSourceName = "button_icon_build";
                        this.currencyIcon.dynaLibName = "gui_popups_paperPopup";
                        break;
                     case BlueprintVo.STATE_BUY_MORE_WITH_RC:
                        this.currencyIcon.dynaBmpSourceName = "rc_icon_small";
                        this.currencyIcon.dynaLibName = "gui_resources_icons";
                        break;
                     case BlueprintVo.STATE_NOT_AVAILABLE:
                     default:
                        this.currencyIcon.visible = this.currencyIcon.includeInLayout = false;
                  }
               }
            }
            else if(this._data is MixedItemTypesVo)
            {
               if((this._data as MixedItemTypesVo).type == MixedItemTypesVo.PLAYFIELDITEM)
               {
                  if(this.image)
                  {
                     this.image.dynaLibName = ArchitecturalBookProxy.getItemIconLibByConfigPlayfieldItemDTO((this._data as MixedItemTypesVo).configItem);
                     this.image.dynaBmpSourceName = "FieldItem_" + (this._data as MixedItemTypesVo).gfxId + "_small";
                  }
               }
               else if((this._data as MixedItemTypesVo).type == MixedItemTypesVo.GOOD)
               {
                  if(this.image)
                  {
                     this.image.dynaLibName = "gui_resources_icons";
                     this.image.dynaBmpSourceName = "ressource_" + (this._data as MixedItemTypesVo).gfxId + "_medium";
                  }
               }
            }
         }
      }
      
      override protected function partAdded(param1:String, param2:Object) : void
      {
         var _loc3_:BlueprintVo = null;
         super.partAdded(param1,param2);
         if(param2 == this.costGroup)
         {
            if(this._showPrice)
            {
               this.costGroup.includeInLayout = true;
               this.costGroup.visible = true;
            }
            else
            {
               this.costGroup.includeInLayout = true;
               this.costGroup.visible = true;
            }
            if(param2 == this.infoIcon)
            {
               if(this._showInfoIcon)
               {
                  this.infoIcon.includeInLayout = true;
                  this.infoIcon.visible = true;
               }
               else
               {
                  this.infoIcon.includeInLayout = false;
                  this.infoIcon.visible = false;
               }
            }
            if(param2 == this.newIcon)
            {
               if(this._data is BlueprintVo)
               {
                  _loc3_ = this._data as BlueprintVo;
                  if(_loc3_.isItemNew == true)
                  {
                     this.newIcon.visible = this.newIcon.includeInLayout = true;
                  }
                  else
                  {
                     this.newIcon.visible = this.newIcon.includeInLayout = false;
                  }
               }
            }
         }
         if(param2 == this.stickyTape)
         {
            this.stickyTape.includeInLayout = this.stickyTape.visible = this._showStickyTape;
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
      
      public function get showStickyTape() : Boolean
      {
         return this._showStickyTape;
      }
      
      public function set showStickyTape(param1:Boolean) : void
      {
         this._showStickyTape = param1;
      }
      
      public function get showNewIcon() : Boolean
      {
         return this._showNewIcon;
      }
      
      public function set showNewIcon(param1:Boolean) : void
      {
         this._showNewIcon = param1;
         if(this.newIcon)
         {
            this.newIcon.visible = this.newIcon.includeInLayout = param1;
         }
      }
   }
}

