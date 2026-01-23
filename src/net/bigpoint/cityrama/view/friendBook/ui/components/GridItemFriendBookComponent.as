package net.bigpoint.cityrama.view.friendBook.ui.components
{
   import net.bigpoint.cityrama.model.friends.vo.FriendVo;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import net.bigpoint.cityrama.view.friendBook.ui.skins.GridItemFriendBookEmptySkin;
   import net.bigpoint.cityrama.view.friendBook.ui.skins.GridItemFriendBookNormalOwn;
   import net.bigpoint.cityrama.view.friendBook.ui.skins.GridItemFriendBookNormalSkin;
   import net.bigpoint.util.LocaUtils;
   import net.bigpoint.util.RandomUtilities;
   import spark.components.Group;
   import spark.components.RichText;
   import spark.components.supportClasses.ButtonBase;
   
   public class GridItemFriendBookComponent extends ButtonBase
   {
      
      private static var _skinParts:Object = {
         "image":true,
         "infoIcon":false,
         "costGroup":false,
         "iconDisplay":false,
         "friendLevelStarComponent":false,
         "itemLabel":false,
         "labelDisplay":false,
         "backgroundPrint":false,
         "newIcon":false
      };
      
      private var _itemIndex:int;
      
      private var _data:FriendVo;
      
      private var _isDirty:Boolean;
      
      public var image:BriskImageDynaLib;
      
      public var backgroundPrint:BriskImageDynaLib;
      
      public var itemLabel:RichText;
      
      public var costGroup:Group;
      
      public var infoIcon:BriskImageDynaLib;
      
      public var newIcon:BriskImageDynaLib;
      
      public var friendLevelStarComponent:FriendLevelStarComponent;
      
      public function GridItemFriendBookComponent()
      {
         super();
      }
      
      public function get itemIndex() : int
      {
         return this._itemIndex;
      }
      
      public function set data(param1:FriendVo) : void
      {
         if(RandomUtilities.isUnEqual(param1,this._data))
         {
            this._isDirty = true;
            this._data = param1;
            if(this._data.isEmpty)
            {
               setStyle("skinClass",GridItemFriendBookEmptySkin);
            }
            else if(this._data.isMe)
            {
               setStyle("skinClass",GridItemFriendBookNormalOwn);
            }
            else
            {
               setStyle("skinClass",GridItemFriendBookNormalSkin);
            }
            invalidateProperties();
         }
      }
      
      override protected function commitProperties() : void
      {
         super.commitProperties();
         if(this._isDirty && Boolean(this._data))
         {
            this._isDirty = false;
            if(Boolean(this._data) && !this._data.isEmpty)
            {
               this.itemLabel.text = this._data.name;
               this.friendLevelStarComponent.levelLabel.text = String(this._data.lvl);
               this.friendLevelStarComponent.toolTip = LocaUtils.getString("rcl.tooltips.friendlist","rcl.tooltips.friendlist.level");
               if(this.newIcon)
               {
                  if(this._data.isItemNew == true)
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
      }
      
      override protected function partAdded(param1:String, param2:Object) : void
      {
         super.partAdded(param1,param2);
      }
      
      public function set itemIndex(param1:int) : void
      {
         if(this._itemIndex != param1)
         {
            this._itemIndex = param1;
            invalidateProperties();
         }
      }
   }
}

