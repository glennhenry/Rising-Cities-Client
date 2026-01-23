package net.bigpoint.cityrama.view.architectBook.ui.components
{
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flashx.textLayout.conversion.TextConverter;
   import net.bigpoint.cityrama.model.architecturalBook.ArchitecturalBookProxy;
   import net.bigpoint.cityrama.model.architecturalBook.vo.BlueprintVo;
   import net.bigpoint.cityrama.model.architecturalBook.vo.CenterItemDataVo;
   import net.bigpoint.cityrama.model.level.vo.MixedItemTypesVo;
   import net.bigpoint.cityrama.view.architectBook.ui.skins.LargeDetailComponentGoodSkin;
   import net.bigpoint.cityrama.view.architectBook.ui.skins.LargeDetailComponentLockedSkin;
   import net.bigpoint.cityrama.view.architectBook.ui.skins.LargeDetailComponentNoPermissionAvailableSkin;
   import net.bigpoint.cityrama.view.architectBook.ui.skins.LargeDetailComponentNormalSkin;
   import net.bigpoint.cityrama.view.architectBook.ui.skins.LargeDetailComponentPermissionAvailableSkin;
   import net.bigpoint.cityrama.view.architectBook.ui.skins.LargeDetailComponentPremiumSkin;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.DynamicImageButton;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.util.LocaUtils;
   import spark.components.Group;
   import spark.components.supportClasses.SkinnableComponent;
   
   public class LargeDetailComponent extends SkinnableComponent
   {
      
      private static var _skinParts:Object = {
         "image":true,
         "amountLabel":false,
         "permissionFeatureButton":false,
         "sizeLabel":false,
         "bottomStickerComponent":false,
         "checkmark":false,
         "itemLabel":false,
         "backgroundPrint":false
      };
      
      private var _itemIndex:int;
      
      private var _data:Object;
      
      private var _showBottomSticker:Boolean = true;
      
      private var _buttonInfos:CenterItemDataVo;
      
      public var image:BriskImageDynaLib;
      
      public var backgroundPrint:BriskImageDynaLib;
      
      public var bottomStickerComponent:Group;
      
      public var itemLabel:LocaLabel;
      
      public var amountLabel:LocaLabel;
      
      public var sizeLabel:LocaLabel;
      
      public var checkmark:BriskImageDynaLib;
      
      public var permissionFeatureButton:DynamicImageButton;
      
      private var _activeTextFlowString:String;
      
      public function LargeDetailComponent()
      {
         super();
      }
      
      public function get itemIndex() : int
      {
         return this._itemIndex;
      }
      
      public function set data(param1:Object) : void
      {
         var _loc2_:BlueprintVo = null;
         this._data = param1;
         if(this._data is BlueprintVo)
         {
            _loc2_ = this._data as BlueprintVo;
            if(_loc2_.locked)
            {
               setStyle("skinClass",LargeDetailComponentLockedSkin);
               this._activeTextFlowString = LocaUtils.getString("rcl.booklayer.architect","rcl.booklayer.architect.requiredLevel",["<font size=\'18\'>" + _loc2_.unlockLvl + "</font>"]);
            }
            else if(_loc2_.permission.permissionsLeft > 0 && _loc2_.state != BlueprintVo.STATE_DOESNT_NEED_PERMISSION)
            {
               setStyle("skinClass",LargeDetailComponentPermissionAvailableSkin);
               this._activeTextFlowString = _loc2_.buildPermissionAmount.toString();
            }
            else
            {
               setStyle("skinClass",LargeDetailComponentNoPermissionAvailableSkin);
               this._activeTextFlowString = "";
            }
         }
         else if(this._data is MixedItemTypesVo)
         {
            if((this._data as MixedItemTypesVo).type == MixedItemTypesVo.PLAYFIELDITEM)
            {
               if((this._data as MixedItemTypesVo).specialHighlighting)
               {
                  setStyle("skinClass",LargeDetailComponentPremiumSkin);
               }
               else
               {
                  setStyle("skinClass",LargeDetailComponentNormalSkin);
               }
            }
            else if((this._data as MixedItemTypesVo).type == MixedItemTypesVo.GOOD)
            {
               setStyle("skinClass",LargeDetailComponentGoodSkin);
            }
         }
         invalidateProperties();
      }
      
      override protected function commitProperties() : void
      {
         var _loc1_:BlueprintVo = null;
         var _loc2_:* = null;
         super.commitProperties();
         if(this._data)
         {
            if(this._data is BlueprintVo)
            {
               _loc1_ = this._data as BlueprintVo;
               this.image.dynaLibName = ArchitecturalBookProxy.getItemIconLibByConfigPlayfieldItemDTO(_loc1_.configObj);
               this.image.dynaBmpSourceName = "FieldItem_" + _loc1_.configObj.gfxId + "_level1_big";
               if(this.sizeLabel)
               {
                  this.sizeLabel.text = _loc1_.configObj.sizeX + "x" + _loc1_.configObj.sizeY;
               }
               if(this.showBottomSticker)
               {
                  if(!_loc1_.locked)
                  {
                     if(this.amountLabel)
                     {
                        this.amountLabel.text = this._activeTextFlowString;
                     }
                     if(this.itemLabel)
                     {
                        if(_loc1_.permission.permissionsLeft > 0 && _loc1_.state != BlueprintVo.STATE_DOESNT_NEED_PERMISSION)
                        {
                           if(_loc1_.hasConstructionSteps)
                           {
                              _loc2_ = "construct";
                           }
                           else
                           {
                              _loc2_ = "instant";
                           }
                           if(_loc1_.specialHighlighting)
                           {
                              this.itemLabel.text = LocaUtils.getString("rcl.booklayer.architect","rcl.booklayer.architect.permissionsPremium");
                              _loc2_ += "Premium";
                           }
                           else
                           {
                              this.itemLabel.text = LocaUtils.getString("rcl.booklayer.architect","rcl.booklayer.architect.permissions");
                           }
                           skin.currentState = _loc2_;
                        }
                        else
                        {
                           this.itemLabel.text = LocaUtils.getString("rcl.booklayer.architect","rcl.booklayer.architect.buyPermissions");
                           _loc2_ = "normal";
                           if(_loc1_.specialHighlighting)
                           {
                              _loc2_ = "premium";
                           }
                           if(_loc1_.permission.config.initialPermissions == -1)
                           {
                              this.itemLabel.text = LocaUtils.getString("rcl.booklayer.architect","rcl.booklayer.architect.unlimitedPermissions");
                              _loc2_ = "unlimited";
                           }
                           skin.currentState = _loc2_;
                        }
                     }
                     this.bottomStickerComponent.toolTip = LocaUtils.getString("rcl.tooltips.architecturalBook","rcl.tooltips.architecturalBook.detail.permissions");
                  }
                  else
                  {
                     this.itemLabel.textFlow = TextConverter.importToFlow(this._activeTextFlowString,TextConverter.TEXT_FIELD_HTML_FORMAT);
                  }
               }
            }
            else if(this._data is MixedItemTypesVo)
            {
               if((this._data as MixedItemTypesVo).type == MixedItemTypesVo.PLAYFIELDITEM)
               {
                  this.image.dynaLibName = ArchitecturalBookProxy.getItemIconLibByConfigPlayfieldItemDTO((this._data as MixedItemTypesVo).configItem);
                  this.image.dynaBmpSourceName = "FieldItem_" + (this._data as MixedItemTypesVo).gfxId + "_level1_big";
                  if(this.sizeLabel)
                  {
                     this.sizeLabel.text = (this._data as MixedItemTypesVo).configItem.sizeX + "x" + (this._data as MixedItemTypesVo).configItem.sizeY;
                  }
               }
               else if((this._data as MixedItemTypesVo).type == MixedItemTypesVo.GOOD)
               {
                  this.image.dynaLibName = "gui_popups_largeGoodIcons";
                  this.image.dynaBmpSourceName = "large_" + (this._data as MixedItemTypesVo).gfxId;
               }
            }
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
      
      override protected function partAdded(param1:String, param2:Object) : void
      {
         super.partAdded(param1,param2);
         if(param2 == this.image)
         {
            this.image.mouseChildren = false;
            this.image.mouseEnabled = false;
         }
         if(param2 == this.sizeLabel)
         {
            if(this._data)
            {
               if(this._data is BlueprintVo)
               {
                  this.sizeLabel.text = (this._data as BlueprintVo).configObj.sizeX + "x" + (this._data as BlueprintVo).configObj.sizeY;
               }
               else if(this._data is MixedItemTypesVo)
               {
                  if((this._data as MixedItemTypesVo).type == MixedItemTypesVo.PLAYFIELDITEM)
                  {
                     this.sizeLabel.text = (this._data as MixedItemTypesVo).configItem.sizeX + "x" + (this._data as MixedItemTypesVo).configItem.sizeY;
                  }
               }
            }
         }
         else if(param2 == this.bottomStickerComponent)
         {
            if(this.showBottomSticker)
            {
               this.bottomStickerComponent.includeInLayout = true;
               this.bottomStickerComponent.visible = true;
            }
            else
            {
               this.bottomStickerComponent.includeInLayout = false;
               this.bottomStickerComponent.visible = false;
            }
         }
      }
      
      private function handlePermissionFeatureClick(param1:MouseEvent) : void
      {
         dispatchEvent(new Event("permissionFeatureClick"));
      }
      
      public function get showBottomSticker() : Boolean
      {
         return this._showBottomSticker;
      }
      
      public function set showBottomSticker(param1:Boolean) : void
      {
         this._showBottomSticker = param1;
         invalidateProperties();
      }
      
      public function set buttonInfos(param1:CenterItemDataVo) : void
      {
         this._buttonInfos = param1;
      }
   }
}

