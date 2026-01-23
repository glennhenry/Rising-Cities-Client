package net.bigpoint.cityrama.view.hud.ui.components
{
   import net.bigpoint.cityrama.model.menu.vo.IDropDownListItemVo;
   import net.bigpoint.cityrama.view.common.components.BriskImageDynaLib;
   import spark.components.DropDownList;
   import spark.events.IndexChangeEvent;
   
   public class DropDownListComponent extends DropDownList
   {
      
      private static var _skinParts:Object = {
         "dropDown":false,
         "dataGroup":false,
         "dropIndicator":false,
         "icon":true,
         "labelDisplay":false,
         "scroller":false,
         "openButton":true
      };
      
      private var _iconAdded:Boolean;
      
      public var icon:BriskImageDynaLib;
      
      private var _userselectedIndex:int;
      
      public function DropDownListComponent()
      {
         this.addEventListener(IndexChangeEvent.CHANGE,this.handleIndexChange);
         super();
      }
      
      override protected function commitProperties() : void
      {
         if(Boolean(this.icon) && Boolean(dataProvider))
         {
            if(selectedIndex == -1)
            {
               selectedIndex = this._userselectedIndex;
               this.handleIndexChange(null);
            }
         }
         super.commitProperties();
      }
      
      private function handleIndexChange(param1:IndexChangeEvent) : void
      {
         var _loc2_:DropDownList = this;
         var _loc3_:IDropDownListItemVo = _loc2_.dataProvider.getItemAt(_loc2_.selectedIndex) as IDropDownListItemVo;
         this.icon.dynaLibName = _loc3_.dynaLibName;
         this._userselectedIndex = selectedIndex;
         this.icon.dynaBmpSourceName = _loc3_.dynaImageName + "_big";
      }
      
      public function set externelSelectedIndex(param1:Object) : void
      {
         var _loc2_:DropDownList = this;
         this._userselectedIndex = _loc2_.dataProvider.getItemIndex(param1);
         selectedIndex = -1;
         invalidateProperties();
      }
      
      override protected function partAdded(param1:String, param2:Object) : void
      {
         super.partAdded(param1,param2);
         if(param2 == this.icon)
         {
            this._iconAdded = true;
            invalidateProperties();
         }
      }
      
      public function get userselectedIndex() : int
      {
         return this._userselectedIndex;
      }
   }
}

