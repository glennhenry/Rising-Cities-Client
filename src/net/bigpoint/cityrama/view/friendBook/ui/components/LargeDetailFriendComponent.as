package net.bigpoint.cityrama.view.friendBook.ui.components
{
   import flash.events.Event;
   import flash.events.MouseEvent;
   import net.bigpoint.cityrama.model.architecturalBook.vo.BlueprintVo;
   import net.bigpoint.cityrama.model.friends.vo.CenterItemFriendDataVo;
   import net.bigpoint.cityrama.model.friends.vo.FriendVo;
   import net.bigpoint.cityrama.model.level.vo.MixedItemTypesVo;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.common.components.DynamicPlusButton;
   import net.bigpoint.cityrama.view.common.components.LocaLabel;
   import net.bigpoint.cityrama.view.friendBook.ui.skins.LargeDetailFriendComponentNormalOwnSkin;
   import net.bigpoint.cityrama.view.friendBook.ui.skins.LargeDetailFriendComponentNormalSkin;
   import net.bigpoint.util.LocaUtils;
   import spark.components.Group;
   import spark.components.supportClasses.SkinnableComponent;
   
   public class LargeDetailFriendComponent extends SkinnableComponent
   {
      
      private static var _skinParts:Object = {
         "image":true,
         "sizeLabel":false,
         "bottomStickerComponent":false,
         "checkmark":false,
         "friendLevelStarComponent":false,
         "itemLabel":false,
         "buyButton":false,
         "backgroundPrint":false
      };
      
      private var _itemIndex:int;
      
      private var _data:Object;
      
      private var _showBottomSticker:Boolean = true;
      
      private var _showBuyButton:Boolean = false;
      
      private var _buttonInfos:CenterItemFriendDataVo;
      
      public var image:BriskImageDynaLib;
      
      public var backgroundPrint:BriskImageDynaLib;
      
      public var bottomStickerComponent:Group;
      
      public var itemLabel:LocaLabel;
      
      public var sizeLabel:LocaLabel;
      
      public var buyButton:DynamicPlusButton;
      
      public var checkmark:BriskImageDynaLib;
      
      public var friendLevelStarComponent:FriendLevelStarComponent;
      
      public function LargeDetailFriendComponent()
      {
         super();
      }
      
      public function get itemIndex() : int
      {
         return this._itemIndex;
      }
      
      public function set data(param1:Object) : void
      {
         var _loc2_:FriendVo = null;
         this._data = param1;
         if(this._data is FriendVo)
         {
            _loc2_ = this._data as FriendVo;
            if(_loc2_.isMe)
            {
               setStyle("skinClass",LargeDetailFriendComponentNormalOwnSkin);
            }
            else
            {
               setStyle("skinClass",LargeDetailFriendComponentNormalSkin);
            }
         }
         invalidateProperties();
      }
      
      override protected function commitProperties() : void
      {
         var _loc1_:FriendVo = null;
         super.commitProperties();
         if(this._data)
         {
            if(this._data is FriendVo)
            {
               _loc1_ = this._data as FriendVo;
               this.itemLabel.text = _loc1_.name;
               this.friendLevelStarComponent.levelLabel.text = String(_loc1_.lvl);
               this.friendLevelStarComponent.toolTip = LocaUtils.getString("rcl.tooltips.friendlist","rcl.tooltips.friendlist.level");
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
         else if(param2 == this.buyButton)
         {
            if(this.showBuyButton)
            {
               this.buyButton.includeInLayout = true;
               this.buyButton.visible = true;
               this.buyButton.toolTip = getStyle("buyButtonTooltip");
            }
            else
            {
               this.buyButton.includeInLayout = false;
               this.buyButton.visible = false;
            }
         }
      }
      
      private function onButtonClick(param1:MouseEvent) : void
      {
         var _loc2_:Event = null;
         if(this._buttonInfos != null)
         {
            _loc2_ = new Event(this._buttonInfos.buttonEventString);
            dispatchEvent(_loc2_);
         }
         else
         {
            dispatchEvent(new Event("buyPermission"));
         }
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
      
      public function get showBuyButton() : Boolean
      {
         return this._showBuyButton;
      }
      
      public function set showBuyButton(param1:Boolean) : void
      {
         this._showBuyButton = param1;
         invalidateProperties();
      }
      
      public function set buttonInfos(param1:CenterItemFriendDataVo) : void
      {
         this._buttonInfos = param1;
      }
      
      public function get data() : Object
      {
         return this._data;
      }
   }
}

